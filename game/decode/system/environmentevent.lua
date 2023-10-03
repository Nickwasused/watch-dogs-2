EnvironmentEvent = {}
function EnvironmentEvent:Create(cbox)
end
function EnvironmentEvent:Init(cbox)
end
function EnvironmentEvent:ShutDown()
end
function EnvironmentEvent:Start()
  local Started = self.Started
  local Out = self.Out
  self.FadeIn = self.FadeIn or 30
  if self.PresetName ~= nil and self.FadeIn ~= nil then
    BeginEnvironmentEvent(self.PresetName, self.FadeIn)
  end
  Started(self)
  Out(self)
end
function EnvironmentEvent:Stop()
  local Stopped = self.Stopped
  local Out = self.Out
  self.PresetName = self.PresetName or "Clear"
  self.FadeIn = self.FadeIn or 30
  if self.PresetName ~= nil and self.FadeIn ~= nil then
    EndEnvironmentEvent(self.PresetName, self.FadeIn)
  end
  Stopped(self)
  Out(self)
end
function EnvironmentEvent:SetCloudIntensity()
  local CloudIntensitySet = self.CloudIntensitySet
  local Out = self.Out
  if self.CloudIntensity ~= nil and self.CloudTransitionTime ~= nil then
    SetProjectedCloudsIntensity(self.CloudIntensity, self.CloudTransitionTime)
  end
  CloudIntensitySet(self)
  Out(self)
end
export = EnvironmentEvent
EnvironmentEvent = nil
