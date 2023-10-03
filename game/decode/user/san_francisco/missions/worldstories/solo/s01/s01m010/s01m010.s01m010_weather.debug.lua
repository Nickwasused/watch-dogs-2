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
  self._name = "S01M010_Weather"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather"
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
  l0._name = "box_SetTimeOfDay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|1831400532"
  l0.Out = self.f_box_SetTimeOfDay_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|1875164528", "1875164528", "S01M010_Weather", "In", "box_SetTimeOfDay_1.SetTimeOfDay", self, l0)
  l0:SetTimeOfDay()
end
function export:f_box_TimeScale_Controller_3_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|1698414930", "1698414930", "S01M010_Weather", "box_TimeScale_Controller_3.Locked", "Out", clone, self)
  self:Out()
end
function export:f_box_SetTimeOfDay_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057528246730"
  l0.FadeIn = nil
  l0.FadeOut = nil
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|2091324010"
  l0.Started = self.f_box_EnvironmentWeatherOverride_2_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|553927595", "553927595", "S01M010_Weather", "box_SetTimeOfDay_1.Out", "box_EnvironmentWeatherOverride_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_EnvironmentWeatherOverride_2_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|1634204071"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_3_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Weather|1628563853", "1628563853", "S01M010_Weather", "box_EnvironmentWeatherOverride_2.Started", "box_TimeScale_Controller_3.Lock", clone, l0)
  l0:Lock()
end
function export:Out()
end
_compilerVersion = 4
