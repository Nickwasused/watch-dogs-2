export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityController.lua")
  cbox:RegisterBox("domino/System/CameraShakeController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/DrawWeapon_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/StimEmitterController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/743649968.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlacingBombOut = DummyFunction
  self.WallDestroyed = DummyFunction
  self.FinishOutro = DummyFunction
  self.StartedOutro = DummyFunction
  self.PlayerEntity = nil
  self._9223372070786404648 = nil
  self[16] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_16_Out
  l0.ResetOut = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = self.f_15_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {
      "OpenDoor",
      "WallDestroyed"
    }
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_1_Finished
  l0.SPOut.OpenDoor = self.f_1_SPOut__OpenDoor_
  l0.SPOut.WallDestroyed = self.f_1_SPOut__WallDestroyed_
  self[17] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[17]
  l0._graph = self
  l0.PreOut = self.f_17_PreOut
  l0.PostOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/CameraShakeController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = self.f_7_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0.Out = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_11_Finished
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = self.f_5_PreOut
  l0.PostOut = DummyFunction
  self[33] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[33]
  l0._graph = self
  l0.Attached = DummyFunction
  self[29] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[29]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[9]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_9_PostOut
  self[10] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = self.f_10_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_10_Skipped
  l0.Finished = self.f_10_Finished
  self[25] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[12]
  l0._graph = self
  l0.PreOut = self.f_12_PreOut
  l0.PostOut = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_28_Started
  l0.Finished = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[14]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_14_PostOut
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
  l0 = self[5]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:InExplosion()
  local l0
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = 30
  l0._graph = self
  l0.Out = self.f_35_Out
  l0:SetTimeOfDay()
end
function export:StartOutro()
  local l0
  l0 = self[17]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:StartPlacingBomb()
  local l0
  l0 = self[12]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Holstered = DummyFunction
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0.GrenadeLauncherEquipped = self.f_13_GrenadeLauncherEquipped
  l0:GrenadeLauncher()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372069083503295"
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_24_Out
  l0:CleanZone()
end
function export:f_15_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 100
  l0.PropagationSpeed = 120
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StartBlackout()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073621389650"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:Disable()
end
function export:f_1_SPOut__OpenDoor_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052089156015"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0:MoveForward()
end
function export:f_1_SPOut__WallDestroyed_()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Strength = 75
  l0.Duration = 3
  l0:Start()
end
function export:f_17_PreOut()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Seconds = 2
  l0:Start()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372069083503291"
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_3_Out
  l0:CleanZone()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  l0.BreakableEntity = "9223372057186122654"
  l0._graph = self
  l0.Broken = DummyFunction
  l0:Break()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372069783328174"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0:SetEnabled()
end
function export:f_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372070786404648"
  l0.SetEnabled = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_37_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_7_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0.Out[2] = self.f_31_Out_2
  l0:In()
end
function export:f_37_Disabled()
  local l0
  self = self._graph
  l0 = self[33]
  l0.Parent = "9223372070786404648"
  l0.Child = "9223372070786404646"
  l0:Attach()
end
function export:f_11_Finished()
  self = self._graph
  self:FinishOutro()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073621389650"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:Enable()
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372069083503294"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
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
  l0.Out = self.f_23_Out
  l0:In()
end
function export:f_18_Out_1()
  self = self._graph
  self:StartedOutro()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SceneEntity = "9223372049606103831"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_SCR_WrenchIntro/s17_m010_scr_wrenchintro.seq"
  l0:Start()
end
function export:f_5_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372069083503289"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
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
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_9_PostOut()
  self = self._graph
  self:PlacingBombOut()
end
function export:f_27_Activated()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SoundId = "soundbinary/743649968.bnk"
  l0:Play()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_10_Finished()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(1)
end
function export:f_10_Skipped()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:f_10_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669167"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_27_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SceneEntity = "9223372056252823039"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_SCR_WrenchPlacingBomb/s17_m010_scr_wrenchplacingbomb.seq"
  l0:Start()
end
function export:f_25_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_12_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372069083503292"
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_22_Out
  l0:CleanZone()
end
function export:f_28_Started()
  local l0
  self = self._graph
  l0 = self[29]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873279"
  l0:StartCommunication()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SceneEntity = "9223372068417557516"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_wrenchserverexplosion.seq"
  l0.LoopAnim = 0
  l0:Start()
end
function export:f_26_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[14]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SceneEntity = "9223372059659772712"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_wrenchoutro.seq"
  l0:Start()
end
function export:f_14_PostOut()
  self = self._graph
  self:Out()
end
function export:f_13_GrenadeLauncherEquipped()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Seconds = 1
  l0:Start()
end
function export:Out()
end
function export:PlacingBombOut()
end
function export:WallDestroyed()
end
function export:FinishOutro()
end
function export:StartedOutro()
end
_compilerVersion = 4
