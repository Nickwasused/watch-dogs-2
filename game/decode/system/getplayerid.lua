GetPlayerID = {}
function GetPlayerID:Create(cbox)
end
function GetPlayerID:Init(cbox)
  self.callidSpawn = nil
end
function GetPlayerID:ShutDown()
  self._type.UnregisterCallback(self)
end
function GetPlayerID:In()
  local Out = self.Out
  self.PlayerID = GetLocalPlayerEntityId()
  if self.PlayerID ~= GetInvalidEntityId() then
    Out(self)
  elseif self.callidSpawn == nil then
    self.callidSpawn = CScriptCallbackSystem_GetInstance():RegisterPlayerEventCallback(GetLocalPlayerId(), self, "Event_OnPlayerSpawned", "OnSpawnPlayer")
  end
end
function GetPlayerID:UnregisterCallback()
  if self.callidSpawn ~= nil then
    CScriptCallbackSystem_GetInstance():RemovePlayerEventCallback(self.Player, self.callidSpawn)
    self.callidSpawn = nil
  end
end
function GetPlayerID:Event_OnPlayerSpawned()
  return self:In()
end
export = GetPlayerID
GetPlayerID = nil
