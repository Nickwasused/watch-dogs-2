DynamicEvent = {}
function DynamicEvent:Create(cbox)
end
function DynamicEvent:Init(cbox)
  self.callidStarted = nil
end
function DynamicEvent:ShutDown()
  self:UnregisterStartedCallbacks()
end
function DynamicEvent:Force()
  if self.DynamicEvent ~= nil then
    self:RegisterStartedCallbacks()
    TrackDynamicEventStart(self.DynamicEvent, self.callidStarted)
    SetForcedDynamicEvent(self.DynamicEvent)
  end
end
function DynamicEvent:RegisterStartedCallbacks()
  if self.DynamicEvent ~= nil and self.callidStarted == nil then
    self.callidStarted = CScriptCallbackSystem_GetInstance():RegisterMissionCallbackWithMissionDB(self.DynamicEvent, self, "Event_EventStarted")
  end
end
function DynamicEvent:UnregisterStartedCallbacks()
  if self.DynamicEvent ~= nil and self.callidStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveMissionCallback(self.callidStarted)
    self.callidStarted = nil
  end
end
function DynamicEvent:Event_EventStarted()
  self:UnregisterStartedCallbacks()
  RemoveTrackedDynamicEvent(self.DynamicEvent)
  return self:Forced()
end
export = DynamicEvent
DynamicEvent = nil
