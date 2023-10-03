export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[23] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[23]
  l0._graph = self
  l0.PreOut = self.f_23_PreOut
  l0.PostOut = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Loaded = self.f_10_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
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
  self[7] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[24] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_24_Out
  l0.ResetOut = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[18] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_18_Skipped
  l0.Finished = self.f_18_Finished
  self[6] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[6]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_6_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[20]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_20_PostOut
  self[3] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_3_Unloaded
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[13]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_13_PostOut
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
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
  l0 = self[16]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[10]
  l0.LayerName = "S12M030_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[16]
  l0:Input(0)
end
function export:f_23_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055043521142"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_10_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_21_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[7]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Start()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S12M030_Main"
  l0:Load()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372055108868059"
  l0:StartCommunication()
end
function export:f_18_Finished()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(1)
end
function export:f_18_Skipped()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(0)
end
function export:f_6_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[3]
  l0.LayerName = "S12M030_Main"
  l0:Unload()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[13]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SceneEntity = "9223372047235832135"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_LenniDemands_CIN/s12_lennidemands_cin.seq"
  l0:Start()
end
function export:f_20_PostOut()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_3_Unloaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
function export:f_13_PostOut()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372057175221275"
  l0.SceneEntity = "9223372047235832135"
  l0.RemoveBreakable = 0
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 0}
  l0.Out = self.f_8_Out
  l0:CleanZone()
end
_compilerVersion = 4
