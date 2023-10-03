VRNodeMonitor = {}
function VRNodeMonitor:Create(cbox)
end
function VRNodeMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidAlarmStarted = nil
  self.callidAlarmStopped = nil
  self.callidAlarmFinished = nil
end
function VRNodeMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function VRNodeMonitor:Enable()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  self.callidAlarmStarted = scriptCallbackSystem:RegisterMissionEventCallback(self.VRNode, self, "Event_AlarmStarted", "AlarmStarted", self.missionId)
  self.callidAlarmStopped = scriptCallbackSystem:RegisterMissionEventCallback(self.VRNode, self, "Event_AlarmStopped", "AlarmStopped", self.missionId)
  self.callidAlarmFinished = scriptCallbackSystem:RegisterMissionEventCallback(self.VRNode, self, "Event_AlarmFinished", "AlarmFinished", self.missionId)
  self:Enabled()
end
function VRNodeMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function VRNodeMonitor:UnregisterCallback()
  if self.VRNode ~= nil and self.callidAlarmFinished ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    scriptCallbackSystem:RemoveCallback(self.VRNode, self.callidAlarmStarted)
    self.callidAlarmStarted = nil
    scriptCallbackSystem:RemoveCallback(self.VRNode, self.callidAlarmStopped)
    self.callidAlarmStopped = nil
    scriptCallbackSystem:RemoveCallback(self.VRNode, self.callidAlarmFinished)
    self.callidAlarmFinished = nil
  end
end
function VRNodeMonitor:Event_AlarmStarted(entity)
  self:AlarmStarted()
end
function VRNodeMonitor:Event_AlarmStopped(entity)
  self:AlarmStopped()
end
function VRNodeMonitor:Event_AlarmFinished(entity)
  self:AlarmFinished()
end
export = VRNodeMonitor
VRNodeMonitor = nil
