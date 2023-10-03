PlayerVehicleMonitor = {}
function PlayerVehicleMonitor:Create(cbox)
end
function PlayerVehicleMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidEnter = nil
  self.callidLeave = nil
  self.callidChangeSeat = nil
end
function PlayerVehicleMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PlayerVehicleMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  self.Player = self.Player or GetLocalPlayerId()
  if self.Player ~= nil then
    if IsPlayerLocal(self.Player) ~= 1 then
      return
    end
    local pawnID = GetPawnIdFromPlayerId(self.Player)
    if self.callidEnter == nil then
      self.callidEnter = instance:RegisterMissionEventCallback(pawnID, self, "Event_Enter", "get in vehicle", self.missionId)
      self.callidLeave = instance:RegisterMissionEventCallback(pawnID, self, "Event_Leave", "PawnDetachedFromVehicle", self.missionId)
      self.callidChangeSeat = instance:RegisterMissionEventCallback(pawnID, self, "Event_ChangeSeat", "change seat in vehicle", self.missionId)
    end
    if self.CheckNow ~= nil and self.CheckNow == 1 then
      self.Vehicle = GetCurrentVehicleEntityId(pawnID)
      self.IsPassenger = GetPawnIsPassenger(pawnID)
      self.IsVehicleParked = GetIsVehicleParked(self.Vehicle)
      if self.Vehicle ~= GetInvalidEntityId() then
        self:Enter()
      else
        self:Leave()
      end
    end
    self:Enabled()
  end
end
function PlayerVehicleMonitor:Disable()
  self._type.UnregisterCallback(self)
end
function PlayerVehicleMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  self.Player = self.Player or GetLocalPlayerId()
  local pawnID = GetPawnIdFromPlayerId(self.Player)
  if self.Player ~= nil and self.callidEnter ~= nil then
    instance:RemoveCallback(pawnID, self.callidEnter)
    self.callidEnter = nil
    instance:RemoveCallback(pawnID, self.callidLeave)
    self.callidLeave = nil
    instance:RemoveCallback(pawnID, self.callidChangeSeat)
    self.callidChangeSeat = nil
    self:Disabled()
  end
end
function PlayerVehicleMonitor:Event_Enter()
  local pawnID = GetPawnIdFromPlayerId(self.Player)
  self.Vehicle = GetCurrentVehicleEntityId(pawnID)
  self.IsPassenger = GetPawnIsPassenger(pawnID)
  self.IsVehicleParked = GetIsVehicleParked(self.Vehicle)
  if self.Vehicle ~= GetInvalidEntityId() then
    self:Enter()
  end
end
function PlayerVehicleMonitor:Event_Leave()
  local pawnID = GetPawnIdFromPlayerId(self.Player)
  self.Vehicle = GetCurrentVehicleEntityId(pawnID)
  self.IsPassenger = GetPawnIsPassenger(pawnID)
  if self.Vehicle ~= GetInvalidEntityId() then
    self:Leave()
  end
end
function PlayerVehicleMonitor:Event_ChangeSeat()
  local pawnID = GetPawnIdFromPlayerId(self.Player)
  self.Vehicle = GetCurrentVehicleEntityId(pawnID)
  self.IsPassenger = GetPawnIsPassenger(pawnID)
  if self.Vehicle ~= GetInvalidEntityId() then
    self:ChangeSeat()
  end
end
export = PlayerVehicleMonitor
PlayerVehicleMonitor = nil
