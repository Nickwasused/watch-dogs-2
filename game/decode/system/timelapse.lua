TimeLapse = {}
function TimeLapse:Create(cbox)
end
function TimeLapse:Init(cbox)
end
function TimeLapse:ShutDown()
end
function TimeLapse:Start()
  local Started = self.Started
  local Out = self.Out
  if self.Hour ~= nil and self.Minutes ~= nil and self.Duration ~= nil then
    StartTimeLapse(self.Hour, self.Minutes, self.Duration)
  end
  Started(self)
  Out(self)
end
function TimeLapse:Stop()
  local Stopped = self.Stopped
  local Out = self.Out
  StopTimeLapse()
  Stopped(self)
  Out(self)
end
export = TimeLapse
TimeLapse = nil
