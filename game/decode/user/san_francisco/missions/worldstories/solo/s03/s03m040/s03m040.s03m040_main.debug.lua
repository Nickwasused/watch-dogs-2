export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CameraRealign.lua")
  cbox:RegisterBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/EnableVehicleRadioSystem.lua")
  cbox:RegisterBox("Domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/HelicopterBhvController.lua")
  cbox:RegisterBox("Domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("Domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionMusicController.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("Domino/System/PawnHealthController.lua")
  cbox:RegisterBox("Domino/System/PerkController.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("Domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  cbox:RegisterBox("Domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.PreCineCustom.debug.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_fixcarmontage.S03_M040_CIN_FixCarMontage_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_followerfollowup.S03_M040_CIN_FollowerFollowUp_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03_M040_Policebarage.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  cbox:RegisterBox("Domino/System/SetIsHindingInVehicle.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("Domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/SpotlightController.lua")
  cbox:RegisterBox("Domino/System/StopMusic.lua")
  cbox:RegisterBox("Domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("Domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/TimeScaleController.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/TutorialController.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("Domino/System/VisibilityController_v2.lua")
  cbox:RegisterBox("Domino/System/WaitQualitiesLoaded.lua")
  cbox:LoadResource("soundbinary/179661802.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3567884843.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/667391839.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/560068104.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3315532488.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/954305219.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2779495587.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2355984719.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3715876750.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1726277403.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1376891222.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/845007225.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2593602725.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/350855789.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1372795419.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1601051816.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3183431972.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3754729694.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2369558488.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2481776595.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4175605191.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3653684948.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3445084208.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2585425064.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2289138030.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3178721318.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2905607474.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/599109602.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4059773332.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2329595970.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4291373402.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S03M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main"
  self.PlayerEntity = nil
  self.CHIP = nil
  self.PoliceCar1 = nil
  self.PoliceCar2 = nil
  self.PoliceCar3 = nil
  self.PoliceSquad = {}
  self.Policeman1 = nil
  self.Policeman2 = nil
  self.Policemen3 = nil
  self.PoliceCar4 = nil
  self.Wrench = nil
  self.Stunts_ViewCourse = {}
  self.Stunts_Prize = {}
  self.Stunts_RoadBlock = {}
  self.Stunts_Cops = {}
  self.Stunts_Cops2 = {}
  self.Stunts_Barge = {}
  self.Stunts_Final = {}
  self.Stunts_Crane = {}
  self.Stunts_Target = {}
  self.FlatBed = nil
  self.Stunts_05 = {}
  self.Cops_bark = {}
  self.Stunts_Scream = {}
  self.FinalJumpBarks = {}
  self.CopDispatchCall = {}
  self.CopSeeingChip = {}
  self.Helico = nil
  self.PoliceCar_F = nil
  self.ScriptedCop_01 = nil
  self.ScriptedCop_02 = nil
  self.ScriptedCar_01 = nil
  self.ScriptedCar_02 = nil
  self.Time_Left = 0
  self.IsNitroUsed = 0
  self.Helicopter = {}
  self.IsLastStunt = 0
  self.box_MultipleOR_195 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_195
  l0._graph = self
  l0._name = "box_MultipleOR_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|12235479"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_195_Out
  self.box_CheckpointCountDown_22 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_22
  l0._graph = self
  l0._name = "box_CheckpointCountDown_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|17276819"
  l0.Reached = self.f_box_CheckpointCountDown_22_Reached
  self.box_CheckpointCountDown_174 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_174
  l0._graph = self
  l0._name = "box_CheckpointCountDown_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|17560762"
  l0.Reached = self.f_box_CheckpointCountDown_174_Reached
  self.box_CLOController_66 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_66
  l0._graph = self
  l0._name = "box_CLOController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|18696036"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_66_OnUserInPlace
  self.box_CheckpointCountDown_163 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_163
  l0._graph = self
  l0._name = "box_CheckpointCountDown_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|30784316"
  l0.Reached = self.f_box_CheckpointCountDown_163_Reached
  self.box_Mission_End_35 = cbox:CreateBox("Domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_35
  l0._graph = self
  l0._name = "box_Mission_End_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|35350891"
  self.box_CheckpointCountDown_162 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_162
  l0._graph = self
  l0._name = "box_CheckpointCountDown_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|57131291"
  l0.Reached = self.f_box_CheckpointCountDown_162_Reached
  self.box_ListWriterSoundID_17 = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_17
  l0._graph = self
  l0._name = "box_ListWriterSoundID_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|59901372"
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_box_ListWriterSoundID_17_Added
  l0.Removed = self.f_box_ListWriterSoundID_17_Removed
  l0.Out = self.f_box_ListWriterSoundID_17_Out
  self.box_S03M040_ScriptedPoliceVehiclesController_251 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_251
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|62659801"
  self.box_VehicleMonitor_v3_153 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_153
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|120110269"
  l0.Enabled = self.f_box_VehicleMonitor_v3_153_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = self.f_box_VehicleMonitor_v3_153_NitroUsed
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_VehicleSeatingController_74 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_74
  l0._graph = self
  l0._name = "box_VehicleSeatingController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|127920377"
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_box_VehicleSeatingController_74_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CheckpointCountDown_179 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_179
  l0._graph = self
  l0._name = "box_CheckpointCountDown_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|131313827"
  l0.Reached = self.f_box_CheckpointCountDown_179_Reached
  self.box_S03M040_ScriptedPoliceVehiclesController_235 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_235
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|133576349"
  self.box_PlayDialog_v2_80 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_80
  l0._graph = self
  l0._name = "box_PlayDialog_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|147080506"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_box_PlayDialog_v2_80_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S03_M040_Policebarage_21 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03_M040_Policebarage.debug.lua")
  l0 = self.box_S03_M040_Policebarage_21
  l0._graph = self
  l0._name = "box_S03_M040_Policebarage_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|147475138"
  l0.Out = self.f_box_S03_M040_Policebarage_21_Out
  self.box_CinematicPrep_18 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_18
  l0._graph = self
  l0._name = "box_CinematicPrep_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|152351460"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_18_PostOut
  self.box_S03_M040_CIN_FollowerFollowUp_Main_86 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_followerfollowup.S03_M040_CIN_FollowerFollowUp_Main.debug.lua")
  l0 = self.box_S03_M040_CIN_FollowerFollowUp_Main_86
  l0._graph = self
  l0._name = "box_S03_M040_CIN_FollowerFollowUp_Main_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|160608091"
  l0.Out = self.f_box_S03_M040_CIN_FollowerFollowUp_Main_86_Out
  self.box_CheckpointCountDown_42 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_42
  l0._graph = self
  l0._name = "box_CheckpointCountDown_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|166565479"
  l0.Reached = self.f_box_CheckpointCountDown_42_Reached
  self.box_Timer_v2_261 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_261
  l0._graph = self
  l0._name = "box_Timer_v2_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|182970567"
  l0.Out = self.f_box_Timer_v2_261_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_261_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CheckpointCountDown_38 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_38
  l0._graph = self
  l0._name = "box_CheckpointCountDown_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|211272515"
  l0.Reached = self.f_box_CheckpointCountDown_38_Reached
  self.box_Timer_v2_48 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_48
  l0._graph = self
  l0._name = "box_Timer_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|216765106"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_239 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_239
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|247944160"
  self.box_HelicopterBhvController_154 = cbox:CreateBox("Domino/System/HelicopterBhvController.lua")
  l0 = self.box_HelicopterBhvController_154
  l0._graph = self
  l0._name = "box_HelicopterBhvController_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|259529837"
  l0.StartCompleted = self.f_box_HelicopterBhvController_154_StartCompleted
  l0.StopCompleted = DummyFunction
  self.box_Timer_v2_44 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_44
  l0._graph = self
  l0._name = "box_Timer_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|261313092"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CheckpointCountDown_160 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_160
  l0._graph = self
  l0._name = "box_CheckpointCountDown_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|276950214"
  l0.Reached = self.f_box_CheckpointCountDown_160_Reached
  self.box_S03M040_ScriptedPoliceVehiclesController_254 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_254
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|290399453"
  self.box_S03M040_ScriptedPoliceVehiclesController_253 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_253
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|306365742"
  self.box_S03M040_ScriptedPoliceVehiclesController_232 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_232
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|345946827"
  self.box_Multiple_AND_93 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_93
  l0._graph = self
  l0._name = "box_Multiple_AND_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|362364810"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_93_Out
  self.box_ListWriter_67 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_67
  l0._graph = self
  l0._name = "box_ListWriter_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|389937340"
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_box_ListWriter_67_Added
  l0.Removed = self.f_box_ListWriter_67_Removed
  l0.Out = self.f_box_ListWriter_67_Out
  self.box_S03M040_SCR_Main_127 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.debug.lua")
  l0 = self.box_S03M040_SCR_Main_127
  l0._graph = self
  l0._name = "box_S03M040_SCR_Main_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|399348758"
  l0.Out = DummyFunction
  l0.SCR_StuntMountain = DummyFunction
  l0.Stunts_FlyBy_Out = DummyFunction
  l0.HighWayStunt_out = DummyFunction
  l0.Ocean_Stunt_Out = DummyFunction
  l0.Final_Stunt_Out = DummyFunction
  l0.Out_Spawned = DummyFunction
  self.box_PhoneCommunicationController_105 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_105
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|401646455"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = self.f_box_PhoneCommunicationController_105_StopCommunicationOut
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_105_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_135 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_135
  l0._graph = self
  l0._name = "box_OnceOnly_v3_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|446309243"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_135_Out
  l0.ResetOut = DummyFunction
  self.box_CheckpointCountDown_111 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_111
  l0._graph = self
  l0._name = "box_CheckpointCountDown_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|451339148"
  l0.Reached = self.f_box_CheckpointCountDown_111_Reached
  self.box_S03M040_ScriptedPoliceVehiclesController_223 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_223
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|459183163"
  self.box_S03M040_SCR_Main_115 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.debug.lua")
  l0 = self.box_S03M040_SCR_Main_115
  l0._graph = self
  l0._name = "box_S03M040_SCR_Main_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|468010714"
  l0.Out = DummyFunction
  l0.SCR_StuntMountain = self.f_box_S03M040_SCR_Main_115_SCR_StuntMountain
  l0.Stunts_FlyBy_Out = DummyFunction
  l0.HighWayStunt_out = DummyFunction
  l0.Ocean_Stunt_Out = DummyFunction
  l0.Final_Stunt_Out = DummyFunction
  l0.Out_Spawned = DummyFunction
  self.box_PlayDialog_v2_108 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_108
  l0._graph = self
  l0._name = "box_PlayDialog_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|471470587"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_108_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_VehicleSeatingController_83 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_83
  l0._graph = self
  l0._name = "box_VehicleSeatingController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|476324056"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_83_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_Perk_Controller_97 = cbox:CreateBox("Domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_97
  l0._graph = self
  l0._name = "box_Perk_Controller_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|493889825"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = self.f_box_Perk_Controller_97_PerkRemoved
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_CheckpointCountDown_158 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_158
  l0._graph = self
  l0._name = "box_CheckpointCountDown_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|539066488"
  l0.Reached = self.f_box_CheckpointCountDown_158_Reached
  self.box_S03M040_ScriptedPoliceVehiclesController_216 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_216
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|547003690"
  self.box_S03M040_ScriptedPoliceVehiclesController_225 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_225
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|547934007"
  self.box_S03M040_ScriptedPoliceVehiclesController_224 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_224
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|562500638"
  self.box_CheckpointCountDown_186 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_186
  l0._graph = self
  l0._name = "box_CheckpointCountDown_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|602565506"
  l0.Reached = self.f_box_CheckpointCountDown_186_Reached
  self.box_TriggerMonitor_v2_43 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_43
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|617675131"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_43_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MultipleOR_121 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_121
  l0._graph = self
  l0._name = "box_MultipleOR_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|629076269"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_121_Out
  self.box_Teleport_To_SpawnPoint_128 = cbox:CreateBox("Domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_128
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|641147941"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_128_TeleportDone
  self.box_PlayDialogInVehicle_125 = cbox:CreateBox("Domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_125
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|644235259"
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  l0.Skipped = DummyFunction
  self.box_MissionCheckpointReach_196 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_196
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|648300881"
  l0.Out = self.f_box_MissionCheckpointReach_196_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_30 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_30
  l0._graph = self
  l0._name = "box_PlaySound_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|655866582"
  l0.Out = self.f_box_PlaySound_v2_30_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_VehicleSeatingController_8 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_8
  l0._graph = self
  l0._name = "box_VehicleSeatingController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|671875140"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_8_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_15 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_15
  l0._graph = self
  l0._name = "box_SetBoolean_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|683509805"
  l0.Out = self.f_box_SetBoolean_v2_15_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_15_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_15_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_15_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_15_SetFromBool
  self.box_CheckpointCountDown_178 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_178
  l0._graph = self
  l0._name = "box_CheckpointCountDown_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|684139338"
  l0.Reached = self.f_box_CheckpointCountDown_178_Reached
  self.box_MissionCheckpointReach_89 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_89
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|688572348"
  l0.Out = self.f_box_MissionCheckpointReach_89_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_215 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_215
  l0._graph = self
  l0._name = "box_PlaySound_v2_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|709137256"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|709888603"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_3_PostOut
  self.box_PreCineCustom_106 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.PreCineCustom.debug.lua")
  l0 = self.box_PreCineCustom_106
  l0._graph = self
  l0._name = "box_PreCineCustom_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|741832615"
  l0.PreOut = self.f_box_PreCineCustom_106_PreOut
  self.box_S03M040_ScriptedPoliceVehiclesController_222 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_222
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|742624889"
  self.box_CheckpointCountDown_173 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_173
  l0._graph = self
  l0._name = "box_CheckpointCountDown_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|775190300"
  l0.Reached = self.f_box_CheckpointCountDown_173_Reached
  self.box_S03M040_SCR_Main_47 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.debug.lua")
  l0 = self.box_S03M040_SCR_Main_47
  l0._graph = self
  l0._name = "box_S03M040_SCR_Main_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|779440027"
  l0.Out = DummyFunction
  l0.SCR_StuntMountain = DummyFunction
  l0.Stunts_FlyBy_Out = DummyFunction
  l0.HighWayStunt_out = self.f_box_S03M040_SCR_Main_47_HighWayStunt_out
  l0.Ocean_Stunt_Out = DummyFunction
  l0.Final_Stunt_Out = DummyFunction
  l0.Out_Spawned = DummyFunction
  self.box_CheckpointCountDown_188 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_188
  l0._graph = self
  l0._name = "box_CheckpointCountDown_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|796867819"
  l0.Reached = self.f_box_CheckpointCountDown_188_Reached
  self.box_MissionCheckpointReach_155 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_155
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|802678244"
  l0.Out = self.f_box_MissionCheckpointReach_155_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CheckpointCountDown_122 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_122
  l0._graph = self
  l0._name = "box_CheckpointCountDown_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|827938321"
  l0.Reached = self.f_box_CheckpointCountDown_122_Reached
  self.box_S03M040_ScriptedPoliceVehiclesController_250 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_250
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|838008260"
  self.box_PlayDialog_v2_50 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_50
  l0._graph = self
  l0._name = "box_PlayDialog_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|883548251"
  l0.Started = self.f_box_PlayDialog_v2_50_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_76 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_76
  l0._graph = self
  l0._name = "box_CLOController_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|912073816"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_76_OnUserInPlace
  self.box_PlayDialog_v2_23 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_23
  l0._graph = self
  l0._name = "box_PlayDialog_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|992361373"
  l0.Started = self.f_box_PlayDialog_v2_23_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_103 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_103
  l0._graph = self
  l0._name = "box_PlayDialog_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|998996600"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_19 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_19
  l0._graph = self
  l0._name = "box_PlayDialog_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1001557137"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_84 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_84
  l0._graph = self
  l0._name = "box_MissionLayer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1003808533"
  l0.Loaded = self.f_box_MissionLayer_v2_84_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_134 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_134
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1017337497"
  self.box_CheckpointCountDown_177 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_177
  l0._graph = self
  l0._name = "box_CheckpointCountDown_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1027855023"
  l0.Reached = self.f_box_CheckpointCountDown_177_Reached
  self.box_PlayDialog_v2_91 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_91
  l0._graph = self
  l0._name = "box_PlayDialog_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1042445494"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_37 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_37
  l0._graph = self
  l0._name = "box_PlayDialog_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1066550014"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_37_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CheckpointCountDown_109 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_109
  l0._graph = self
  l0._name = "box_CheckpointCountDown_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1069537540"
  l0.Reached = self.f_box_CheckpointCountDown_109_Reached
  self.box_CheckpointCountDown_180 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_180
  l0._graph = self
  l0._name = "box_CheckpointCountDown_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1074931643"
  l0.Reached = self.f_box_CheckpointCountDown_180_Reached
  self.box_Timer_v2_55 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_55
  l0._graph = self
  l0._name = "box_Timer_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1080076693"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CheckpointCountDown_176 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_176
  l0._graph = self
  l0._name = "box_CheckpointCountDown_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1088002086"
  l0.Reached = self.f_box_CheckpointCountDown_176_Reached
  self.box_CLOController_101 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_101
  l0._graph = self
  l0._name = "box_CLOController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1095779461"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_101_OnUserInPlace
  self.box_CLOController_7 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1097331120"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_7_OnUserInPlace
  self.box_PlaySound_v2_276 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_276
  l0._graph = self
  l0._name = "box_PlaySound_v2_276"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1104244009"
  l0.Out = self.f_box_PlaySound_v2_276_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_58 = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_58
  l0._graph = self
  l0._name = "box_RewardController_v3_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1113885857"
  l0.Out = self.f_box_RewardController_v3_58_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_CheckpointCountDown_85 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_85
  l0._graph = self
  l0._name = "box_CheckpointCountDown_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1123652267"
  l0.Reached = self.f_box_CheckpointCountDown_85_Reached
  self.box_TeleportPlayerInsideHma_82 = cbox:CreateBox("Domino/System/TeleportPlayerInsideHma.lua")
  l0 = self.box_TeleportPlayerInsideHma_82
  l0._graph = self
  l0._name = "box_TeleportPlayerInsideHma_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1127517214"
  l0.Out = DummyFunction
  l0.Done = self.f_box_TeleportPlayerInsideHma_82_Done
  self.box_TutorialController_146 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_146
  l0._graph = self
  l0._name = "box_TutorialController_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1128750913"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_CheckpointCountDown_164 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_164
  l0._graph = self
  l0._name = "box_CheckpointCountDown_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1146483941"
  l0.Reached = self.f_box_CheckpointCountDown_164_Reached
  self.box_Timer_v2_104 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_104
  l0._graph = self
  l0._name = "box_Timer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1148132271"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_217 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_217
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1150982265"
  self.box_ListWriterSoundID_62 = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_62
  l0._graph = self
  l0._name = "box_ListWriterSoundID_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1154033190"
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_box_ListWriterSoundID_62_Added
  l0.Removed = self.f_box_ListWriterSoundID_62_Removed
  l0.Out = self.f_box_ListWriterSoundID_62_Out
  self.box_CheckpointCountDown_185 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_185
  l0._graph = self
  l0._name = "box_CheckpointCountDown_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1157688514"
  l0.Reached = self.f_box_CheckpointCountDown_185_Reached
  self.box_CheckpointCountDown_168 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_168
  l0._graph = self
  l0._name = "box_CheckpointCountDown_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1165629435"
  l0.Reached = self.f_box_CheckpointCountDown_168_Reached
  self.box_ListWriterSoundID_59 = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_59
  l0._graph = self
  l0._name = "box_ListWriterSoundID_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1167048924"
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_box_ListWriterSoundID_59_Added
  l0.Removed = self.f_box_ListWriterSoundID_59_Removed
  l0.Out = self.f_box_ListWriterSoundID_59_Out
  self.box_CheckpointCountDown_170 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_170
  l0._graph = self
  l0._name = "box_CheckpointCountDown_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1189536806"
  l0.Reached = self.f_box_CheckpointCountDown_170_Reached
  self.box_CLOController_69 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_69
  l0._graph = self
  l0._name = "box_CLOController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1222747200"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_69_OnUserInPlace
  self.box_CheckpointCountDown_161 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_161
  l0._graph = self
  l0._name = "box_CheckpointCountDown_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1240782576"
  l0.Reached = self.f_box_CheckpointCountDown_161_Reached
  self.box_CinematicPrep_70 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_70
  l0._graph = self
  l0._name = "box_CinematicPrep_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1249459426"
  l0.PreOut = self.f_box_CinematicPrep_70_PreOut
  l0.PostOut = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_192 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_192
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1253660634"
  self.box_S03M040_ScriptedPoliceVehiclesController_237 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_237
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1279414591"
  self.box_PlaySound_v2_110 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_110
  l0._graph = self
  l0._name = "box_PlaySound_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1296472144"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_189 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_189
  l0._graph = self
  l0._name = "box_Timer_v2_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1298651617"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_189_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CheckpointCountDown_166 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_166
  l0._graph = self
  l0._name = "box_CheckpointCountDown_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1322230449"
  l0.Reached = self.f_box_CheckpointCountDown_166_Reached
  self.box_PlayDialog_v2_16 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_16
  l0._graph = self
  l0._name = "box_PlayDialog_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1349946697"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_16_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CheckpointCountDown_171 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_171
  l0._graph = self
  l0._name = "box_CheckpointCountDown_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1353137060"
  l0.Reached = self.f_box_CheckpointCountDown_171_Reached
  self.box_CheckpointCountDown_181 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_181
  l0._graph = self
  l0._name = "box_CheckpointCountDown_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1367448765"
  l0.Reached = self.f_box_CheckpointCountDown_181_Reached
  self.box_TriggerMonitor_v2_145 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_145
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1379437250"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_145_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_102 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_102
  l0._graph = self
  l0._name = "box_PlayDialog_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1382271237"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_102_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_133 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_133
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1412170446"
  self.box_PlayDialog_v2_40 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_40
  l0._graph = self
  l0._name = "box_PlayDialog_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1416600645"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_40_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CheckpointCountDown_159 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_159
  l0._graph = self
  l0._name = "box_CheckpointCountDown_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1429513757"
  l0.Reached = self.f_box_CheckpointCountDown_159_Reached
  self.box_PlayDialog_v2_73 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_73
  l0._graph = self
  l0._name = "box_PlayDialog_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1437590161"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CheckpointCountDown_183 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_183
  l0._graph = self
  l0._name = "box_CheckpointCountDown_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1451481708"
  l0.Reached = self.f_box_CheckpointCountDown_183_Reached
  self.box_CLOController_77 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_77
  l0._graph = self
  l0._name = "box_CLOController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1472340939"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_77_OnUserInPlace
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1487956311"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_S03M040_ScriptedPoliceVehiclesController_191 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_191
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1488926900"
  self.box_Timer_v2_100 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_100
  l0._graph = self
  l0._name = "box_Timer_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1493905897"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CheckpointCountDown_184 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_184
  l0._graph = self
  l0._name = "box_CheckpointCountDown_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1498108917"
  l0.Reached = self.f_box_CheckpointCountDown_184_Reached
  self.box_PlaySound_v2_274 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_274
  l0._graph = self
  l0._name = "box_PlaySound_v2_274"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1502014630"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriterSoundID_29 = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_29
  l0._graph = self
  l0._name = "box_ListWriterSoundID_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1529621232"
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_box_ListWriterSoundID_29_Added
  l0.Removed = self.f_box_ListWriterSoundID_29_Removed
  l0.Out = self.f_box_ListWriterSoundID_29_Out
  self.box_ListWriterSoundID_78 = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_78
  l0._graph = self
  l0._name = "box_ListWriterSoundID_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1530683886"
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_box_ListWriterSoundID_78_Added
  l0.Removed = self.f_box_ListWriterSoundID_78_Removed
  l0.Out = self.f_box_ListWriterSoundID_78_Out
  self.box_S03M040_ScriptedPoliceVehiclesController_142 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_142
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1553813610"
  self.box_CheckpointCountDown_175 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_175
  l0._graph = self
  l0._name = "box_CheckpointCountDown_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1567230956"
  l0.Reached = self.f_box_CheckpointCountDown_175_Reached
  self.box_TutorialController_24 = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_24
  l0._graph = self
  l0._name = "box_TutorialController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1573737279"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_24_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_VehicleSeatingController_60 = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_60
  l0._graph = self
  l0._name = "box_VehicleSeatingController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1576614467"
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_box_VehicleSeatingController_60_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_63 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_63
  l0._graph = self
  l0._name = "box_ListWriter_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1580295297"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_63_Added
  l0.Removed = self.f_box_ListWriter_63_Removed
  l0.Out = self.f_box_ListWriter_63_Out
  self.box_PlaySound_v2_141 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_141
  l0._graph = self
  l0._name = "box_PlaySound_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1584947213"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_143 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_143
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1589585274"
  l0.Enabled = self.f_box_TriggerMonitor_v2_143_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_143_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Perk_Controller_94 = cbox:CreateBox("Domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_94
  l0._graph = self
  l0._name = "box_Perk_Controller_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1608352722"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = self.f_box_Perk_Controller_94_PerkRemoved
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_CheckpointCountDown_165 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_165
  l0._graph = self
  l0._name = "box_CheckpointCountDown_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1615343586"
  l0.Reached = self.f_box_CheckpointCountDown_165_Reached
  self.box_MultipleOR_116 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_116
  l0._graph = self
  l0._name = "box_MultipleOR_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1635951691"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_116_Out
  self.box_CameraRealign_112 = cbox:CreateBox("Domino/System/CameraRealign.lua")
  l0 = self.box_CameraRealign_112
  l0._graph = self
  l0._name = "box_CameraRealign_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1649358637"
  l0.Out = self.f_box_CameraRealign_112_Out
  self.box_TriggerMonitor_v2_95 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_95
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1673031354"
  l0.Enabled = self.f_box_TriggerMonitor_v2_95_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_95_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MissionMessageController_v3_49 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_49
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1689558680"
  l0.Out = self.f_box_MissionMessageController_v3_49_Out
  l0.MessageCompleted = DummyFunction
  self.box_VehicleMonitor_v3_119 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_119
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1697009605"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = self.f_box_VehicleMonitor_v3_119_IsUnusable
  l0.IsUnderwater = self.f_box_VehicleMonitor_v3_119_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_152 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_152
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1717476518"
  self.box_Wait_Qualities_Loaded_172 = cbox:CreateBox("Domino/System/WaitQualitiesLoaded.lua")
  l0 = self.box_Wait_Qualities_Loaded_172
  l0._graph = self
  l0._name = "box_Wait_Qualities_Loaded_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1755432239"
  l0.Out = DummyFunction
  l0.Loaded = self.f_box_Wait_Qualities_Loaded_172_Loaded
  self.box_CheckpointCountDown_90 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_90
  l0._graph = self
  l0._name = "box_CheckpointCountDown_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1817238185"
  l0.Reached = self.f_box_CheckpointCountDown_90_Reached
  self.box_PlayDialogInVehicle_123 = cbox:CreateBox("Domino/Library/common/Narrative.PlayDialogInVehicle.debug.lua")
  l0 = self.box_PlayDialogInVehicle_123
  l0._graph = self
  l0._name = "box_PlayDialogInVehicle_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1831742809"
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  l0.Skipped = DummyFunction
  self.box_OnceOnly_v3_4 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_4
  l0._graph = self
  l0._name = "box_OnceOnly_v3_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1841429665"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_4_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_144 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_144
  l0._graph = self
  l0._name = "box_PlaySound_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1844315255"
  l0.Out = self.f_box_PlaySound_v2_144_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CheckpointCountDown_156 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_156
  l0._graph = self
  l0._name = "box_CheckpointCountDown_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1849419644"
  l0.Reached = self.f_box_CheckpointCountDown_156_Reached
  self.box_CheckpointCountDown_167 = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.debug.lua")
  l0 = self.box_CheckpointCountDown_167
  l0._graph = self
  l0._name = "box_CheckpointCountDown_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1864504722"
  l0.Reached = self.f_box_CheckpointCountDown_167_Reached
  self.box_PlayDialog_v2_31 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_31
  l0._graph = self
  l0._name = "box_PlayDialog_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1868902209"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_31_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_129 = cbox:CreateBox("Domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_129
  l0._graph = self
  l0._name = "box_PlaySequence_v5_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1870448410"
  l0.Started = self.f_box_PlaySequence_v5_129_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_129_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_129_Finished
  self.box_Perk_Controller_96 = cbox:CreateBox("Domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_96
  l0._graph = self
  l0._name = "box_Perk_Controller_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1885687217"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_96_PerkReseted
  self.box_S03_M040_CIN_FixCarMontage_Main_75 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_fixcarmontage.S03_M040_CIN_FixCarMontage_Main.debug.lua")
  l0 = self.box_S03_M040_CIN_FixCarMontage_Main_75
  l0._graph = self
  l0._name = "box_S03_M040_CIN_FixCarMontage_Main_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1913329515"
  l0.Out_Cin = self.f_box_S03_M040_CIN_FixCarMontage_Main_75_Out_Cin
  self.box_PhoneCommunicationController_52 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_52
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1914438359"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1930671883"
  l0.Out = self.f_box_MissionMessageController_v3_13_Out
  l0.MessageCompleted = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_238 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_238
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1949536041"
  self.box_TriggerMonitor_v2_39 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_39
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1950231834"
  l0.Enabled = self.f_box_TriggerMonitor_v2_39_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_39_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_65 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_65
  l0._graph = self
  l0._name = "box_PlayDialog_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1971324264"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_262 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_262
  l0._graph = self
  l0._name = "box_Multiple_AND_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1989873450"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_262_Out
  self.box_S03M040_ScriptedPoliceVehiclesController_240 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_240
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1999131382"
  self.box_Timer_v2_56 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_56
  l0._graph = self
  l0._name = "box_Timer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2018283829"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriterSoundID_81 = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_81
  l0._graph = self
  l0._name = "box_ListWriterSoundID_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2036120305"
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_box_ListWriterSoundID_81_Added
  l0.Removed = self.f_box_ListWriterSoundID_81_Removed
  l0.Out = self.f_box_ListWriterSoundID_81_Out
  self.box_S03M040_ScriptedPoliceVehiclesController_230 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_230
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2040060459"
  self.box_S03M040_ScriptedPoliceVehiclesController_231 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_231
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2056741920"
  self.box_MissionLayer_v2_36 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_36
  l0._graph = self
  l0._name = "box_MissionLayer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2078954561"
  l0.Loaded = self.f_box_MissionLayer_v2_36_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_107 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_107
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2088469215"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_107_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionController_v4_120 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_120
  l0._graph = self
  l0._name = "box_MissionController_v4_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2118695926"
  self.box_RaceController_14 = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self.box_RaceController_14
  l0._graph = self
  l0._name = "box_RaceController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2133134455"
  l0._DynamicAnchors = {RacerVehicle = 2}
  l0.OnPlayerTeleportedToStart = DummyFunction
  l0.OnRaceSetupFinished = self.f_box_RaceController_14_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_box_RaceController_14_OnRaceStarted
  l0.OnRaceFinished = DummyFunction
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = DummyFunction
  l0.OnRaceStopped = DummyFunction
  self.box_PlayDialog_v2_98 = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_98
  l0._graph = self
  l0._name = "box_PlayDialog_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2138997970"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S03M040_ScriptedPoliceVehiclesController_234 = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.debug.lua")
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_234
  l0._graph = self
  l0._name = "box_S03M040_ScriptedPoliceVehiclesController_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2147052844"
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
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1763321222", "1763321222", "S03M040_Main", "CheckPoint_0", "box_MultipleOR_116.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_84
  l0.LayerName = "S03M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1326077944", "1326077944", "S03M040_Main", "CheckPoint_1", "box_MissionLayer_v2_84.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_36
  l0.LayerName = "S03M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|447850367", "447850367", "S03M040_Main", "CheckPoint_2", "box_MissionLayer_v2_36.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_35()
  l0 = self.box_Mission_End_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|232571499", "232571499", "S03M040_Main", "CheckPoint_3", "box_Mission_End_35.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_116()
  l0 = self.box_MultipleOR_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1946627227", "1946627227", "S03M040_Main", "In", "box_MultipleOR_116.Input", self, l0)
  l0:Input(0)
end
function export:f_box_SetTimeOfDay_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|611073373", "611073373", "S03M040_Main", "box_SetTimeOfDay_5.Out", "box_Get_Player_ID_1.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_195_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_58
  l0.ItemDB = "Items.9223372046454233083"
  l0 = self.box_MultipleOR_195
  l1 = self.box_RewardController_v3_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|464986749", "464986749", "S03M040_Main", "box_MultipleOR_195.Out", "box_RewardController_v3_58.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_CheckpointCountDown_22_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_22
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|547655562"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_CheckpointCountDown_22
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2134593786", "2134593786", "S03M040_Main", "box_CheckpointCountDown_22.Reached", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_CheckpointCountDown_174_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_174
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_176
  l0.Checkpoint = "9223372051000138965"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_174
  l1 = self.box_CheckpointCountDown_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|779647657", "779647657", "S03M040_Main", "box_CheckpointCountDown_174.Reached", "box_CheckpointCountDown_176.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_66_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_66
  self.PoliceCar3 = l0.UserID
  self:OnEnter_box_Multiple_AND_93()
  l1 = self.box_Multiple_AND_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2109848713", "2109848713", "S03M040_Main", "box_CLOController_66.OnUserInPlace", "box_Multiple_AND_93.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Simple_Node_226_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2124025915"
  l0.Out = self.f_box_Simple_Node_228_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1170582925", "1170582925", "S03M040_Main", "box_Simple_Node_226.Out", "box_Simple_Node_228.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|345552263"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_148_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_148_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1962461467", "1962461467", "S03M040_Main", "box_Get_Player_ID_88.Out", "box_Ordered_Output_148.In", clone, l0)
  l0:In()
end
function export:f_box_CheckpointCountDown_163_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_163
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1586755439"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_212_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_212_Out_1
  l0 = self.box_CheckpointCountDown_163
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|313690198", "313690198", "S03M040_Main", "box_CheckpointCountDown_163.Reached", "box_Ordered_Output_212.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_206_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_207()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|133916000", "133916000", "S03M040_Main", "box_ParticleFXController_v2_206.Started", "box_ParticleFXController_v2_207.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_206_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_207()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|813783405", "813783405", "S03M040_Main", "box_ParticleFXController_v2_206.Stopped", "box_ParticleFXController_v2_207.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_42
  l0.Checkpoint = "9223372061394928421"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1261019897", "1261019897", "S03M040_Main", "box_Ordered_Output_10.Out", "box_CheckpointCountDown_42.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1878105760"
  l0.Out = self.f_box_Simple_Node_256_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1504891774", "1504891774", "S03M040_Main", "box_Ordered_Output_10.Out", "box_Simple_Node_256.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_50
  l0.SoundId = "soundbinary/954305219.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|78966968", "78966968", "S03M040_Main", "box_Ordered_Output_10.Out", "box_PlayDialog_v2_50.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049978619986"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1949608694"
  l0.Started = self.f_box_ParticleFXController_v2_113_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|808503007", "808503007", "S03M040_Main", "box_Ordered_Output_10.Out", "box_ParticleFXController_v2_113.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_229_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_222()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1237259243", "1237259243", "S03M040_Main", "box_Ordered_Output_229.Out", "box_S03M040_ScriptedPoliceVehiclesController_222.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_229_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_223()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1800781863", "1800781863", "S03M040_Main", "box_Ordered_Output_229.Out", "box_S03M040_ScriptedPoliceVehiclesController_223.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_229_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_224()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1303985136", "1303985136", "S03M040_Main", "box_Ordered_Output_229.Out", "box_S03M040_ScriptedPoliceVehiclesController_224.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_229_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_225()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|184152248", "184152248", "S03M040_Main", "box_Ordered_Output_229.Out", "box_S03M040_ScriptedPoliceVehiclesController_225.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CheckpointCountDown_162_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_162
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2084450471"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_198_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_198_Out_1
  l0 = self.box_CheckpointCountDown_162
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|618525873", "618525873", "S03M040_Main", "box_CheckpointCountDown_162.Reached", "box_Ordered_Output_198.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriterSoundID_17_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_17
  self.Stunts_Scream = l0.Target
end
function export:f_box_ListWriterSoundID_17_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_17
  self.Stunts_Scream = l0.Target
end
function export:f_box_ListWriterSoundID_17_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_17
  self.Stunts_Scream = l0.Target
end
function export:f_box_Ordered_Output_124_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_109
  l0.Checkpoint = "9223372051000139564"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1669321984", "1669321984", "S03M040_Main", "box_Ordered_Output_124.Out", "box_CheckpointCountDown_109.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_124_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1280744807"
  l0.Out = self.f_box_Simple_Node_218_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|273930175", "273930175", "S03M040_Main", "box_Ordered_Output_124.Out", "box_Simple_Node_218.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_233_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_178
  l0.Checkpoint = "9223372051000139574"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|947965714", "947965714", "S03M040_Main", "box_Ordered_Output_233.Out", "box_CheckpointCountDown_178.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_233_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_231()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|180767510", "180767510", "S03M040_Main", "box_Ordered_Output_233.Out", "box_S03M040_ScriptedPoliceVehiclesController_231.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_233_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_232()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|809272238", "809272238", "S03M040_Main", "box_Ordered_Output_233.Out", "box_S03M040_ScriptedPoliceVehiclesController_232.Start", clone, l0)
  l0:Start()
end
function export:f_box_VehicleMonitor_v3_153_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_261
  l0.Seconds = 15
  l0 = self.box_VehicleMonitor_v3_153
  l1 = self.box_Timer_v2_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|224457912", "224457912", "S03M040_Main", "box_VehicleMonitor_v3_153.Enabled", "box_Timer_v2_261.Start", l0, l1)
  l1:Start()
end
function export:f_box_VehicleMonitor_v3_153_NitroUsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_262()
  l0 = self.box_VehicleMonitor_v3_153
  l1 = self.box_Multiple_AND_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2103061115", "2103061115", "S03M040_Main", "box_VehicleMonitor_v3_153.NitroUsed", "box_Multiple_AND_262.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_VehicleSeatingController_74_Unassigned()
  local l0, l1
  self = self._graph
  l0 = self.box_TeleportPlayerInsideHma_82
  l0.SpawnPoint = "9223372046500782878"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0 = self.box_VehicleSeatingController_74
  l1 = self.box_TeleportPlayerInsideHma_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1371112955", "1371112955", "S03M040_Main", "box_VehicleSeatingController_74.Unassigned", "box_TeleportPlayerInsideHma_82.In", l0, l1)
  l1:In()
end
function export:f_box_CheckpointCountDown_179_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_179
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|606679913"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_126_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_126_Out_1
  l0 = self.box_CheckpointCountDown_179
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1430719924", "1430719924", "S03M040_Main", "box_CheckpointCountDown_179.Reached", "box_Ordered_Output_126.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_236_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_183
  l0.Checkpoint = "9223372051000139576"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|974872383", "974872383", "S03M040_Main", "box_Ordered_Output_236.Out", "box_CheckpointCountDown_183.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_236_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_234()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1573749515", "1573749515", "S03M040_Main", "box_Ordered_Output_236.Out", "box_S03M040_ScriptedPoliceVehiclesController_234.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_236_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_235()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_235
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|365319408", "365319408", "S03M040_Main", "box_Ordered_Output_236.Out", "box_S03M040_ScriptedPoliceVehiclesController_235.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_236_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_238()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|608396089", "608396089", "S03M040_Main", "box_Ordered_Output_236.Out", "box_S03M040_ScriptedPoliceVehiclesController_238.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_236_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_237()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1379086957", "1379086957", "S03M040_Main", "box_Ordered_Output_236.Out", "box_S03M040_ScriptedPoliceVehiclesController_237.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_175
  l0.Checkpoint = "9223372051000138955"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1326762505", "1326762505", "S03M040_Main", "box_Ordered_Output_46.Out", "box_CheckpointCountDown_175.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|267555714"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_68_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1421311278", "1421311278", "S03M040_Main", "box_Ordered_Output_46.Out", "box_Ordered_Output_68.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_220_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1992211077"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_221_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_221_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_221_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_221_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_221_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1213220990", "1213220990", "S03M040_Main", "box_Simple_Node_220.Out", "box_Ordered_Output_221.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_275_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S03M040_SCR_Main_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|983585531", "983585531", "S03M040_Main", "box_Ordered_Output_275.Out", "box_S03M040_SCR_Main_115.SCR_StuntMountain ", clone, l0)
  l0:SCR_StuntMountain_()
end
function export:f_box_Ordered_Output_275_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_276
  l0.SoundId = "soundbinary/560068104.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1966922417", "1966922417", "S03M040_Main", "box_Ordered_Output_275.Out", "box_PlaySound_v2_276.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_64_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_66
  l0.CLO = "9223372049960074776"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1904272030", "1904272030", "S03M040_Main", "box_Ordered_Output_64.Out", "box_CLOController_66.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_69
  l0.CLO = "9223372049960074777"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2064188730", "2064188730", "S03M040_Main", "box_Ordered_Output_64.Out", "box_CLOController_69.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_64_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_77
  l0.CLO = "9223372049960074781"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1886648142", "1886648142", "S03M040_Main", "box_Ordered_Output_64.Out", "box_CLOController_77.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_64_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_76
  l0.CLO = "9223372049960074782"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1773193214", "1773193214", "S03M040_Main", "box_Ordered_Output_64.Out", "box_CLOController_76.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PlayDialog_v2_80_ListFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_55
  l0.Seconds = 2
  l0 = self.box_PlayDialog_v2_80
  l1 = self.box_Timer_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1849546368", "1849546368", "S03M040_Main", "box_PlayDialog_v2_80.ListFinished", "box_Timer_v2_55.Start", l0, l1)
  l1:Start()
end
function export:f_box_S03_M040_Policebarage_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|145749371"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_64_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_64_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_64_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_64_Out_3
  l0 = self.box_S03_M040_Policebarage_21
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|676820592", "676820592", "S03M040_Main", "box_S03_M040_Policebarage_21.Out", "box_Ordered_Output_64.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_18_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2022172330"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_72_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_CinematicPrep_18
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|67602850", "67602850", "S03M040_Main", "box_CinematicPrep_18.PostOut", "box_SetActionMap_v2_72.Push", l0, l1)
  l1:Push()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_20_HideInVehicleEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_195()
  l0 = self.box_MultipleOR_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1621075481", "1621075481", "S03M040_Main", "box_Set_Is_Hiding_In_Vehicle_20.HideInVehicleEnabled", "box_MultipleOR_195.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_ParticleFXController_v2_201_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_202()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|148703565", "148703565", "S03M040_Main", "box_ParticleFXController_v2_201.Started", "box_ParticleFXController_v2_202.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_201_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_202()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|421141857", "421141857", "S03M040_Main", "box_ParticleFXController_v2_201.Stopped", "box_ParticleFXController_v2_202.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_S03_M040_CIN_FollowerFollowUp_Main_86_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S03_M040_CIN_FollowerFollowUp_Main_86
  l1 = self.box_Perk_Controller_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|777173498", "777173498", "S03M040_Main", "box_S03_M040_CIN_FollowerFollowUp_Main_86.Out", "box_Perk_Controller_96.ResetPerks", l0, l1)
  l1:ResetPerks()
end
function export:f_box_ParticleFXController_v2_205_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_206()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1261107084", "1261107084", "S03M040_Main", "box_ParticleFXController_v2_205.Started", "box_ParticleFXController_v2_206.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_205_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_206()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2067285767", "2067285767", "S03M040_Main", "box_ParticleFXController_v2_205.Stopped", "box_ParticleFXController_v2_206.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CheckpointCountDown_42_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_42
  self.Time_Left = l0.RemainingTime
  l0 = self.box_PreCineCustom_106
  l0.KeepDrones = 0
  l0.SkipPostFX = 1
  l0 = self.box_CheckpointCountDown_42
  l1 = self.box_PreCineCustom_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|256009657", "256009657", "S03M040_Main", "box_CheckpointCountDown_42.Reached", "box_PreCineCustom_106.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Timer_v2_261_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M040.Objectives.Objective010",
    item = "Objective",
    id = "342744"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M040.EXTRA.Timer2",
    item = "Timer_TimeLeft",
    id = "693617"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Timer_v2_261
  l1 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1711740914", "1711740914", "S03M040_Main", "box_Timer_v2_261.Out", "box_MissionMessageController_v3_13.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Timer_v2_261_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_262()
  l0 = self.box_Timer_v2_261
  l1 = self.box_Multiple_AND_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2047391904", "2047391904", "S03M040_Main", "box_Timer_v2_261.TimeElapsed", "box_Multiple_AND_262.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_SetActionMap_v2_9_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_RaceController_14()
  l0 = self.box_RaceController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1272491329", "1272491329", "S03M040_Main", "box_SetActionMap_v2_9.Pushed", "box_RaceController_14.SetupRace", clone, l0)
  l0:SetupRace()
end
function export:f_box_Compare_Boolean_v2_272_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationController_105()
  l0 = self.box_PhoneCommunicationController_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1892207717", "1892207717", "S03M040_Main", "box_Compare_Boolean_v2_272.A_is_False", "box_PhoneCommunicationController_105.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_CheckpointCountDown_38_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_38
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_85
  l0.Checkpoint = "9223372051000139560"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_38
  l1 = self.box_CheckpointCountDown_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|713977188", "713977188", "S03M040_Main", "box_CheckpointCountDown_38.Reached", "box_CheckpointCountDown_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_48_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1260127600"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_264_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_48
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|430755702", "430755702", "S03M040_Main", "box_Timer_v2_48.TimeElapsed", "box_Compare_Boolean_v2_264.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_158
  l0.Checkpoint = "9223372051000065512"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|655952529", "655952529", "S03M040_Main", "box_Ordered_Output_26.Out", "box_CheckpointCountDown_158.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_37
  l0.SoundId = "soundbinary/2593602725.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1983271717", "1983271717", "S03M040_Main", "box_Ordered_Output_26.Out", "box_PlayDialog_v2_37.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_26_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriterSoundID_59
  l0.Input = self.CopDispatchCall
  l0.SoundID[0] = "soundbinary/2905607474.bnk"
  l0.SoundID[1] = "soundbinary/3315532488.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|712679993", "712679993", "S03M040_Main", "box_Ordered_Output_26.Out", "box_ListWriterSoundID_59.Add", clone, l0)
  l0:Add()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 21
  l0.Minute = 50
  l0._graph = self
  l0._name = "box_SetTimeOfDay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2461068"
  l0.Out = self.f_box_SetTimeOfDay_5_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|577343738", "577343738", "S03M040_Main", "box_MissionLayer_v2_2.Loaded", "box_SetTimeOfDay_5.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_Compare_Boolean_v2_270_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_40
  l0.SoundId = "soundbinary/1376891222.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|517903030", "517903030", "S03M040_Main", "box_Compare_Boolean_v2_270.A_is_False", "box_PlayDialog_v2_40.Start", clone, l0)
  l0:Start()
end
function export:f_box_HelicopterBhvController_154_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SpotlightController.lua")]
  l0.Vehicle = self.Helico
  l0.SpotlightTarget = self.PlayerEntity
  l0._graph = self
  l0._name = "box_SpotlightController_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1070272522"
  l0.Started = self.f_box_SpotlightController_265_Started
  l0.Stopped = DummyFunction
  l0 = self.box_HelicopterBhvController_154
  l1 = Boxes[PathID("Domino/System/SpotlightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2067570029", "2067570029", "S03M040_Main", "box_HelicopterBhvController_154.StartCompleted", "box_SpotlightController_265.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_44_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|240877899"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_270_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_44
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|448051953", "448051953", "S03M040_Main", "box_Timer_v2_44.TimeElapsed", "box_Compare_Boolean_v2_270.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_91
  l0.SoundIdList = self.Stunts_Barge
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|686711751", "686711751", "S03M040_Main", "box_Ordered_Output_68.Out", "box_PlayDialog_v2_91.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_68_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_146
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NitroBoost",
    item = "Description",
    id = "604584"
  }
  l0.Duration = 7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1867980274", "1867980274", "S03M040_Main", "box_Ordered_Output_68.Out", "box_TutorialController_146.Display", clone, l0)
  l0:Display()
end
function export:f_box_CheckpointCountDown_160_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_160
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1103198025"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_99_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_99_Out_1
  l0 = self.box_CheckpointCountDown_160
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1924896962", "1924896962", "S03M040_Main", "box_CheckpointCountDown_160.Reached", "box_Ordered_Output_99.In", l0, l1)
  l1:In()
end
function export:f_box_SetTimeOfDay_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|936722469"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_34_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|797761730", "797761730", "S03M040_Main", "box_SetTimeOfDay_57.Out", "box_TimeScale_Controller_34.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_Ordered_Output_148_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 0
  l0._graph = self
  l0._name = "box_EnableVehicleRadioSystem_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1985139766"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1071287842", "1071287842", "S03M040_Main", "box_Ordered_Output_148.Out", "box_EnableVehicleRadioSystem_147.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_148_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1030220425", "1030220425", "S03M040_Main", "box_Ordered_Output_148.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Compare_Boolean_v2_269_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_108
  l0.SoundId = "soundbinary/2779495587.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2080548523", "2080548523", "S03M040_Main", "box_Compare_Boolean_v2_269.A_is_False", "box_PlayDialog_v2_108.Start", clone, l0)
  l0:Start()
end
function export:f_box_Multiple_AND_93_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar4
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1067788308"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_130_Out
  l0 = self.box_Multiple_AND_93
  l1 = Boxes[PathID("Domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|323735386", "323735386", "S03M040_Main", "box_Multiple_AND_93.Out", "box_SetVehicleLightAndSiren_v2_130.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Ordered_Output_252_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_188
  l0.Checkpoint = "9223372051000140199"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1208318756", "1208318756", "S03M040_Main", "box_Ordered_Output_252.Out", "box_CheckpointCountDown_188.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_252_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_250()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|420644781", "420644781", "S03M040_Main", "box_Ordered_Output_252.Out", "box_S03M040_ScriptedPoliceVehiclesController_250.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_252_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_251()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1977788431", "1977788431", "S03M040_Main", "box_Ordered_Output_252.Out", "box_S03M040_ScriptedPoliceVehiclesController_251.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_252_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_253()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|681740471", "681740471", "S03M040_Main", "box_Ordered_Output_252.Out", "box_S03M040_ScriptedPoliceVehiclesController_253.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_252_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_254()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1973604994", "1973604994", "S03M040_Main", "box_Ordered_Output_252.Out", "box_S03M040_ScriptedPoliceVehiclesController_254.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_252_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_258"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1672396008"
  l0.Out = self.f_box_Simple_Node_258_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|130291759", "130291759", "S03M040_Main", "box_Ordered_Output_252.Out", "box_Simple_Node_258.In", clone, l0)
  l0:In()
end
function export:f_box_SetVehicleLightAndSiren_v2_71_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_63
  l0.Input = self.PoliceSquad
  l0.Data[0] = self.Policeman2
  l0.Data[1] = self.Policemen3
  l0.Data[2] = self.PoliceCar3
  l0.Data[3] = self.PoliceCar4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1509235914", "1509235914", "S03M040_Main", "box_SetVehicleLightAndSiren_v2_71.Out", "box_ListWriter_63.Add", clone, l0)
  l0:Add()
end
function export:f_box_Simple_Node_244_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|525942665"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_245_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_245_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_245_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_245_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1814766506", "1814766506", "S03M040_Main", "box_Simple_Node_244.Out", "box_Ordered_Output_245.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_67_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_67
  self.Helicopter = l0.Target
  self:OnEnter_box_FelonyTargetController_54()
  l1 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1048325057", "1048325057", "S03M040_Main", "box_ListWriter_67.Added", "box_FelonyTargetController_54.AddScripted", l0, l1)
  l1:AddScripted()
end
function export:f_box_ListWriter_67_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_67
  self.Helicopter = l0.Target
end
function export:f_box_ListWriter_67_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_67
  self.Helicopter = l0.Target
end
function export:f_box_PhoneCommunicationController_105_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_48
  l0.Seconds = 7
  l0 = self.box_PhoneCommunicationController_105
  l1 = self.box_Timer_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|677408488", "677408488", "S03M040_Main", "box_PhoneCommunicationController_105.OnCommunicationFinished", "box_Timer_v2_48.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_105_StopCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|518230667"
  l0.Out = self.f_box_Simple_Node_263_Out
  l0 = self.box_PhoneCommunicationController_105
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1411153699", "1411153699", "S03M040_Main", "box_PhoneCommunicationController_105.StopCommunicationOut", "box_Simple_Node_263.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_135_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_30
  l0.SoundId = "soundbinary/1372795419.bnk"
  l0 = self.box_OnceOnly_v3_135
  l1 = self.box_PlaySound_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|844938004", "844938004", "S03M040_Main", "box_OnceOnly_v3_135.Out", "box_PlaySound_v2_30.Play", l0, l1)
  l1:Play()
end
function export:f_box_CheckpointCountDown_111_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_111
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_38
  l0.Checkpoint = "9223372070033459864"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_111
  l1 = self.box_CheckpointCountDown_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|693762642", "693762642", "S03M040_Main", "box_CheckpointCountDown_111.Reached", "box_CheckpointCountDown_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_204_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_205()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|949907821", "949907821", "S03M040_Main", "box_ParticleFXController_v2_204.Started", "box_ParticleFXController_v2_205.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_204_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_205()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|761239378", "761239378", "S03M040_Main", "box_ParticleFXController_v2_204.Stopped", "box_ParticleFXController_v2_205.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_137_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleMonitor_v3_119
  l0.Vehicle = self.CHIP
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1332310577", "1332310577", "S03M040_Main", "box_Ordered_Output_137.Out", "box_VehicleMonitor_v3_119.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_137_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CameraRealign_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1514630910", "1514630910", "S03M040_Main", "box_Ordered_Output_137.Out", "box_CameraRealign_112.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_S03M040_SCR_Main_115_SCR_StuntMountain()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_31
  l0.SoundId = "soundbinary/3754729694.bnk"
  l0.UseFacial = 0
  l0 = self.box_S03M040_SCR_Main_115
  l1 = self.box_PlayDialog_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1565063915", "1565063915", "S03M040_Main", "box_S03M040_SCR_Main_115.SCR_StuntMountain", "box_PlayDialog_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_108_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|190903873"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_272_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlayDialog_v2_108
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|174096224", "174096224", "S03M040_Main", "box_PlayDialog_v2_108.Finished", "box_Compare_Boolean_v2_272.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleSeatingController_83_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleSeatingController_60
  l0.Vehicle = self.PoliceCar3
  l0.Pawn = self.Policeman2
  l0.Seat = "Driver"
  l0 = self.box_VehicleSeatingController_83
  l1 = self.box_VehicleSeatingController_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1857743715", "1857743715", "S03M040_Main", "box_VehicleSeatingController_83.AssignCompleted", "box_VehicleSeatingController_60.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_SetActionMap_v2_136_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|981287760"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_150_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1573338467", "1573338467", "S03M040_Main", "box_SetActionMap_v2_136.Popped", "box_InventoryController_v2_150.SwitchLocalPlayerInventoryToNormal", clone, l0)
  l0:SwitchLocalPlayerInventoryToNormal()
end
function export:f_box_Perk_Controller_97_PerkRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  l0.CLO = "9223372046500782680"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_Perk_Controller_97
  l1 = self.box_CLOController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|184208784", "184208784", "S03M040_Main", "box_Perk_Controller_97.PerkRemoved", "box_CLOController_7.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1297410596"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_190_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_190_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|993040555", "993040555", "S03M040_Main", "box_Simple_Node_187.Out", "box_Ordered_Output_190.In", clone, l0)
  l0:In()
end
function export:f_box_SetTimeOfDay_87_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_195()
  l0 = self.box_MultipleOR_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|22661650", "22661650", "S03M040_Main", "box_SetTimeOfDay_87.Out", "box_MultipleOR_195.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_263_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationController_52()
  l0 = self.box_PhoneCommunicationController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1893069880", "1893069880", "S03M040_Main", "box_Simple_Node_263.Out", "box_PhoneCommunicationController_52.StopCommunication", clone, l0)
  l0:StopCommunication()
end
function export:f_box_Ordered_Output_245_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_234()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_234
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1715626630", "1715626630", "S03M040_Main", "box_Ordered_Output_245.Out", "box_S03M040_ScriptedPoliceVehiclesController_234.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_245_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_235()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_235
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2069765336", "2069765336", "S03M040_Main", "box_Ordered_Output_245.Out", "box_S03M040_ScriptedPoliceVehiclesController_235.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_245_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_238()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|412487737", "412487737", "S03M040_Main", "box_Ordered_Output_245.Out", "box_S03M040_ScriptedPoliceVehiclesController_238.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_245_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_237()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1140470067", "1140470067", "S03M040_Main", "box_Ordered_Output_245.Out", "box_S03M040_ScriptedPoliceVehiclesController_237.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CheckpointCountDown_158_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_158
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2014140247"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_53_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_53_Out_1
  l0 = self.box_CheckpointCountDown_158
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1101119304", "1101119304", "S03M040_Main", "box_CheckpointCountDown_158.Reached", "box_Ordered_Output_53.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_122
  l0.Checkpoint = "9223372051000138973"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1805123673", "1805123673", "S03M040_Main", "box_Ordered_Output_51.Out", "box_CheckpointCountDown_122.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HelicopterBhvController_154
  l0.Helicopter = self.Helico
  l0.Target = self.PlayerEntity
  l0.Config = "HelicopterBhvSetup.9223372048779322168"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|341782618", "341782618", "S03M040_Main", "box_Ordered_Output_51.Out", "box_HelicopterBhvController_154.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_182_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_170
  l0.Checkpoint = "9223372056402424194"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1771712117", "1771712117", "S03M040_Main", "box_Ordered_Output_182.Out", "box_CheckpointCountDown_170.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_182_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_101
  l0.CLO = "9223372065590185967"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1273152965", "1273152965", "S03M040_Main", "box_Ordered_Output_182.Out", "box_CLOController_101.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CheckpointCountDown_186_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_186
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|370006682"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_252_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_252_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_252_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_252_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_252_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_252_Out_5
  l0 = self.box_CheckpointCountDown_186
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1991004181", "1991004181", "S03M040_Main", "box_CheckpointCountDown_186.Reached", "box_Ordered_Output_252.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|109653640"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_233_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_233_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_233_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|68036268", "68036268", "S03M040_Main", "box_Ordered_Output_126.Out", "box_Ordered_Output_233.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_126_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|20537062"
  l0.Out = self.f_box_Simple_Node_226_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2092339808", "2092339808", "S03M040_Main", "box_Ordered_Output_126.Out", "box_Simple_Node_226.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_43_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetController_61()
  l0 = self.box_TriggerMonitor_v2_43
  l1 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1531129890", "1531129890", "S03M040_Main", "box_TriggerMonitor_v2_43.Enter", "box_FelonyTargetController_61.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_MultipleOR_121_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0.FadeOutTime = 3
  l0._graph = self
  l0._name = "box_StopMusic_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|986990347"
  l0.Out = self.f_box_StopMusic_138_Out
  l0 = self.box_MultipleOR_121
  l1 = Boxes[PathID("Domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|304141562", "304141562", "S03M040_Main", "box_MultipleOR_121.Out", "box_StopMusic_138.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_92_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S03M040_CarNoExit"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|185604233"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_9_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|291016192", "291016192", "S03M040_Main", "box_SetActionMap_v2_92.Popped", "box_SetActionMap_v2_9.Push", clone, l0)
  l0:Push()
end
function export:f_box_ParticleFXController_v2_202_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_203()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|516630292", "516630292", "S03M040_Main", "box_ParticleFXController_v2_202.Started", "box_ParticleFXController_v2_203.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_202_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_203()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1720097313", "1720097313", "S03M040_Main", "box_ParticleFXController_v2_202.Stopped", "box_ParticleFXController_v2_203.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Teleport_To_SpawnPoint_128_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_Wait_Qualities_Loaded_172
  l0.LoadingScreen = 0
  l0 = self.box_Teleport_To_SpawnPoint_128
  l1 = self.box_Wait_Qualities_Loaded_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|60442788", "60442788", "S03M040_Main", "box_Teleport_To_SpawnPoint_128.TeleportDone", "box_Wait_Qualities_Loaded_172.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_196_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_49
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M040.Objectives.Objective010",
    item = "Objective",
    id = "342744"
  }
  l0 = self.box_MissionCheckpointReach_196
  l1 = self.box_MissionMessageController_v3_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1354074969", "1354074969", "S03M040_Main", "box_MissionCheckpointReach_196.Out", "box_MissionMessageController_v3_49.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_PlaySound_v2_30_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_PlaySound_v2_30
  l1 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1785508234", "1785508234", "S03M040_Main", "box_PlaySound_v2_30.Out", "box_MultipleOR_6.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleSeatingController_8_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = 0
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1096503335"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = DummyFunction
  l0.HideInVehicleDisabled = self.f_box_Set_Is_Hiding_In_Vehicle_27_HideInVehicleDisabled
  l0 = self.box_VehicleSeatingController_8
  l1 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|5900959", "5900959", "S03M040_Main", "box_VehicleSeatingController_8.AssignCompleted", "box_Set_Is_Hiding_In_Vehicle_27.SetCanHideInVehicle", l0, l1)
  l1:SetCanHideInVehicle()
end
function export:f_box_ParticleFXController_v2_197_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_199()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1418172493", "1418172493", "S03M040_Main", "box_ParticleFXController_v2_197.Started", "box_ParticleFXController_v2_199.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_197_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_199()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2116131308", "2116131308", "S03M040_Main", "box_ParticleFXController_v2_197.Stopped", "box_ParticleFXController_v2_199.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_SetBoolean_v2_15_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.IsLastStunt = l0.Target
end
function export:f_box_SetBoolean_v2_15_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.IsLastStunt = l0.Target
end
function export:f_box_SetBoolean_v2_15_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.IsLastStunt = l0.Target
end
function export:f_box_SetBoolean_v2_15_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.IsLastStunt = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1219235155"
  l0.Out = self.f_box_Simple_Node_227_Out
  l0 = self.box_SetBoolean_v2_15
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1640458123", "1640458123", "S03M040_Main", "box_SetBoolean_v2_15.SetTrue", "box_Simple_Node_227.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_15_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_15
  self.IsLastStunt = l0.Target
end
function export:f_box_CheckpointCountDown_178_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_178
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_177
  l0.Checkpoint = "9223372059689168301"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_178
  l1 = self.box_CheckpointCountDown_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1589127730", "1589127730", "S03M040_Main", "box_CheckpointCountDown_178.Reached", "box_CheckpointCountDown_177.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_89_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|145273457"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_275_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_275_Out_1
  l0 = self.box_MissionCheckpointReach_89
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|168468045", "168468045", "S03M040_Main", "box_MissionCheckpointReach_89.Out", "box_Ordered_Output_275.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_3_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_35()
  l0 = self.box_CinematicPrep_3
  l1 = self.box_Mission_End_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2084676633", "2084676633", "S03M040_Main", "box_CinematicPrep_3.PostOut", "box_Mission_End_35.End", l0, l1)
  l1:End()
end
function export:f_box_PreCineCustom_106_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_S03M040_SCR_Main_47
  l0.Chip = self.CHIP
  l0.Player = self.PlayerEntity
  l0.EnticerVehicle_CHIP = "9223372046500782680"
  l0 = self.box_PreCineCustom_106
  l1 = self.box_S03M040_SCR_Main_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|711352377", "711352377", "S03M040_Main", "box_PreCineCustom_106.PreOut", "box_S03M040_SCR_Main_47.Highway_Stunt", l0, l1)
  l1:Highway_Stunt()
end
function export:f_box_InventoryController_v2_140_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|457664558"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_137_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_137_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1433681271", "1433681271", "S03M040_Main", "box_InventoryController_v2_140.Switched", "box_Ordered_Output_137.In", clone, l0)
  l0:In()
end
function export:f_box_CheckpointCountDown_173_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_173
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|137078540"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_CheckpointCountDown_173
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|936048659", "936048659", "S03M040_Main", "box_CheckpointCountDown_173.Reached", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_S03M040_SCR_Main_47_HighWayStunt_out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_196
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_S03M040_SCR_Main_47
  l1 = self.box_MissionCheckpointReach_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|19664848", "19664848", "S03M040_Main", "box_S03M040_SCR_Main_47.HighWayStunt_out", "box_MissionCheckpointReach_196.In", l0, l1)
  l1:In()
end
function export:f_box_CheckpointCountDown_188_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_188
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|43472498"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_10_Out_3
  l0 = self.box_CheckpointCountDown_188
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2086067989", "2086067989", "S03M040_Main", "box_CheckpointCountDown_188.Reached", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_155_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_70
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionCheckpointReach_155
  l1 = self.box_CinematicPrep_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|865171125", "865171125", "S03M040_Main", "box_MissionCheckpointReach_155.Out", "box_CinematicPrep_70.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_RaceController_14()
  l0 = self.box_RaceController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1221796545", "1221796545", "S03M040_Main", "box_Ordered_Output_25.Out", "box_RaceController_14.StartRace", clone, l0)
  l0:StartRace()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_16
  l0.SoundId = "soundbinary/179661802.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|33232198", "33232198", "S03M040_Main", "box_Ordered_Output_25.Out", "box_PlayDialog_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_155
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1580029842", "1580029842", "S03M040_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_155.In", clone, l0)
  l0:In()
end
function export:f_box_CheckpointCountDown_122_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_122
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1863665006"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_193_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_193_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_193_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_193_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_193_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_193_Out_5
  l0 = self.box_CheckpointCountDown_122
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1435656743", "1435656743", "S03M040_Main", "box_CheckpointCountDown_122.Reached", "box_Ordered_Output_193.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_271_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_102
  l0.SoundId = "soundbinary/3178721318.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|405239092", "405239092", "S03M040_Main", "box_Compare_Boolean_v2_271.A_is_False", "box_PlayDialog_v2_102.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_131_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_197()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|988075699", "988075699", "S03M040_Main", "box_Simple_Node_131.Out", "box_ParticleFXController_v2_197.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialog_v2_50_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_50
  l1 = self.box_SetBoolean_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2107985549", "2107985549", "S03M040_Main", "box_PlayDialog_v2_50.Started", "box_SetBoolean_v2_15.True", l0, l1)
  l1:True()
end
function export:f_box_CLOController_76_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_76
  self.Policemen3 = l0.UserID
  self:OnEnter_box_Multiple_AND_93()
  l1 = self.box_Multiple_AND_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|469519795", "469519795", "S03M040_Main", "box_CLOController_76.OnUserInPlace", "box_Multiple_AND_93.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_Pawn_Health_Controller_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1927441896"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_33_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1305565116", "1305565116", "S03M040_Main", "box_Pawn_Health_Controller_32.Out", "box_VisibilityController_v2_33.Show", clone, l0)
  l0:Show()
end
function export:f_box_Simple_Node_268_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03_M040_Policebarage_21()
  l0 = self.box_S03_M040_Policebarage_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|432568287", "432568287", "S03M040_Main", "box_Simple_Node_268.Out", "box_S03_M040_Policebarage_21.Unspawn_FirstBarrage", clone, l0)
  l0:Unspawn_FirstBarrage()
end
function export:f_box_TimeScale_Controller_34_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|25627212"
  l0.Out = self.f_box_Get_Player_ID_88_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|841132808", "841132808", "S03M040_Main", "box_TimeScale_Controller_34.Locked", "box_Get_Player_ID_88.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_209_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_166
  l0.Checkpoint = "9223372051000133225"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1787090469", "1787090469", "S03M040_Main", "box_Ordered_Output_209.Out", "box_CheckpointCountDown_166.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_209_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_80
  l0.SoundIdList = self.CopSeeingChip
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1030029843", "1030029843", "S03M040_Main", "box_Ordered_Output_209.Out", "box_PlayDialog_v2_80.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_209_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_197()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1016574767", "1016574767", "S03M040_Main", "box_Ordered_Output_209.Out", "box_ParticleFXController_v2_197.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Simple_Node_266_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|935418738"
  l0.Out = self.f_box_Simple_Node_268_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|732913588", "732913588", "S03M040_Main", "box_Simple_Node_266.Out", "box_Simple_Node_268.In", clone, l0)
  l0:In()
end
function export:f_box_InventoryController_v2_150_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1847768348", "1847768348", "S03M040_Main", "box_InventoryController_v2_150.Switched", "box_CinematicPrep_3.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_StopMusic_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 1
  l0._graph = self
  l0._name = "box_EnableVehicleRadioSystem_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1794611281"
  l0.Out = self.f_box_EnableVehicleRadioSystem_151_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|745898625", "745898625", "S03M040_Main", "box_StopMusic_138.Out", "box_EnableVehicleRadioSystem_151.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_23_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1872552042"
  l0.Out = self.f_box_Pawn_Health_Controller_11_Out
  l0 = self.box_PlayDialog_v2_23
  l1 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|336431251", "336431251", "S03M040_Main", "box_PlayDialog_v2_23.Started", "box_Pawn_Health_Controller_11.SetImmune", l0, l1)
  l1:SetImmune()
end
function export:f_box_Simple_Node_246_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1536760526"
  l0.Out = self.f_box_Simple_Node_248_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2011585774", "2011585774", "S03M040_Main", "box_Simple_Node_246.Out", "box_Simple_Node_248.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_84_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 21
  l0.Minute = 50
  l0._graph = self
  l0._name = "box_SetTimeOfDay_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|282517240"
  l0.Out = self.f_box_SetTimeOfDay_57_Out
  l0 = self.box_MissionLayer_v2_84
  l1 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|678579788", "678579788", "S03M040_Main", "box_MissionLayer_v2_84.Loaded", "box_SetTimeOfDay_57.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_174
  l0.Checkpoint = "9223372051000138963"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|119399898", "119399898", "S03M040_Main", "box_Ordered_Output_45.Out", "box_CheckpointCountDown_174.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S03M040_SCR_Main_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|339587612", "339587612", "S03M040_Main", "box_Ordered_Output_45.Out", "box_S03M040_SCR_Main_127.Ocean_Jump_FX", clone, l0)
  l0:Ocean_Jump_FX()
end
function export:f_box_Ordered_Output_260_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_240()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|55198992", "55198992", "S03M040_Main", "box_Ordered_Output_260.Out", "box_S03M040_ScriptedPoliceVehiclesController_240.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_260_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_239()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2063979368", "2063979368", "S03M040_Main", "box_Ordered_Output_260.Out", "box_S03M040_ScriptedPoliceVehiclesController_239.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CheckpointCountDown_177_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_177
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1384292144"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_132_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_132_Out_1
  l0 = self.box_CheckpointCountDown_177
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1746837333", "1746837333", "S03M040_Main", "box_CheckpointCountDown_177.Reached", "box_Ordered_Output_132.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_247_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationController_105()
  l0 = self.box_PhoneCommunicationController_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2134428865", "2134428865", "S03M040_Main", "box_Simple_Node_247.Out", "box_PhoneCommunicationController_105.StopCommunication", clone, l0)
  l0:StopCommunication()
end
function export:f_box_PlayDialog_v2_37_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_215
  l0.SoundId = "soundbinary/667391839.bnk"
  l0 = self.box_PlayDialog_v2_37
  l1 = self.box_PlaySound_v2_215
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1168096796", "1168096796", "S03M040_Main", "box_PlayDialog_v2_37.Finished", "box_PlaySound_v2_215.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetVehicleLightAndSiren_v2_130_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar3
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = self.CHIP
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|376172186"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_71_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|671982093", "671982093", "S03M040_Main", "box_SetVehicleLightAndSiren_v2_130.Out", "box_SetVehicleLightAndSiren_v2_71.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_CheckpointCountDown_109_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_109
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_90
  l0.Checkpoint = "9223372051000139566"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_109
  l1 = self.box_CheckpointCountDown_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1234723426", "1234723426", "S03M040_Main", "box_CheckpointCountDown_109.Reached", "box_CheckpointCountDown_90.Start", l0, l1)
  l1:Start()
end
function export:f_box_SpotlightController_265_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SpotlightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_67
  l0.Input = self.Helicopter
  l0.Data[0] = self.Helico
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|34856164", "34856164", "S03M040_Main", "box_SpotlightController_265.Started", "box_ListWriter_67.Add", clone, l0)
  l0:Add()
end
function export:f_box_CheckpointCountDown_180_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_180
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_179
  l0.Checkpoint = "9223372051000139570"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_180
  l1 = self.box_CheckpointCountDown_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|171742919", "171742919", "S03M040_Main", "box_CheckpointCountDown_180.Reached", "box_CheckpointCountDown_179.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_55_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_65
  l0.SoundIdList = self.Stunts_Cops2
  l0.UseFacial = 0
  l0 = self.box_Timer_v2_55
  l1 = self.box_PlayDialog_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|672986016", "672986016", "S03M040_Main", "box_Timer_v2_55.TimeElapsed", "box_PlayDialog_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_CheckpointCountDown_176_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_176
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1399970467"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  l0 = self.box_CheckpointCountDown_176
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1184458010", "1184458010", "S03M040_Main", "box_CheckpointCountDown_176.Reached", "box_Ordered_Output_28.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_101_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_101
  self.Helico = l0.UserID
end
function export:f_box_Set_Is_Hiding_In_Vehicle_27_HideInVehicleDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1317076409"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|773702065", "773702065", "S03M040_Main", "box_Set_Is_Hiding_In_Vehicle_27.HideInVehicleDisabled", "box_VisibilityController_v2_12.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CLOController_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  self.CHIP = l0.UserID
  l0 = self.box_VehicleSeatingController_8
  l0.Vehicle = self.CHIP
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0 = self.box_CLOController_7
  l1 = self.box_VehicleSeatingController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1784230492", "1784230492", "S03M040_Main", "box_CLOController_7.OnUserInPlace", "box_VehicleSeatingController_8.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_Ordered_Output_99_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_161
  l0.Checkpoint = "9223372051000133215"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|213182489", "213182489", "S03M040_Main", "box_Ordered_Output_99.Out", "box_CheckpointCountDown_161.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_99_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_100
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|350683704", "350683704", "S03M040_Main", "box_Ordered_Output_99.Out", "box_Timer_v2_100.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_276_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_274
  l0.SoundId = "soundbinary/3567884843.bnk"
  l0 = self.box_PlaySound_v2_276
  l1 = self.box_PlaySound_v2_274
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1505220782", "1505220782", "S03M040_Main", "box_PlaySound_v2_276.Out", "box_PlaySound_v2_274.Play", l0, l1)
  l1:Play()
end
function export:f_box_RewardController_v3_58_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_58
  l1 = self.box_S03_M040_CIN_FollowerFollowUp_Main_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|918180954", "918180954", "S03M040_Main", "box_RewardController_v3_58.Out", "box_S03_M040_CIN_FollowerFollowUp_Main_86.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_203_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_204()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2054767853", "2054767853", "S03M040_Main", "box_ParticleFXController_v2_203.Started", "box_ParticleFXController_v2_204.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_203_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_204()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1237122879", "1237122879", "S03M040_Main", "box_ParticleFXController_v2_203.Stopped", "box_ParticleFXController_v2_204.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CheckpointCountDown_85_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_85
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|60481982"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_124_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_124_Out_1
  l0 = self.box_CheckpointCountDown_85
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1571770782", "1571770782", "S03M040_Main", "box_CheckpointCountDown_85.Reached", "box_Ordered_Output_124.In", l0, l1)
  l1:In()
end
function export:f_box_TeleportPlayerInsideHma_82_Done()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|933618823"
  l0.Out = self.f_box_Pawn_Health_Controller_32_Out
  l0 = self.box_TeleportPlayerInsideHma_82
  l1 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2078545805", "2078545805", "S03M040_Main", "box_TeleportPlayerInsideHma_82.Done", "box_Pawn_Health_Controller_32.UnsetImmune", l0, l1)
  l1:UnsetImmune()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1435397241", "1435397241", "S03M040_Main", "box_Ordered_Output_79.Out", "box_OnceOnly_v3_4.In", clone, l0)
  l0:In(0)
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_144
  l0.SoundId = "soundbinary/2585425064.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|901541024", "901541024", "S03M040_Main", "box_Ordered_Output_79.Out", "box_PlaySound_v2_144.Play", clone, l0)
  l0:Play()
end
function export:f_box_CheckpointCountDown_164_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_164
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1316389368"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_41_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_41_Out_3
  l0 = self.box_CheckpointCountDown_164
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1950760164", "1950760164", "S03M040_Main", "box_CheckpointCountDown_164.Reached", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_104_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|347642318"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_269_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_Timer_v2_104
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1074170563", "1074170563", "S03M040_Main", "box_Timer_v2_104.TimeElapsed", "box_Compare_Boolean_v2_269.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriterSoundID_62_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_62
  self.CopSeeingChip = l0.Target
  l0 = self.box_ListWriterSoundID_78
  l0.Input = self.Stunts_Cops2
  l0.SoundID[0] = "soundbinary/1601051816.bnk"
  l0.SoundID[1] = "soundbinary/2355984719.bnk"
  l0.SoundID[2] = "soundbinary/3715876750.bnk"
  l0 = self.box_ListWriterSoundID_62
  l1 = self.box_ListWriterSoundID_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|954883332", "954883332", "S03M040_Main", "box_ListWriterSoundID_62.Added", "box_ListWriterSoundID_78.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_62_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_62
  self.CopSeeingChip = l0.Target
end
function export:f_box_ListWriterSoundID_62_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_62
  self.CopSeeingChip = l0.Target
end
function export:f_box_CheckpointCountDown_185_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_185
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1265248940"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_243_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_243_Out_1
  l0 = self.box_CheckpointCountDown_185
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1424866618", "1424866618", "S03M040_Main", "box_CheckpointCountDown_185.Reached", "box_Ordered_Output_243.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_199_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_200()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|851165116", "851165116", "S03M040_Main", "box_ParticleFXController_v2_199.Started", "box_ParticleFXController_v2_200.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_199_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_200()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|106282884", "106282884", "S03M040_Main", "box_ParticleFXController_v2_199.Stopped", "box_ParticleFXController_v2_200.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CheckpointCountDown_168_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_168
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_171
  l0.Checkpoint = "9223372051000138951"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_168
  l1 = self.box_CheckpointCountDown_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1196499124", "1196499124", "S03M040_Main", "box_CheckpointCountDown_168.Reached", "box_CheckpointCountDown_171.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriterSoundID_59_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_59
  self.CopDispatchCall = l0.Target
  l0 = self.box_ListWriterSoundID_29
  l0.Input = self.Stunts_Cops
  l0.SoundID[0] = "soundbinary/599109602.bnk"
  l0.SoundID[1] = "soundbinary/350855789.bnk"
  l0 = self.box_ListWriterSoundID_59
  l1 = self.box_ListWriterSoundID_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|977951630", "977951630", "S03M040_Main", "box_ListWriterSoundID_59.Added", "box_ListWriterSoundID_29.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_59_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_59
  self.CopDispatchCall = l0.Target
end
function export:f_box_ListWriterSoundID_59_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_59
  self.CopDispatchCall = l0.Target
end
function export:f_box_CheckpointCountDown_170_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_170
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1847724735"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_118_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_118_Out_1
  l0 = self.box_CheckpointCountDown_170
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1683368189", "1683368189", "S03M040_Main", "box_CheckpointCountDown_170.Reached", "box_Ordered_Output_118.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_227_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1045610741"
  l0.Out = self.f_box_Simple_Node_247_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|281115493", "281115493", "S03M040_Main", "box_Simple_Node_227.Out", "box_Simple_Node_247.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_69_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_69
  self.PoliceCar4 = l0.UserID
  self:OnEnter_box_Multiple_AND_93()
  l1 = self.box_Multiple_AND_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|540429125", "540429125", "S03M040_Main", "box_CLOController_69.OnUserInPlace", "box_Multiple_AND_93.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CheckpointCountDown_161_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_161
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_162
  l0.Checkpoint = "9223372051000133219"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_161
  l1 = self.box_CheckpointCountDown_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|908566978", "908566978", "S03M040_Main", "box_CheckpointCountDown_161.Reached", "box_CheckpointCountDown_162.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_70_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_70
  l1 = self.box_S03_M040_CIN_FixCarMontage_Main_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|41586528", "41586528", "S03M040_Main", "box_CinematicPrep_70.PreOut", "box_S03_M040_CIN_FixCarMontage_Main_75.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_207_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_208()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1330423635", "1330423635", "S03M040_Main", "box_ParticleFXController_v2_207.Started", "box_ParticleFXController_v2_208.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_207_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_208()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1939648973", "1939648973", "S03M040_Main", "box_ParticleFXController_v2_207.Stopped", "box_ParticleFXController_v2_208.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Compare_Boolean_v2_264_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationController_52()
  l0 = self.box_PhoneCommunicationController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|486424913", "486424913", "S03M040_Main", "box_Compare_Boolean_v2_264.A_is_False", "box_PhoneCommunicationController_52.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_219_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_180
  l0.Checkpoint = "9223372051000139568"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|305638075", "305638075", "S03M040_Main", "box_Ordered_Output_219.Out", "box_CheckpointCountDown_180.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_219_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_222()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|308408173", "308408173", "S03M040_Main", "box_Ordered_Output_219.Out", "box_S03M040_ScriptedPoliceVehiclesController_222.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_219_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_223()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1712669371", "1712669371", "S03M040_Main", "box_Ordered_Output_219.Out", "box_S03M040_ScriptedPoliceVehiclesController_223.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_219_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_224()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|345712081", "345712081", "S03M040_Main", "box_Ordered_Output_219.Out", "box_S03M040_ScriptedPoliceVehiclesController_224.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_219_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_225()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|210984354", "210984354", "S03M040_Main", "box_Ordered_Output_219.Out", "box_S03M040_ScriptedPoliceVehiclesController_225.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_243_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_186
  l0.Checkpoint = "9223372051000140197"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1077977186", "1077977186", "S03M040_Main", "box_Ordered_Output_243.Out", "box_CheckpointCountDown_186.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_243_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1839347250"
  l0.Out = self.f_box_Simple_Node_242_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1819724542", "1819724542", "S03M040_Main", "box_Ordered_Output_243.Out", "box_Simple_Node_242.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|137391518"
  l0.Out = self.f_box_Simple_Node_220_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1842510494", "1842510494", "S03M040_Main", "box_Simple_Node_218.Out", "box_Simple_Node_220.In", clone, l0)
  l0:In()
end
function export:f_box_EnableVehicleRadioSystem_149_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_74
  l0.Vehicle = self.CHIP
  l0.Seat = "Driver"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1622032564", "1622032564", "S03M040_Main", "box_EnableVehicleRadioSystem_149.Out", "box_VehicleSeatingController_74.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_Ordered_Output_190_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_133()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|339610914", "339610914", "S03M040_Main", "box_Ordered_Output_190.Out", "box_S03M040_ScriptedPoliceVehiclesController_133.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_190_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_134()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|192698294", "192698294", "S03M040_Main", "box_Ordered_Output_190.Out", "box_S03M040_ScriptedPoliceVehiclesController_134.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_189_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_18
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_189
  l1 = self.box_CinematicPrep_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1709658468", "1709658468", "S03M040_Main", "box_Timer_v2_189.TimeElapsed", "box_CinematicPrep_18.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_157_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_95
  l0.Trigger = "9223372057183390329"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|333571336", "333571336", "S03M040_Main", "box_Ordered_Output_157.Out", "box_TriggerMonitor_v2_95.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_157_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_156
  l0.Checkpoint = "9223372051000065510"
  l0.TimeToCheckpoint = 40
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|134481816", "134481816", "S03M040_Main", "box_Ordered_Output_157.Out", "box_CheckpointCountDown_156.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_210_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1697327615"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_214_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_214_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|891650987", "891650987", "S03M040_Main", "box_Simple_Node_210.Out", "box_Ordered_Output_214.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_165
  l0.Checkpoint = "9223372051000133223"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2069652743", "2069652743", "S03M040_Main", "box_Ordered_Output_41.Out", "box_CheckpointCountDown_165.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_73
  l0.SoundIdList = self.Stunts_Cops
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1854808247", "1854808247", "S03M040_Main", "box_Ordered_Output_41.Out", "box_PlayDialog_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_41_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_133()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1908623429", "1908623429", "S03M040_Main", "box_Ordered_Output_41.Out", "box_S03M040_ScriptedPoliceVehiclesController_133.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_41_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_134()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|894096283", "894096283", "S03M040_Main", "box_Ordered_Output_41.Out", "box_S03M040_ScriptedPoliceVehiclesController_134.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|768621321"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_140_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|406181949", "406181949", "S03M040_Main", "box_VisibilityController_v2_12.Out", "box_InventoryController_v2_140.SwitchLocalPlayerInventoryToEmpty", clone, l0)
  l0:SwitchLocalPlayerInventoryToEmpty()
end
function export:f_box_CheckpointCountDown_166_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_166
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_167
  l0.Checkpoint = "9223372053519424664"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_166
  l1 = self.box_CheckpointCountDown_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|911119346", "911119346", "S03M040_Main", "box_CheckpointCountDown_166.Reached", "box_CheckpointCountDown_167.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonyTargetController_54_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_54()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|226371729", "226371729", "S03M040_Main", "box_FelonyTargetController_54.ScriptedAgentsAdded", "box_FelonyTargetController_54.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_PlayDialog_v2_16_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_56
  l0.Seconds = 0.5
  l0 = self.box_PlayDialog_v2_16
  l1 = self.box_Timer_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1302366859", "1302366859", "S03M040_Main", "box_PlayDialog_v2_16.Finished", "box_Timer_v2_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_CheckpointCountDown_171_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_171
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|582028152"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_182_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_182_Out_1
  l0 = self.box_CheckpointCountDown_171
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|203883807", "203883807", "S03M040_Main", "box_CheckpointCountDown_171.Reached", "box_Ordered_Output_182.In", l0, l1)
  l1:In()
end
function export:f_box_CheckpointCountDown_181_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_181
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1777656158"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_241_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_241_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_241_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_241_Out_3
  l0 = self.box_CheckpointCountDown_181
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|19730591", "19730591", "S03M040_Main", "box_CheckpointCountDown_181.Reached", "box_Ordered_Output_241.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_145_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1134483560"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0 = self.box_TriggerMonitor_v2_145
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|16061181", "16061181", "S03M040_Main", "box_TriggerMonitor_v2_145.Enter", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_102_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_44
  l0.Seconds = 3
  l0 = self.box_PlayDialog_v2_102
  l1 = self.box_Timer_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|560714258", "560714258", "S03M040_Main", "box_PlayDialog_v2_102.Finished", "box_Timer_v2_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_132_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_184
  l0.Checkpoint = "9223372059689168303"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|845648499", "845648499", "S03M040_Main", "box_Ordered_Output_132.Out", "box_CheckpointCountDown_184.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_132_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|995648123"
  l0.Out = self.f_box_Simple_Node_246_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1114649062", "1114649062", "S03M040_Main", "box_Ordered_Output_132.Out", "box_Simple_Node_246.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_22
  l0.Checkpoint = "9223372070033459339"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|199412980", "199412980", "S03M040_Main", "box_Ordered_Output_28.Out", "box_CheckpointCountDown_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_107
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053356399848"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|188149708", "188149708", "S03M040_Main", "box_Ordered_Output_28.Out", "box_PhoneCommunicationController_107.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Simple_Node_169_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|499274429"
  l0.Out = self.f_box_Simple_Node_187_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|42326254", "42326254", "S03M040_Main", "box_Simple_Node_169.Out", "box_Simple_Node_187.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_40_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_104
  l0.Seconds = 5
  l0 = self.box_PlayDialog_v2_40
  l1 = self.box_Timer_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1373716611", "1373716611", "S03M040_Main", "box_PlayDialog_v2_40.Finished", "box_Timer_v2_104.Start", l0, l1)
  l1:Start()
end
function export:f_box_CheckpointCountDown_159_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_159
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_160
  l0.Checkpoint = "9223372051000129256"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_159
  l1 = self.box_CheckpointCountDown_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1538696040", "1538696040", "S03M040_Main", "box_CheckpointCountDown_159.Reached", "box_CheckpointCountDown_160.Start", l0, l1)
  l1:Start()
end
function export:f_box_CheckpointCountDown_183_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_183
  self.Time_Left = l0.RemainingTime
  l0 = self.box_CheckpointCountDown_181
  l0.Checkpoint = "9223372051000139582"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0 = self.box_CheckpointCountDown_183
  l1 = self.box_CheckpointCountDown_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1788112444", "1788112444", "S03M040_Main", "box_CheckpointCountDown_183.Reached", "box_CheckpointCountDown_181.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_77_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_77
  self.Policeman2 = l0.UserID
  self:OnEnter_box_Multiple_AND_93()
  l1 = self.box_Multiple_AND_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1163105713", "1163105713", "S03M040_Main", "box_CLOController_77.OnUserInPlace", "box_Multiple_AND_93.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_94
  l0.PerkDB = "PerksSinglePlayer.9223372047059047166"
  l0 = self.box_MultipleOR_6
  l1 = self.box_Perk_Controller_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|416690902", "416690902", "S03M040_Main", "box_MultipleOR_6.Out", "box_Perk_Controller_94.RemovePerk", l0, l1)
  l1:RemovePerk()
end
function export:f_box_Timer_v2_100_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_98
  l0.SoundIdList = self.CopDispatchCall
  l0.UseFacial = 0
  l0 = self.box_Timer_v2_100
  l1 = self.box_PlayDialog_v2_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1047177118", "1047177118", "S03M040_Main", "box_Timer_v2_100.TimeElapsed", "box_PlayDialog_v2_98.Start", l0, l1)
  l1:Start()
end
function export:f_box_CheckpointCountDown_184_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_184
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|136560309"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_236_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_236_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_236_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_236_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_236_Out_4
  l0 = self.box_CheckpointCountDown_184
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2065812702", "2065812702", "S03M040_Main", "box_CheckpointCountDown_184.Reached", "box_Ordered_Output_236.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_255_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_250()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2104748353", "2104748353", "S03M040_Main", "box_Ordered_Output_255.Out", "box_S03M040_ScriptedPoliceVehiclesController_250.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_255_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_251()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1293741758", "1293741758", "S03M040_Main", "box_Ordered_Output_255.Out", "box_S03M040_ScriptedPoliceVehiclesController_251.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_255_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_253()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1424286048", "1424286048", "S03M040_Main", "box_Ordered_Output_255.Out", "box_S03M040_ScriptedPoliceVehiclesController_253.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_255_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_254()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|948402547", "948402547", "S03M040_Main", "box_Ordered_Output_255.Out", "box_S03M040_ScriptedPoliceVehiclesController_254.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ListWriterSoundID_29_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_29
  self.Stunts_Cops = l0.Target
  l0 = self.box_ListWriterSoundID_62
  l0.Input = self.CopSeeingChip
  l0.SoundID[0] = "soundbinary/3183431972.bnk"
  l0.SoundID[1] = "soundbinary/3653684948.bnk"
  l0 = self.box_ListWriterSoundID_29
  l1 = self.box_ListWriterSoundID_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1243822716", "1243822716", "S03M040_Main", "box_ListWriterSoundID_29.Added", "box_ListWriterSoundID_62.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_29_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_29
  self.Stunts_Cops = l0.Target
end
function export:f_box_ListWriterSoundID_29_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_29
  self.Stunts_Cops = l0.Target
end
function export:f_box_ListWriterSoundID_78_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_78
  self.Stunts_Cops2 = l0.Target
  l0 = self.box_ListWriterSoundID_81
  l0.Input = self.Stunts_Barge
  l0.SoundID[0] = "soundbinary/845007225.bnk"
  l0.SoundID[1] = "soundbinary/2369558488.bnk"
  l0.SoundID[2] = "soundbinary/2481776595.bnk"
  l0.SoundID[3] = "soundbinary/4175605191.bnk"
  l0 = self.box_ListWriterSoundID_78
  l1 = self.box_ListWriterSoundID_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1542633151", "1542633151", "S03M040_Main", "box_ListWriterSoundID_78.Added", "box_ListWriterSoundID_81.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_78_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_78
  self.Stunts_Cops2 = l0.Target
end
function export:f_box_ListWriterSoundID_78_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_78
  self.Stunts_Cops2 = l0.Target
end
function export:f_box_Simple_Node_248_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1769435799"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_249_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_249_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|333288886", "333288886", "S03M040_Main", "box_Simple_Node_248.Out", "box_Ordered_Output_249.In", clone, l0)
  l0:In()
end
function export:f_box_CheckpointCountDown_175_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_175
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1009415434"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_CheckpointCountDown_175
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1454554641", "1454554641", "S03M040_Main", "box_CheckpointCountDown_175.Reached", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_TutorialController_24_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_153
  l0.Vehicle = self.CHIP
  l0 = self.box_TutorialController_24
  l1 = self.box_VehicleMonitor_v3_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|34862763", "34862763", "S03M040_Main", "box_TutorialController_24.DisplayRequested", "box_VehicleMonitor_v3_153.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleSeatingController_60_AssignCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_43
  l0.Trigger = "9223372049960074779"
  l0.AutoDisable = 1
  l0 = self.box_VehicleSeatingController_60
  l1 = self.box_TriggerMonitor_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|986093482", "986093482", "S03M040_Main", "box_VehicleSeatingController_60.AssignCompleted", "box_TriggerMonitor_v2_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_63_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_63
  self.PoliceSquad = l0.Target
  l0 = self.box_VehicleSeatingController_83
  l0.Vehicle = self.PoliceCar4
  l0.Pawn = self.Policemen3
  l0.Seat = "Driver"
  l0 = self.box_ListWriter_63
  l1 = self.box_VehicleSeatingController_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|164281366", "164281366", "S03M040_Main", "box_ListWriter_63.Added", "box_VehicleSeatingController_83.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_ListWriter_63_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_63
  self.PoliceSquad = l0.Target
end
function export:f_box_ListWriter_63_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_63
  self.PoliceSquad = l0.Target
end
function export:f_box_Ordered_Output_212_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_164
  l0.Checkpoint = "9223372051000133221"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1654539585", "1654539585", "S03M040_Main", "box_Ordered_Output_212.Out", "box_CheckpointCountDown_164.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_212_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394930595"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|84279432"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1748433370", "1748433370", "S03M040_Main", "box_Ordered_Output_212.Out", "box_ParticleFXController_v2_211.Start", clone, l0)
  l0:Start()
end
function export:f_box_TriggerMonitor_v2_143_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_39
  l0.Trigger = "9223372062580815346"
  l0.AutoDisable = 1
  l0 = self.box_TriggerMonitor_v2_143
  l1 = self.box_TriggerMonitor_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|860284664", "860284664", "S03M040_Main", "box_TriggerMonitor_v2_143.Enabled", "box_TriggerMonitor_v2_39.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_143_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_141
  l0.SoundId = "soundbinary/2585425064.bnk"
  l0 = self.box_TriggerMonitor_v2_143
  l1 = self.box_PlaySound_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|990245526", "990245526", "S03M040_Main", "box_TriggerMonitor_v2_143.Enter", "box_PlaySound_v2_141.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_194_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1311951814"
  l0.Out = self.f_box_Simple_Node_210_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|701215347", "701215347", "S03M040_Main", "box_Simple_Node_194.Out", "box_Simple_Node_210.In", clone, l0)
  l0:In()
end
function export:f_box_Perk_Controller_94_PerkRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_97
  l0.PerkDB = "PerksSinglePlayer.9223372048165569158"
  l0 = self.box_Perk_Controller_94
  l1 = self.box_Perk_Controller_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1382041935", "1382041935", "S03M040_Main", "box_Perk_Controller_94.PerkRemoved", "box_Perk_Controller_97.RemovePerk", l0, l1)
  l1:RemovePerk()
end
function export:f_box_CheckpointCountDown_165_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_165
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|948778395"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_209_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_209_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_209_Out_2
  l0 = self.box_CheckpointCountDown_165
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1360189309", "1360189309", "S03M040_Main", "box_CheckpointCountDown_165.Reached", "box_Ordered_Output_209.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_116_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S03M040_Main"
  l0 = self.box_MultipleOR_116
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|444151220", "444151220", "S03M040_Main", "box_MultipleOR_116.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_CameraRealign_112_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CameraRealign_112
  l1 = self.box_Timer_v2_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|277033538", "277033538", "S03M040_Main", "box_CameraRealign_112.Out", "box_Timer_v2_189.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_258_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1675313364"
  l0.Out = self.f_box_Simple_Node_259_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1625676833", "1625676833", "S03M040_Main", "box_Simple_Node_258.Out", "box_Simple_Node_259.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_95_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_S03_M040_Policebarage_21()
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_S03_M040_Policebarage_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|260879094", "260879094", "S03M040_Main", "box_TriggerMonitor_v2_95.Enabled", "box_S03_M040_Policebarage_21.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_95_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_110
  l0.SoundId = "soundbinary/2585425064.bnk"
  l0 = self.box_TriggerMonitor_v2_95
  l1 = self.box_PlaySound_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|828878393", "828878393", "S03M040_Main", "box_TriggerMonitor_v2_95.Enter", "box_PlaySound_v2_110.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_259_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1012998674"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_260_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_260_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|536442587", "536442587", "S03M040_Main", "box_Simple_Node_259.Out", "box_Ordered_Output_260.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_49_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 1
  l0._graph = self
  l0._name = "box_EnableVehicleRadioSystem_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1292224090"
  l0.Out = self.f_box_EnableVehicleRadioSystem_149_Out
  l0 = self.box_MissionMessageController_v3_49
  l1 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1280965990", "1280965990", "S03M040_Main", "box_MissionMessageController_v3_49.Out", "box_EnableVehicleRadioSystem_149.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_119_IsUnderwater()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_VehicleMonitor_v3_119
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|340710044", "340710044", "S03M040_Main", "box_VehicleMonitor_v3_119.IsUnderwater", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_119_IsUnusable()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_121()
  l0 = self.box_VehicleMonitor_v3_119
  l1 = self.box_MultipleOR_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|192659819", "192659819", "S03M040_Main", "box_VehicleMonitor_v3_119.IsUnusable", "box_MultipleOR_121.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_214_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_152()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1765111761", "1765111761", "S03M040_Main", "box_Ordered_Output_214.Out", "box_S03M040_ScriptedPoliceVehiclesController_152.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_214_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_142()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1850448419", "1850448419", "S03M040_Main", "box_Ordered_Output_214.Out", "box_S03M040_ScriptedPoliceVehiclesController_142.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_ParticleFXController_v2_200_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_201()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|527965036", "527965036", "S03M040_Main", "box_ParticleFXController_v2_200.Started", "box_ParticleFXController_v2_201.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_200_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_201()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|986082303", "986082303", "S03M040_Main", "box_ParticleFXController_v2_200.Stopped", "box_ParticleFXController_v2_201.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Wait_Qualities_Loaded_172_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_129
  l0.SceneEntity = "9223372051873742174"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M040_CarControl/s03_m040_carcontrol.seq"
  l0 = self.box_Wait_Qualities_Loaded_172
  l1 = self.box_PlaySequence_v5_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1971018150", "1971018150", "S03M040_Main", "box_Wait_Qualities_Loaded_172.Loaded", "box_PlaySequence_v5_129.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonyTargetController_61_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_61()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1346645862", "1346645862", "S03M040_Main", "box_FelonyTargetController_61.ChaseStarted", "box_FelonyTargetController_61.AddScripted", clone, l0)
  l0:AddScripted()
end
function export:f_box_FelonyTargetController_61_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_61()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|514698778", "514698778", "S03M040_Main", "box_FelonyTargetController_61.ScriptedAgentsAdded", "box_FelonyTargetController_61.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_FelonyTargetController_61_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_143
  l0.Trigger = "9223372057183390330"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|984565950", "984565950", "S03M040_Main", "box_FelonyTargetController_61.ScriptedAgentsAdopted", "box_TriggerMonitor_v2_143.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_249_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_231()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_231
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|811636117", "811636117", "S03M040_Main", "box_Ordered_Output_249.Out", "box_S03M040_ScriptedPoliceVehiclesController_231.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_249_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_232()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2078498407", "2078498407", "S03M040_Main", "box_Ordered_Output_249.Out", "box_S03M040_ScriptedPoliceVehiclesController_232.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_241_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_185
  l0.Checkpoint = "9223372051000140195"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|468484585", "468484585", "S03M040_Main", "box_Ordered_Output_241.Out", "box_CheckpointCountDown_185.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_241_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_240()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1979095936", "1979095936", "S03M040_Main", "box_Ordered_Output_241.Out", "box_S03M040_ScriptedPoliceVehiclesController_240.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_241_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_239()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1840416302", "1840416302", "S03M040_Main", "box_Ordered_Output_241.Out", "box_S03M040_ScriptedPoliceVehiclesController_239.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_241_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372070624695997"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 0
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|353245269"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1724834885", "1724834885", "S03M040_Main", "box_Ordered_Output_241.Out", "box_Lanes_Restrictions_Control_117.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_257_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1523826373"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_255_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_255_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_255_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_255_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|140570711", "140570711", "S03M040_Main", "box_Simple_Node_257.Out", "box_Ordered_Output_255.In", clone, l0)
  l0:In()
end
function export:f_box_EnableVehicleRadioSystem_151_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionController_v4_120
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1966534269", "1966534269", "S03M040_Main", "box_EnableVehicleRadioSystem_151.Out", "box_MissionController_v4_120.Fail", clone, l0)
  l0:Fail()
end
function export:f_box_CheckpointCountDown_90_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_90
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1263437757"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_219_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_219_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_219_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_219_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_219_Out_4
  l0 = self.box_CheckpointCountDown_90
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|506951339", "506951339", "S03M040_Main", "box_CheckpointCountDown_90.Reached", "box_Ordered_Output_219.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_242_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|384391268"
  l0.Out = self.f_box_Simple_Node_244_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2027627682", "2027627682", "S03M040_Main", "box_Simple_Node_242.Out", "box_Simple_Node_244.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogInVehicle_125
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundId = "soundbinary/1726277403.bnk"
  l0 = self.box_OnceOnly_v3_4
  l1 = self.box_PlayDialogInVehicle_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1195096509", "1195096509", "S03M040_Main", "box_OnceOnly_v3_4.Out", "box_PlayDialogInVehicle_125.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_144_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0.FadeOutTime = 3
  l0._graph = self
  l0._name = "box_StopMusic_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|447812176"
  l0.Out = DummyFunction
  l0 = self.box_PlaySound_v2_144
  l1 = Boxes[PathID("Domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1047873880", "1047873880", "S03M040_Main", "box_PlaySound_v2_144.Out", "box_StopMusic_139.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_118_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_173
  l0.Checkpoint = "9223372056402424196"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2079609018", "2079609018", "S03M040_Main", "box_Ordered_Output_118.Out", "box_CheckpointCountDown_173.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_118_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1599380069"
  l0.Out = self.f_box_Simple_Node_194_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|306516935", "306516935", "S03M040_Main", "box_Ordered_Output_118.Out", "box_Simple_Node_194.In", clone, l0)
  l0:In()
end
function export:f_box_CheckpointCountDown_156_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_156
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|220839017"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_26_Out_2
  l0 = self.box_CheckpointCountDown_156
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|341693062", "341693062", "S03M040_Main", "box_CheckpointCountDown_156.Reached", "box_Ordered_Output_26.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_193_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_111
  l0.Checkpoint = "9223372051000139558"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|905865324", "905865324", "S03M040_Main", "box_Ordered_Output_193.Out", "box_CheckpointCountDown_111.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_193_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_192()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|878348046", "878348046", "S03M040_Main", "box_Ordered_Output_193.Out", "box_S03M040_ScriptedPoliceVehiclesController_192.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_193_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_191()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|895649207", "895649207", "S03M040_Main", "box_Ordered_Output_193.Out", "box_S03M040_ScriptedPoliceVehiclesController_191.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_193_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_216()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1161531092", "1161531092", "S03M040_Main", "box_Ordered_Output_193.Out", "box_S03M040_ScriptedPoliceVehiclesController_216.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_193_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_217()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|221879025", "221879025", "S03M040_Main", "box_Ordered_Output_193.Out", "box_S03M040_ScriptedPoliceVehiclesController_217.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_193_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_230()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_230
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1038656926", "1038656926", "S03M040_Main", "box_Ordered_Output_193.Out", "box_S03M040_ScriptedPoliceVehiclesController_230.Start", clone, l0)
  l0:Start()
end
function export:f_box_CheckpointCountDown_167_Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_CheckpointCountDown_167
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2012712751"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_267_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_267_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_267_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_267_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_267_Out_4
  l0 = self.box_CheckpointCountDown_167
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1040272579", "1040272579", "S03M040_Main", "box_CheckpointCountDown_167.Reached", "box_Ordered_Output_267.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_31_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|631980981"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_92_Popped
  l0 = self.box_PlayDialog_v2_31
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|33893361", "33893361", "S03M040_Main", "box_PlayDialog_v2_31.Finished", "box_SetActionMap_v2_92.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_PlaySequence_v5_129_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_135()
  l0 = self.box_PlaySequence_v5_129
  l1 = self.box_OnceOnly_v3_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|413561213", "413561213", "S03M040_Main", "box_PlaySequence_v5_129.Finished", "box_OnceOnly_v3_135.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_129_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_135()
  l0 = self.box_PlaySequence_v5_129
  l1 = self.box_OnceOnly_v3_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1600998701", "1600998701", "S03M040_Main", "box_PlaySequence_v5_129.Skipped", "box_OnceOnly_v3_135.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_129_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372061195771316"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = 1
  l0._graph = self
  l0._name = "box_MissionMusicController_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|793191333"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySequence_v5_129
  l1 = Boxes[PathID("Domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1449068366", "1449068366", "S03M040_Main", "box_PlaySequence_v5_129.Started", "box_MissionMusicController_273.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Pawn_Health_Controller_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_24()
  l0 = self.box_TutorialController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|505771837", "505771837", "S03M040_Main", "box_Pawn_Health_Controller_11.Out", "box_TutorialController_24.Display", clone, l0)
  l0:Display()
end
function export:f_box_Simple_Node_256_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1778832698"
  l0.Out = self.f_box_Simple_Node_257_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2080568058", "2080568058", "S03M040_Main", "box_Simple_Node_256.Out", "box_Simple_Node_257.In", clone, l0)
  l0:In()
end
function export:f_box_Perk_Controller_96_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S03M040_CarNoExit"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|485614531"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_136_Popped
  l0 = self.box_Perk_Controller_96
  l1 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|785476857", "785476857", "S03M040_Main", "box_Perk_Controller_96.PerkReseted", "box_SetActionMap_v2_136.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_S03_M040_CIN_FixCarMontage_Main_75_Out_Cin()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_128
  l0.SpawnPoint = "9223372056504722439"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0 = self.box_S03_M040_CIN_FixCarMontage_Main_75
  l1 = self.box_Teleport_To_SpawnPoint_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1945070957", "1945070957", "S03M040_Main", "box_S03_M040_CIN_FixCarMontage_Main_75.Out_Cin", "box_Teleport_To_SpawnPoint_128.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_33_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = nil
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|153593377"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = self.f_box_Set_Is_Hiding_In_Vehicle_20_HideInVehicleEnabled
  l0.HideInVehicleDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|514922616", "514922616", "S03M040_Main", "box_VisibilityController_v2_33.Shown", "box_Set_Is_Hiding_In_Vehicle_20.SetCanHideInVehicle", clone, l0)
  l0:SetCanHideInVehicle()
end
function export:f_box_MissionMessageController_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1305534309"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_157_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_157_Out_1
  l0 = self.box_MissionMessageController_v3_13
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1687348593", "1687348593", "S03M040_Main", "box_MissionMessageController_v3_13.Out", "box_Ordered_Output_157.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_113_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049978619986"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1955641374"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1884732044", "1884732044", "S03M040_Main", "box_ParticleFXController_v2_113.Started", "box_ParticleFXController_v2_114.Start", clone, l0)
  l0:Start()
end
function export:f_box_TriggerMonitor_v2_39_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_145
  l0.Trigger = "9223372057183390331"
  l0 = self.box_TriggerMonitor_v2_39
  l1 = self.box_TriggerMonitor_v2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1179782793", "1179782793", "S03M040_Main", "box_TriggerMonitor_v2_39.Enabled", "box_TriggerMonitor_v2_145.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_39_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_103
  l0.SoundIdList = self.Stunts_Scream
  l0.UseFacial = 0
  l0 = self.box_TriggerMonitor_v2_39
  l1 = self.box_PlayDialog_v2_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|633114175", "633114175", "S03M040_Main", "box_TriggerMonitor_v2_39.Enter", "box_PlayDialog_v2_103.Start", l0, l1)
  l1:Start()
end
function export:f_box_Multiple_AND_262_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_24()
  l0 = self.box_Multiple_AND_262
  l1 = self.box_TutorialController_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|698532654", "698532654", "S03M040_Main", "box_Multiple_AND_262.Out", "box_TutorialController_24.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Ordered_Output_221_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_192()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1034411395", "1034411395", "S03M040_Main", "box_Ordered_Output_221.Out", "box_S03M040_ScriptedPoliceVehiclesController_192.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_221_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_191()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1059029908", "1059029908", "S03M040_Main", "box_Ordered_Output_221.Out", "box_S03M040_ScriptedPoliceVehiclesController_191.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_221_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_216()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|656742703", "656742703", "S03M040_Main", "box_Ordered_Output_221.Out", "box_S03M040_ScriptedPoliceVehiclesController_216.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_221_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_217()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1864574283", "1864574283", "S03M040_Main", "box_Ordered_Output_221.Out", "box_S03M040_ScriptedPoliceVehiclesController_217.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_221_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_230()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_230
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1595448186", "1595448186", "S03M040_Main", "box_Ordered_Output_221.Out", "box_S03M040_ScriptedPoliceVehiclesController_230.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_267_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_168
  l0.Checkpoint = "9223372051000138949"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1825440997", "1825440997", "S03M040_Main", "box_Ordered_Output_267.Out", "box_CheckpointCountDown_168.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_267_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|977971059"
  l0.Out = self.f_box_Simple_Node_266_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|745275677", "745275677", "S03M040_Main", "box_Ordered_Output_267.Out", "box_Simple_Node_266.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_267_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_152()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1441352467", "1441352467", "S03M040_Main", "box_Ordered_Output_267.Out", "box_S03M040_ScriptedPoliceVehiclesController_152.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_267_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_142()
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|494609467", "494609467", "S03M040_Main", "box_Ordered_Output_267.Out", "box_S03M040_ScriptedPoliceVehiclesController_142.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_267_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1409283544"
  l0.Out = self.f_box_Simple_Node_169_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|631340990", "631340990", "S03M040_Main", "box_Ordered_Output_267.Out", "box_Simple_Node_169.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_53_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_159
  l0.Checkpoint = "9223372051000065514"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1475496602", "1475496602", "S03M040_Main", "box_Ordered_Output_53.Out", "box_CheckpointCountDown_159.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_53_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogInVehicle_123
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundId = "soundbinary/2329595970.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|748908553", "748908553", "S03M040_Main", "box_Ordered_Output_53.Out", "box_PlayDialogInVehicle_123.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_56_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_19
  l0.SoundId = "soundbinary/4291373402.bnk"
  l0.UseFacial = 0
  l0 = self.box_Timer_v2_56
  l1 = self.box_PlayDialog_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1888530529", "1888530529", "S03M040_Main", "box_Timer_v2_56.TimeElapsed", "box_PlayDialog_v2_19.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetActionMap_v2_72_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_89
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|137453927", "137453927", "S03M040_Main", "box_SetActionMap_v2_72.Pushed", "box_MissionCheckpointReach_89.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriterSoundID_81_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_81
  self.Stunts_Barge = l0.Target
  l0 = self.box_ListWriterSoundID_17
  l0.Input = self.Stunts_Scream
  l0.SoundID[0] = "soundbinary/2289138030.bnk"
  l0.SoundID[1] = "soundbinary/4059773332.bnk"
  l0 = self.box_ListWriterSoundID_81
  l1 = self.box_ListWriterSoundID_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1038582014", "1038582014", "S03M040_Main", "box_ListWriterSoundID_81.Added", "box_ListWriterSoundID_17.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriterSoundID_81_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_81
  self.Stunts_Barge = l0.Target
end
function export:f_box_ListWriterSoundID_81_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_81
  self.Stunts_Barge = l0.Target
end
function export:f_box_MissionLayer_v2_36_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 21
  l0.Minute = 50
  l0._graph = self
  l0._name = "box_SetTimeOfDay_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|502239499"
  l0.Out = self.f_box_SetTimeOfDay_87_Out
  l0 = self.box_MissionLayer_v2_36
  l1 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1502702915", "1502702915", "S03M040_Main", "box_MissionLayer_v2_36.Loaded", "box_SetTimeOfDay_87.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_Ordered_Output_198_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CheckpointCountDown_163
  l0.Checkpoint = "9223372051000136085"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|775278898", "775278898", "S03M040_Main", "box_Ordered_Output_198.Out", "box_CheckpointCountDown_163.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_198_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|844407796"
  l0.Out = self.f_box_Simple_Node_131_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|438375372", "438375372", "S03M040_Main", "box_Ordered_Output_198.Out", "box_Simple_Node_131.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_107_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|829536279"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_271_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PhoneCommunicationController_107
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1525071980", "1525071980", "S03M040_Main", "box_PhoneCommunicationController_107.OnCommunicationFinished", "box_Compare_Boolean_v2_271.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_228_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|47575278"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_229_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_229_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_229_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_229_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1590630915", "1590630915", "S03M040_Main", "box_Simple_Node_228.Out", "box_Ordered_Output_229.In", clone, l0)
  l0:In()
end
function export:f_box_RaceController_14_OnRaceSetupFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|804067611"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0 = self.box_RaceController_14
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|2116836083", "2116836083", "S03M040_Main", "box_RaceController_14.OnRaceSetupFinished", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_RaceController_14_OnRaceStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_23
  l0.SoundId = "soundbinary/3445084208.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_RaceController_14
  l1 = self.box_PlayDialog_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|590703508", "590703508", "S03M040_Main", "box_RaceController_14.OnRaceStarted", "box_PlayDialog_v2_23.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_MultipleOR_195()
end
function export:OnEnter_box_Mission_End_35()
  local l0
  l0 = self.box_Mission_End_35
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S03M040_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_ParticleFXController_v2_206()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199998"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|40729964"
  l0.Started = self.f_box_ParticleFXController_v2_206_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_206_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_251()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_251
  l0.Path = "9223372066953314297"
  l0.CLO_PoliceMan = "9223372066953314300"
  l0.CLO_PoliceCar = "9223372066953314301"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_235()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_235
  l0.Path = "9223372066953314006"
  l0.CLO_PoliceMan = "9223372066953314000"
  l0.CLO_PoliceCar = "9223372066953314001"
  l0.DelayBeforeSendingOnPath = 3
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_S03_M040_Policebarage_21()
  local l0
  l0 = self.box_S03_M040_Policebarage_21
  l0.Player_CHIP = self.PlayerEntity
end
function export:OnEnter_box_ParticleFXController_v2_201()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199988"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|154114181"
  l0.Started = self.f_box_ParticleFXController_v2_201_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_201_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_205()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199996"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|162242221"
  l0.Started = self.f_box_ParticleFXController_v2_205_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_205_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_239()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_239
  l0.Path = "9223372066953314289"
  l0.CLO_PoliceMan = "9223372066953314292"
  l0.CLO_PoliceCar = "9223372066953314293"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_254()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_254
  l0.Path = "9223372066953314311"
  l0.CLO_PoliceMan = "9223372066953314304"
  l0.CLO_PoliceCar = "9223372066953314307"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_253()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_253
  l0.Path = "9223372066953314309"
  l0.CLO_PoliceMan = "9223372066953314305"
  l0.CLO_PoliceCar = "9223372066953314306"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_ParticleFXController_v2_208()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899200002"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|319146045"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_232()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_232
  l0.Path = "9223372066953313998"
  l0.CLO_PoliceMan = "9223372066953313992"
  l0.CLO_PoliceCar = "9223372066953313991"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:OnEnter_box_Multiple_AND_93()
end
function export:OnEnter_box_PhoneCommunicationController_105()
  local l0
  l0 = self.box_PhoneCommunicationController_105
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056623924182"
end
function export:OnEnter_box_OnceOnly_v3_135()
end
function export:OnEnter_box_ParticleFXController_v2_204()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199994"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|454811203"
  l0.Started = self.f_box_ParticleFXController_v2_204_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_204_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_223()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_223
  l0.Path = "9223372066580010811"
  l0.CLO_PoliceMan = "9223372066580010806"
  l0.CLO_PoliceCar = "9223372066580010805"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_216()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_216
  l0.Path = "9223372066580010800"
  l0.CLO_PoliceMan = "9223372066580010798"
  l0.CLO_PoliceCar = "9223372066580010797"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_225()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_225
  l0.Path = "9223372066580010819"
  l0.CLO_PoliceMan = "9223372066580010815"
  l0.CLO_PoliceCar = "9223372066580010814"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_224()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_224
  l0.Path = "9223372066580010817"
  l0.CLO_PoliceMan = "9223372066580010813"
  l0.CLO_PoliceCar = "9223372066580010812"
  l0.DelayBeforeSendingOnPath = 3
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_MultipleOR_121()
end
function export:OnEnter_box_ParticleFXController_v2_202()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199990"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|633794505"
  l0.Started = self.f_box_ParticleFXController_v2_202_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_202_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_ParticleFXController_v2_197()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199982"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|672309811"
  l0.Started = self.f_box_ParticleFXController_v2_197_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_197_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_222()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_222
  l0.Path = "9223372066580010809"
  l0.CLO_PoliceMan = "9223372066580010804"
  l0.CLO_PoliceCar = "9223372066580010803"
  l0.DelayBeforeSendingOnPath = 3
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_250()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_250
  l0.Path = "9223372066953314299"
  l0.CLO_PoliceMan = "9223372066953314302"
  l0.CLO_PoliceCar = "9223372066953314303"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_134()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_134
  l0.Path = "9223372066580008009"
  l0.CLO_PoliceMan = "9223372066273327071"
  l0.CLO_PoliceCar = "9223372066273327069"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 30
end
function export:OnEnter_box_ParticleFXController_v2_203()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199992"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1122801619"
  l0.Started = self.f_box_ParticleFXController_v2_203_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_203_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_217()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_217
  l0.Path = "9223372066580010802"
  l0.CLO_PoliceMan = "9223372066580010796"
  l0.CLO_PoliceCar = "9223372066580010795"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_ParticleFXController_v2_199()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199984"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1165333955"
  l0.Started = self.f_box_ParticleFXController_v2_199_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_199_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_192()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_192
  l0.Path = "9223372066580010792"
  l0.CLO_PoliceMan = "9223372066580010787"
  l0.CLO_PoliceCar = "9223372066580010788"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_ParticleFXController_v2_207()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899200000"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1253679828"
  l0.Started = self.f_box_ParticleFXController_v2_207_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_207_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_237()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_237
  l0.Path = "9223372066953314014"
  l0.CLO_PoliceMan = "9223372066953314008"
  l0.CLO_PoliceCar = "9223372066953314009"
  l0.DelayBeforeSendingOnPath = 4
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_FelonyTargetController_54()
  local l0
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372068194800362"
  l0.AgentList = self.Helicopter
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1341754305"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_54_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_133()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_133
  l0.Path = "9223372066580008007"
  l0.CLO_PoliceMan = "9223372066273327070"
  l0.CLO_PoliceCar = "9223372066273327068"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 30
end
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_191()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_191
  l0.Path = "9223372066580010794"
  l0.CLO_PoliceMan = "9223372066580010790"
  l0.CLO_PoliceCar = "9223372066580010789"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_142()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_142
  l0.Path = "9223372066580009858"
  l0.CLO_PoliceMan = "9223372066580009851"
  l0.CLO_PoliceCar = "9223372066580009852"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_TutorialController_24()
  local l0
  l0 = self.box_TutorialController_24
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NitroBoost",
    item = "Description",
    id = "604584"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_116()
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_152()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_152
  l0.Path = "9223372066580009856"
  l0.CLO_PoliceMan = "9223372066580009854"
  l0.CLO_PoliceCar = "9223372066580009853"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_ParticleFXController_v2_200()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199986"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1738062921"
  l0.Started = self.f_box_ParticleFXController_v2_200_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_200_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_FelonyTargetController_61()
  local l0
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372068194800362"
  l0.AgentList = self.PoliceSquad
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s03\\s03m040\\s03m040.domino|@S03M040_Main|1756293436"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_61_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_61_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_box_FelonyTargetController_61_ScriptedAgentsAdopted
end
function export:OnEnter_box_PhoneCommunicationController_52()
  local l0
  l0 = self.box_PhoneCommunicationController_52
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346310"
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_238()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_238
  l0.Path = "9223372066953314012"
  l0.CLO_PoliceMan = "9223372066953314007"
  l0.CLO_PoliceCar = "9223372066953314010"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_Multiple_AND_262()
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_240()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_240
  l0.Path = "9223372066953314291"
  l0.CLO_PoliceMan = "9223372066953314294"
  l0.CLO_PoliceCar = "9223372066953314295"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_230()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_230
  l0.Path = "9223372066953313987"
  l0.CLO_PoliceMan = "9223372066953313989"
  l0.CLO_PoliceCar = "9223372066953313988"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_231()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_231
  l0.Path = "9223372066953313996"
  l0.CLO_PoliceMan = "9223372066953313993"
  l0.CLO_PoliceCar = "9223372066953313990"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:OnEnter_box_RaceController_14()
  local l0
  l0 = self.box_RaceController_14
  l0.Race = "RaceDbConfig.9223372050964391730"
end
function export:OnEnter_box_S03M040_ScriptedPoliceVehiclesController_234()
  local l0
  l0 = self.box_S03M040_ScriptedPoliceVehiclesController_234
  l0.Path = "9223372066953314004"
  l0.CLO_PoliceMan = "9223372066953314002"
  l0.CLO_PoliceCar = "9223372066953313999"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
_compilerVersion = 4
