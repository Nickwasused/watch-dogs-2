export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/Cinematic.Cinematic.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S18M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S18M020_Main"
  self.box_Progression_Tag_Monitor_11 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_11
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|2865829"
  l0.Enabled = self.f_box_Progression_Tag_Monitor_11_Enabled
  l0.Disabled = self.f_box_Progression_Tag_Monitor_11_Disabled
  l0.TagIsOwned = self.f_box_Progression_Tag_Monitor_11_TagIsOwned
  l0.Has = self.f_box_Progression_Tag_Monitor_11_Has
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_11_HasNOT
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|68311531"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|635647139"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_13 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_13
  l0._graph = self
  l0._name = "box_SnapAndBind_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|894327498"
  l0.Attached = self.f_box_SnapAndBind_13_Attached
  self.box_Cinematic_3 = cbox:CreateBox("domino/Library/common/Cinematic.Cinematic.debug.lua")
  l0 = self.box_Cinematic_3
  l0._graph = self
  l0._name = "box_Cinematic_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|990190386"
  l0.Started = DummyFunction
  l0.Finished = self.f_box_Cinematic_3_Finished
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1285836318"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1712535680"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MapPointController_v4_10 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_10
  l0._graph = self
  l0._name = "box_MapPointController_v4_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1959100951"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_10_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1982309786"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_Mission_End_1 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_1
  l0._graph = self
  l0._name = "box_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|2111401631"
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
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|988597607", "988597607", "S18M020_Main", "CheckPoint_0", "box_MultipleOR_4.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_1()
  l0 = self.box_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|608248752", "608248752", "S18M020_Main", "CheckPoint_1", "box_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1546599727", "1546599727", "S18M020_Main", "In", "box_MultipleOR_4.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Progression_Tag_Monitor_11_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|605354067", "605354067", "S18M020_Main", "box_Progression_Tag_Monitor_11.Disabled", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Progression_Tag_Monitor_11_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_13
  l0.Parent = "9223372048440014102"
  l0.Child = "9223372048498406863"
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = self.box_SnapAndBind_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1483554077", "1483554077", "S18M020_Main", "box_Progression_Tag_Monitor_11.Enabled", "box_SnapAndBind_13.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Progression_Tag_Monitor_11_Has()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_Progression_Tag_Monitor_11
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|156203982", "156203982", "S18M020_Main", "box_Progression_Tag_Monitor_11.Has", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Progression_Tag_Monitor_11_HasNOT()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_11()
  l0 = self.box_Progression_Tag_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|218003784", "218003784", "S18M020_Main", "box_Progression_Tag_Monitor_11.HasNOT", "box_Progression_Tag_Monitor_11.Enable", l0, l0)
  l0:Enable()
end
function export:f_box_Progression_Tag_Monitor_11_TagIsOwned()
  local l0
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_11()
  l0 = self.box_Progression_Tag_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|934444481", "934444481", "S18M020_Main", "box_Progression_Tag_Monitor_11.TagIsOwned", "box_Progression_Tag_Monitor_11.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|139773082"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|2055499637", "2055499637", "S18M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|825538994", "825538994", "S18M020_Main", "box_Get_Player_ID_6.Out", "box_MissionCheckpointReach_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Progression_Tag_Monitor_11()
  l0 = self.box_MissionMessageController_v3_15
  l1 = self.box_Progression_Tag_Monitor_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|791516285", "791516285", "S18M020_Main", "box_MissionMessageController_v3_15.Out", "box_Progression_Tag_Monitor_11.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_SnapAndBind_13_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_10()
  l0 = self.box_SnapAndBind_13
  l1 = self.box_MapPointController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1609036691", "1609036691", "S18M020_Main", "box_SnapAndBind_13.Attached", "box_MapPointController_v4_10.Show", l0, l1)
  l1:Show()
end
function export:f_box_Cinematic_3_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M020.Objectives.Objective010",
    item = "Objective",
    id = "542922"
  }
  l0 = self.box_Cinematic_3
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|908006686", "908006686", "S18M020_Main", "box_Cinematic_3.Finished", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1719155642", "1719155642", "S18M020_Main", "box_MultipleOR_4.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Cinematic_3
  l0.SceneEntity = "9223372055811005796"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S18/s18_mid_cin.seq"
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_Cinematic_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|1703595610", "1703595610", "S18M020_Main", "box_MissionCheckpointReach_9.Out", "box_Cinematic_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_MapPointController_v4_10_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_1()
  l0 = self.box_MapPointController_v4_10
  l1 = self.box_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|356962511", "356962511", "S18M020_Main", "box_MapPointController_v4_10.Hidden", "box_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_10()
  l0 = self.box_MultipleOR_12
  l1 = self.box_MapPointController_v4_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S18\\S18M020.domino|@S18M020_Main|744423702", "744423702", "S18M020_Main", "box_MultipleOR_12.Out", "box_MapPointController_v4_10.Hide", l0, l1)
  l1:Hide()
end
function export:OnEnter_box_Progression_Tag_Monitor_11()
  local l0
  l0 = self.box_Progression_Tag_Monitor_11
  l0.ProgressionTag = "ProgressionTag.9223372048440014106"
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MapPointController_v4_10()
  local l0
  l0 = self.box_MapPointController_v4_10
  l0.MapPoint = "9223372048498406863"
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_Mission_End_1()
  local l0
  l0 = self.box_Mission_End_1
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = self.LayerMain
  l0.ShowMissionComplete = 1
end
_compilerVersion = 4
