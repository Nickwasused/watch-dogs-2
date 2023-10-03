LineOfSightMonitor = {}
function LineOfSightMonitor:Create(cbox)
end
function LineOfSightMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidLOSAcquired = nil
  self.callidLOSLost = nil
end
function LineOfSightMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function LineOfSightMonitor:Enable()
  if self.Target ~= nil and self.callidLOSAcquired == nil and self.callidLOSLost == nil then
    instance = CScriptCallbackSystem_GetInstance()
    self.callidLOSAcquired = instance:RegisterMissionEventCallback(self.Target, self, "Event_LOSAcquired", "dominoLineOfSightMonitorLOSAcquired", self.missionId)
    self.callidLOSLost = instance:RegisterMissionEventCallback(self.Target, self, "Event_LOSLost", "dominoLineOfSightMonitorLOSLost", self.missionId)
    LineOfSightMonitorEnable(1, self.Target)
  end
  self:Out()
  self:Enabled()
end
function LineOfSightMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Out()
  self:Disabled()
end
function LineOfSightMonitor:UnregisterCallback()
  if self.Target ~= nil and self.callidLOSAcquired ~= nil and self.callidLOSLost ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    LineOfSightMonitorEnable(0, self.Target)
    instance:RemoveCallback(self.Target, self.callidLOSAcquired)
    instance:RemoveCallback(self.Target, self.callidLOSLost)
    self.callidLOSAcquired = nil
    self.callidLOSLost = nil
  end
end
function LineOfSightMonitor:Event_LOSAcquired(event)
  return self:LOSAcquired()
end
function LineOfSightMonitor:Event_LOSLost(event)
  return self:LOSLost()
end
export = LineOfSightMonitor
LineOfSightMonitor = nil
