PlayerActionMonitor = {}
function PlayerActionMonitor:Create(cbox)
end
function PlayerActionMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.CallidPlayerAction = nil
  self.ExecutedAction = nil
end
function PlayerActionMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PlayerActionMonitor:Enable()
  self.Player = self.Player or GetLocalPlayerEntityId()
  self.CallidPlayerAction = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Player, self, "Event_PlayerAction", "DominoPlayerActionEvent", self.missionId)
  if self.CheckNow then
    self:CheckCurrentPlayerAction()
  end
  self:Enabled()
end
function PlayerActionMonitor:CurrentStatus()
  self:CheckCurrentPlayerAction()
end
function PlayerActionMonitor:CheckCurrentPlayerAction()
  local monitingActionTypeID = self:GetActionTypeID(self.PlayerActionType)
  if PlayerIsDoingAction(monitingActionTypeID) == 1 then
    System:Log("PlayerActionMonitor player is doing action true (" .. tostring(self) .. " : " .. tostring(self.PlayerActionType) .. ")")
    self.ExecutedAction = self.PlayerActionType
    self:Executed(self.ExecutedAction)
  else
    System:Log("NewPlayerActionMonitor player is doing action false (" .. tostring(self) .. " : " .. tostring(self.PlayerActionType) .. ")")
  end
end
function PlayerActionMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PlayerActionMonitor:UnregisterCallback()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.CallidPlayerAction ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Player, self.CallidPlayerAction)
    self.CallidPlayerAction = nil
  end
end
function PlayerActionMonitor:Event_PlayerAction(event)
  local executedActionTypeID = tonumber(event)
  local monitingActionTypeID = self:GetActionTypeID(self.PlayerActionType)
  self.ExecutedAction = self:GetActinTypeName(executedActionTypeID)
  if self.PlayerActionType ~= nil then
    if monitingActionTypeID == executedActionTypeID then
      self:Executed(self.ExecutedAction)
    end
  else
    self:Executed(self.ExecutedAction)
  end
end
function PlayerActionMonitor:GetActionTypeID(typeActionName)
  if typeActionName == "None" then
    return 0
  elseif typeActionName == "DrawWeapon" then
    return 1
  elseif typeActionName == "HolsterWeapon" then
    return 2
  elseif typeActionName == "InCover" then
    return 3
  elseif typeActionName == "Aiming" then
    return 4
  elseif typeActionName == "Hacking" then
    return 5
  elseif typeActionName == "StopAiming" then
    return 6
  end
  return 0
end
function PlayerActionMonitor:GetActinTypeName(typeActionID)
  if typeActionID == 0 then
    return "None"
  elseif typeActionID == 1 then
    return "DrawWeapon"
  elseif typeActionID == 2 then
    return "HolsterWeapon"
  elseif typeActionID == 3 then
    return "InCover"
  elseif typeActionID == 4 then
    return "Aiming"
  elseif typeActionID == 5 then
    return "Hacking"
  elseif typeActionID == 6 then
    return "StopAiming"
  end
  return 0
end
export = PlayerActionMonitor
PlayerActionMonitor = nil
