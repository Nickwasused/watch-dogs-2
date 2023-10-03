EnvironmentWeatherOverride = {}
function EnvironmentWeatherOverride:Create(cbox)
end
function EnvironmentWeatherOverride:Init(cbox)
end
function EnvironmentWeatherOverride:ShutDown()
end
function EnvironmentWeatherOverride:Start()
  local Started = self.Started
  local Out = self.Out
  self.FadeIn = self.FadeIn or 30
  if self.Preset ~= nil and self.FadeIn ~= nil then
    PushEnvironmentWeatherOverride(self.Preset, self.FadeIn)
  end
  Started(self)
  Out(self)
end
function EnvironmentWeatherOverride:Stop()
  local Stopped = self.Stopped
  local Out = self.Out
  self.FadeOut = self.FadeOut or 30
  if self.Preset ~= nil and self.FadeOut ~= nil then
    PopEnvironmentWeatherOverride(self.Preset, self.FadeOut)
  end
  Stopped(self)
  Out(self)
end
function EnvironmentWeatherOverride:SetSandstormIntensity()
  local SandstormIntensitySet = self.SandstormIntensitySet
  local Out = self.Out
  self.SandstormIntensity = self.SandstormIntensity or 1
  self.SandstormTransitionDuration = self.SandstormTransitionDuration or 10
  SetSandstormIntensity(self.SandstormIntensity, self.SandstormTransitionDuration)
  SandstormIntensitySet(self)
  Out(self)
end
export = EnvironmentWeatherOverride
EnvironmentWeatherOverride = nil
