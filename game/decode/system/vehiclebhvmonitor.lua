VehicleBhvMonitor = {}
function VehicleBhvMonitor:Create(cbox)
end
function VehicleBhvMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidStuck = nil
  self.callidBroken = nil
  self.callidInRange = nil
  self.callidWarningRange = nil
  self.callidOutsideRange = nil
  self.callidOutsideTimerExpired = nil
  self.callidOutsideRangeTime = nil
  self.callidInLOS = nil
  self.callidTargetDetected = nil
  self.callidLostLOS = nil
  self.callidReacquireLOSTimerExpired = nil
  self.callidLostLOSTimerExpired = nil
  self.callidLostLOSTime = nil
  self.callidPathPointReached = nil
  self.callidEndPathPointReached = nil
  self.callidSuspiciousTargetAction = nil
end
function VehicleBhvMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function VehicleBhvMonitor:Enable()
  if self.Vehicle ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    self.callidStuck = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleStuck", "DominoVehicleStuck", self.missionId)
    self.callidBroken = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_VehicleBroken", "DominoVehicleBroken", self.missionId)
    self.callidInRange = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_InRange", "DominoVehicleInrange", self.missionId)
    self.callidWarningRange = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_WarningRange", "DominoVehicleWarningRange", self.missionId)
    self.callidOutsideRange = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_OutsideRange", "DominoVehicleOutsideRange", self.missionId)
    self.callidOutsideRangeTime = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_OutsideRangeTime", "DominoVehicleOutsideTime", self.missionId)
    self.callidOutsideTimerExpired = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_OutsideTimerExpired", "DominoVehicleOutsideTimerExpired", self.missionId)
    self.callidInLOS = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_TargetInLOS", "DominoVehicleTargetInLOS", self.missionId)
    self.callidTargetDetected = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_TargetDetected", "DominoVehicleTargetDetected", self.missionId)
    self.callidLostLOSTimerExpired = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_LostLOSTimerExpired", "DominoVehicleLOSTimerExpired", self.missionId)
    self.callidReacquireLOSTimerExpired = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_LostLOS", "DominoVehicleLostLOS", self.missionId)
    self.callidLostLOSTime = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_LostLosTime", "DominoVehicleLostLOSTime", self.missionId)
    self.callidEndPathPointReached = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_EndPathPointReached", "DominoEndRacePointReached", self.missionId)
    self.callidPathPointReached = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_PathPointReached", "DominoRacePointReached", self.missionId)
    self.callidSuspiciousTargetAction = instance:RegisterMissionEventCallback(self.Vehicle, self, "Event_SuspiciousTargetAction", "DominoSuspiciousTargetAction", self.missionId)
  end
  self:Enabled()
  self:Out()
end
function VehicleBhvMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
  self:Out()
end
function VehicleBhvMonitor:UnregisterCallback()
  if self.Vehicle ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidStuck ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidStuck)
      self.callidStuck = nil
    end
    if self.callidBroken ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidBroken)
      self.callidBroken = nil
    end
    if self.callidInLOS ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidInLOS)
      self.callidInLOS = nil
    end
    if self.callidTargetDetected ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidTargetDetected)
      self.callidTargetDetected = nil
    end
    if self.callidInRange ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidInRange)
      self.callidInRange = nil
    end
    if self.callidWarningRange ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidWarningRange)
      self.callidWarningRange = nil
    end
    if self.callidOutsideRange ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidOutsideRange)
      self.callidOutsideRange = nil
    end
    if self.callidOutsideRangeTime ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidOutsideRangeTime)
      self.callidOutsideRangeTime = nil
    end
    if self.callidOutsideTimerExpired ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidOutsideTimerExpired)
      self.callidOutsideTimerExpired = nil
    end
    if self.callidLostLOSTimerExpired ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidLostLOSTimerExpired)
      self.callidLostLOSTimerExpired = nil
    end
    if self.callidReacquireLOSTimerExpired ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidReacquireLOSTimerExpired)
      self.callidReacquireLOSTimerExpired = nil
    end
    if self.callidOutsideRangeTime ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidOutsideRangeTime)
      self.callidOutsideRangeTime = nil
    end
    if self.callidLostLOSTime ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidLostLOSTime)
      self.callidLostLOSTime = nil
    end
    if self.callidEndPathPointReached ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidEndPathPointReached)
      self.callidEndPathPointReached = nil
    end
    if self.callidPathPointReached ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidPathPointReached)
      self.callidPathPointReached = nil
    end
    if self.callidSuspiciousTargetAction ~= nil then
      instance:RemoveCallback(self.Vehicle, self.callidSuspiciousTargetAction)
      self.callidSuspiciousTargetAction = nil
    end
  end
end
function VehicleBhvMonitor:Event_PathPointReached(event)
  self.PathPointReachedNbr = tonumber(event)
  if self.SpecificPathPoint ~= nil and self.SpecificPathPoint == self.PathPointReachedNbr then
    self:SpecificPathPointReached()
  end
  self:PathPointReached()
end
function VehicleBhvMonitor:Event_EndPathPointReached(event)
  return self:EndPathPointReached()
end
function VehicleBhvMonitor:Event_VehicleStuck(event)
  return self:Stuck()
end
function VehicleBhvMonitor:Event_VehicleBroken(event)
  return self:Broken()
end
function VehicleBhvMonitor:Event_InRange(event)
  return self:InRange()
end
function VehicleBhvMonitor:Event_WarningRange(event)
  return self:WarningRange()
end
function VehicleBhvMonitor:Event_OutsideRange(event)
  return self:OutsideRange()
end
function VehicleBhvMonitor:Event_OutsideTimerExpired(event)
  return self:OutsideTimerExpired()
end
function VehicleBhvMonitor:Event_OutsideRangeTime(event)
  self.OutsideRangeTime = tonumber(event)
end
function VehicleBhvMonitor:Event_TargetInLOS(event)
  return self:InLOS()
end
function VehicleBhvMonitor:Event_TargetDetected(event)
  return self:TargetDetected()
end
function VehicleBhvMonitor:Event_LostLOSTimerExpired(event)
  return self:LostLOSTimerExpired()
end
function VehicleBhvMonitor:Event_LostLOS(event)
  return self:ReacquireLOSTimerExpired()
end
function VehicleBhvMonitor:Event_LostLosTime(event)
  self.LostLOSTime = tonumber(event)
end
function VehicleBhvMonitor:Event_SuspiciousTargetAction(event)
  return self:SuspiciousTargetAction()
end
export = VehicleBhvMonitor
VehicleBhvMonitor = nil
