export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L28M020_RelayController"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController"
  self.Out = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|308780472"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_2_Hacked
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|1087159619"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|2067276414"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:EnableMonitor()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l0.CLO = self.CLO
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|1397895529", "1397895529", "L28M020_RelayController", "EnableMonitor", "box_FreeRoam_Hack_Gameplay_2.Start", self, l0)
  l0:Start()
end
function export:f_box_FreeRoam_Hack_Gameplay_2_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_1
  l0.Objective = self.IncrementObjective
  l0 = self.box_FreeRoam_Hack_Gameplay_2
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|110994634", "110994634", "L28M020_RelayController", "box_FreeRoam_Hack_Gameplay_2.Hacked", "box_MissionMessageController_v3_1.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_4
  l0.Seconds = 3
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|1836136686", "1836136686", "L28M020_RelayController", "box_MissionMessageController_v3_1.Out", "box_Timer_v2_4.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_RelayController|631259037", "631259037", "L28M020_RelayController", "box_Timer_v2_4.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:Out()
end
_compilerVersion = 4
