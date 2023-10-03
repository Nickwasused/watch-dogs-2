export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/Cinematic.Cinematic.debug.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S18M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main"
  self.Finished = DummyFunction
  self.PlayerEntity = nil
  self.LayerMain = "S18M050_Main"
  self.Main_Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M050.Objectives.Objective010",
    item = "Objective",
    id = "542994"
  }
  self.Camera_Reference = "9223372058236804380"
  self.box_MissionLayer_v2_51 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_51
  l0._graph = self
  l0._name = "box_MissionLayer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|29764122"
  l0.Loaded = self.f_box_MissionLayer_v2_51_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_49 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_49
  l0._graph = self
  l0._name = "box_Multiple_AND_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|118506190"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_49_Out
  self.box_Progression_Tag_Monitor_21 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_21
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|156280151"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_21_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_21_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_21_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_21_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_21_HasNOT
  self.box_MissionMessageController_v3_24 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_24
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|157932639"
  l0.Out = self.f_box_MissionMessageController_v3_24_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionCheckpointReach_41 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_41
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|202410253"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|203146801"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MultipleOR_28 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_28
  l0._graph = self
  l0._name = "box_MultipleOR_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|220790893"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_28_Out
  self.box_MissionMessageController_v3_12 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_12
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|382943022"
  l0.Out = self.f_box_MissionMessageController_v3_12_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_3 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_3
  l0._graph = self
  l0._name = "box_MapPointController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|400109829"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|407255288"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|486571608"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_ObjectiveMonitor_v2_22 = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self.box_ObjectiveMonitor_v2_22
  l0._graph = self
  l0._name = "box_ObjectiveMonitor_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|493383370"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_ObjectiveMonitor_v2_22_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = DummyFunction
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = self.f_box_ObjectiveMonitor_v2_22_ObjectiveMessageFinished
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self.box_Progression_Tag_Monitor_18 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_18
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|609440225"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_18_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_18_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_18_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_18_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_18_HasNOT
  self.box_Multiple_AND_44 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_44
  l0._graph = self
  l0._name = "box_Multiple_AND_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|613210523"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_44_Out
  self.box_Multiple_AND_48 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_48
  l0._graph = self
  l0._name = "box_Multiple_AND_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|641449338"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_48_Out
  self.box_MissionCheckpointReach_40 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_40
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|751361930"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_11 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_11
  l0._graph = self
  l0._name = "box_CinematicPrep_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|812557317"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_11_PostOut
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|884743016"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|942242544"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_20_Out
  self.box_Progression_Tag_Monitor_2 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_2
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1033462128"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_2_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_2_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_2_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_2_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_2_HasNOT
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1121606647"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_MapPointController_v4_16 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_16
  l0._graph = self
  l0._name = "box_MapPointController_v4_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1194047464"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_16_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1219554193"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_MissionCheckpointReach_43 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_43
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1320862608"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MapPointController_v4_31 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_31
  l0._graph = self
  l0._name = "box_MapPointController_v4_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1485145505"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_31_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Multiple_AND_50 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_50
  l0._graph = self
  l0._name = "box_Multiple_AND_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1529630558"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_50_Out
  self.box_MissionCheckpointReach_42 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_42
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1659694795"
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Cinematic_52 = cbox:CreateBox("domino/Library/common/Cinematic.Cinematic.debug.lua")
  l0 = self.box_Cinematic_52
  l0._graph = self
  l0._name = "box_Cinematic_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1679812025"
  l0.Started = DummyFunction
  l0.Finished = self.f_box_Cinematic_52_Finished
  self.box_MapPointController_v4_19 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_19
  l0._graph = self
  l0._name = "box_MapPointController_v4_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1769476570"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_19_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_v3_32 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_32
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1775203980"
  l0.Out = self.f_box_MissionMessageController_v3_32_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_25 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_25
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1820374921"
  l0.Out = self.f_box_MissionMessageController_v3_25_Out
  l0.MessageCompleted = DummyFunction
  self.box_Mission_End_5 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_5
  l0._graph = self
  l0._name = "box_Mission_End_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1856645140"
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1940357287"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_23 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_23
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2032579184"
  l0.Out = self.f_box_MissionMessageController_v3_23_Out
  l0.MessageCompleted = DummyFunction
  self.box_Progression_Tag_Monitor_33 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_33
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2035513808"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_33_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_33_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_33_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_33_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_33_HasNOT
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
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1254156370", "1254156370", "S18M050_Main", "CheckPoint_0", "box_MultipleOR_10.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|251512566", "251512566", "S18M050_Main", "CheckPoint_1", "box_MultipleOR_20.Input", self, l0)
  l0:Input(0)
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|616848635", "616848635", "S18M050_Main", "CheckPoint_2", "box_MultipleOR_20.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|686699712", "686699712", "S18M050_Main", "CheckPoint_3", "box_MultipleOR_20.Input", self, l0)
  l0:Input(2)
end
function export:CheckPoint_4()
  local l0
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1027855486", "1027855486", "S18M050_Main", "CheckPoint_4", "box_MultipleOR_20.Input", self, l0)
  l0:Input(3)
end
function export:CheckPoint_5()
  local l0
  self:OnEnter_box_Mission_End_5()
  l0 = self.box_Mission_End_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|524814878", "524814878", "S18M050_Main", "CheckPoint_5", "box_Mission_End_5.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1754422323", "1754422323", "S18M050_Main", "In", "box_MultipleOR_10.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_51_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|628344758"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_51
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2118049988", "2118049988", "S18M050_Main", "box_MissionLayer_v2_51.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1229391078", "1229391078", "S18M050_Main", "box_Ordered_Output_29.Out", "box_MultipleOR_28.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_50()
  l0 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1965255331", "1965255331", "S18M050_Main", "box_Ordered_Output_29.Out", "box_Multiple_AND_50.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Multiple_AND_49_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_40
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_Multiple_AND_49
  l1 = self.box_MissionCheckpointReach_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|530574269", "530574269", "S18M050_Main", "box_Multiple_AND_49.Out", "box_MissionCheckpointReach_40.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_21_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|79345215"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0 = self.box_Progression_Tag_Monitor_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1412697083", "1412697083", "S18M050_Main", "box_Progression_Tag_Monitor_21.Disabled", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_21_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_19()
  l0 = self.box_Progression_Tag_Monitor_21
  l1 = self.box_MapPointController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2141242216", "2141242216", "S18M050_Main", "box_Progression_Tag_Monitor_21.Enabled", "box_MapPointController_v4_19.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_21_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_Progression_Tag_Monitor_21
  l1 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|876960934", "876960934", "S18M050_Main", "box_Progression_Tag_Monitor_21.Has", "box_MultipleOR_28.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_21_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_21()
  l0 = self.box_Progression_Tag_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1735332260", "1735332260", "S18M050_Main", "box_Progression_Tag_Monitor_21.HasNOT", "box_Progression_Tag_Monitor_21.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_21_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_21()
  l0 = self.box_Progression_Tag_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1328066803", "1328066803", "S18M050_Main", "box_Progression_Tag_Monitor_21.TagIsOwned", "box_Progression_Tag_Monitor_21.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionMessageController_v3_24_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_48()
  l0 = self.box_MissionMessageController_v3_24
  l1 = self.box_Multiple_AND_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1564318082", "1564318082", "S18M050_Main", "box_MissionMessageController_v3_24.Out", "box_Multiple_AND_48.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionLayer_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|963437406", "963437406", "S18M050_Main", "box_MultipleOR_10.Out", "box_MissionLayer_v2_7.Load", l0, l1)
  l1:Load()
end
function export:f_box_MultipleOR_28_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_19()
  l0 = self.box_MultipleOR_28
  l1 = self.box_MapPointController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1329076934", "1329076934", "S18M050_Main", "box_MultipleOR_28.Out", "box_MapPointController_v4_19.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|991744438"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0 = self.box_MissionMessageController_v3_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1151420249", "1151420249", "S18M050_Main", "box_MissionMessageController_v3_12.Out", "box_Ordered_Output_26.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_3_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_23
  l0.Objective = self.Main_Objective
  l0 = self.box_MapPointController_v4_3
  l1 = self.box_MissionMessageController_v3_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1280476439", "1280476439", "S18M050_Main", "box_MapPointController_v4_3.Hidden", "box_MissionMessageController_v3_23.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_31()
  l0 = self.box_MultipleOR_30
  l1 = self.box_MapPointController_v4_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|626102640", "626102640", "S18M050_Main", "box_MultipleOR_30.Out", "box_MapPointController_v4_31.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|152567141", "152567141", "S18M050_Main", "box_Ordered_Output_45.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_44()
  l0 = self.box_Multiple_AND_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1483802503", "1483802503", "S18M050_Main", "box_Ordered_Output_45.Out", "box_Multiple_AND_44.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_11
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_17
  l1 = self.box_CinematicPrep_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2013370657", "2013370657", "S18M050_Main", "box_MultipleOR_17.Out", "box_CinematicPrep_11.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_ObjectiveMonitor_v2_22_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Cinematic_52
  l0.SceneEntity = "9223372060283293249"
  l0.SequenceFile = "sequences/ScriptedEvents/graffitigoldengate.seq"
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_ObjectiveMonitor_v2_22
  l1 = self.box_Cinematic_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1544145703", "1544145703", "S18M050_Main", "box_ObjectiveMonitor_v2_22.Disabled", "box_Cinematic_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_ObjectiveMonitor_v2_22_ObjectiveMessageFinished()
  local l0
  self = self._graph
  self:OnEnter_box_ObjectiveMonitor_v2_22()
  l0 = self.box_ObjectiveMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|991229129", "991229129", "S18M050_Main", "box_ObjectiveMonitor_v2_22.ObjectiveMessageFinished", "box_ObjectiveMonitor_v2_22.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_4
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1012693145", "1012693145", "S18M050_Main", "box_Get_Player_ID_8.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_Progression_Tag_Monitor_18_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|867033678"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_Progression_Tag_Monitor_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|24895028", "24895028", "S18M050_Main", "box_Progression_Tag_Monitor_18.Disabled", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_18_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_16()
  l0 = self.box_Progression_Tag_Monitor_18
  l1 = self.box_MapPointController_v4_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1223921201", "1223921201", "S18M050_Main", "box_Progression_Tag_Monitor_18.Enabled", "box_MapPointController_v4_16.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_18_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_Progression_Tag_Monitor_18
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1496266673", "1496266673", "S18M050_Main", "box_Progression_Tag_Monitor_18.Has", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_18_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_18()
  l0 = self.box_Progression_Tag_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1590131952", "1590131952", "S18M050_Main", "box_Progression_Tag_Monitor_18.HasNOT", "box_Progression_Tag_Monitor_18.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_18_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_18()
  l0 = self.box_Progression_Tag_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1035855857", "1035855857", "S18M050_Main", "box_Progression_Tag_Monitor_18.TagIsOwned", "box_Progression_Tag_Monitor_18.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Multiple_AND_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_43
  l0.Checkpoint = "CheckPoint_4"
  l0 = self.box_Multiple_AND_44
  l1 = self.box_MissionCheckpointReach_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1564710262", "1564710262", "S18M050_Main", "box_Multiple_AND_44.Out", "box_MissionCheckpointReach_43.In", l0, l1)
  l1:In()
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
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1298410011", "1298410011", "S18M050_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Multiple_AND_48_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_41
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_Multiple_AND_48
  l1 = self.box_MissionCheckpointReach_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|257213440", "257213440", "S18M050_Main", "box_Multiple_AND_48.Out", "box_MissionCheckpointReach_41.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|815269842", "815269842", "S18M050_Main", "box_Ordered_Output_47.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_49()
  l0 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2077712380", "2077712380", "S18M050_Main", "box_Ordered_Output_47.Out", "box_Multiple_AND_49.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_CinematicPrep_11_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_12
  l0.Objective = self.Main_Objective
  l0.IncrementalObjectiveTotal = 4
  l0 = self.box_CinematicPrep_11
  l1 = self.box_MissionMessageController_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1907370812", "1907370812", "S18M050_Main", "box_CinematicPrep_11.PostOut", "box_MissionMessageController_v3_12.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|193127780", "193127780", "S18M050_Main", "box_Ordered_Output_46.Out", "box_MultipleOR_27.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_48()
  l0 = self.box_Multiple_AND_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1611570844", "1611570844", "S18M050_Main", "box_Ordered_Output_46.Out", "box_Multiple_AND_48.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|497991771"
  l0.Out = self.f_box_Get_Player_ID_8_Out
  l0 = self.box_MissionLayer_v2_7
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1602485145", "1602485145", "S18M050_Main", "box_MissionLayer_v2_7.Loaded", "box_Get_Player_ID_8.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_51
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_20
  l1 = self.box_MissionLayer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1616233377", "1616233377", "S18M050_Main", "box_MultipleOR_20.Out", "box_MissionLayer_v2_51.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ObjectiveMonitor_v2_22()
  l0 = self.box_ObjectiveMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1876964208", "1876964208", "S18M050_Main", "box_Ordered_Output_26.Out", "box_ObjectiveMonitor_v2_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1849422155"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_15_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_15_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_15_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_15_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1894815984", "1894815984", "S18M050_Main", "box_Ordered_Output_26.Out", "box_Ordered_Output_15.In", clone, l0)
  l0:In()
end
function export:f_box_Progression_Tag_Monitor_2_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|744627775"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|957088502", "957088502", "S18M050_Main", "box_Progression_Tag_Monitor_2.Disabled", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_2_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_3()
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = self.box_MapPointController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1960052717", "1960052717", "S18M050_Main", "box_Progression_Tag_Monitor_2.Enabled", "box_MapPointController_v4_3.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_2_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_Progression_Tag_Monitor_2
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1942193663", "1942193663", "S18M050_Main", "box_Progression_Tag_Monitor_2.Has", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_2_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_2()
  l0 = self.box_Progression_Tag_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|464533647", "464533647", "S18M050_Main", "box_Progression_Tag_Monitor_2.HasNOT", "box_Progression_Tag_Monitor_2.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_2_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_2()
  l0 = self.box_Progression_Tag_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1641292541", "1641292541", "S18M050_Main", "box_Progression_Tag_Monitor_2.TagIsOwned", "box_Progression_Tag_Monitor_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_3()
  l0 = self.box_MultipleOR_13
  l1 = self.box_MapPointController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1936107746", "1936107746", "S18M050_Main", "box_MultipleOR_13.Out", "box_MapPointController_v4_3.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v4_16_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_24
  l0.Objective = self.Main_Objective
  l0 = self.box_MapPointController_v4_16
  l1 = self.box_MissionMessageController_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|50992813", "50992813", "S18M050_Main", "box_MapPointController_v4_16.Hidden", "box_MissionMessageController_v3_24.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_16()
  l0 = self.box_MultipleOR_27
  l1 = self.box_MapPointController_v4_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1994449129", "1994449129", "S18M050_Main", "box_MultipleOR_27.Out", "box_MapPointController_v4_16.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v4_31_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_32
  l0.Objective = self.Main_Objective
  l0 = self.box_MapPointController_v4_31
  l1 = self.box_MissionMessageController_v3_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|341303996", "341303996", "S18M050_Main", "box_MapPointController_v4_31.Hidden", "box_MissionMessageController_v3_32.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Multiple_AND_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_42
  l0.Checkpoint = "CheckPoint_3"
  l0 = self.box_Multiple_AND_50
  l1 = self.box_MissionCheckpointReach_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|436799361", "436799361", "S18M050_Main", "box_Multiple_AND_50.Out", "box_MissionCheckpointReach_42.In", l0, l1)
  l1:In()
end
function export:f_box_Cinematic_52_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_5()
  l0 = self.box_Cinematic_52
  l1 = self.box_Mission_End_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1363394215", "1363394215", "S18M050_Main", "box_Cinematic_52.Finished", "box_Mission_End_5.End", l0, l1)
  l1:End()
end
function export:f_box_MapPointController_v4_19_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_25
  l0.Objective = self.Main_Objective
  l0 = self.box_MapPointController_v4_19
  l1 = self.box_MissionMessageController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1454165399", "1454165399", "S18M050_Main", "box_MapPointController_v4_19.Hidden", "box_MissionMessageController_v3_25.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionMessageController_v3_32_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_44()
  l0 = self.box_MissionMessageController_v3_32
  l1 = self.box_Multiple_AND_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|932035245", "932035245", "S18M050_Main", "box_MissionMessageController_v3_32.Out", "box_Multiple_AND_44.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionMessageController_v3_25_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_50()
  l0 = self.box_MissionMessageController_v3_25
  l1 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|2081094028", "2081094028", "S18M050_Main", "box_MissionMessageController_v3_25.Out", "box_Multiple_AND_50.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_15_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_2()
  l0 = self.box_Progression_Tag_Monitor_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1147853873", "1147853873", "S18M050_Main", "box_Ordered_Output_15.Out", "box_Progression_Tag_Monitor_2.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_15_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_18()
  l0 = self.box_Progression_Tag_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1900016498", "1900016498", "S18M050_Main", "box_Ordered_Output_15.Out", "box_Progression_Tag_Monitor_18.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_15_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_21()
  l0 = self.box_Progression_Tag_Monitor_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|812196253", "812196253", "S18M050_Main", "box_Ordered_Output_15.Out", "box_Progression_Tag_Monitor_21.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_Ordered_Output_15_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Progression_Tag_Monitor_33()
  l0 = self.box_Progression_Tag_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1915471544", "1915471544", "S18M050_Main", "box_Ordered_Output_15.Out", "box_Progression_Tag_Monitor_33.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|135199717", "135199717", "S18M050_Main", "box_MissionCheckpointReach_4.Out", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_23_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_49()
  l0 = self.box_MissionMessageController_v3_23
  l1 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1400375259", "1400375259", "S18M050_Main", "box_MissionMessageController_v3_23.Out", "box_Multiple_AND_49.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Progression_Tag_Monitor_33_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|416493297"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_Progression_Tag_Monitor_33
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|678087173", "678087173", "S18M050_Main", "box_Progression_Tag_Monitor_33.Disabled", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_Progression_Tag_Monitor_33_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_31()
  l0 = self.box_Progression_Tag_Monitor_33
  l1 = self.box_MapPointController_v4_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|447311018", "447311018", "S18M050_Main", "box_Progression_Tag_Monitor_33.Enabled", "box_MapPointController_v4_31.Show", l0, l1)
  l1:Show()
end
function export:f_box_Progression_Tag_Monitor_33_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_Progression_Tag_Monitor_33
  l1 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|860334925", "860334925", "S18M050_Main", "box_Progression_Tag_Monitor_33.Has", "box_MultipleOR_30.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_33_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_33()
  l0 = self.box_Progression_Tag_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|1362757513", "1362757513", "S18M050_Main", "box_Progression_Tag_Monitor_33.HasNOT", "box_Progression_Tag_Monitor_33.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_33_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_33()
  l0 = self.box_Progression_Tag_Monitor_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M050.domino|@S18M050_Main|386651009", "386651009", "S18M050_Main", "box_Progression_Tag_Monitor_33.TagIsOwned", "box_Progression_Tag_Monitor_33.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_Multiple_AND_49()
end
function export:OnEnter_box_Progression_Tag_Monitor_21()
  local l0
  l0 = self.box_Progression_Tag_Monitor_21
  l0.ProgressionTag = "ProgressionTag.9223372049571486072"
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_28()
end
function export:OnEnter_box_MapPointController_v4_3()
  local l0
  l0 = self.box_MapPointController_v4_3
  l0.MapPoint = "9223372048440160157"
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_ObjectiveMonitor_v2_22()
  local l0
  l0 = self.box_ObjectiveMonitor_v2_22
  l0.Objective = self.Main_Objective
end
function export:OnEnter_box_Progression_Tag_Monitor_18()
  local l0
  l0 = self.box_Progression_Tag_Monitor_18
  l0.ProgressionTag = "ProgressionTag.9223372049571486070"
end
function export:OnEnter_box_Multiple_AND_44()
end
function export:OnEnter_box_Multiple_AND_48()
end
function export:OnEnter_box_MultipleOR_20()
end
function export:OnEnter_box_Progression_Tag_Monitor_2()
  local l0
  l0 = self.box_Progression_Tag_Monitor_2
  l0.ProgressionTag = "ProgressionTag.9223372048440160165"
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MapPointController_v4_16()
  local l0
  l0 = self.box_MapPointController_v4_16
  l0.MapPoint = "9223372049571486062"
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_MapPointController_v4_31()
  local l0
  l0 = self.box_MapPointController_v4_31
  l0.MapPoint = "9223372050272288738"
end
function export:OnEnter_box_Multiple_AND_50()
end
function export:OnEnter_box_MapPointController_v4_19()
  local l0
  l0 = self.box_MapPointController_v4_19
  l0.MapPoint = "9223372049571486064"
end
function export:OnEnter_box_Mission_End_5()
  local l0
  l0 = self.box_Mission_End_5
  l0.Checkpoint = "CheckPoint_5"
  l0.MissionLayer = self.LayerMain
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372049163244306"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Progression_Tag_Monitor_33()
  local l0
  l0 = self.box_Progression_Tag_Monitor_33
  l0.ProgressionTag = "ProgressionTag.9223372050272288904"
end
function export:Finished()
end
_compilerVersion = 4
