export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S10M015_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main"
  self.PlayerEntity = nil
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|203467019"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Mission_End_4 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_4
  l0._graph = self
  l0._name = "box_Mission_End_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|338778885"
  self.box_MissionLayer_v2_11 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_11
  l0._graph = self
  l0._name = "box_MissionLayer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|442204695"
  l0.Loaded = self.f_box_MissionLayer_v2_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_6 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_6
  l0._graph = self
  l0._name = "box_CinematicPrep_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|572837789"
  l0.PreOut = self.f_box_CinematicPrep_6_PreOut
  l0.PostOut = DummyFunction
  self.box_Teleport_To_SpawnPoint_15 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_15
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|608860981"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_15_TeleportDone
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|991031874"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1476428308"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySequence_v5_5 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_5
  l0._graph = self
  l0._name = "box_PlaySequence_v5_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1520202143"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_5_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_5_Finished
  self.box_OnceOnly_v3_12 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_12
  l0._graph = self
  l0._name = "box_OnceOnly_v3_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1916381513"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_12_Out
  l0.ResetOut = DummyFunction
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
  l0 = self.box_MissionLayer_v2_11
  l0.LayerName = "S10M015_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1910729510", "1910729510", "S10M015_Main", "CheckPoint_0", "box_MissionLayer_v2_11.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_4()
  l0 = self.box_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|452757540", "452757540", "S10M015_Main", "CheckPoint_1", "box_Mission_End_4.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S10M015_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1104553538", "1104553538", "S10M015_Main", "In", "box_MissionLayer_v2_2.Load", self, l0)
  l0:Load()
end
function export:f_box_AI_Agent_Zone_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_5
  l0.SceneEntity = "9223372047235831008"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S10/S10_DateWithWrench_CIN/s10_datewithwrench_cin.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|911199983", "911199983", "S10M015_Main", "box_AI_Agent_Zone_3.Out", "box_PlaySequence_v5_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionCheckpointReach_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1131396354", "1131396354", "S10M015_Main", "box_MultipleOR_10.Out", "box_MissionCheckpointReach_9.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|794668992", "794668992", "S10M015_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|432013341", "432013341", "S10M015_Main", "box_Get_Player_ID_13.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Cinema_Zone_Cleanup_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372052848351884"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|165070038"
  l0.Out = self.f_box_AI_Agent_Zone_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1800081924", "1800081924", "S10M015_Main", "box_Cinema_Zone_Cleanup_14.Out", "box_AI_Agent_Zone_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_11_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|276122507"
  l0.Out = self.f_box_Get_Player_ID_13_Out
  l0 = self.box_MissionLayer_v2_11
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|839087506", "839087506", "S10M015_Main", "box_MissionLayer_v2_11.Loaded", "box_Get_Player_ID_13.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_8_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_6
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|69377175", "69377175", "S10M015_Main", "box_Show_Or_Hide_All_UI_8.Hidden", "box_CinematicPrep_6.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_6_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372073941982887"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|439168113"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_14_Out
  l0 = self.box_CinematicPrep_6
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|920282505", "920282505", "S10M015_Main", "box_CinematicPrep_6.PreOut", "box_Cinema_Zone_Cleanup_14.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Teleport_To_SpawnPoint_15_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Teleport_To_SpawnPoint_15
  l1 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1053792018", "1053792018", "S10M015_Main", "box_Teleport_To_SpawnPoint_15.TeleportDone", "box_CinematicPrep_7.PostCinematic", l0, l1)
  l1:PostCinematic()
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
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1656093718", "1656093718", "S10M015_Main", "box_Get_Player_ID_1.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_4()
  l0 = self.box_CinematicPrep_7
  l1 = self.box_Mission_End_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1954864236", "1954864236", "S10M015_Main", "box_CinematicPrep_7.PostOut", "box_Mission_End_4.End", l0, l1)
  l1:End()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|562567726"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_8_Hidden
  l0 = self.box_MissionCheckpointReach_9
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|889541634", "889541634", "S10M015_Main", "box_MissionCheckpointReach_9.Out", "box_Show_Or_Hide_All_UI_8.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_PlaySequence_v5_5_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_PlaySequence_v5_5
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1493042039", "1493042039", "S10M015_Main", "box_PlaySequence_v5_5.Finished", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_5_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_12()
  l0 = self.box_PlaySequence_v5_5
  l1 = self.box_OnceOnly_v3_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|129948936", "129948936", "S10M015_Main", "box_PlaySequence_v5_5.Skipped", "box_OnceOnly_v3_12.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_15
  l0.SpawnPoint = "9223372048722992458"
  l0.UseFadeToBlack = 0
  l0 = self.box_OnceOnly_v3_12
  l1 = self.box_Teleport_To_SpawnPoint_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M015\\S10M015.domino|@S10M015_Main|1034840688", "1034840688", "S10M015_Main", "box_OnceOnly_v3_12.Out", "box_Teleport_To_SpawnPoint_15.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_Mission_End_4()
  local l0
  l0 = self.box_Mission_End_4
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S10M015_Main"
  l0.ShowMissionComplete = 0
end
function export:OnEnter_box_OnceOnly_v3_12()
end
_compilerVersion = 4
