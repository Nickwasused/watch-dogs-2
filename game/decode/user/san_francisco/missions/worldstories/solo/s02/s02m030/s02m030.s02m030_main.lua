export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M030/s02m030_cin_hotelelevator.S02M030_CIN_HotelElevator_Main.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[24] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = self.f_24_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[13] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_13_Skipped
  l0.Finished = self.f_13_Finished
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_23_Out
  l0.ResetOut = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Loaded = self.f_26_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_22_Unloaded
  self[3] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_7_Unloaded
  l0.Reseted = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_28_PostOut
  self[11] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M030/s02m030_cin_hotelelevator.S02M030_CIN_HotelElevator_Main.lua")
  l0 = self[11]
  l0._graph = self
  l0.EndCine = self.f_11_EndCine
  self[25] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[17] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = self.f_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[4]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_4_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[5] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  self[19] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[19]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_19_PostOut
  self[21] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_12_TeleportDone
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
  l0 = self[2]
  l0.LayerName = "S02M030_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[26]
  l0.LayerName = "S02M030_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[6]
  l0.LayerName = "S02M030_Main"
  l0:Load()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[16]
  l0:Input(0)
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346318"
  l0:StartCommunication()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_13_Finished()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(1)
end
function export:f_13_Skipped()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(0)
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.SpawnPoint = "9223372048893249649"
  l0.UseFadeToBlack = 1
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_26_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_22_Unloaded()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Succeed()
end
function export:f_7_Unloaded()
  local l0
  self = self._graph
  l0 = self[22]
  l0.LMALayerName = "SF_03_HotelElevator_LMA"
  l0:Unload()
end
function export:f_28_PostOut()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[16]
  l0:Input(1)
end
function export:f_11_EndCine()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SceneEntity = "9223372066729637322"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_FalseProphets-fs_VID/s02_falseprophets-fs_vid.seq"
  l0:Start()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In()
end
function export:f_6_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_4_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LMALayerName = "SF_03_HotelElevator_LMA"
  l0:Unload()
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[7]
  l0.LayerName = "S02M030_Main"
  l0:Unload()
end
function export:f_19_PostOut()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[19]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_12_TeleportDone()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Start()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
_compilerVersion = 4
