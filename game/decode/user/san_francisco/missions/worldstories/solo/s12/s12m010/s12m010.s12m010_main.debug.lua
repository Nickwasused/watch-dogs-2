export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main"
  self.PlayerEntity = nil
  self.CLO_HQ = {}
  self.box_Timer_v2_17 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_17
  l0._graph = self
  l0._name = "box_Timer_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|55691997"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_17_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|168726283"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_GetNPC_10 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_10
  l0._graph = self
  l0._name = "box_GetNPC_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|216765778"
  l0.GotNPCList = self.f_box_GetNPC_10_GotNPCList
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Progression_Tag_Monitor_19 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_19
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|340256719"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_Progression_Tag_Monitor_19_HasNOT
  self.box_PlaySequence_v5_13 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_13
  l0._graph = self
  l0._name = "box_PlaySequence_v5_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|488809463"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_13_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_13_Finished
  self.box_RewardController_v3_20 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_20
  l0._graph = self
  l0._name = "box_RewardController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|510457532"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_OnceOnly_v3_8 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_8
  l0._graph = self
  l0._name = "box_OnceOnly_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|517132537"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_8_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_11 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_11
  l0._graph = self
  l0._name = "box_CinematicPrep_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|692701358"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_11_PostOut
  self.box_MissionLayer_v2_5 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_5
  l0._graph = self
  l0._name = "box_MissionLayer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1032760348"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_5_Unloaded
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_12 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_12
  l0._graph = self
  l0._name = "box_CinematicPrep_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1539554664"
  l0.PreOut = self.f_box_CinematicPrep_12_PreOut
  l0.PostOut = DummyFunction
  self.box_MissionController_v4_4 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_4
  l0._graph = self
  l0._name = "box_MissionController_v4_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1719255333"
  self.box_GetNPC_3 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_3
  l0._graph = self
  l0._name = "box_GetNPC_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1963438802"
  l0.GotNPCList = self.f_box_GetNPC_3_GotNPCList
  self.box_Progression_Tag_Monitor_9 = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self.box_Progression_Tag_Monitor_9
  l0._graph = self
  l0._name = "box_Progression_Tag_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|2004085140"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_box_Progression_Tag_Monitor_9_Has
  l0.HasNOT = DummyFunction
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
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1461157035", "1461157035", "S12M010_Main", "CheckPoint_0", "box_MultipleOR_16.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_16()
  l0 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|219154970", "219154970", "S12M010_Main", "In", "box_MultipleOR_16.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_17_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_11
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_17
  l1 = self.box_CinematicPrep_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|172654536", "172654536", "S12M010_Main", "box_Timer_v2_17.TimeElapsed", "box_CinematicPrep_11.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S12M010_Main"
  l0 = self.box_MultipleOR_16
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|209676620", "209676620", "S12M010_Main", "box_MultipleOR_16.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_GetNPC_10_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_10
  self.CLO_HQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.CLO_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|2102071904"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_7_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_10
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1996485022", "1996485022", "S12M010_Main", "box_GetNPC_10.GotNPCList", "box_VisibilityController_v2_7.Show", l0, l1)
  l1:Show()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|794668992", "794668992", "S12M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_13
  l0.SceneEntity = "9223372047779436066"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_AttackHackSpace_CIN/s12_attackhackspace_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1838448142", "1838448142", "S12M010_Main", "box_VisibilityController_v2_6.Hidden", "box_PlaySequence_v5_13.Start", clone, l0)
  l0:Start()
end
function export:f_box_Progression_Tag_Monitor_19_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_20
  l0.ItemDB = "Items.9223372055970893582"
  l0 = self.box_Progression_Tag_Monitor_19
  l1 = self.box_RewardController_v3_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|747059190", "747059190", "S12M010_Main", "box_Progression_Tag_Monitor_19.HasNOT", "box_RewardController_v3_20.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PlaySequence_v5_13_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1664590308", "1664590308", "S12M010_Main", "box_PlaySequence_v5_13.Finished", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_13_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_8()
  l0 = self.box_PlaySequence_v5_13
  l1 = self.box_OnceOnly_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|278186418", "278186418", "S12M010_Main", "box_PlaySequence_v5_13.Skipped", "box_OnceOnly_v3_8.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_10
  l0.Group = "HQ_Talker"
  l0 = self.box_OnceOnly_v3_8
  l1 = self.box_GetNPC_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|662074901", "662074901", "S12M010_Main", "box_OnceOnly_v3_8.Out", "box_GetNPC_10.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_CinematicPrep_11_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l0.LayerName = "S12M010_Main"
  l0 = self.box_CinematicPrep_11
  l1 = self.box_MissionLayer_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1340233589", "1340233589", "S12M010_Main", "box_CinematicPrep_11.PostOut", "box_MissionLayer_v2_5.Unload", l0, l1)
  l1:Unload()
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
  l0 = self.box_CinematicPrep_12
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1950081836", "1950081836", "S12M010_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_12.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_MissionLayer_v2_5_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_5
  l1 = self.box_MissionController_v4_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|680391487", "680391487", "S12M010_Main", "box_MissionLayer_v2_5.Unloaded", "box_MissionController_v4_4.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_CinematicPrep_12_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_3
  l0.Group = "HQ_Talker"
  l0 = self.box_CinematicPrep_12
  l1 = self.box_GetNPC_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|988332070", "988332070", "S12M010_Main", "box_CinematicPrep_12.PreOut", "box_GetNPC_3.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1448765809", "1448765809", "S12M010_Main", "box_Ordered_Output_18.Out", "box_Timer_v2_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Progression_Tag_Monitor_9
  l0.ProgressionTag = "ProgressionTag.9223372055970893578"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1814643707", "1814643707", "S12M010_Main", "box_Ordered_Output_18.Out", "box_Progression_Tag_Monitor_9.HasProgressionTag", clone, l0)
  l0:HasProgressionTag()
end
function export:f_box_GetNPC_3_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_3
  self.CLO_HQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.CLO_HQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|332000485"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_6_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_3
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|651883460", "651883460", "S12M010_Main", "box_GetNPC_3.GotNPCList", "box_VisibilityController_v2_6.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Progression_Tag_Monitor_9_Has()
  local l0, l1
  self = self._graph
  l0 = self.box_Progression_Tag_Monitor_19
  l0.ProgressionTag = "ProgressionTag.9223372055970893581"
  l0 = self.box_Progression_Tag_Monitor_9
  l1 = self.box_Progression_Tag_Monitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1363524875", "1363524875", "S12M010_Main", "box_Progression_Tag_Monitor_9.Has", "box_Progression_Tag_Monitor_19.HasProgressionTag", l0, l1)
  l1:HasProgressionTag()
end
function export:f_box_VisibilityController_v2_7_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|1800137700"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M010\\S12M010.domino|@S12M010_Main|513159703", "513159703", "S12M010_Main", "box_VisibilityController_v2_7.Shown", "box_Ordered_Output_18.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_OnceOnly_v3_8()
end
_compilerVersion = 4
