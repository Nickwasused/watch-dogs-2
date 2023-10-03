export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S20M100_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main"
  self.PlayerEntity = nil
  self.LayerMain = "S20M100_Main"
  self.PlayerRank = 2
  self.LayerExtra = "StreetRace02_Main"
  self.RaceSpawnPoint = "9223372048124668563"
  self.box_MissionLayer_v2_22 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|212178311"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_22_Unloaded
  l0.Reseted = DummyFunction
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|317358805"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MissionLayer_v2_12 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_12
  l0._graph = self
  l0._name = "box_MissionLayer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|405608613"
  l0.Loaded = self.f_box_MissionLayer_v2_12_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Teleport_To_SpawnPoint_3 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_3
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|558365546"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_3_TeleportDone
  self.box_CinematicPrep_20 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_20
  l0._graph = self
  l0._name = "box_CinematicPrep_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|619194139"
  l0.PreOut = self.f_box_CinematicPrep_20_PreOut
  l0.PostOut = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1000985289"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_CinematicPrep_15 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_15
  l0._graph = self
  l0._name = "box_CinematicPrep_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1089771694"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_15_PostOut
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1271253983"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MissionLayer_v2_6 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_6
  l0._graph = self
  l0._name = "box_MissionLayer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1332673116"
  l0.Loaded = self.f_box_MissionLayer_v2_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionController_v4_1 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_1
  l0._graph = self
  l0._name = "box_MissionController_v4_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1351304192"
  self.box_RaceWithCinematic_11 = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.debug.lua")
  l0 = self.box_RaceWithCinematic_11
  l0._graph = self
  l0._name = "box_RaceWithCinematic_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1422526889"
  l0.OnRaceStarted = self.f_box_RaceWithCinematic_11_OnRaceStarted
  l0.OnRaceStopped = self.f_box_RaceWithCinematic_11_OnRaceStopped
  self.box_PlaySequence_v5_18 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_18
  l0._graph = self
  l0._name = "box_PlaySequence_v5_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1429993934"
  l0._DynamicAnchors = {
    SPOut = {"StartFade", "EndCin"}
  }
  l0.Started = self.f_box_PlaySequence_v5_18_Started
  l0.Stopped = self.f_box_PlaySequence_v5_18_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_18_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_18_Finished
  l0.SPOut.StartFade = self.f_box_PlaySequence_v5_18_SPOut__StartFade_
  l0.SPOut.EndCin = self.f_box_PlaySequence_v5_18_SPOut__EndCin_
  self.box_MissionLayer_v2_14 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_14
  l0._graph = self
  l0._name = "box_MissionLayer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1565764341"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_14_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_2 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_2
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1616941791"
  l0.Out = self.f_box_MissionCheckpointReach_2_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_23 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_23
  l0._graph = self
  l0._name = "box_Timer_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1876976914"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Teleport_To_SpawnPoint_17 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_17
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1903549521"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_17_TeleportDone
  self.box_OnceOnly_v3_9 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_9
  l0._graph = self
  l0._name = "box_OnceOnly_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1920679274"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_9_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_13 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_13
  l0._graph = self
  l0._name = "box_CinematicPrep_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|2065725629"
  l0.PreOut = self.f_box_CinematicPrep_13_PreOut
  l0.PostOut = DummyFunction
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|48811079", "48811079", "S20M100_Main", "CheckPoint_0", "box_MultipleOR_4.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|606076932", "606076932", "S20M100_Main", "In", "box_MultipleOR_4.Input", self, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_22_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_14
  l0.LayerName = self.LayerExtra
  l0 = self.box_MissionLayer_v2_22
  l1 = self.box_MissionLayer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1922114386", "1922114386", "S20M100_Main", "box_MissionLayer_v2_22.Unloaded", "box_MissionLayer_v2_14.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = self.LayerMain
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionLayer_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|2028343910", "2028343910", "S20M100_Main", "box_MultipleOR_10.Out", "box_MissionLayer_v2_22.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_12_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1745114153"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_MissionLayer_v2_12
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|98887762", "98887762", "S20M100_Main", "box_MissionLayer_v2_12.Loaded", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_Teleport_To_SpawnPoint_3_TeleportDone()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_18()
  l0 = self.box_Teleport_To_SpawnPoint_3
  l1 = self.box_PlaySequence_v5_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|34295006", "34295006", "S20M100_Main", "box_Teleport_To_SpawnPoint_3.TeleportDone", "box_PlaySequence_v5_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Integers_v2_16_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_13
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|684420360", "684420360", "S20M100_Main", "box_Compare_Integers_v2_16.A_eq_B", "box_CinematicPrep_13.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Compare_Integers_v2_16_A_ne_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_17
  l0.SpawnPoint = "9223372057497981852"
  l0.KeepBlackScreenOnExit = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|739430676", "739430676", "S20M100_Main", "box_Compare_Integers_v2_16.A_ne_B", "box_Teleport_To_SpawnPoint_17.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|425817927", "425817927", "S20M100_Main", "box_Simple_Node_5.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_20_PreOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_CinematicPrep_20
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1011190607", "1011190607", "S20M100_Main", "box_CinematicPrep_20.PreOut", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_8
  l1 = self.box_OnceOnly_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1828062854", "1828062854", "S20M100_Main", "box_MultipleOR_8.Out", "box_OnceOnly_v3_9.In", l0, l1)
  l1:In(0)
end
function export:f_box_CinematicPrep_15_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_15
  l1 = self.box_MissionController_v4_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1621253233", "1621253233", "S20M100_Main", "box_CinematicPrep_15.PostOut", "box_MissionController_v4_1.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_6
  l0.LayerName = self.LayerExtra
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionLayer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1344119535", "1344119535", "S20M100_Main", "box_MultipleOR_4.Out", "box_MissionLayer_v2_6.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionLayer_v2_6_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l0.LayerName = self.LayerMain
  l0 = self.box_MissionLayer_v2_6
  l1 = self.box_MissionLayer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|636351751", "636351751", "S20M100_Main", "box_MissionLayer_v2_6.Loaded", "box_MissionLayer_v2_12.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_20
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1770277137", "1770277137", "S20M100_Main", "box_Ordered_Output_24.Out", "box_CinematicPrep_20.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMusicController_19()
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1813266286", "1813266286", "S20M100_Main", "box_Ordered_Output_24.Out", "box_MissionMusicController_19.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_RaceWithCinematic_11_OnRaceStarted()
  local l0
  self = self._graph
  l0 = self.box_RaceWithCinematic_11
  self.PlayerRank = l0.PlayerRank
end
function export:f_box_RaceWithCinematic_11_OnRaceStopped()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_11
  self.PlayerRank = l0.PlayerRank
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.PlayerRank
  l0.B = 1
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|587162229"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_16_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = self.f_box_Compare_Integers_v2_16_A_ne_B
  l0 = self.box_RaceWithCinematic_11
  l1 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|883307256", "883307256", "S20M100_Main", "box_RaceWithCinematic_11.OnRaceStopped", "box_Compare_Integers_v2_16.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_18_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PlaySequence_v5_18
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|2050432574", "2050432574", "S20M100_Main", "box_PlaySequence_v5_18.Finished", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_PlaySequence_v5_18_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PlaySequence_v5_18
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1142269423", "1142269423", "S20M100_Main", "box_PlaySequence_v5_18.Skipped", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_18_SPOut__EndCin_()
  local l0
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_18()
  l0 = self.box_PlaySequence_v5_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1418320952", "1418320952", "S20M100_Main", "box_PlaySequence_v5_18.SPOut", "box_PlaySequence_v5_18.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_PlaySequence_v5_18_SPOut__StartFade_()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PlaySequence_v5_18
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1356846656", "1356846656", "S20M100_Main", "box_PlaySequence_v5_18.SPOut", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_PlaySequence_v5_18_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMusicController_19()
  l0 = self.box_PlaySequence_v5_18
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|465556264", "465556264", "S20M100_Main", "box_PlaySequence_v5_18.Started", "box_MissionMusicController_19.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySequence_v5_18_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_PlaySequence_v5_18
  l1 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1946185085", "1946185085", "S20M100_Main", "box_PlaySequence_v5_18.Stopped", "box_MultipleOR_8.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionLayer_v2_14_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_23
  l0.Seconds = 2
  l0 = self.box_MissionLayer_v2_14
  l1 = self.box_Timer_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1996028505", "1996028505", "S20M100_Main", "box_MissionLayer_v2_14.Unloaded", "box_Timer_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RaceWithCinematic_11
  l0.Config = "RaceDbConfig.9223372048334619786"
  l0.CinematicSceneEntity = "9223372059218807166"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace02.seq"
  l0 = self.box_MissionCheckpointReach_2
  l1 = self.box_RaceWithCinematic_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|2024412943", "2024412943", "S20M100_Main", "box_MissionCheckpointReach_2.Out", "box_RaceWithCinematic_11.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_Get_Player_ID_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046851754598"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1973740747"
  l0.Out = self.f_box_AI_Agent_Zone_21_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|255443408", "255443408", "S20M100_Main", "box_Get_Player_ID_7.Out", "box_AI_Agent_Zone_21.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_23_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_15
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_23
  l1 = self.box_CinematicPrep_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|476621091", "476621091", "S20M100_Main", "box_Timer_v2_23.TimeElapsed", "box_CinematicPrep_15.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Teleport_To_SpawnPoint_17_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|602032999"
  l0.Out = self.f_box_Simple_Node_5_Out
  l0 = self.box_Teleport_To_SpawnPoint_17
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1153800257", "1153800257", "S20M100_Main", "box_Teleport_To_SpawnPoint_17.TeleportDone", "box_Simple_Node_5.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1351121100"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_OnceOnly_v3_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1747320542", "1747320542", "S20M100_Main", "box_OnceOnly_v3_9.Out", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_2
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|863938130", "863938130", "S20M100_Main", "box_AI_Agent_Zone_21.Out", "box_MissionCheckpointReach_2.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_13_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_3
  l0.SpawnPoint = "9223372062774355693"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_CinematicPrep_13
  l1 = self.box_Teleport_To_SpawnPoint_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|798790254", "798790254", "S20M100_Main", "box_CinematicPrep_13.PreOut", "box_Teleport_To_SpawnPoint_3.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_MissionMusicController_19()
  local l0
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372056688299401"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S20\\S20M100.domino|@S20M100_Main|1105927913"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_PlaySequence_v5_18()
  local l0
  l0 = self.box_PlaySequence_v5_18
  l0.SceneEntity = "9223372060777191034"
  l0.SequenceFile = "sequences/ScriptedEvents/s20m100_ekartstory.seq"
end
_compilerVersion = 4
