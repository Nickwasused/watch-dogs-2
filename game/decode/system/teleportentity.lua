Teleport = {}
function Teleport:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function Teleport:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidTeleportDone = nil
end
function Teleport:ShutDown()
  self:UnregisterCallback()
end
function Teleport:In()
  local Out = self.Out
  self.UseFadeToBlack = self.UseFadeToBlack or 1
  if self.Entity ~= nil and self.Destination ~= nil then
    if self.Entity == GetLocalPlayerEntityId() then
      LuaLibCore:DataError("Entity", "Entity teleported is the Player. Use 'Teleport to SpawnPoint' instead of 'Teleport Entity Controller' to teleport the player.")
    end
    self:RegisterCallback()
    TeleportEntity(self.Entity, self.Destination, self.UseFadeToBlack)
  end
  Out(self)
end
function Teleport:RegisterCallback()
  if self.Entity ~= nil and self.callidTeleportDone == nil then
    self.callidTeleportDone = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_TeleportedToPosition", "PostTeleportEvent", self.missionId)
  end
end
function Teleport:UnregisterCallback()
  if self.Entity ~= nil and self.callidTeleportDone ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.callidTeleportDone)
    self.callidTeleportDone = nil
  end
end
function Teleport:Event_TeleportedToPosition()
  self:UnregisterCallback(self)
  return self:TeleportDone()
end
export = Teleport
Teleport = nil
