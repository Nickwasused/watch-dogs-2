export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkMonitor.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main"
  self.PlayerEntity = nil
  self.box_OnceOnly_v3_21 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_21
  l0._graph = self
  l0._name = "box_OnceOnly_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|84794280"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_21_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_3 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_3
  l0._graph = self
  l0._name = "box_OnceOnly_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|148442870"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_3_Out
  l0.ResetOut = DummyFunction
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|344526169"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|420827224"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_PhoneCommunicationController_18 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_18
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1054962682"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Proximity_Monitor_14 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_14
  l0._graph = self
  l0._name = "box_Proximity_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1362239484"
  l0.Enabled = self.f_box_Proximity_Monitor_14_Enabled
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_14_EnterRadius
  l0.ExitRadius = DummyFunction
  self.box_MapPointController_v4_20 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_20
  l0._graph = self
  l0._name = "box_MapPointController_v4_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1406301056"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_20_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_v3_16 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_16
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1426597722"
  l0.Out = self.f_box_MissionMessageController_v3_16_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_25 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_25
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1546143598"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Progression_Tag_Monitor_25_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_25_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_25_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_25_HasNOT
  self.box_PerkMonitor_7 = cbox:CreateBox("domino/System/PerkMonitor.lua")
  l0 = self.box_PerkMonitor_7
  l0._graph = self
  l0._name = "box_PerkMonitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1777695377"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PerkMonitor_7_Disabled
  l0.Has = DummyFunction
  l0.HasNot = self.f_box_PerkMonitor_7_HasNot
  l0.NewPerkUnlocked = DummyFunction
  l0.PerkUnlocked = DummyFunction
  self.box_TutorialController_15 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_15
  l0._graph = self
  l0._name = "box_TutorialController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1885118329"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_19 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_19
  l0._graph = self
  l0._name = "box_Proximity_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|2104342352"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_19_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_19_ExitRadius
  self.box_FreeRoam_Mission_End_4 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_4
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|2127464737"
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1529442596", "1529442596", "S14M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_4()
  l0 = self.box_FreeRoam_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1351634745", "1351634745", "S14M020_Main", "CheckPoint_1", "box_FreeRoam_Mission_End_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1602468432", "1602468432", "S14M020_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_14()
  l0 = self.box_Proximity_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1677946294", "1677946294", "S14M020_Main", "box_Simple_Node_13.Out", "box_Proximity_Monitor_14.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1387752567"
  l0.Out = self.f_box_Simple_Node_10_Out
  l0 = self.box_OnceOnly_v3_21
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|762784787", "762784787", "S14M020_Main", "box_OnceOnly_v3_21.Out", "box_Simple_Node_10.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_18
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346279"
  l0 = self.box_OnceOnly_v3_3
  l1 = self.box_PhoneCommunicationController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|992787624", "992787624", "S14M020_Main", "box_OnceOnly_v3_3.Out", "box_PhoneCommunicationController_18.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Beat_1
  self.PlayerEntity = l0.PlayerEntity
  l0 = self.box_MissionMessageController_v3_16
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M020.Objectives.Objective010",
    item = "Objective",
    id = "354135"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|49297641", "49297641", "S14M020_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_16.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_20
  l0.MapPoint = "9223372047225920191"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0 = self.box_MultipleOR_5
  l1 = self.box_MapPointController_v4_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1536879654", "1536879654", "S14M020_Main", "box_MultipleOR_5.Out", "box_MapPointController_v4_20.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Proximity_Monitor_14()
  l0 = self.box_Proximity_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|929898506", "929898506", "S14M020_Main", "box_Ordered_Output_17.Out", "box_Proximity_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_17_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_19
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372070876763795"
  l0.Radius = 50
  l0.CheckNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|523859452", "523859452", "S14M020_Main", "box_Ordered_Output_17.Out", "box_Proximity_Monitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Proximity_Monitor_14_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_25()
  l0 = self.box_Proximity_Monitor_14
  l1 = self.box_Progression_Tag_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1409516753", "1409516753", "S14M020_Main", "box_Proximity_Monitor_14.Enabled", "box_Progression_Tag_Monitor_25.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_Proximity_Monitor_14_EnterRadius()
  local l0, l1
  self = self._graph
  l0 = self.box_Proximity_Monitor_14
  l1 = self.box_OnceOnly_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|943898944", "943898944", "S14M020_Main", "box_Proximity_Monitor_14.EnterRadius", "box_OnceOnly_v3_3.In", l0, l1)
  l1:In(0)
end
function export:f_box_Simple_Node_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|53075183"
  l0.Out = self.f_box_Simple_Node_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1464427314", "1464427314", "S14M020_Main", "box_Simple_Node_10.Out", "box_Simple_Node_13.In", clone, l0)
  l0:In()
end
function export:f_box_MapPointController_v4_20_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1667708636"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_MapPointController_v4_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|2110318521", "2110318521", "S14M020_Main", "box_MapPointController_v4_20.Hidden", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1281270397"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_17_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_17_Out_1
  l0 = self.box_MissionMessageController_v3_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|895129493", "895129493", "S14M020_Main", "box_MissionMessageController_v3_16.Out", "box_Ordered_Output_17.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_25_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_Progression_Tag_Monitor_25
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1763789510", "1763789510", "S14M020_Main", "box_Progression_Tag_Monitor_25.Disabled", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_25_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_Progression_Tag_Monitor_25
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1374383787", "1374383787", "S14M020_Main", "box_Progression_Tag_Monitor_25.Has", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_25_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_25()
  l0 = self.box_Progression_Tag_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|533387892", "533387892", "S14M020_Main", "box_Progression_Tag_Monitor_25.HasNOT", "box_Progression_Tag_Monitor_25.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_25_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_25()
  l0 = self.box_Progression_Tag_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1388237324", "1388237324", "S14M020_Main", "box_Progression_Tag_Monitor_25.TagIsOwned", "box_Progression_Tag_Monitor_25.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|775908400", "775908400", "S14M020_Main", "box_Ordered_Output_2.Out", "box_OnceOnly_v3_21.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Mission_End_4()
  l0 = self.box_FreeRoam_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|1532532659", "1532532659", "S14M020_Main", "box_Ordered_Output_2.Out", "box_FreeRoam_Mission_End_4.End", clone, l0)
  l0:End()
end
function export:f_box_PerkMonitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_15()
  l0 = self.box_PerkMonitor_7
  l1 = self.box_TutorialController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|217434357", "217434357", "S14M020_Main", "box_PerkMonitor_7.Disabled", "box_TutorialController_15.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_PerkMonitor_7_HasNot()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_15()
  l0 = self.box_PerkMonitor_7
  l1 = self.box_TutorialController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|480589868", "480589868", "S14M020_Main", "box_PerkMonitor_7.HasNot", "box_TutorialController_15.Display", l0, l1)
  l1:Display()
end
function export:f_box_Proximity_Monitor_19_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PerkMonitor_7()
  l0 = self.box_Proximity_Monitor_19
  l1 = self.box_PerkMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|534183057", "534183057", "S14M020_Main", "box_Proximity_Monitor_19.EnterRadius", "box_PerkMonitor_7.HasPerk", l0, l1)
  l1:HasPerk()
end
function export:f_box_Proximity_Monitor_19_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PerkMonitor_7()
  l0 = self.box_Proximity_Monitor_19
  l1 = self.box_PerkMonitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M020\\S14M020.domino|@S14M020_Main|2088828340", "2088828340", "S14M020_Main", "box_Proximity_Monitor_19.ExitRadius", "box_PerkMonitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372046887583453"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_Proximity_Monitor_14()
  local l0
  l0 = self.box_Proximity_Monitor_14
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372047225920191"
  l0.Radius = 14
  l0.CheckDistance3D = 1
end
function export:OnEnter_box_Progression_Tag_Monitor_25()
  local l0
  l0 = self.box_Progression_Tag_Monitor_25
  l0.ProgressionTag = "ProgressionTag.9223372049350067672"
end
function export:OnEnter_box_PerkMonitor_7()
  local l0
  l0 = self.box_PerkMonitor_7
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
end
function export:OnEnter_box_TutorialController_15()
  local l0
  l0 = self.box_TutorialController_15
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_RCEnvSkillCheck",
    item = "Description",
    id = "693271"
  }
  l0.Duration = -1
end
function export:OnEnter_box_FreeRoam_Mission_End_4()
  local l0
  l0 = self.box_FreeRoam_Mission_End_4
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372048421346281"
  l0.Checkpoint = "CheckPoint_1"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
