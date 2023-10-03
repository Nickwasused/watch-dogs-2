export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
end
function export:Init(cbox)
  self.Out = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 3
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:SetTimeOfDay()
end
function export:f_3_Locked()
  self = self._graph
  self:Out()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057528246730"
  l0.FadeIn = nil
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  l0:Start()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_3_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:Out()
end
_compilerVersion = 4
