export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.LayerMain = "S20M100_Main"
  self.PlayerRank = 2
  self.LayerExtra = "StreetRace02_Main"
  self.RaceSpawnPoint = "9223372048124668563"
  self[22] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_22_Unloaded
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[12] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Loaded = self.f_12_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_3_TeleportDone
  self[20] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[20]
  l0._graph = self
  l0.PreOut = self.f_20_PreOut
  l0.PostOut = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_8_Out
  self[15] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[15]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_15_PostOut
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[6] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = self.f_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[11]
  l0._graph = self
  l0.OnRaceStarted = self.f_11_OnRaceStarted
  l0.OnRaceStopped = self.f_11_OnRaceStopped
  self[18] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"StartFade", "EndCin"}
  }
  l0.Started = self.f_18_Started
  l0.Stopped = self.f_18_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_18_Skipped
  l0.Finished = self.f_18_Finished
  l0.SPOut.StartFade = self.f_18_SPOut__StartFade_
  l0.SPOut.EndCin = self.f_18_SPOut__EndCin_
  self[14] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_14_Unloaded
  l0.Reseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[23] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[17] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_17_TeleportDone
  self[9] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_9_Out
  l0.ResetOut = DummyFunction
  self[13] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[13]
  l0._graph = self
  l0.PreOut = self.f_13_PreOut
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
  l0 = self[4]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[4]
  l0:Input(0)
end
function export:f_22_Unloaded()
  local l0
  self = self._graph
  l0 = self[14]
  l0.LayerName = self.LayerExtra
  l0:Unload()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.LayerName = self.LayerMain
  l0:Unload()
end
function export:f_12_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_3_TeleportDone()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Start()
end
function export:f_16_A_eq_B()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_16_A_ne_B()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SpawnPoint = "9223372057497981852"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_20_PreOut()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_15_PostOut()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.LayerName = self.LayerExtra
  l0:Load()
end
function export:f_6_Loaded()
  local l0
  self = self._graph
  l0 = self[12]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0:Deactivate()
end
function export:f_11_OnRaceStarted()
  local l0
  self = self._graph
  l0 = self[11]
  self.PlayerRank = l0.PlayerRank
end
function export:f_11_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[11]
  self.PlayerRank = l0.PlayerRank
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.PlayerRank
  l0.B = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_16_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = self.f_16_A_ne_B
  l0:In()
end
function export:f_18_Finished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(2)
end
function export:f_18_Skipped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_18_SPOut__EndCin_()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Stop()
end
function export:f_18_SPOut__StartFade_()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(3)
end
function export:f_18_Started()
  local l0
  self = self._graph
  self:en_19()
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0:Activate()
end
function export:f_18_Stopped()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_14_Unloaded()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Seconds = 2
  l0:Start()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Config = "RaceDbConfig.9223372048334619786"
  l0.CinematicSceneEntity = "9223372059218807166"
  l0.CinematicSequenceFile = "sequences/StreetRace/streetrace02.seq"
  l0:StartRace()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046851754598"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:Enable()
end
function export:f_23_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_17_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_13_PreOut()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SpawnPoint = "9223372062774355693"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:en_19()
  local l0
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372056688299401"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.SceneEntity = "9223372060777191034"
  l0.SequenceFile = "sequences/ScriptedEvents/s20m100_ekartstory.seq"
end
_compilerVersion = 4
