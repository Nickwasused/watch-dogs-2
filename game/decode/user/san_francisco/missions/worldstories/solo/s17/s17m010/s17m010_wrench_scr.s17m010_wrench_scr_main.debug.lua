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
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
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
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/StimEmitterController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/743649968.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S17M010_Wrench_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main"
  self.Out = DummyFunction
  self.PlacingBombOut = DummyFunction
  self.WallDestroyed = DummyFunction
  self.FinishOutro = DummyFunction
  self.StartedOutro = DummyFunction
  self.PlayerEntity = nil
  self._9223372070786404648 = nil
  self.box_OnceOnly_v3_16 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_16
  l0._graph = self
  l0._name = "box_OnceOnly_v3_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|75260705"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_16_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySequence_v5_15 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_15
  l0._graph = self
  l0._name = "box_PlaySequence_v5_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|201509852"
  l0.Started = self.f_box_PlaySequence_v5_15_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|226631569"
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
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  l0.SPOut.OpenDoor = self.f_box_PlaySequence_v5_1_SPOut__OpenDoor_
  l0.SPOut.WallDestroyed = self.f_box_PlaySequence_v5_1_SPOut__WallDestroyed_
  self.box_CinematicPrep_17 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_17
  l0._graph = self
  l0._name = "box_CinematicPrep_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|288606131"
  l0.PreOut = self.f_box_CinematicPrep_17_PreOut
  l0.PostOut = DummyFunction
  self.box_Camera_Shake_Controller_7 = cbox:CreateBox("domino/System/CameraShakeController.lua")
  l0 = self.box_Camera_Shake_Controller_7
  l0._graph = self
  l0._name = "box_Camera_Shake_Controller_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|676498158"
  l0.Started = self.f_box_Camera_Shake_Controller_7_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_11 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_11
  l0._graph = self
  l0._name = "box_PlaySequence_v5_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|740792414"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_11_Finished
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1157535459"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_SnapAndBind_33 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_33
  l0._graph = self
  l0._name = "box_SnapAndBind_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1220835343"
  l0.Attached = DummyFunction
  self.box_PhoneCommunicationController_29 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_29
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1276295966"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_9 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_9
  l0._graph = self
  l0._name = "box_CinematicPrep_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1426402336"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_9_PostOut
  self.box_PlaySequence_v5_10 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_10
  l0._graph = self
  l0._name = "box_PlaySequence_v5_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1568065920"
  l0.Started = self.f_box_PlaySequence_v5_10_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_10_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_10_Finished
  self.box_Timer_v2_25 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_25
  l0._graph = self
  l0._name = "box_Timer_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1688843264"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_12 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_12
  l0._graph = self
  l0._name = "box_CinematicPrep_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1774054143"
  l0.PreOut = self.f_box_CinematicPrep_12_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_28 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_28
  l0._graph = self
  l0._name = "box_PlaySound_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1791044451"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_28_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_26 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_26
  l0._graph = self
  l0._name = "box_Timer_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1974420890"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_26_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|2068069342"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_14_PostOut
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
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1175365549", "1175365549", "S17M010_Wrench_SCR_Main", "In", "box_CinematicPrep_5.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:InExplosion()
  local l0
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = 30
  l0._graph = self
  l0._name = "box_SetTimeOfDay_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1914373860"
  l0.Out = self.f_box_SetTimeOfDay_35_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1030391004", "1030391004", "S17M010_Wrench_SCR_Main", "InExplosion", "box_SetTimeOfDay_35.SetTimeOfDay", self, l0)
  l0:SetTimeOfDay()
end
function export:StartOutro()
  local l0
  l0 = self.box_CinematicPrep_17
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1769650726", "1769650726", "S17M010_Wrench_SCR_Main", "StartOutro", "box_CinematicPrep_17.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:StartPlacingBomb()
  local l0
  l0 = self.box_CinematicPrep_12
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|706765282", "706765282", "S17M010_Wrench_SCR_Main", "StartPlacingBomb", "box_CinematicPrep_12.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_OnceOnly_v3_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  l0.Pawn = self.PlayerEntity
  l0._graph = self
  l0._name = "box_DrawWeapon_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|2145214894"
  l0.Out = DummyFunction
  l0.Holstered = DummyFunction
  l0.HandgunEquipped = DummyFunction
  l0.AssaultEquipped = DummyFunction
  l0.ShotGunEquipped = DummyFunction
  l0.SniperEquipped = DummyFunction
  l0.GrenadeLauncherEquipped = self.f_box_DrawWeapon_v2_13_GrenadeLauncherEquipped
  l0 = self.box_OnceOnly_v3_16
  l1 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|807745902", "807745902", "S17M010_Wrench_SCR_Main", "box_OnceOnly_v3_16.Out", "box_DrawWeapon_v2_13.GrenadeLauncher", l0, l1)
  l1:GrenadeLauncher()
end
function export:f_box_Lanes_Restrictions_Control_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1996103298"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_24_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|432001827", "432001827", "S17M010_Wrench_SCR_Main", "box_Lanes_Restrictions_Control_23.Out", "box_Cinema_Zone_Cleanup_24.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_PlaySequence_v5_15_Started()
  local l0, l1
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
  l0._name = "box_BlackoutController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1955656814"
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_15
  l1 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|782349561", "782349561", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_15.Started", "box_BlackoutController_2.StartBlackout", l0, l1)
  l1:StartBlackout()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073621389650"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1557070479"
  l0.Out = self.f_box_AI_Agent_Zone_39_Out
  l0 = self.box_PlaySequence_v5_1
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1965841059", "1965841059", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_1.Finished", "box_AI_Agent_Zone_39.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlaySequence_v5_1_SPOut__OpenDoor_()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Opens the door if the player closed it before starting the event", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'MoveableEntityController')-- Comment: Opens the door if the player closed it before starting the event")
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052089156015"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1350984001"
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
  l0 = self.box_PlaySequence_v5_1
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|2131158662", "2131158662", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_1.SPOut", "box_MoveableEntityController_8.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_PlaySequence_v5_1_SPOut__WallDestroyed_()
  local l0, l1
  self = self._graph
  l0 = self.box_Camera_Shake_Controller_7
  l0.Strength = 75
  l0.Duration = 3
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_Camera_Shake_Controller_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|967554453", "967554453", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_1.SPOut", "box_Camera_Shake_Controller_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_17_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_25
  l0.Seconds = 2
  l0 = self.box_CinematicPrep_17
  l1 = self.box_Timer_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1842727284", "1842727284", "S17M010_Wrench_SCR_Main", "box_CinematicPrep_17.PreOut", "box_Timer_v2_25.Start", l0, l1)
  l1:Start()
end
function export:f_box_Lanes_Restrictions_Control_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Cinema_Zone_Cleanup_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|986225403"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_3_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|51476590", "51476590", "S17M010_Wrench_SCR_Main", "box_Lanes_Restrictions_Control_19.Out", "box_Cinema_Zone_Cleanup_3.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BreakableEntityController.lua")]
  l0.BreakableEntity = "9223372057186122654"
  l0._graph = self
  l0._name = "box_BreakableEntityController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1381797042"
  l0.Broken = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|2141443827", "2141443827", "S17M010_Wrench_SCR_Main", "box_Ordered_Output_31.Out", "box_BreakableEntityController_6.Break", clone, l0)
  l0:Break()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = "9223372069783328174"
  l0._graph = self
  l0._name = "box_Stim_Emitter_Controller_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|749297564"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1913205781", "1913205781", "S17M010_Wrench_SCR_Main", "box_Ordered_Output_31.Out", "box_Stim_Emitter_Controller_30.SetEnabled", clone, l0)
  l0:SetEnabled()
end
function export:f_box_Ordered_Output_31_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372070786404648"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|723411780"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_37_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|440832713", "440832713", "S17M010_Wrench_SCR_Main", "box_Ordered_Output_31.Out", "box_LightController_37.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Camera_Shake_Controller_7_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|600387971"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_31_Out_2
  l0 = self.box_Camera_Shake_Controller_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1700292635", "1700292635", "S17M010_Wrench_SCR_Main", "box_Camera_Shake_Controller_7.Started", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_37_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SnapAndBind_33
  l0.Parent = "9223372070786404648"
  l0.Child = "9223372070786404646"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1440119740", "1440119740", "S17M010_Wrench_SCR_Main", "box_LightController_37.Disabled", "box_SnapAndBind_33.Attach", clone, l0)
  l0:Attach()
end
function export:f_box_PlaySequence_v5_11_Finished()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|304085307", "304085307", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_11.Finished", "FinishOutro", l0, self)
  self:FinishOutro()
end
function export:f_box_Cinema_Zone_Cleanup_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372073621389650"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1683589629"
  l0.Out = self.f_box_AI_Agent_Zone_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|822946503", "822946503", "S17M010_Wrench_SCR_Main", "box_Cinema_Zone_Cleanup_22.Out", "box_AI_Agent_Zone_38.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Lanes_Restrictions_Control_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|103919950"
  l0.Out = self.f_box_Lanes_Restrictions_Control_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|23509207", "23509207", "S17M010_Wrench_SCR_Main", "box_Ordered_Output_18.Out", "box_Lanes_Restrictions_Control_23.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1731451243", "1731451243", "S17M010_Wrench_SCR_Main", "box_Ordered_Output_18.Out", "StartedOutro", clone, self)
  self:StartedOutro()
end
function export:f_box_Cinema_Zone_Cleanup_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_10
  l0.SceneEntity = "9223372049606103831"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_SCR_WrenchIntro/s17_m010_scr_wrenchintro.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|428087029", "428087029", "S17M010_Wrench_SCR_Main", "box_Cinema_Zone_Cleanup_3.Out", "box_PlaySequence_v5_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
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
  l0._name = "box_Lanes_Restrictions_Control_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|449431001"
  l0.Out = self.f_box_Lanes_Restrictions_Control_19_Out
  l0 = self.box_CinematicPrep_5
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1283706153", "1283706153", "S17M010_Wrench_SCR_Main", "box_CinematicPrep_5.PreOut", "box_Lanes_Restrictions_Control_19.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_9_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1255161691", "1255161691", "S17M010_Wrench_SCR_Main", "box_CinematicPrep_9.PostOut", "PlacingBombOut", l0, self)
  self:PlacingBombOut()
end
function export:f_box_MissionMusicController_27_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_28
  l0.SoundId = "soundbinary/743649968.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1538864187", "1538864187", "S17M010_Wrench_SCR_Main", "box_MissionMusicController_27.Activated", "box_PlaySound_v2_28.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_Agent_Zone_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_9
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1482866625", "1482866625", "S17M010_Wrench_SCR_Main", "box_AI_Agent_Zone_39.Out", "box_CinematicPrep_9.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_PlaySequence_v5_10_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_16()
  l0 = self.box_PlaySequence_v5_10
  l1 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|291904869", "291904869", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_10.Finished", "box_OnceOnly_v3_16.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_10_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_16()
  l0 = self.box_PlaySequence_v5_10
  l1 = self.box_OnceOnly_v3_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|2018055430", "2018055430", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_10.Skipped", "box_OnceOnly_v3_16.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_10_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669167"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1550110545"
  l0.Activated = self.f_box_MissionMusicController_27_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySequence_v5_10
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|509118148", "509118148", "S17M010_Wrench_SCR_Main", "box_PlaySequence_v5_10.Started", "box_MissionMusicController_27.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_AI_Agent_Zone_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372056252823039"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/S17_M010_SCR_WrenchPlacingBomb/s17_m010_scr_wrenchplacingbomb.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1977175803", "1977175803", "S17M010_Wrench_SCR_Main", "box_AI_Agent_Zone_38.Out", "box_PlaySequence_v5_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_25_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|960923315"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0 = self.box_Timer_v2_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|910166150", "910166150", "S17M010_Wrench_SCR_Main", "box_Timer_v2_25.TimeElapsed", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_12_PreOut()
  local l0, l1
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
  l0._name = "box_Cinema_Zone_Cleanup_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|807216953"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_22_Out
  l0 = self.box_CinematicPrep_12
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1215305509", "1215305509", "S17M010_Wrench_SCR_Main", "box_CinematicPrep_12.PreOut", "box_Cinema_Zone_Cleanup_22.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_PlaySound_v2_28_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_29
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873279"
  l0 = self.box_PlaySound_v2_28
  l1 = self.box_PhoneCommunicationController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1807870884", "1807870884", "S17M010_Wrench_SCR_Main", "box_PlaySound_v2_28.Started", "box_PhoneCommunicationController_29.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_SetTimeOfDay_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_15
  l0.SceneEntity = "9223372068417557516"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_wrenchserverexplosion.seq"
  l0.LoopAnim = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|224408411", "224408411", "S17M010_Wrench_SCR_Main", "box_SetTimeOfDay_35.Out", "box_PlaySequence_v5_15.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_26_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_26
  l1 = self.box_CinematicPrep_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1943940652", "1943940652", "S17M010_Wrench_SCR_Main", "box_Timer_v2_26.TimeElapsed", "box_CinematicPrep_14.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Cinema_Zone_Cleanup_24_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_11
  l0.SceneEntity = "9223372059659772712"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S17/s17_m010_wrenchoutro.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|1473490762", "1473490762", "S17M010_Wrench_SCR_Main", "box_Cinema_Zone_Cleanup_24.Out", "box_PlaySequence_v5_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_14_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|2130038041", "2130038041", "S17M010_Wrench_SCR_Main", "box_CinematicPrep_14.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_DrawWeapon_v2_13_GrenadeLauncherEquipped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DrawWeapon_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_26
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S17\\S17M010\\s17m010_wrench_scr.domino|@S17M010_Wrench_SCR_Main|653134382", "653134382", "S17M010_Wrench_SCR_Main", "box_DrawWeapon_v2_13.GrenadeLauncherEquipped", "box_Timer_v2_26.Start", clone, l0)
  l0:Start()
end
function export:OnEnter_box_OnceOnly_v3_16()
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
