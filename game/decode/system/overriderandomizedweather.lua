OverrideRandomizedWeather = {}
function OverrideRandomizedWeather:Create(cbox)
end
function OverrideRandomizedWeather:Init(cbox)
  self.FadeIn = nil
end
function OverrideRandomizedWeather:ShutDown()
end
function OverrideRandomizedWeather:Start()
  local Started = self.Started
  local Out = self.Out
  if self.Value ~= nil then
    if self.FadeIn ~= nil then
      StartOverrideRandomizedWeather(self.Value, self.FadeIn)
    else
      StartOverrideRandomizedWeather(self.Value, -1)
    end
  end
  Started(self)
  Out(self)
end
function OverrideRandomizedWeather:Stop()
  local Stopped = self.Stopped
  local Out = self.Out
  StopOverrideRandomizedWeather()
  Stopped(self)
  Out(self)
end
export = OverrideRandomizedWeather
OverrideRandomizedWeather = nil
