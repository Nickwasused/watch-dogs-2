DynamicEventMonitor = {}
function DynamicEventMonitor:Create(cbox)
end
function DynamicEventMonitor:Init(cbox)
  self.callidStarted = nil
  self.callidSucceeded = nil
  self.callidFailed = nil
end
function DynamicEventMonitor:ShutDown()
  self:UnregisterCompletedCallbacks()
end
function DynamicEventMonitor:Enable()
  if self.DynamicEvent == nil then
  end
  self:RegisterCompletedCallbacks()
  self:Enabled()
end
function DynamicEventMonitor:Disable()
  if self.DynamicEvent == nil then
  end
  self:UnregisterCompletedCallbacks()
  self:Disabled()
end
function DynamicEventMonitor:RegisterCompletedCallbacks()
  if self.DynamicEvent ~= nil and self.callidSucceeded == nil and self.callidFailed == nil and self.callidStarted == nil then
    self.callidStarted = CScriptCallbackSystem_GetInstance():RegisterMissionCallbackWithMissionDB(self.DynamicEvent, self, "Event_EventStarted")
    self.callidSucceeded = CScriptCallbackSystem_GetInstance():RegisterMissionCallbackWithMissionDB(self.DynamicEvent, self, "Event_EventSucceeded")
    self.callidFailed = CScriptCallbackSystem_GetInstance():RegisterMissionCallbackWithMissionDB(self.DynamicEvent, self, "Event_EventFailed")
    if self.callidSucceeded ~= nil and self.callidFailed ~= nil and self.callidStarted ~= nil then
      SetTrackedDynamicEvent(self.DynamicEvent, self.callidStarted, self.callidSucceeded, self.callidFailed)
    end
  end
end
function DynamicEventMonitor:UnregisterCompletedCallbacks()
  if self.DynamicEvent ~= nil and self.callidSucceeded ~= nil and self.callidFailed ~= nil and self.callidStarted ~= nil then
    RemoveTrackedDynamicEvent(self.DynamicEvent)
    CScriptCallbackSystem_GetInstance():RemoveMissionCallback(self.callidStarted)
    CScriptCallbackSystem_GetInstance():RemoveMissionCallback(self.callidSucceeded)
    CScriptCallbackSystem_GetInstance():RemoveMissionCallback(self.callidFailed)
    self.callidStarted = nil
    self.callidSucceeded = nil
    self.callidFailed = nil
  end
end
function DynamicEventMonitor:Event_EventStarted()
  return self:Started()
end
function DynamicEventMonitor:Event_EventSucceeded()
  return self:Succeeded()
end
function DynamicEventMonitor:Event_EventFailed()
  return self:Failed()
end
export = DynamicEventMonitor
DynamicEventMonitor = nil
