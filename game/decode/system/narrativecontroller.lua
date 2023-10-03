NarrativeController = {}
function NarrativeController:Create(cbox)
end
function NarrativeController:Init(cbox)
end
function NarrativeController:ShutDown()
end
function NarrativeController:StartNarrativeEvent()
  if self.DelayDuration ~= nil and self.DelayDuration > 0 then
    AddScriptNarrativeDelay(self.DelayDuration)
  end
  self:NarrativeEventStarted(self)
end
function NarrativeController:StopNarrativeEvent()
  StopScriptNarrativeDelay()
  self:NarrativeEventStopped(self)
end
export = NarrativeController
NarrativeController = nil
