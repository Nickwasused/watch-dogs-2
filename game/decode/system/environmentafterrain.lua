EnvironmentAfterRain = {}
function EnvironmentAfterRain:Create(cbox)
end
function EnvironmentAfterRain:Init(cbox)
end
function EnvironmentAfterRain:ShutDown()
end
function EnvironmentAfterRain:Start()
  local Started = self.Started
  local Out = self.Out
  StartAfterRain(1)
  Started(self)
  Out(self)
end
function EnvironmentAfterRain:Stop()
  local Stopped = self.Stopped
  local Out = self.Out
  StopAfterRain()
  Stopped(self)
  Out(self)
end
export = EnvironmentAfterRain
EnvironmentAfterRain = nil
