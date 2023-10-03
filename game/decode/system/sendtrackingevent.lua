SendTrackingEvent = {}
function SendTrackingEvent:Create(cbox)
end
function SendTrackingEvent:Init(cbox)
end
function SendTrackingEvent:In()
  local Out = self.Out
  if self.TrackingEvent ~= nil then
    local trackingStringId = GetStringID(self.TrackingEvent)
    SetAchievement(trackingStringId)
  end
  Out(self)
end
export = SendTrackingEvent
SendTrackingEvent = nil
