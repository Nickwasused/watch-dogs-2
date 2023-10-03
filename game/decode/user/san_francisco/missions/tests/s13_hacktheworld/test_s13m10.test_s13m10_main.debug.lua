export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionController_v2.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Test_S13M10_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main"
  self.PlayerEntity = nil
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|53041802"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_7_Unloaded
  l0.Reseted = DummyFunction
  self.box_MapPointController_v3_10 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_10
  l0._graph = self
  l0._name = "box_MapPointController_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|96977459"
  l0.Shown = self.f_box_MapPointController_v3_10_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_13 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_13
  l0._graph = self
  l0._name = "box_MissionMessageController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|273294018"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_13_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MapPointController_v3_11 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_11
  l0._graph = self
  l0._name = "box_MapPointController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|475995080"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_11_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_InteractionScriptMonitor_v2_3 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_3
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|614098471"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_3_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_MissionMessageController_6 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_6
  l0._graph = self
  l0._name = "box_MissionMessageController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|795942847"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_6_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_MapPointController_v3_12 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_12
  l0._graph = self
  l0._name = "box_MapPointController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|961120528"
  l0.Shown = self.f_box_MapPointController_v3_12_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MapPointController_v3_14 = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_14
  l0._graph = self
  l0._name = "box_MapPointController_v3_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1450442519"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_14_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_4 = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self.box_MissionMessageController_4
  l0._graph = self
  l0._name = "box_MissionMessageController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1578721823"
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_box_MissionMessageController_4_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self.box_InteractionScriptMonitor_v2_8 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_8
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1645873475"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_8_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
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
  l0.LayerName = "Test_S13M10_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1104553538", "1104553538", "Test_S13M10_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_7_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionController_v2.lua")]
  l0.Mission = "MissionList.9223372046425794692"
  l0._graph = self
  l0._name = "box_MissionController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1214629298"
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_7
  l1 = Boxes[PathID("domino/System/MissionController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|742644542", "742644542", "Test_S13M10_Main", "box_MissionLayer_v2_7.Unloaded", "box_MissionController_v2_9.TerminateMission", l0, l1)
  l1:TerminateMission()
end
function export:f_box_MapPointController_v3_10_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_3
  l0.InteractionScriptEntity = "9223372046566095242"
  l0 = self.box_MapPointController_v3_10
  l1 = self.box_InteractionScriptMonitor_v2_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|52315355", "52315355", "Test_S13M10_Main", "box_MapPointController_v3_10.Shown", "box_InteractionScriptMonitor_v2_3.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|794668992", "794668992", "Test_S13M10_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_13_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_14
  l0.MapPoint = "9223372046566095248"
  l0 = self.box_MissionMessageController_13
  l1 = self.box_MapPointController_v3_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1952275790", "1952275790", "Test_S13M10_Main", "box_MissionMessageController_13.MessageRequested", "box_MapPointController_v3_14.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v3_11_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_12
  l0.MapPoint = "9223372046566095248"
  l0 = self.box_MapPointController_v3_11
  l1 = self.box_MapPointController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1079698851", "1079698851", "Test_S13M10_Main", "box_MapPointController_v3_11.Hidden", "box_MapPointController_v3_12.Show", l0, l1)
  l1:Show()
end
function export:f_box_InteractionScriptMonitor_v2_3_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_11
  l0.MapPoint = "9223372046566095246"
  l0 = self.box_InteractionScriptMonitor_v2_3
  l1 = self.box_MapPointController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1390641650", "1390641650", "Test_S13M10_Main", "box_InteractionScriptMonitor_v2_3.InteractionFinished", "box_MapPointController_v3_11.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_6_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_8
  l0.InteractionScriptEntity = "9223372046566095244"
  l0 = self.box_MissionMessageController_6
  l1 = self.box_InteractionScriptMonitor_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|292551544", "292551544", "Test_S13M10_Main", "box_MissionMessageController_6.MessageRequested", "box_InteractionScriptMonitor_v2_8.Enable", l0, l1)
  l1:Enable()
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
  l0 = self.box_MissionMessageController_4
  l0.MissionName = "MissionList.9223372046425794692"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Steal",
    id = "316776"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|2051430565", "2051430565", "Test_S13M10_Main", "box_Get_Player_ID_1.Out", "box_MissionMessageController_4.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MapPointController_v3_12_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372046566095036"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|2063485126"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Display_a_debug_annotation_text_entity_5_Disabled
  l0.TextSet = DummyFunction
  l0 = self.box_MapPointController_v3_12
  l1 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|282606859", "282606859", "Test_S13M10_Main", "box_MapPointController_v3_12.Shown", "box_Display_a_debug_annotation_text_entity_5.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v3_14_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "Test_S13M10_Main"
  l0 = self.box_MapPointController_v3_14
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1483483222", "1483483222", "Test_S13M10_Main", "box_MapPointController_v3_14.Hidden", "box_MissionLayer_v2_7.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionMessageController_4_MessageRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v3_10
  l0.MapPoint = "9223372046566095246"
  l0 = self.box_MissionMessageController_4
  l1 = self.box_MapPointController_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|528198856", "528198856", "Test_S13M10_Main", "box_MissionMessageController_4.MessageRequested", "box_MapPointController_v3_10.Show", l0, l1)
  l1:Show()
end
function export:f_box_InteractionScriptMonitor_v2_8_InteractionFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_13
  l0.MissionName = "MissionList.9223372046425794692"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Upload",
    id = "203690"
  }
  l0 = self.box_InteractionScriptMonitor_v2_8
  l1 = self.box_MissionMessageController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1258957135", "1258957135", "Test_S13M10_Main", "box_InteractionScriptMonitor_v2_8.InteractionFinished", "box_MissionMessageController_13.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Display_a_debug_annotation_text_entity_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_6
  l0.MissionName = "MissionList.9223372046425794692"
  l0.Objective = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Upload",
    id = "203690"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\S13_HackTheWorld\\Test_S13M10.domino|@Test_S13M10_Main|1202496934", "1202496934", "Test_S13M10_Main", "box_Display_a_debug_annotation_text_entity_5.Disabled", "box_MissionMessageController_6.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
_compilerVersion = 4
