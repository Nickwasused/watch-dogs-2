UnspawnController = {}
function UnspawnController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function UnspawnController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.combinedEntityList = {}
  self.callidOnUnspawn = nil
end
function UnspawnController:ShutDown()
  self:UnregisterCallback()
end
function UnspawnController:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnUnspawn ~= nil then
    instance:RemoveNoEntityCallback("OnEntityUnspawnedAfterGotoUnspawn", self.callidOnUnspawn)
    self.callidOnUnspawn = nil
  end
end
function UnspawnController:UnspawnEntity()
  self:CombineList()
  if self.combinedEntityList ~= nil then
    for index, var in ipairs(self.combinedEntityList) do
      RemoveEntity(var)
    end
  end
  self:EntityUnspawned()
end
function UnspawnController:UnspawnAutomaticCLO()
  if self.CLO ~= nil then
    DeactivateCLOForever(self.CLO)
  end
  self:AutomaticCLOUnspawned()
end
function UnspawnController:SendNpcToUnspawn()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnUnspawn == nil then
    self.callidOnUnspawn = instance:RegisterNoEntityCallback("OnEntityUnspawnedAfterGotoUnspawn", self, "OnEntityUnspawned")
  end
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    if self.UnspawnDestination == nil then
      GoToUnspawn(self.Entity)
    else
      GoToPosUnspawn(self.Entity, self.UnspawnDestination)
    end
  end
  self:NpcSentToUnspawn()
end
function UnspawnController:OnEntityUnspawned(entityId)
  if entityId == self.Entity then
    self:NpcUnspawned()
  end
end
function UnspawnController:CombineList()
  if LuaLibCore:VerifyDataInputEntityList(self.EntityList, "EntityList") then
    for i, v in ipairs(self.EntityList) do
      if self.EntityList[i] ~= nil then
        if v == GetLocalPlayerEntityId() then
          LuaLibCore:DataError("Entity", "Entity unspawned is the player, you must not do that")
        end
        table.insert(self.combinedEntityList, self.EntityList[i])
      end
    end
  end
  if self.Entity ~= nil and LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    if self.Entity == GetLocalPlayerEntityId() then
      LuaLibCore:DataError("EntityList", "Entity unspawned is the player, you must not do that")
    end
    table.insert(self.combinedEntityList, self.Entity)
  end
end
export = UnspawnController
UnspawnController = nil
