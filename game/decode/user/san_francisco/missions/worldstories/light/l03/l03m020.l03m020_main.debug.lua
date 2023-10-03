export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L03M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main"
  self.PlayerEntity = nil
  self.DebugAnnotationTextEntity_90 = "9223372047161574284"
  self.L03_StoryIcon_1 = "9223372047161601783"
  self.Temp_HackableEntity_2 = "9223372047161601787"
  self.DebugAnnotationTextEntity_91 = "9223372047161601785"
  self.L03_StoryIcon_0 = "9223372047161574279"
  self.Hackable_Laptop_5 = "9223372048447557450"
  self.box_MissionMessageController_v2_15 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|3296309"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v2_15_MessageCompleted
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Hackable_Controller_4 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_4
  l0._graph = self
  l0._name = "box_Hackable_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|310323735"
  l0.Enabled = self.f_box_Hackable_Controller_4_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionController_v4_14 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_14
  l0._graph = self
  l0._name = "box_MissionController_v4_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1025949383"
  self.box_MissionMessageController_v2_5 = cbox:CreateBox("domino/System/MissionMessageController_v2.lua")
  l0 = self.box_MissionMessageController_v2_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1049694553"
  l0.Out = DummyFunction
  l0.MessageRequested = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Monitor_3 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_3
  l0._graph = self
  l0._name = "box_Hackable_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1176999541"
  l0.Enabled = self.f_box_Hackable_Monitor_3_Enabled
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_3_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1740017110"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
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
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "L03M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1104553538", "1104553538", "L03M020_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionMessageController_v2_15_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_15
  l1 = self.box_MissionController_v4_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|2139418166", "2139418166", "L03M020_Main", "box_MissionMessageController_v2_15.MessageCompleted", "box_MissionController_v4_14.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|794668992", "794668992", "L03M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Controller_4_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v2_5
  l0.Objective = {
    section = "",
    item = "",
    id = "414637"
  }
  l0 = self.box_Hackable_Controller_4
  l1 = self.box_MissionMessageController_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|416116552", "416116552", "L03M020_Main", "box_Hackable_Controller_4.Enabled", "box_MissionMessageController_v2_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_3
  l0.HackableEntity = self.Hackable_Laptop_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|2041558841", "2041558841", "L03M020_Main", "box_Get_Player_ID_1.Out", "box_Hackable_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Hackable_Monitor_3_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_4
  l0.HackableEntity = self.Hackable_Laptop_5
  l0 = self.box_Hackable_Monitor_3
  l1 = self.box_Hackable_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|884154782", "884154782", "L03M020_Main", "box_Hackable_Monitor_3.Enabled", "box_Hackable_Controller_4.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Hackable_Monitor_3_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = self.DebugAnnotationTextEntity_90
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1631140260"
  l0.Enabled = self.f_box_Display_a_debug_annotation_text_entity_6_Enabled
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0 = self.box_Hackable_Monitor_3
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1826511625", "1826511625", "L03M020_Main", "box_Hackable_Monitor_3.HackSuccess", "box_Display_a_debug_annotation_text_entity_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Display_a_debug_annotation_text_entity_6_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_13
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|81213295", "81213295", "L03M020_Main", "box_Display_a_debug_annotation_text_entity_6.Enabled", "box_Timer_v2_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_13
  l1 = self.box_MissionMessageController_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L03\\L03M020.domino|@L03M020_Main|1258376442", "1258376442", "L03M020_Main", "box_Timer_v2_13.TimeElapsed", "box_MissionMessageController_v2_15.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
_compilerVersion = 4
