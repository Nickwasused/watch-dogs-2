IOPMonitor = {}
function IOPMonitor:Create(cbox)
end
function IOPMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function IOPMonitor:ShutDown()
  return self:UnregisterCallback()
end
function IOPMonitor:Disable()
  self:Out()
  self:UnregisterCallback()
  self:Disabled()
end
function IOPMonitor:Enable()
  self:Out()
  instance = CScriptCallbackSystem_GetInstance()
  if self.onActivateHackables == nil then
    self.onActivateHackables = instance:RegisterMissionNoEntityCallback("Domino_Activate_Hackables", self, "Activate_Hackables", self.missionId)
  end
  if self.onDeactivateHackables == nil then
    self.onDeactivateHackables = instance:RegisterMissionNoEntityCallback("Domino_Deactivate_Hackables", self, "Deactivate_Hackables", self.missionId)
  end
  if self.onIOPComplete == nil then
    self.onIOPComplete = instance:RegisterMissionNoEntityCallback("Domino_IOP_Complete", self, "IOP_Complete", self.missionId)
  end
  if self.MonitoredEvent ~= nil and self.onMonitoredEvent == nil then
    self.callbackName = "Domino_IOP_" .. self.MonitoredEvent
    self.onMonitoredEvent = instance:RegisterMissionNoEntityCallback(self.callbackName, self, "On_Event_Occurred", self.missionId)
  end
  self:Enabled()
end
function IOPMonitor:On_Event_Occurred(event)
  if self.AutoDisableOnEventOccurred == 1 then
    self:UnregisterCallback()
  end
  return self:EventOccurred()
end
function IOPMonitor:Activate_Hackables(event)
  if self.AutoDisableOnActivateHackables == 1 then
    self:UnregisterCallback()
  end
  return self:ActivateHackables()
end
function IOPMonitor:Deactivate_Hackables(event)
  if self.AutoDisableOnDeactivateHackables == 1 then
    self:UnregisterCallback()
  end
  return self:DeactivateHackables()
end
function IOPMonitor:IOP_Complete(event)
  if self.AutoDisableOnIOPComplete == 1 then
    self:UnregisterCallback()
  end
  return self:IOPComplete()
end
function IOPMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.onActivateHackables ~= nil then
    instance:RemoveNoEntityCallback("Domino_Activate_Hackables", self.onActivateHackables)
    self.onActivateHackables = nil
  end
  if self.onDeactivateHackables ~= nil then
    instance:RemoveNoEntityCallback("Domino_Deactivate_Hackables", self.onDeactivateHackables)
    self.onDeactivateHackables = nil
  end
  if self.onIOPComplete ~= nil then
    instance:RemoveNoEntityCallback("Domino_IOP_Complete", self.onIOPComplete)
    self.onIOPComplete = nil
  end
  if self.onMonitoredEvent ~= nil then
    instance:RemoveNoEntityCallback(self.callbackName, self.onMonitoredEvent)
    self.onMonitoredEvent = nil
  end
end
export = IOPMonitor
IOPMonitor = nil
