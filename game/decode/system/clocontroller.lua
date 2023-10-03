CLOController = {}
function CLOController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function CLOController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnActivateCLO = nil
  self.callidOnUserInPlace = nil
end
function CLOController:ShutDown()
  self:UnregisterCallback()
end
function CLOController:UnregisterCallback()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  if self.callidOnActivateCLO ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnActivateCLO", self.callidOnActivateCLO)
    self.callidOnActivateCLO = nil
  end
  if self.callidOnUserInPlace ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOUserInPlace", self.callidOnUserInPlace)
    self.callidOnUserInPlace = nil
  end
end
function CLOController:Activate()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    self.callidOnUserInPlace = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOUserInPlace", "OnCLOUserInPlace", self.missionId)
    self.callidOnActivateCLO = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnActivateCLO", "OnActivateCLO", self.missionId)
    local cloID = self.CLO or GetInvalidEntityId()
    if LuaLibCore:VerifyDataInputEntityList(self.RestrictedToUserList, "RestrictedToUserList") then
      AddCLOEntitiesRestriction(cloID, self.RestrictedToUserList)
    elseif self.RestrictedToUser ~= nil and LuaLibCore:VerifyDataInputEntity(self.RestrictedToUser, "RestrictedToUser") then
      local restrictedToUserList = {
        self.RestrictedToUser
      }
      AddCLOEntitiesRestriction(cloID, restrictedToUserList)
    end
    if self.SpawnOutsideLoadingRing == 1 then
      WakeUpCLOMonitored(self.CLO, 1)
    else
      ActivateCLO(self.CLO, 1)
    end
  end
end
function CLOController:OnActivateCLO()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  if self.callidOnActivateCLO ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnActivateCLO", self.callidOnActivateCLO)
    self.callidOnActivateCLO = nil
  end
  self:Activated()
end
function CLOController:Deactivate()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    ActivateCLO(self.CLO, 0)
  end
  self:Deactivated()
end
function CLOController:Quit()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    TriggerQuitCLOOnMonitoredCLO(self.CLO)
  end
  self:OnQuit()
end
function CLOController:TriggerBhv()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    TriggerCLOBhvOnMonitoredCLO(self.CLO)
  end
  self:BhvTriggered()
end
function CLOController:UnspawnUser()
  if self.User ~= nil then
    if self.User == GetLocalPlayerEntityId() then
      LuaLibCore:DataError("User", "Entity unspawned is the player, you must not do that")
    end
    RemoveEntity(self.User)
  end
  if self.UserList ~= nil then
    for index, var in ipairs(self.UserList) do
      if var == GetLocalPlayerEntityId() then
        LuaLibCore:DataError("UserList", "Entity unspawned is the player, you must not do that")
      end
      RemoveEntity(var)
    end
  end
  self:UnspawnedUser()
end
function CLOController:OnCLOUserInPlace(entity)
  self.UserID = entity
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  if self.callidOnUserInPlace ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOUserInPlace", self.callidOnUserInPlace)
    self.callidOnUserInPlace = nil
  end
  self:OnUserInPlace()
end
export = CLOController
CLOController = nil
