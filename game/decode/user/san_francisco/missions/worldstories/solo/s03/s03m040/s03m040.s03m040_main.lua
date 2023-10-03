export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CameraRealign.lua")
  cbox:RegisterBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
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
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.Mission_End.lua")
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
  cbox:RegisterBox("Domino/Library/common/Narrative.PlayDialogInVehicle.lua")
  cbox:RegisterBox("Domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.PreCineCustom.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_fixcarmontage.S03_M040_CIN_FixCarMontage_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_followerfollowup.S03_M040_CIN_FollowerFollowUp_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03_M040_Policebarage.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
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
  self[195] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[195]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_195_Out
  self[22] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[22]
  l0._graph = self
  l0.Reached = self.f_22_Reached
  self[174] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[174]
  l0._graph = self
  l0.Reached = self.f_174_Reached
  self[66] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[66]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_66_OnUserInPlace
  self[163] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[163]
  l0._graph = self
  l0.Reached = self.f_163_Reached
  self[35] = cbox:CreateBox("Domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[35]
  l0._graph = self
  self[162] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[162]
  l0._graph = self
  l0.Reached = self.f_162_Reached
  self[17] = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_17_Added
  l0.Removed = self.f_17_Removed
  l0.Out = self.f_17_Out
  self[251] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[251]
  l0._graph = self
  self[153] = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self[153]
  l0._graph = self
  l0.Enabled = self.f_153_Enabled
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
  l0.NitroUsed = self.f_153_NitroUsed
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[74] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_74_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[179] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[179]
  l0._graph = self
  l0.Reached = self.f_179_Reached
  self[235] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[235]
  l0._graph = self
  self[80] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_80_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[21] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03_M040_Policebarage.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  self[18] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[18]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_18_PostOut
  self[86] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_followerfollowup.S03_M040_CIN_FollowerFollowUp_Main.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = self.f_86_Out
  self[42] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[42]
  l0._graph = self
  l0.Reached = self.f_42_Reached
  self[261] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[261]
  l0._graph = self
  l0.Out = self.f_261_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_261_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[38] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[38]
  l0._graph = self
  l0.Reached = self.f_38_Reached
  self[48] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_48_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[239] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[239]
  l0._graph = self
  self[154] = cbox:CreateBox("Domino/System/HelicopterBhvController.lua")
  l0 = self[154]
  l0._graph = self
  l0.StartCompleted = self.f_154_StartCompleted
  l0.StopCompleted = DummyFunction
  self[44] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_44_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[160] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[160]
  l0._graph = self
  l0.Reached = self.f_160_Reached
  self[254] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[254]
  l0._graph = self
  self[253] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[253]
  l0._graph = self
  self[232] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[232]
  l0._graph = self
  self[93] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[93]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_93_Out
  self[67] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[67]
  l0._graph = self
  l0._DynamicAnchors = {Data = 1}
  l0.Added = self.f_67_Added
  l0.Removed = self.f_67_Removed
  l0.Out = self.f_67_Out
  self[127] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.lua")
  l0 = self[127]
  l0._graph = self
  l0.Out = DummyFunction
  l0.SCR_StuntMountain = DummyFunction
  l0.Stunts_FlyBy_Out = DummyFunction
  l0.HighWayStunt_out = DummyFunction
  l0.Ocean_Stunt_Out = DummyFunction
  l0.Final_Stunt_Out = DummyFunction
  l0.Out_Spawned = DummyFunction
  self[105] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[105]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = self.f_105_StopCommunicationOut
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_105_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[135] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[135]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_135_Out
  l0.ResetOut = DummyFunction
  self[111] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[111]
  l0._graph = self
  l0.Reached = self.f_111_Reached
  self[223] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[223]
  l0._graph = self
  self[115] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.lua")
  l0 = self[115]
  l0._graph = self
  l0.Out = DummyFunction
  l0.SCR_StuntMountain = self.f_115_SCR_StuntMountain
  l0.Stunts_FlyBy_Out = DummyFunction
  l0.HighWayStunt_out = DummyFunction
  l0.Ocean_Stunt_Out = DummyFunction
  l0.Final_Stunt_Out = DummyFunction
  l0.Out_Spawned = DummyFunction
  self[108] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[108]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_108_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[83] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[83]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_83_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[97] = cbox:CreateBox("Domino/System/PerkController.lua")
  l0 = self[97]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = self.f_97_PerkRemoved
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[158] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[158]
  l0._graph = self
  l0.Reached = self.f_158_Reached
  self[216] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[216]
  l0._graph = self
  self[225] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[225]
  l0._graph = self
  self[224] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[224]
  l0._graph = self
  self[186] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[186]
  l0._graph = self
  l0.Reached = self.f_186_Reached
  self[43] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_43_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[121] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[121]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_121_Out
  self[128] = cbox:CreateBox("Domino/System/TeleportToSpawnPoint.lua")
  l0 = self[128]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_128_TeleportDone
  self[125] = cbox:CreateBox("Domino/Library/common/Narrative.PlayDialogInVehicle.lua")
  l0 = self[125]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  l0.Skipped = DummyFunction
  self[196] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[196]
  l0._graph = self
  l0.Out = self.f_196_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[30] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_8_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.SetTrue = self.f_15_SetTrue
  l0.SetFalse = self.f_15_SetFalse
  l0.Toggled = self.f_15_Toggled
  l0.SetFromBool = self.f_15_SetFromBool
  self[178] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[178]
  l0._graph = self
  l0.Reached = self.f_178_Reached
  self[89] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[89]
  l0._graph = self
  l0.Out = self.f_89_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[215] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[215]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[3] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[3]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_3_PostOut
  self[106] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.PreCineCustom.lua")
  l0 = self[106]
  l0._graph = self
  l0.PreOut = self.f_106_PreOut
  self[222] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[222]
  l0._graph = self
  self[173] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[173]
  l0._graph = self
  l0.Reached = self.f_173_Reached
  self[47] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040_scr.S03M040_SCR_Main.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = DummyFunction
  l0.SCR_StuntMountain = DummyFunction
  l0.Stunts_FlyBy_Out = DummyFunction
  l0.HighWayStunt_out = self.f_47_HighWayStunt_out
  l0.Ocean_Stunt_Out = DummyFunction
  l0.Final_Stunt_Out = DummyFunction
  l0.Out_Spawned = DummyFunction
  self[188] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[188]
  l0._graph = self
  l0.Reached = self.f_188_Reached
  self[155] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[155]
  l0._graph = self
  l0.Out = self.f_155_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[122] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[122]
  l0._graph = self
  l0.Reached = self.f_122_Reached
  self[250] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[250]
  l0._graph = self
  self[50] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[50]
  l0._graph = self
  l0.Started = self.f_50_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[76] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[76]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_76_OnUserInPlace
  self[23] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = self.f_23_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[103] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[103]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[84] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[84]
  l0._graph = self
  l0.Loaded = self.f_84_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[134] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[134]
  l0._graph = self
  self[177] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[177]
  l0._graph = self
  l0.Reached = self.f_177_Reached
  self[91] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[91]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[37] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_37_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[109] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[109]
  l0._graph = self
  l0.Reached = self.f_109_Reached
  self[180] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[180]
  l0._graph = self
  l0.Reached = self.f_180_Reached
  self[55] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_55_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[176] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[176]
  l0._graph = self
  l0.Reached = self.f_176_Reached
  self[101] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[101]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_101_OnUserInPlace
  self[7] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_7_OnUserInPlace
  self[276] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[276]
  l0._graph = self
  l0.Out = self.f_276_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[58] = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self[58]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[85] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[85]
  l0._graph = self
  l0.Reached = self.f_85_Reached
  self[82] = cbox:CreateBox("Domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_82_Done
  self[146] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[146]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[164] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[164]
  l0._graph = self
  l0.Reached = self.f_164_Reached
  self[104] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[217] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[217]
  l0._graph = self
  self[62] = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_62_Added
  l0.Removed = self.f_62_Removed
  l0.Out = self.f_62_Out
  self[185] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[185]
  l0._graph = self
  l0.Reached = self.f_185_Reached
  self[168] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[168]
  l0._graph = self
  l0.Reached = self.f_168_Reached
  self[59] = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_59_Added
  l0.Removed = self.f_59_Removed
  l0.Out = self.f_59_Out
  self[170] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[170]
  l0._graph = self
  l0.Reached = self.f_170_Reached
  self[69] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_69_OnUserInPlace
  self[161] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[161]
  l0._graph = self
  l0.Reached = self.f_161_Reached
  self[70] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[70]
  l0._graph = self
  l0.PreOut = self.f_70_PreOut
  l0.PostOut = DummyFunction
  self[192] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[192]
  l0._graph = self
  self[237] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[237]
  l0._graph = self
  self[110] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[189] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[189]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_189_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[166] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[166]
  l0._graph = self
  l0.Reached = self.f_166_Reached
  self[16] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_16_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[171] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[171]
  l0._graph = self
  l0.Reached = self.f_171_Reached
  self[181] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[181]
  l0._graph = self
  l0.Reached = self.f_181_Reached
  self[145] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[145]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_145_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[102] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[102]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_102_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[133] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[133]
  l0._graph = self
  self[40] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_40_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[159] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[159]
  l0._graph = self
  l0.Reached = self.f_159_Reached
  self[73] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[183] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[183]
  l0._graph = self
  l0.Reached = self.f_183_Reached
  self[77] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[77]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_77_OnUserInPlace
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[191] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[191]
  l0._graph = self
  self[100] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_100_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[184] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[184]
  l0._graph = self
  l0.Reached = self.f_184_Reached
  self[274] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[274]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[29] = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_29_Added
  l0.Removed = self.f_29_Removed
  l0.Out = self.f_29_Out
  self[78] = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 3}
  l0.Added = self.f_78_Added
  l0.Removed = self.f_78_Removed
  l0.Out = self.f_78_Out
  self[142] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[142]
  l0._graph = self
  self[175] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[175]
  l0._graph = self
  l0.Reached = self.f_175_Reached
  self[24] = cbox:CreateBox("Domino/System/TutorialController.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_24_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[60] = cbox:CreateBox("Domino/System/VehicleSeatingController.lua")
  l0 = self[60]
  l0._graph = self
  l0.Assigned = DummyFunction
  l0.Unassigned = DummyFunction
  l0.AssignCompleted = self.f_60_AssignCompleted
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self[63] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_63_Added
  l0.Removed = self.f_63_Removed
  l0.Out = self.f_63_Out
  self[141] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[141]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[143] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[143]
  l0._graph = self
  l0.Enabled = self.f_143_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_143_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[94] = cbox:CreateBox("Domino/System/PerkController.lua")
  l0 = self[94]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = self.f_94_PerkRemoved
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[165] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[165]
  l0._graph = self
  l0.Reached = self.f_165_Reached
  self[116] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[116]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_116_Out
  self[112] = cbox:CreateBox("Domino/System/CameraRealign.lua")
  l0 = self[112]
  l0._graph = self
  l0.Out = self.f_112_Out
  self[95] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Enabled = self.f_95_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_95_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[49] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = self.f_49_Out
  l0.MessageCompleted = DummyFunction
  self[119] = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self[119]
  l0._graph = self
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
  l0.IsUnusable = self.f_119_IsUnusable
  l0.IsUnderwater = self.f_119_IsUnderwater
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
  self[152] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[152]
  l0._graph = self
  self[172] = cbox:CreateBox("Domino/System/WaitQualitiesLoaded.lua")
  l0 = self[172]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Loaded = self.f_172_Loaded
  self[90] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[90]
  l0._graph = self
  l0.Reached = self.f_90_Reached
  self[123] = cbox:CreateBox("Domino/Library/common/Narrative.PlayDialogInVehicle.lua")
  l0 = self[123]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  l0.Skipped = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[144] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[144]
  l0._graph = self
  l0.Out = self.f_144_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[156] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[156]
  l0._graph = self
  l0.Reached = self.f_156_Reached
  self[167] = cbox:CreateBox("Domino/Library/common/MissionSpecificIngredients.CheckpointCountDown.lua")
  l0 = self[167]
  l0._graph = self
  l0.Reached = self.f_167_Reached
  self[31] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_31_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[129] = cbox:CreateBox("Domino/System/PlaySequence_v5.lua")
  l0 = self[129]
  l0._graph = self
  l0.Started = self.f_129_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_129_Skipped
  l0.Finished = self.f_129_Finished
  self[96] = cbox:CreateBox("Domino/System/PerkController.lua")
  l0 = self[96]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_96_PerkReseted
  self[75] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03_m040_cin_fixcarmontage.S03_M040_CIN_FixCarMontage_Main.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out_Cin = self.f_75_Out_Cin
  self[52] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[52]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.MessageCompleted = DummyFunction
  self[238] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[238]
  l0._graph = self
  self[39] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = self.f_39_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_39_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[65] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[262] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[262]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_262_Out
  self[240] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[240]
  l0._graph = self
  self[56] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_56_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[81] = cbox:CreateBox("Domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self[81]
  l0._graph = self
  l0._DynamicAnchors = {SoundID = 4}
  l0.Added = self.f_81_Added
  l0.Removed = self.f_81_Removed
  l0.Out = self.f_81_Out
  self[230] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[230]
  l0._graph = self
  self[231] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[231]
  l0._graph = self
  self[36] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Loaded = self.f_36_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[107] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[107]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_107_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[120] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[120]
  l0._graph = self
  self[14] = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {RacerVehicle = 2}
  l0.OnPlayerTeleportedToStart = DummyFunction
  l0.OnRaceSetupFinished = self.f_14_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_14_OnRaceStarted
  l0.OnRaceFinished = DummyFunction
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = DummyFunction
  l0.OnRaceStopped = DummyFunction
  self[98] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[98]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[234] = cbox:CreateBox("domino/user/san_francisco/missions/worldstories/solo/s03/s03m040/s03m040.S03M040_ScriptedPoliceVehiclesController.lua")
  l0 = self[234]
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
  l0 = self[116]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[84]
  l0.LayerName = "S03M040_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self[36]
  l0.LayerName = "S03M040_Main"
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:en_35()
  l0 = self[35]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[116]
  l0:Input(0)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_195_Out()
  local l0
  self = self._graph
  l0 = self[58]
  l0.ItemDB = "Items.9223372046454233083"
  l0:ExecuteRewards()
end
function export:f_22_Reached()
  local l0
  self = self._graph
  l0 = self[22]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0:In()
end
function export:f_174_Reached()
  local l0
  self = self._graph
  l0 = self[174]
  self.Time_Left = l0.RemainingTime
  l0 = self[176]
  l0.Checkpoint = "9223372051000138965"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_66_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[66]
  self.PoliceCar3 = l0.UserID
  l0 = self[93]
  l0:Condition(0)
end
function export:f_226_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_228_Out
  l0:In()
end
function export:f_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_148_Out_0
  l0.Out[1] = self.f_148_Out_1
  l0:In()
end
function export:f_163_Reached()
  local l0
  self = self._graph
  l0 = self[163]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_212_Out_0
  l0.Out[1] = self.f_212_Out_1
  l0:In()
end
function export:f_206_Started()
  local l0
  self = self._graph
  self:en_207()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_206_Stopped()
  local l0
  self = self._graph
  self:en_207()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Checkpoint = "9223372061394928421"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_256_Out
  l0:In()
end
function export:f_10_Out_2()
  local l0
  self = self._graph
  l0 = self[50]
  l0.SoundId = "soundbinary/954305219.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_10_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049978619986"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_113_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_229_Out_0()
  local l0
  self = self._graph
  self:en_222()
  l0 = self[222]
  l0:Stop()
end
function export:f_229_Out_1()
  local l0
  self = self._graph
  self:en_223()
  l0 = self[223]
  l0:Stop()
end
function export:f_229_Out_2()
  local l0
  self = self._graph
  self:en_224()
  l0 = self[224]
  l0:Stop()
end
function export:f_229_Out_3()
  local l0
  self = self._graph
  self:en_225()
  l0 = self[225]
  l0:Stop()
end
function export:f_162_Reached()
  local l0
  self = self._graph
  l0 = self[162]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_198_Out_0
  l0.Out[1] = self.f_198_Out_1
  l0:In()
end
function export:f_17_Added()
  local l0
  self = self._graph
  l0 = self[17]
  self.Stunts_Scream = l0.Target
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[17]
  self.Stunts_Scream = l0.Target
end
function export:f_17_Removed()
  local l0
  self = self._graph
  l0 = self[17]
  self.Stunts_Scream = l0.Target
end
function export:f_124_Out_0()
  local l0
  self = self._graph
  l0 = self[109]
  l0.Checkpoint = "9223372051000139564"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_124_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_218_Out
  l0:In()
end
function export:f_233_Out_0()
  local l0
  self = self._graph
  l0 = self[178]
  l0.Checkpoint = "9223372051000139574"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_233_Out_1()
  local l0
  self = self._graph
  self:en_231()
  l0 = self[231]
  l0:Start()
end
function export:f_233_Out_2()
  local l0
  self = self._graph
  self:en_232()
  l0 = self[232]
  l0:Start()
end
function export:f_153_Enabled()
  local l0
  self = self._graph
  l0 = self[261]
  l0.Seconds = 15
  l0:Start()
end
function export:f_153_NitroUsed()
  local l0
  self = self._graph
  l0 = self[262]
  l0:Condition(1)
end
function export:f_74_Unassigned()
  local l0
  self = self._graph
  l0 = self[82]
  l0.SpawnPoint = "9223372046500782878"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0:In()
end
function export:f_179_Reached()
  local l0
  self = self._graph
  l0 = self[179]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_126_Out_0
  l0.Out[1] = self.f_126_Out_1
  l0:In()
end
function export:f_236_Out_0()
  local l0
  self = self._graph
  l0 = self[183]
  l0.Checkpoint = "9223372051000139576"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_236_Out_1()
  local l0
  self = self._graph
  self:en_234()
  l0 = self[234]
  l0:Start()
end
function export:f_236_Out_2()
  local l0
  self = self._graph
  self:en_235()
  l0 = self[235]
  l0:Start()
end
function export:f_236_Out_3()
  local l0
  self = self._graph
  self:en_238()
  l0 = self[238]
  l0:Start()
end
function export:f_236_Out_4()
  local l0
  self = self._graph
  self:en_237()
  l0 = self[237]
  l0:Start()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = self[175]
  l0.Checkpoint = "9223372051000138955"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_68_Out_0
  l0.Out[1] = self.f_68_Out_1
  l0:In()
end
function export:f_220_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_221_Out_0
  l0.Out[1] = self.f_221_Out_1
  l0.Out[2] = self.f_221_Out_2
  l0.Out[3] = self.f_221_Out_3
  l0.Out[4] = self.f_221_Out_4
  l0:In()
end
function export:f_275_Out_0()
  local l0
  self = self._graph
  l0 = self[115]
  l0:SCR_StuntMountain_()
end
function export:f_275_Out_1()
  local l0
  self = self._graph
  l0 = self[276]
  l0.SoundId = "soundbinary/560068104.bnk"
  l0:Play()
end
function export:f_64_Out_0()
  local l0
  self = self._graph
  l0 = self[66]
  l0.CLO = "9223372049960074776"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_64_Out_1()
  local l0
  self = self._graph
  l0 = self[69]
  l0.CLO = "9223372049960074777"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_64_Out_2()
  local l0
  self = self._graph
  l0 = self[77]
  l0.CLO = "9223372049960074781"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_64_Out_3()
  local l0
  self = self._graph
  l0 = self[76]
  l0.CLO = "9223372049960074782"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_80_ListFinished()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Seconds = 2
  l0:Start()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_64_Out_0
  l0.Out[1] = self.f_64_Out_1
  l0.Out[2] = self.f_64_Out_2
  l0.Out[3] = self.f_64_Out_3
  l0:In()
end
function export:f_18_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_72_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_20_HideInVehicleEnabled()
  local l0
  self = self._graph
  l0 = self[195]
  l0:Input(0)
end
function export:f_201_Started()
  local l0
  self = self._graph
  self:en_202()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_201_Stopped()
  local l0
  self = self._graph
  self:en_202()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_86_Out()
  local l0
  self = self._graph
  l0 = self[96]
  l0:ResetPerks()
end
function export:f_205_Started()
  local l0
  self = self._graph
  self:en_206()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_205_Stopped()
  local l0
  self = self._graph
  self:en_206()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_42_Reached()
  local l0
  self = self._graph
  l0 = self[42]
  self.Time_Left = l0.RemainingTime
  l0 = self[106]
  l0.KeepDrones = 0
  l0.SkipPostFX = 1
  l0:PreCinematic()
end
function export:f_261_Out()
  local l0
  self = self._graph
  l0 = self[13]
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
  l0:ShowNewObjective()
end
function export:f_261_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[262]
  l0:Condition(0)
end
function export:f_9_Pushed()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:SetupRace()
end
function export:f_272_A_is_False()
  local l0
  self = self._graph
  self:en_105()
  l0 = self[105]
  l0:StartCommunication()
end
function export:f_38_Reached()
  local l0
  self = self._graph
  l0 = self[38]
  self.Time_Left = l0.RemainingTime
  l0 = self[85]
  l0.Checkpoint = "9223372051000139560"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_48_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_264_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_26_Out_0()
  local l0
  self = self._graph
  l0 = self[158]
  l0.Checkpoint = "9223372051000065512"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_26_Out_1()
  local l0
  self = self._graph
  l0 = self[37]
  l0.SoundId = "soundbinary/2593602725.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_26_Out_2()
  local l0
  self = self._graph
  l0 = self[59]
  l0.Input = self.CopDispatchCall
  l0.SoundID[0] = "soundbinary/2905607474.bnk"
  l0.SoundID[1] = "soundbinary/3315532488.bnk"
  l0:Add()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 21
  l0.Minute = 50
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:SetTimeOfDay()
end
function export:f_270_A_is_False()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SoundId = "soundbinary/1376891222.bnk"
  l0:Start()
end
function export:f_154_StartCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SpotlightController.lua")]
  l0.Vehicle = self.Helico
  l0.SpotlightTarget = self.PlayerEntity
  l0._graph = self
  l0.Started = self.f_265_Started
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_44_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_270_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_68_Out_0()
  local l0
  self = self._graph
  l0 = self[91]
  l0.SoundIdList = self.Stunts_Barge
  l0.UseFacial = 0
  l0:Start()
end
function export:f_68_Out_1()
  local l0
  self = self._graph
  l0 = self[146]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NitroBoost",
    item = "Description",
    id = "604584"
  }
  l0.Duration = 7
  l0:Display()
end
function export:f_160_Reached()
  local l0
  self = self._graph
  l0 = self[160]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_99_Out_0
  l0.Out[1] = self.f_99_Out_1
  l0:In()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_34_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_148_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_148_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_269_A_is_False()
  local l0
  self = self._graph
  l0 = self[108]
  l0.SoundId = "soundbinary/2779495587.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_93_Out()
  local l0
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
  l0.Out = self.f_130_Out
  l0:SetLightsAndSiren()
end
function export:f_252_Out_0()
  local l0
  self = self._graph
  l0 = self[188]
  l0.Checkpoint = "9223372051000140199"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_252_Out_1()
  local l0
  self = self._graph
  self:en_250()
  l0 = self[250]
  l0:Start()
end
function export:f_252_Out_2()
  local l0
  self = self._graph
  self:en_251()
  l0 = self[251]
  l0:Start()
end
function export:f_252_Out_3()
  local l0
  self = self._graph
  self:en_253()
  l0 = self[253]
  l0:Start()
end
function export:f_252_Out_4()
  local l0
  self = self._graph
  self:en_254()
  l0 = self[254]
  l0:Start()
end
function export:f_252_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_258_Out
  l0:In()
end
function export:f_71_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Input = self.PoliceSquad
  l0.Data[0] = self.Policeman2
  l0.Data[1] = self.Policemen3
  l0.Data[2] = self.PoliceCar3
  l0.Data[3] = self.PoliceCar4
  l0:Add()
end
function export:f_244_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_245_Out_0
  l0.Out[1] = self.f_245_Out_1
  l0.Out[2] = self.f_245_Out_2
  l0.Out[3] = self.f_245_Out_3
  l0:In()
end
function export:f_67_Added()
  local l0
  self = self._graph
  l0 = self[67]
  self.Helicopter = l0.Target
  self:en_54()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:AddScripted()
end
function export:f_67_Out()
  local l0
  self = self._graph
  l0 = self[67]
  self.Helicopter = l0.Target
end
function export:f_67_Removed()
  local l0
  self = self._graph
  l0 = self[67]
  self.Helicopter = l0.Target
end
function export:f_105_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Seconds = 7
  l0:Start()
end
function export:f_105_StopCommunicationOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_263_Out
  l0:In()
end
function export:f_135_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0.SoundId = "soundbinary/1372795419.bnk"
  l0:Play()
end
function export:f_111_Reached()
  local l0
  self = self._graph
  l0 = self[111]
  self.Time_Left = l0.RemainingTime
  l0 = self[38]
  l0.Checkpoint = "9223372070033459864"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_204_Started()
  local l0
  self = self._graph
  self:en_205()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_204_Stopped()
  local l0
  self = self._graph
  self:en_205()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_137_Out_0()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Vehicle = self.CHIP
  l0:Enable()
end
function export:f_137_Out_1()
  local l0
  self = self._graph
  l0 = self[112]
  l0:Activate()
end
function export:f_115_SCR_StuntMountain()
  local l0
  self = self._graph
  l0 = self[31]
  l0.SoundId = "soundbinary/3754729694.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_108_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_272_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_83_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Vehicle = self.PoliceCar3
  l0.Pawn = self.Policeman2
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_136_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_150_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0:SwitchLocalPlayerInventoryToNormal()
end
function export:f_97_PerkRemoved()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CLO = "9223372046500782680"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_187_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_190_Out_0
  l0.Out[1] = self.f_190_Out_1
  l0:In()
end
function export:f_87_Out()
  local l0
  self = self._graph
  l0 = self[195]
  l0:Input(1)
end
function export:f_263_Out()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:StopCommunication()
end
function export:f_245_Out_0()
  local l0
  self = self._graph
  self:en_234()
  l0 = self[234]
  l0:Stop()
end
function export:f_245_Out_1()
  local l0
  self = self._graph
  self:en_235()
  l0 = self[235]
  l0:Stop()
end
function export:f_245_Out_2()
  local l0
  self = self._graph
  self:en_238()
  l0 = self[238]
  l0:Stop()
end
function export:f_245_Out_3()
  local l0
  self = self._graph
  self:en_237()
  l0 = self[237]
  l0:Stop()
end
function export:f_158_Reached()
  local l0
  self = self._graph
  l0 = self[158]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_53_Out_0
  l0.Out[1] = self.f_53_Out_1
  l0:In()
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  l0 = self[122]
  l0.Checkpoint = "9223372051000138973"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  l0 = self[154]
  l0.Helicopter = self.Helico
  l0.Target = self.PlayerEntity
  l0.Config = "HelicopterBhvSetup.9223372048779322168"
  l0:Start()
end
function export:f_182_Out_0()
  local l0
  self = self._graph
  l0 = self[170]
  l0.Checkpoint = "9223372056402424194"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_182_Out_1()
  local l0
  self = self._graph
  l0 = self[101]
  l0.CLO = "9223372065590185967"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_186_Reached()
  local l0
  self = self._graph
  l0 = self[186]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_252_Out_0
  l0.Out[1] = self.f_252_Out_1
  l0.Out[2] = self.f_252_Out_2
  l0.Out[3] = self.f_252_Out_3
  l0.Out[4] = self.f_252_Out_4
  l0.Out[5] = self.f_252_Out_5
  l0:In()
end
function export:f_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_233_Out_0
  l0.Out[1] = self.f_233_Out_1
  l0.Out[2] = self.f_233_Out_2
  l0:In()
end
function export:f_126_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_226_Out
  l0:In()
end
function export:f_43_Enter()
  local l0
  self = self._graph
  self:en_61()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:StartChase()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0.FadeOutTime = 3
  l0._graph = self
  l0.Out = self.f_138_Out
  l0:In()
end
function export:f_92_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S03M040_CarNoExit"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_9_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_202_Started()
  local l0
  self = self._graph
  self:en_203()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_202_Stopped()
  local l0
  self = self._graph
  self:en_203()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_128_TeleportDone()
  local l0
  self = self._graph
  l0 = self[172]
  l0.LoadingScreen = 0
  l0:In()
end
function export:f_196_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M040.Objectives.Objective010",
    item = "Objective",
    id = "342744"
  }
  l0:IncrementObjective()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_8_AssignCompleted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = DummyFunction
  l0.HideInVehicleDisabled = self.f_27_HideInVehicleDisabled
  l0:SetCanHideInVehicle()
end
function export:f_197_Started()
  local l0
  self = self._graph
  self:en_199()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_197_Stopped()
  local l0
  self = self._graph
  self:en_199()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[15]
  self.IsLastStunt = l0.Target
end
function export:f_15_SetFalse()
  local l0
  self = self._graph
  l0 = self[15]
  self.IsLastStunt = l0.Target
end
function export:f_15_SetFromBool()
  local l0
  self = self._graph
  l0 = self[15]
  self.IsLastStunt = l0.Target
end
function export:f_15_SetTrue()
  local l0
  self = self._graph
  l0 = self[15]
  self.IsLastStunt = l0.Target
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_227_Out
  l0:In()
end
function export:f_15_Toggled()
  local l0
  self = self._graph
  l0 = self[15]
  self.IsLastStunt = l0.Target
end
function export:f_178_Reached()
  local l0
  self = self._graph
  l0 = self[178]
  self.Time_Left = l0.RemainingTime
  l0 = self[177]
  l0.Checkpoint = "9223372059689168301"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_89_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_275_Out_0
  l0.Out[1] = self.f_275_Out_1
  l0:In()
end
function export:f_3_PostOut()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:End()
end
function export:f_106_PreOut()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Chip = self.CHIP
  l0.Player = self.PlayerEntity
  l0.EnticerVehicle_CHIP = "9223372046500782680"
  l0:Highway_Stunt()
end
function export:f_140_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_137_Out_0
  l0.Out[1] = self.f_137_Out_1
  l0:In()
end
function export:f_173_Reached()
  local l0
  self = self._graph
  l0 = self[173]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_47_HighWayStunt_out()
  local l0
  self = self._graph
  l0 = self[196]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_188_Reached()
  local l0
  self = self._graph
  l0 = self[188]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0.Out[2] = self.f_10_Out_2
  l0.Out[3] = self.f_10_Out_3
  l0:In()
end
function export:f_155_Out()
  local l0
  self = self._graph
  l0 = self[70]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:StartRace()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SoundId = "soundbinary/179661802.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[155]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_122_Reached()
  local l0
  self = self._graph
  l0 = self[122]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_193_Out_0
  l0.Out[1] = self.f_193_Out_1
  l0.Out[2] = self.f_193_Out_2
  l0.Out[3] = self.f_193_Out_3
  l0.Out[4] = self.f_193_Out_4
  l0.Out[5] = self.f_193_Out_5
  l0:In()
end
function export:f_271_A_is_False()
  local l0
  self = self._graph
  l0 = self[102]
  l0.SoundId = "soundbinary/3178721318.bnk"
  l0:Start()
end
function export:f_131_Out()
  local l0
  self = self._graph
  self:en_197()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_50_Started()
  local l0
  self = self._graph
  l0 = self[15]
  l0:True()
end
function export:f_76_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[76]
  self.Policemen3 = l0.UserID
  l0 = self[93]
  l0:Condition(3)
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_33_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_268_Out()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Unspawn_FirstBarrage()
end
function export:f_34_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_88_Out
  l0:In()
end
function export:f_209_Out_0()
  local l0
  self = self._graph
  l0 = self[166]
  l0.Checkpoint = "9223372051000133225"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_209_Out_1()
  local l0
  self = self._graph
  l0 = self[80]
  l0.SoundIdList = self.CopSeeingChip
  l0.UseFacial = 0
  l0:Start()
end
function export:f_209_Out_2()
  local l0
  self = self._graph
  self:en_197()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_266_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_268_Out
  l0:In()
end
function export:f_150_Switched()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 1
  l0._graph = self
  l0.Out = self.f_151_Out
  l0:In()
end
function export:f_23_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:SetImmune()
end
function export:f_246_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_248_Out
  l0:In()
end
function export:f_84_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 21
  l0.Minute = 50
  l0._graph = self
  l0.Out = self.f_57_Out
  l0:SetTimeOfDay()
end
function export:f_45_Out_0()
  local l0
  self = self._graph
  l0 = self[174]
  l0.Checkpoint = "9223372051000138963"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_45_Out_1()
  local l0
  self = self._graph
  l0 = self[127]
  l0:Ocean_Jump_FX()
end
function export:f_260_Out_0()
  local l0
  self = self._graph
  self:en_240()
  l0 = self[240]
  l0:Stop()
end
function export:f_260_Out_1()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Stop()
end
function export:f_177_Reached()
  local l0
  self = self._graph
  l0 = self[177]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_132_Out_0
  l0.Out[1] = self.f_132_Out_1
  l0:In()
end
function export:f_247_Out()
  local l0
  self = self._graph
  self:en_105()
  l0 = self[105]
  l0:StopCommunication()
end
function export:f_37_Finished()
  local l0
  self = self._graph
  l0 = self[215]
  l0.SoundId = "soundbinary/667391839.bnk"
  l0:Play()
end
function export:f_130_Out()
  local l0
  self = self._graph
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
  l0.Out = self.f_71_Out
  l0:SetLightsAndSiren()
end
function export:f_109_Reached()
  local l0
  self = self._graph
  l0 = self[109]
  self.Time_Left = l0.RemainingTime
  l0 = self[90]
  l0.Checkpoint = "9223372051000139566"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_265_Started()
  local l0
  self = self._graph
  l0 = self[67]
  l0.Input = self.Helicopter
  l0.Data[0] = self.Helico
  l0:Add()
end
function export:f_180_Reached()
  local l0
  self = self._graph
  l0 = self[180]
  self.Time_Left = l0.RemainingTime
  l0 = self[179]
  l0.Checkpoint = "9223372051000139570"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_55_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[65]
  l0.SoundIdList = self.Stunts_Cops2
  l0.UseFacial = 0
  l0:Start()
end
function export:f_176_Reached()
  local l0
  self = self._graph
  l0 = self[176]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_28_Out_0
  l0.Out[1] = self.f_28_Out_1
  l0:In()
end
function export:f_101_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[101]
  self.Helico = l0.UserID
end
function export:f_27_HideInVehicleDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_12_Out
  l0:Hide()
end
function export:f_7_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[7]
  self.CHIP = l0.UserID
  l0 = self[8]
  l0.Vehicle = self.CHIP
  l0.Pawn = self.PlayerEntity
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_99_Out_0()
  local l0
  self = self._graph
  l0 = self[161]
  l0.Checkpoint = "9223372051000133215"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_99_Out_1()
  local l0
  self = self._graph
  l0 = self[100]
  l0.Seconds = 2
  l0:Start()
end
function export:f_276_Out()
  local l0
  self = self._graph
  l0 = self[274]
  l0.SoundId = "soundbinary/3567884843.bnk"
  l0:Play()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = self[86]
  l0:In()
end
function export:f_203_Started()
  local l0
  self = self._graph
  self:en_204()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_203_Stopped()
  local l0
  self = self._graph
  self:en_204()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_85_Reached()
  local l0
  self = self._graph
  l0 = self[85]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_124_Out_0
  l0.Out[1] = self.f_124_Out_1
  l0:In()
end
function export:f_82_Done()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:UnsetImmune()
end
function export:f_79_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  l0 = self[144]
  l0.SoundId = "soundbinary/2585425064.bnk"
  l0:Play()
end
function export:f_164_Reached()
  local l0
  self = self._graph
  l0 = self[164]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0.Out[2] = self.f_41_Out_2
  l0.Out[3] = self.f_41_Out_3
  l0:In()
end
function export:f_104_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_269_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_62_Added()
  local l0
  self = self._graph
  l0 = self[62]
  self.CopSeeingChip = l0.Target
  l0 = self[78]
  l0.Input = self.Stunts_Cops2
  l0.SoundID[0] = "soundbinary/1601051816.bnk"
  l0.SoundID[1] = "soundbinary/2355984719.bnk"
  l0.SoundID[2] = "soundbinary/3715876750.bnk"
  l0:Add()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[62]
  self.CopSeeingChip = l0.Target
end
function export:f_62_Removed()
  local l0
  self = self._graph
  l0 = self[62]
  self.CopSeeingChip = l0.Target
end
function export:f_185_Reached()
  local l0
  self = self._graph
  l0 = self[185]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_243_Out_0
  l0.Out[1] = self.f_243_Out_1
  l0:In()
end
function export:f_199_Started()
  local l0
  self = self._graph
  self:en_200()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_199_Stopped()
  local l0
  self = self._graph
  self:en_200()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_168_Reached()
  local l0
  self = self._graph
  l0 = self[168]
  self.Time_Left = l0.RemainingTime
  l0 = self[171]
  l0.Checkpoint = "9223372051000138951"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_59_Added()
  local l0
  self = self._graph
  l0 = self[59]
  self.CopDispatchCall = l0.Target
  l0 = self[29]
  l0.Input = self.Stunts_Cops
  l0.SoundID[0] = "soundbinary/599109602.bnk"
  l0.SoundID[1] = "soundbinary/350855789.bnk"
  l0:Add()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.CopDispatchCall = l0.Target
end
function export:f_59_Removed()
  local l0
  self = self._graph
  l0 = self[59]
  self.CopDispatchCall = l0.Target
end
function export:f_170_Reached()
  local l0
  self = self._graph
  l0 = self[170]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_118_Out_0
  l0.Out[1] = self.f_118_Out_1
  l0:In()
end
function export:f_227_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_247_Out
  l0:In()
end
function export:f_69_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[69]
  self.PoliceCar4 = l0.UserID
  l0 = self[93]
  l0:Condition(1)
end
function export:f_161_Reached()
  local l0
  self = self._graph
  l0 = self[161]
  self.Time_Left = l0.RemainingTime
  l0 = self[162]
  l0.Checkpoint = "9223372051000133219"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_70_PreOut()
  local l0
  self = self._graph
  l0 = self[75]
  l0:In()
end
function export:f_207_Started()
  local l0
  self = self._graph
  self:en_208()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_207_Stopped()
  local l0
  self = self._graph
  self:en_208()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_264_A_is_False()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:StartCommunication()
end
function export:f_219_Out_0()
  local l0
  self = self._graph
  l0 = self[180]
  l0.Checkpoint = "9223372051000139568"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_219_Out_1()
  local l0
  self = self._graph
  self:en_222()
  l0 = self[222]
  l0:Start()
end
function export:f_219_Out_2()
  local l0
  self = self._graph
  self:en_223()
  l0 = self[223]
  l0:Start()
end
function export:f_219_Out_3()
  local l0
  self = self._graph
  self:en_224()
  l0 = self[224]
  l0:Start()
end
function export:f_219_Out_4()
  local l0
  self = self._graph
  self:en_225()
  l0 = self[225]
  l0:Start()
end
function export:f_243_Out_0()
  local l0
  self = self._graph
  l0 = self[186]
  l0.Checkpoint = "9223372051000140197"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_243_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_242_Out
  l0:In()
end
function export:f_218_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_220_Out
  l0:In()
end
function export:f_149_Out()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Vehicle = self.CHIP
  l0.Seat = "Driver"
  l0:Unassign()
end
function export:f_190_Out_0()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Stop()
end
function export:f_190_Out_1()
  local l0
  self = self._graph
  self:en_134()
  l0 = self[134]
  l0:Stop()
end
function export:f_189_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[18]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_157_Out_0()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Trigger = "9223372057183390329"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_157_Out_1()
  local l0
  self = self._graph
  l0 = self[156]
  l0.Checkpoint = "9223372051000065510"
  l0.TimeToCheckpoint = 40
  l0.BonusTime = 6
  l0:Start()
end
function export:f_210_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_214_Out_0
  l0.Out[1] = self.f_214_Out_1
  l0:In()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[165]
  l0.Checkpoint = "9223372051000133223"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[73]
  l0.SoundIdList = self.Stunts_Cops
  l0.UseFacial = 0
  l0:Start()
end
function export:f_41_Out_2()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:Start()
end
function export:f_41_Out_3()
  local l0
  self = self._graph
  self:en_134()
  l0 = self[134]
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_140_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0:SwitchLocalPlayerInventoryToEmpty()
end
function export:f_166_Reached()
  local l0
  self = self._graph
  l0 = self[166]
  self.Time_Left = l0.RemainingTime
  l0 = self[167]
  l0.Checkpoint = "9223372053519424664"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_54_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_54()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_16_Finished()
  local l0
  self = self._graph
  l0 = self[56]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_171_Reached()
  local l0
  self = self._graph
  l0 = self[171]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_182_Out_0
  l0.Out[1] = self.f_182_Out_1
  l0:In()
end
function export:f_181_Reached()
  local l0
  self = self._graph
  l0 = self[181]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_241_Out_0
  l0.Out[1] = self.f_241_Out_1
  l0.Out[2] = self.f_241_Out_2
  l0.Out[3] = self.f_241_Out_3
  l0:In()
end
function export:f_145_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0:In()
end
function export:f_102_Finished()
  local l0
  self = self._graph
  l0 = self[44]
  l0.Seconds = 3
  l0:Start()
end
function export:f_132_Out_0()
  local l0
  self = self._graph
  l0 = self[184]
  l0.Checkpoint = "9223372059689168303"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_132_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_246_Out
  l0:In()
end
function export:f_28_Out_0()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Checkpoint = "9223372070033459339"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_28_Out_1()
  local l0
  self = self._graph
  l0 = self[107]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053356399848"
  l0:StartCommunication()
end
function export:f_169_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_187_Out
  l0:In()
end
function export:f_40_Finished()
  local l0
  self = self._graph
  l0 = self[104]
  l0.Seconds = 5
  l0:Start()
end
function export:f_159_Reached()
  local l0
  self = self._graph
  l0 = self[159]
  self.Time_Left = l0.RemainingTime
  l0 = self[160]
  l0.Checkpoint = "9223372051000129256"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_183_Reached()
  local l0
  self = self._graph
  l0 = self[183]
  self.Time_Left = l0.RemainingTime
  l0 = self[181]
  l0.Checkpoint = "9223372051000139582"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_77_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[77]
  self.Policeman2 = l0.UserID
  l0 = self[93]
  l0:Condition(2)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[94]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047166"
  l0:RemovePerk()
end
function export:f_100_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[98]
  l0.SoundIdList = self.CopDispatchCall
  l0.UseFacial = 0
  l0:Start()
end
function export:f_184_Reached()
  local l0
  self = self._graph
  l0 = self[184]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_236_Out_0
  l0.Out[1] = self.f_236_Out_1
  l0.Out[2] = self.f_236_Out_2
  l0.Out[3] = self.f_236_Out_3
  l0.Out[4] = self.f_236_Out_4
  l0:In()
end
function export:f_255_Out_0()
  local l0
  self = self._graph
  self:en_250()
  l0 = self[250]
  l0:Stop()
end
function export:f_255_Out_1()
  local l0
  self = self._graph
  self:en_251()
  l0 = self[251]
  l0:Stop()
end
function export:f_255_Out_2()
  local l0
  self = self._graph
  self:en_253()
  l0 = self[253]
  l0:Stop()
end
function export:f_255_Out_3()
  local l0
  self = self._graph
  self:en_254()
  l0 = self[254]
  l0:Stop()
end
function export:f_29_Added()
  local l0
  self = self._graph
  l0 = self[29]
  self.Stunts_Cops = l0.Target
  l0 = self[62]
  l0.Input = self.CopSeeingChip
  l0.SoundID[0] = "soundbinary/3183431972.bnk"
  l0.SoundID[1] = "soundbinary/3653684948.bnk"
  l0:Add()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[29]
  self.Stunts_Cops = l0.Target
end
function export:f_29_Removed()
  local l0
  self = self._graph
  l0 = self[29]
  self.Stunts_Cops = l0.Target
end
function export:f_78_Added()
  local l0
  self = self._graph
  l0 = self[78]
  self.Stunts_Cops2 = l0.Target
  l0 = self[81]
  l0.Input = self.Stunts_Barge
  l0.SoundID[0] = "soundbinary/845007225.bnk"
  l0.SoundID[1] = "soundbinary/2369558488.bnk"
  l0.SoundID[2] = "soundbinary/2481776595.bnk"
  l0.SoundID[3] = "soundbinary/4175605191.bnk"
  l0:Add()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[78]
  self.Stunts_Cops2 = l0.Target
end
function export:f_78_Removed()
  local l0
  self = self._graph
  l0 = self[78]
  self.Stunts_Cops2 = l0.Target
end
function export:f_248_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_249_Out_0
  l0.Out[1] = self.f_249_Out_1
  l0:In()
end
function export:f_175_Reached()
  local l0
  self = self._graph
  l0 = self[175]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_45_Out_0
  l0.Out[1] = self.f_45_Out_1
  l0:In()
end
function export:f_24_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[153]
  l0.Vehicle = self.CHIP
  l0:Enable()
end
function export:f_60_AssignCompleted()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Trigger = "9223372049960074779"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_63_Added()
  local l0
  self = self._graph
  l0 = self[63]
  self.PoliceSquad = l0.Target
  l0 = self[83]
  l0.Vehicle = self.PoliceCar4
  l0.Pawn = self.Policemen3
  l0.Seat = "Driver"
  l0:Assign()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = self[63]
  self.PoliceSquad = l0.Target
end
function export:f_63_Removed()
  local l0
  self = self._graph
  l0 = self[63]
  self.PoliceSquad = l0.Target
end
function export:f_212_Out_0()
  local l0
  self = self._graph
  l0 = self[164]
  l0.Checkpoint = "9223372051000133221"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_212_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372061394930595"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_143_Enabled()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Trigger = "9223372062580815346"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_143_Enter()
  local l0
  self = self._graph
  l0 = self[141]
  l0.SoundId = "soundbinary/2585425064.bnk"
  l0:Play()
end
function export:f_194_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_210_Out
  l0:In()
end
function export:f_94_PerkRemoved()
  local l0
  self = self._graph
  l0 = self[97]
  l0.PerkDB = "PerksSinglePlayer.9223372048165569158"
  l0:RemovePerk()
end
function export:f_165_Reached()
  local l0
  self = self._graph
  l0 = self[165]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_209_Out_0
  l0.Out[1] = self.f_209_Out_1
  l0.Out[2] = self.f_209_Out_2
  l0:In()
end
function export:f_116_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S03M040_Main"
  l0:Load()
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = self[189]
  l0:Start()
end
function export:f_258_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_259_Out
  l0:In()
end
function export:f_95_Enabled()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:In()
end
function export:f_95_Enter()
  local l0
  self = self._graph
  l0 = self[110]
  l0.SoundId = "soundbinary/2585425064.bnk"
  l0:Play()
end
function export:f_259_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_260_Out_0
  l0.Out[1] = self.f_260_Out_1
  l0:In()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/EnableVehicleRadioSystem.lua")]
  l0.Enable = 1
  l0._graph = self
  l0.Out = self.f_149_Out
  l0:In()
end
function export:f_119_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[121]
  l0:Input(1)
end
function export:f_119_IsUnusable()
  local l0
  self = self._graph
  l0 = self[121]
  l0:Input(0)
end
function export:f_214_Out_0()
  local l0
  self = self._graph
  self:en_152()
  l0 = self[152]
  l0:Stop()
end
function export:f_214_Out_1()
  local l0
  self = self._graph
  self:en_142()
  l0 = self[142]
  l0:Stop()
end
function export:f_200_Started()
  local l0
  self = self._graph
  self:en_201()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_200_Stopped()
  local l0
  self = self._graph
  self:en_201()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Stop()
end
function export:f_172_Loaded()
  local l0
  self = self._graph
  l0 = self[129]
  l0.SceneEntity = "9223372051873742174"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M040_CarControl/s03_m040_carcontrol.seq"
  l0:Start()
end
function export:f_61_ChaseStarted()
  local l0
  self = self._graph
  self:en_61()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:AddScripted()
end
function export:f_61_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_61()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_61_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = self[143]
  l0.Trigger = "9223372057183390330"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_249_Out_0()
  local l0
  self = self._graph
  self:en_231()
  l0 = self[231]
  l0:Stop()
end
function export:f_249_Out_1()
  local l0
  self = self._graph
  self:en_232()
  l0 = self[232]
  l0:Stop()
end
function export:f_241_Out_0()
  local l0
  self = self._graph
  l0 = self[185]
  l0.Checkpoint = "9223372051000140195"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_241_Out_1()
  local l0
  self = self._graph
  self:en_240()
  l0 = self[240]
  l0:Start()
end
function export:f_241_Out_2()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Start()
end
function export:f_241_Out_3()
  local l0
  self = self._graph
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
  l0.Out = DummyFunction
  l0:In()
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_255_Out_0
  l0.Out[1] = self.f_255_Out_1
  l0.Out[2] = self.f_255_Out_2
  l0.Out[3] = self.f_255_Out_3
  l0:In()
end
function export:f_151_Out()
  local l0
  self = self._graph
  l0 = self[120]
  l0.EndReason = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S15.S15M010",
    item = "MissionFail",
    id = "693187"
  }
  l0:Fail()
end
function export:f_90_Reached()
  local l0
  self = self._graph
  l0 = self[90]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_219_Out_0
  l0.Out[1] = self.f_219_Out_1
  l0.Out[2] = self.f_219_Out_2
  l0.Out[3] = self.f_219_Out_3
  l0.Out[4] = self.f_219_Out_4
  l0:In()
end
function export:f_242_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_244_Out
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[125]
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundId = "soundbinary/1726277403.bnk"
  l0:Start()
end
function export:f_144_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/StopMusic.lua")]
  l0.FadeOutTime = 3
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_118_Out_0()
  local l0
  self = self._graph
  l0 = self[173]
  l0.Checkpoint = "9223372056402424196"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_118_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_194_Out
  l0:In()
end
function export:f_156_Reached()
  local l0
  self = self._graph
  l0 = self[156]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_26_Out_0
  l0.Out[1] = self.f_26_Out_1
  l0.Out[2] = self.f_26_Out_2
  l0:In()
end
function export:f_193_Out_0()
  local l0
  self = self._graph
  l0 = self[111]
  l0.Checkpoint = "9223372051000139558"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_193_Out_1()
  local l0
  self = self._graph
  self:en_192()
  l0 = self[192]
  l0:Start()
end
function export:f_193_Out_2()
  local l0
  self = self._graph
  self:en_191()
  l0 = self[191]
  l0:Start()
end
function export:f_193_Out_3()
  local l0
  self = self._graph
  self:en_216()
  l0 = self[216]
  l0:Start()
end
function export:f_193_Out_4()
  local l0
  self = self._graph
  self:en_217()
  l0 = self[217]
  l0:Start()
end
function export:f_193_Out_5()
  local l0
  self = self._graph
  self:en_230()
  l0 = self[230]
  l0:Start()
end
function export:f_167_Reached()
  local l0
  self = self._graph
  l0 = self[167]
  self.Time_Left = l0.RemainingTime
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_267_Out_0
  l0.Out[1] = self.f_267_Out_1
  l0.Out[2] = self.f_267_Out_2
  l0.Out[3] = self.f_267_Out_3
  l0.Out[4] = self.f_267_Out_4
  l0:In()
end
function export:f_31_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_NoMovement_CamOnly"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_92_Popped
  l0:Pop()
end
function export:f_129_Finished()
  local l0
  self = self._graph
  l0 = self[135]
  l0:In(1)
end
function export:f_129_Skipped()
  local l0
  self = self._graph
  l0 = self[135]
  l0:In(0)
end
function export:f_129_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372061195771316"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = 1
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Display()
end
function export:f_256_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_257_Out
  l0:In()
end
function export:f_96_PerkReseted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S03M040_CarNoExit"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_136_Popped
  l0:Pop()
end
function export:f_75_Out_Cin()
  local l0
  self = self._graph
  l0 = self[128]
  l0.SpawnPoint = "9223372056504722439"
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485440"
  l0:In()
end
function export:f_33_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = self.f_20_HideInVehicleEnabled
  l0.HideInVehicleDisabled = DummyFunction
  l0:SetCanHideInVehicle()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_157_Out_0
  l0.Out[1] = self.f_157_Out_1
  l0:In()
end
function export:f_113_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049978619986"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0:Start()
end
function export:f_39_Enabled()
  local l0
  self = self._graph
  l0 = self[145]
  l0.Trigger = "9223372057183390331"
  l0:Enable()
end
function export:f_39_Enter()
  local l0
  self = self._graph
  l0 = self[103]
  l0.SoundIdList = self.Stunts_Scream
  l0.UseFacial = 0
  l0:Start()
end
function export:f_262_Out()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:HideNotification()
end
function export:f_221_Out_0()
  local l0
  self = self._graph
  self:en_192()
  l0 = self[192]
  l0:Stop()
end
function export:f_221_Out_1()
  local l0
  self = self._graph
  self:en_191()
  l0 = self[191]
  l0:Stop()
end
function export:f_221_Out_2()
  local l0
  self = self._graph
  self:en_216()
  l0 = self[216]
  l0:Stop()
end
function export:f_221_Out_3()
  local l0
  self = self._graph
  self:en_217()
  l0 = self[217]
  l0:Stop()
end
function export:f_221_Out_4()
  local l0
  self = self._graph
  self:en_230()
  l0 = self[230]
  l0:Stop()
end
function export:f_267_Out_0()
  local l0
  self = self._graph
  l0 = self[168]
  l0.Checkpoint = "9223372051000138949"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_267_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_266_Out
  l0:In()
end
function export:f_267_Out_2()
  local l0
  self = self._graph
  self:en_152()
  l0 = self[152]
  l0:Start()
end
function export:f_267_Out_3()
  local l0
  self = self._graph
  self:en_142()
  l0 = self[142]
  l0:Start()
end
function export:f_267_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_169_Out
  l0:In()
end
function export:f_53_Out_0()
  local l0
  self = self._graph
  l0 = self[159]
  l0.Checkpoint = "9223372051000065514"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_53_Out_1()
  local l0
  self = self._graph
  l0 = self[123]
  l0.SpecificVehicle = self.CHIP
  l0.SkipIfOut = 0
  l0.SoundId = "soundbinary/2329595970.bnk"
  l0:Start()
end
function export:f_56_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[19]
  l0.SoundId = "soundbinary/4291373402.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_72_Pushed()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_81_Added()
  local l0
  self = self._graph
  l0 = self[81]
  self.Stunts_Barge = l0.Target
  l0 = self[17]
  l0.Input = self.Stunts_Scream
  l0.SoundID[0] = "soundbinary/2289138030.bnk"
  l0.SoundID[1] = "soundbinary/4059773332.bnk"
  l0:Add()
end
function export:f_81_Out()
  local l0
  self = self._graph
  l0 = self[81]
  self.Stunts_Barge = l0.Target
end
function export:f_81_Removed()
  local l0
  self = self._graph
  l0 = self[81]
  self.Stunts_Barge = l0.Target
end
function export:f_36_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetTimeOfDay.lua")]
  l0.Hour = 21
  l0.Minute = 50
  l0._graph = self
  l0.Out = self.f_87_Out
  l0:SetTimeOfDay()
end
function export:f_198_Out_0()
  local l0
  self = self._graph
  l0 = self[163]
  l0.Checkpoint = "9223372051000136085"
  l0.TimeToCheckpoint = 40
  l0.BaseTime = self.Time_Left
  l0.BonusTime = 6
  l0:Start()
end
function export:f_198_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_131_Out
  l0:In()
end
function export:f_107_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsLastStunt
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_271_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_228_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_229_Out_0
  l0.Out[1] = self.f_229_Out_1
  l0.Out[2] = self.f_229_Out_2
  l0.Out[3] = self.f_229_Out_3
  l0:In()
end
function export:f_14_OnRaceSetupFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0:In()
end
function export:f_14_OnRaceStarted()
  local l0
  self = self._graph
  l0 = self[23]
  l0.SoundId = "soundbinary/3445084208.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S03M040_Main"
  l0.ShowMissionComplete = 1
end
function export:en_206()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199998"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_206_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_206_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_251()
  local l0
  l0 = self[251]
  l0.Path = "9223372066953314297"
  l0.CLO_PoliceMan = "9223372066953314300"
  l0.CLO_PoliceCar = "9223372066953314301"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_235()
  local l0
  l0 = self[235]
  l0.Path = "9223372066953314006"
  l0.CLO_PoliceMan = "9223372066953314000"
  l0.CLO_PoliceCar = "9223372066953314001"
  l0.DelayBeforeSendingOnPath = 3
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.Player_CHIP = self.PlayerEntity
end
function export:en_201()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199988"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_201_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_201_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_205()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199996"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_205_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_205_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_239()
  local l0
  l0 = self[239]
  l0.Path = "9223372066953314289"
  l0.CLO_PoliceMan = "9223372066953314292"
  l0.CLO_PoliceCar = "9223372066953314293"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:en_254()
  local l0
  l0 = self[254]
  l0.Path = "9223372066953314311"
  l0.CLO_PoliceMan = "9223372066953314304"
  l0.CLO_PoliceCar = "9223372066953314307"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_253()
  local l0
  l0 = self[253]
  l0.Path = "9223372066953314309"
  l0.CLO_PoliceMan = "9223372066953314305"
  l0.CLO_PoliceCar = "9223372066953314306"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_208()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899200002"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
end
function export:en_232()
  local l0
  l0 = self[232]
  l0.Path = "9223372066953313998"
  l0.CLO_PoliceMan = "9223372066953313992"
  l0.CLO_PoliceCar = "9223372066953313991"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:en_105()
  local l0
  l0 = self[105]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056623924182"
end
function export:en_204()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199994"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_204_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_204_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_223()
  local l0
  l0 = self[223]
  l0.Path = "9223372066580010811"
  l0.CLO_PoliceMan = "9223372066580010806"
  l0.CLO_PoliceCar = "9223372066580010805"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_216()
  local l0
  l0 = self[216]
  l0.Path = "9223372066580010800"
  l0.CLO_PoliceMan = "9223372066580010798"
  l0.CLO_PoliceCar = "9223372066580010797"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_225()
  local l0
  l0 = self[225]
  l0.Path = "9223372066580010819"
  l0.CLO_PoliceMan = "9223372066580010815"
  l0.CLO_PoliceCar = "9223372066580010814"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_224()
  local l0
  l0 = self[224]
  l0.Path = "9223372066580010817"
  l0.CLO_PoliceMan = "9223372066580010813"
  l0.CLO_PoliceCar = "9223372066580010812"
  l0.DelayBeforeSendingOnPath = 3
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_202()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199990"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_202_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_202_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_197()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199982"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_197_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_197_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_222()
  local l0
  l0 = self[222]
  l0.Path = "9223372066580010809"
  l0.CLO_PoliceMan = "9223372066580010804"
  l0.CLO_PoliceCar = "9223372066580010803"
  l0.DelayBeforeSendingOnPath = 3
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_250()
  local l0
  l0 = self[250]
  l0.Path = "9223372066953314299"
  l0.CLO_PoliceMan = "9223372066953314302"
  l0.CLO_PoliceCar = "9223372066953314303"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_134()
  local l0
  l0 = self[134]
  l0.Path = "9223372066580008009"
  l0.CLO_PoliceMan = "9223372066273327071"
  l0.CLO_PoliceCar = "9223372066273327069"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 30
end
function export:en_203()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199992"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_203_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_203_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_217()
  local l0
  l0 = self[217]
  l0.Path = "9223372066580010802"
  l0.CLO_PoliceMan = "9223372066580010796"
  l0.CLO_PoliceCar = "9223372066580010795"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_199()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199984"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_199_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_199_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_192()
  local l0
  l0 = self[192]
  l0.Path = "9223372066580010792"
  l0.CLO_PoliceMan = "9223372066580010787"
  l0.CLO_PoliceCar = "9223372066580010788"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_207()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899200000"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_207_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_207_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_237()
  local l0
  l0 = self[237]
  l0.Path = "9223372066953314014"
  l0.CLO_PoliceMan = "9223372066953314008"
  l0.CLO_PoliceCar = "9223372066953314009"
  l0.DelayBeforeSendingOnPath = 4
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_54()
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_54_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:en_133()
  local l0
  l0 = self[133]
  l0.Path = "9223372066580008007"
  l0.CLO_PoliceMan = "9223372066273327070"
  l0.CLO_PoliceCar = "9223372066273327068"
  l0.DelayBeforeSendingOnPath = 1
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 30
end
function export:en_191()
  local l0
  l0 = self[191]
  l0.Path = "9223372066580010794"
  l0.CLO_PoliceMan = "9223372066580010790"
  l0.CLO_PoliceCar = "9223372066580010789"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 10
end
function export:en_142()
  local l0
  l0 = self[142]
  l0.Path = "9223372066580009858"
  l0.CLO_PoliceMan = "9223372066580009851"
  l0.CLO_PoliceCar = "9223372066580009852"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_24()
  local l0
  l0 = self[24]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NitroBoost",
    item = "Description",
    id = "604584"
  }
  l0.Duration = -1
end
function export:en_152()
  local l0
  l0 = self[152]
  l0.Path = "9223372066580009856"
  l0.CLO_PoliceMan = "9223372066580009854"
  l0.CLO_PoliceCar = "9223372066580009853"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_200()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372060899199986"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0.Started = self.f_200_Started
  l0.Paused = DummyFunction
  l0.Stopped = self.f_200_Stopped
  l0.Cleaned = DummyFunction
end
function export:en_61()
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
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_61_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_61_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_61_ScriptedAgentsAdopted
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346310"
end
function export:en_238()
  local l0
  l0 = self[238]
  l0.Path = "9223372066953314012"
  l0.CLO_PoliceMan = "9223372066953314007"
  l0.CLO_PoliceCar = "9223372066953314010"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_240()
  local l0
  l0 = self[240]
  l0.Path = "9223372066953314291"
  l0.CLO_PoliceMan = "9223372066953314294"
  l0.CLO_PoliceCar = "9223372066953314295"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:en_230()
  local l0
  l0 = self[230]
  l0.Path = "9223372066953313987"
  l0.CLO_PoliceMan = "9223372066953313989"
  l0.CLO_PoliceCar = "9223372066953313988"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
function export:en_231()
  local l0
  l0 = self[231]
  l0.Path = "9223372066953313996"
  l0.CLO_PoliceMan = "9223372066953313993"
  l0.CLO_PoliceCar = "9223372066953313990"
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 6
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Race = "RaceDbConfig.9223372050964391730"
end
function export:en_234()
  local l0
  l0 = self[234]
  l0.Path = "9223372066953314004"
  l0.CLO_PoliceMan = "9223372066953314002"
  l0.CLO_PoliceCar = "9223372066953313999"
  l0.DelayBeforeSendingOnPath = 2
  l0.PlayerForCopsThing = self.PlayerEntity
  l0.AdoptInFelony = 1
  l0.DelayBeforeAdopt = 15
end
_compilerVersion = 4
