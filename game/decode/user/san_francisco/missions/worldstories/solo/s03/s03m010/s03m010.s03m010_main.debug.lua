export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/ForcePawnsVehicleStop_v2.lua")
  cbox:RegisterBox("domino/System/GateController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter_SoundID.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PlayMusic.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S03/S03M010/s03_m010_cin_trailerreaction.S03_M010_CIN_TrailerReaction_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetIsHindingInVehicle.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:RegisterBox("domino/System/VehicleSeatingController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3234190337.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/98398996.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4038486265.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3917350329.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S03M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main"
  self.PlayerEntity = nil
  self.DedSec_Car01 = nil
  self.Josh = nil
  self.Script02 = 0
  self.Script = 0
  self.objectifs = {}
  self.rccam_01 = nil
  self.rccam_02 = nil
  self.rccam_03 = nil
  self.rccam = {}
  self.hacked_rccam = nil
  self.CurrentCar = nil
  self.IsJoshLeaving = 0
  self.Trigger_ExitLayout = {}
  self.TalkesHQ = {}
  self.PGT_List = {}
  self.IsFinalOjective = 0
  self.Scissorlift = nil
  self.ToSudio_Destination = {}
  self.Talker_Josh = "9223372047464636839"
  self.TalkerJoshHQ = nil
  self.JoshInPosition = 0
  self.IsRcOut = 0
  self.TrigerList_InsideLayout = {}
  self.Vehicle = nil
  self.box_PlayDialog_v2_51 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_51
  l0._graph = self
  l0._name = "box_PlayDialog_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|77851419"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_87 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_87
  l0._graph = self
  l0._name = "box_OnceOnly_v3_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|103593823"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_87_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_136 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_136
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|131210822"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_136_MessageCompleted
  self.box_Player_Proximity_Monitor_143 = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_143
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|135084558"
  l0.Enabled = self.f_box_Player_Proximity_Monitor_143_Enabled
  l0.Disabled = self.f_box_Player_Proximity_Monitor_143_Disabled
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_143_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|181060663"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_VehicleMonitor_v3_26 = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_26
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|232915269"
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
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = self.f_box_VehicleMonitor_v3_26_NoMoveTimer
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
  self.box_CinematicPrep_114 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_114
  l0._graph = self
  l0._name = "box_CinematicPrep_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|236332416"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_114_PostOut
  self.box_DistanceBasedProgressBarController_v2_30 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_30
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|276388044"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_30_Completed
  self.box_MissionMessageController_v3_36 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_36
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|292749385"
  l0.Out = self.f_box_MissionMessageController_v3_36_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_163 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_163
  l0._graph = self
  l0._name = "box_CLOController_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|319226879"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionZone_152 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_152
  l0._graph = self
  l0._name = "box_MissionZone_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|339635141"
  l0.Enabled = self.f_box_MissionZone_152_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|358416857"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_CLOController_166 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_166
  l0._graph = self
  l0._name = "box_CLOController_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|381987023"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_166_OnUserInPlace
  self.box_CLOController_104 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_104
  l0._graph = self
  l0._name = "box_CLOController_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|382019838"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_104_OnUserInPlace
  self.box_Player_Vehicle_Monitor_v2_25 = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  l0._graph = self
  l0._name = "box_Player_Vehicle_Monitor_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|395877666"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Player_Vehicle_Monitor_v2_25_Disabled
  l0.Enter = self.f_box_Player_Vehicle_Monitor_v2_25_Enter
  l0.Leave = self.f_box_Player_Vehicle_Monitor_v2_25_Leave
  l0.ChangeSeat = self.f_box_Player_Vehicle_Monitor_v2_25_ChangeSeat
  self.box_Mission_End_42 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_42
  l0._graph = self
  l0._name = "box_Mission_End_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|478728711"
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|487313920"
  l0.Enabled = self.f_box_TriggerMonitor_v2_12_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_12_Leave
  l0.Use = DummyFunction
  self.box_MissionZone_86 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_86
  l0._graph = self
  l0._name = "box_MissionZone_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|490507591"
  l0.Enabled = self.f_box_MissionZone_86_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = self.f_box_MissionZone_86_SoftQuitCompleted
  self.box_Reach_Gameplay_69 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_69
  l0._graph = self
  l0._name = "box_Reach_Gameplay_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|504607186"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_box_Reach_Gameplay_69_Reached
  self.box_AgentStateMonitor_V2_48 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_48
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|532932808"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = DummyFunction
  l0.AllInAwareState = DummyFunction
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = DummyFunction
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = self.f_box_AgentStateMonitor_V2_48_CombatState
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = DummyFunction
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = DummyFunction
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = DummyFunction
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = DummyFunction
  l0.IsDistracted = DummyFunction
  self.box_CLOController_203 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_203
  l0._graph = self
  l0._name = "box_CLOController_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|534439548"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_203_OnUserInPlace
  self.box_MultipleOR_31 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|543526530"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_CLOController_82 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_82
  l0._graph = self
  l0._name = "box_CLOController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|605868011"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_82_OnUserInPlace
  self.box_RewardController_v3_13 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_13
  l0._graph = self
  l0._name = "box_RewardController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|616363610"
  l0.Out = self.f_box_RewardController_v3_13_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_GetNPC_7 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_7
  l0._graph = self
  l0._name = "box_GetNPC_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|621257754"
  l0.GotNPCList = self.f_box_GetNPC_7_GotNPCList
  self.box_S03_M010_CIN_TrailerReaction_Main_120 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S03/S03M010/s03_m010_cin_trailerreaction.S03_M010_CIN_TrailerReaction_Main.debug.lua")
  l0 = self.box_S03_M010_CIN_TrailerReaction_Main_120
  l0._graph = self
  l0._name = "box_S03_M010_CIN_TrailerReaction_Main_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|634386246"
  l0.Out = self.f_box_S03_M010_CIN_TrailerReaction_Main_120_Out
  l0.Post_Cin_CLO = DummyFunction
  self.box_TutorialController_53 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_53
  l0._graph = self
  l0._name = "box_TutorialController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|649333685"
  l0.Out = self.f_box_TutorialController_53_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_52 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_52
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|668794597"
  l0.Out = self.f_box_MissionMessageController_v3_52_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_117 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_117
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|671630453"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_117_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_18 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|677382024"
  l0.Out = self.f_box_MissionMessageController_v3_18_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_125 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_125
  l0._graph = self
  l0._name = "box_PlaySound_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|796328358"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionZone_98 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_98
  l0._graph = self
  l0._name = "box_MissionZone_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|845555089"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_98_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_PhoneCommunicationController_5 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_5
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|873414209"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = self.f_box_PhoneCommunicationController_5_StopCommunicationOut
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_78 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_78
  l0._graph = self
  l0._name = "box_OnceOnly_v3_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|906784029"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_78_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_93 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_93
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|940536364"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_202 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_202
  l0._graph = self
  l0._name = "box_CLOController_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1031364814"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_202_OnUserInPlace
  self.box_EntityLoadingMonitor_89 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_89
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1080834122"
  l0.Enabled = self.f_box_EntityLoadingMonitor_89_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_89_AllLoaded
  self.box_LMA_Layer_Controller_74 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_74
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1122823352"
  l0.Loaded = self.f_box_LMA_Layer_Controller_74_Loaded
  l0.Unloaded = DummyFunction
  self.box_CLOController_165 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_165
  l0._graph = self
  l0._name = "box_CLOController_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1136266154"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_165_OnUserInPlace
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1146849053"
  l0.Enabled = self.f_box_TriggerMonitor_v2_14_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Interact_Gameplay_35 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_35
  l0._graph = self
  l0._name = "box_Interact_Gameplay_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1157401480"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_35_Interacted
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1169771135"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_PGTController_v2_205 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_205
  l0._graph = self
  l0._name = "box_PGTController_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1187085279"
  l0.Started = self.f_box_PGTController_v2_205_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionCheckpointReach_101 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_101
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1208587857"
  l0.Out = self.f_box_MissionCheckpointReach_101_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySequence_v5_34 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_34
  l0._graph = self
  l0._name = "box_PlaySequence_v5_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1231749617"
  l0._DynamicAnchors = {
    SPOut = {"TS_Sitara"}
  }
  l0.Started = self.f_box_PlaySequence_v5_34_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_34_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_34_Finished
  l0.SPOut.TS_Sitara = DummyFunction
  self.box_PGTController_v2_43 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_43
  l0._graph = self
  l0._name = "box_PGTController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1235338753"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_43_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_OnceOnly_v3_29 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_29
  l0._graph = self
  l0._name = "box_OnceOnly_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1252395151"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_29_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1252446129"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_17_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriterSoundID_164 = cbox:CreateBox("domino/System/Lists/ListWriter_SoundID.lua")
  l0 = self.box_ListWriterSoundID_164
  l0._graph = self
  l0._name = "box_ListWriterSoundID_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1263951016"
  l0._DynamicAnchors = {SoundID = 2}
  l0.Added = self.f_box_ListWriterSoundID_164_Added
  l0.Removed = self.f_box_ListWriterSoundID_164_Removed
  l0.Out = self.f_box_ListWriterSoundID_164_Out
  self.box_MultipleOR_27 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_27
  l0._graph = self
  l0._name = "box_MultipleOR_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1271266017"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_27_Out
  self.box_AgentStateMonitor_V2_85 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_85
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1280694284"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = DummyFunction
  l0.AllInAwareState = DummyFunction
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = DummyFunction
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = DummyFunction
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = DummyFunction
  l0.PostCombatSearchState = self.f_box_AgentStateMonitor_V2_85_PostCombatSearchState
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = DummyFunction
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = DummyFunction
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = DummyFunction
  l0.IsDistracted = DummyFunction
  self.box_OnceOnly_v3_144 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_144
  l0._graph = self
  l0._name = "box_OnceOnly_v3_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1302752901"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_144_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_56 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_56
  l0._graph = self
  l0._name = "box_OnceOnly_v3_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1313588794"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_56_Out
  l0.ResetOut = DummyFunction
  self.box_TriggerMonitor_v2_19 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_19
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1393664978"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_19_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_95 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_95
  l0._graph = self
  l0._name = "box_Timer_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1393768248"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_95_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_GetNPC_58 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_58
  l0._graph = self
  l0._name = "box_GetNPC_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1417755108"
  l0.GotNPCList = self.f_box_GetNPC_58_GotNPCList
  self.box_MultipleOR_33 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_33
  l0._graph = self
  l0._name = "box_MultipleOR_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1418727638"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_33_Out
  self.box_VehicleSeatingController_23 = cbox:CreateBox("domino/System/VehicleSeatingController.lua")
  l0 = self.box_VehicleSeatingController_23
  l0._graph = self
  l0._name = "box_VehicleSeatingController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1430393969"
  l0.Assigned = DummyFunction
  l0.Unassigned = self.f_box_VehicleSeatingController_23_Unassigned
  l0.AssignCompleted = DummyFunction
  l0.UnassignCompleted = DummyFunction
  l0.AbortMoveAndUseSeat = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_80 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_80
  l0._graph = self
  l0._name = "box_CinematicPrep_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1477507656"
  l0.PreOut = self.f_box_CinematicPrep_80_PreOut
  l0.PostOut = DummyFunction
  self.box_PlaySound_v2_121 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_121
  l0._graph = self
  l0._name = "box_PlaySound_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1484932224"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_75 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_75
  l0._graph = self
  l0._name = "box_MultipleOR_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1502948583"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_75_Out
  self.box_CLOController_204 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_204
  l0._graph = self
  l0._name = "box_CLOController_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1527460221"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_204_OnUserInPlace
  self.box_MissionCheckpointReach_32 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_32
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1668119871"
  l0.Out = self.f_box_MissionCheckpointReach_32_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_LMA_Layer_Controller_44 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_44
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1685820584"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_Reach_Gameplay_47 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_47
  l0._graph = self
  l0._name = "box_Reach_Gameplay_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1692491446"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Reach_Gameplay_47_Stopped
  l0.Reached = self.f_box_Reach_Gameplay_47_Reached
  self.box_OnceOnly_v3_59 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_59
  l0._graph = self
  l0._name = "box_OnceOnly_v3_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1701271511"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_59_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_54 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_54
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1721503841"
  l0.Out = self.f_box_MissionMessageController_v3_54_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_79 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_79
  l0._graph = self
  l0._name = "box_CinematicPrep_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1765333206"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_79_PostOut
  self.box_Escape_Gameplay_64 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_64
  l0._graph = self
  l0._name = "box_Escape_Gameplay_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1790219635"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_64_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_64_LeftArea
  self.box_Multiple_AND_41 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_41
  l0._graph = self
  l0._name = "box_Multiple_AND_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1791816794"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_41_Out
  self.box_TriggerMonitor_v2_46 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_46
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1794439848"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_46_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_94 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_94
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1803652305"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_110 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_110
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1810056189"
  l0.Out = self.f_box_MissionCheckpointReach_110_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_135 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_135
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1836840419"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_135_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_113 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_113
  l0._graph = self
  l0._name = "box_MissionLayer_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1856378554"
  l0.Loaded = self.f_box_MissionLayer_v2_113_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_127 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_127
  l0._graph = self
  l0._name = "box_PlaySound_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1873464509"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hack_Gameplay_6 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_6
  l0._graph = self
  l0._name = "box_Hack_Gameplay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1874911229"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_6_Hacked
  self.box_CinematicPrep_37 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_37
  l0._graph = self
  l0._name = "box_CinematicPrep_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1881311669"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_37_PostOut
  self.box_CLOController_160 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_160
  l0._graph = self
  l0._name = "box_CLOController_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1889914070"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_160_OnUserInPlace
  self.box_GetNPC_108 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_108
  l0._graph = self
  l0._name = "box_GetNPC_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1922633538"
  l0.GotNPCList = self.f_box_GetNPC_108_GotNPCList
  self.box_MissionMessageController_v3_132 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_132
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1929077718"
  l0.Out = self.f_box_MissionMessageController_v3_132_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1931690394"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_81 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_81
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1991732476"
  l0.Enabled = self.f_box_TriggerMonitor_v2_81_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_81_Leave
  l0.Use = DummyFunction
  self.box_OnceOnly_v3_150 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_150
  l0._graph = self
  l0._name = "box_OnceOnly_v3_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2012054498"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_150_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_161 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_161
  l0._graph = self
  l0._name = "box_CLOController_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2091158340"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_161_OnUserInPlace
  self.box_PlaySound_v2_119 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_119
  l0._graph = self
  l0._name = "box_PlaySound_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2093090938"
  l0.Out = self.f_box_PlaySound_v2_119_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_97 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_97
  l0._graph = self
  l0._name = "box_OnceOnly_v3_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2120383481"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_97_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_102 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_102
  l0._graph = self
  l0._name = "box_MissionLayer_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2125024248"
  l0.Loaded = self.f_box_MissionLayer_v2_102_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
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
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|830595558", "830595558", "S03M010_Main", "CheckPoint_0", "box_MultipleOR_31.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_102
  l0.LayerName = "S03M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1024404348", "1024404348", "S03M010_Main", "CheckPoint_1", "box_MissionLayer_v2_102.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_113
  l0.LayerName = "S03M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1249247273", "1249247273", "S03M010_Main", "CheckPoint_2", "box_MissionLayer_v2_113.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_42()
  l0 = self.box_Mission_End_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1582584234", "1582584234", "S03M010_Main", "CheckPoint_3", "box_Mission_End_42.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|611310676", "611310676", "S03M010_Main", "In", "box_MultipleOR_31.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_119
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|486816102", "486816102", "S03M010_Main", "box_Ordered_Output_141.Out", "box_PlaySound_v2_119.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_127
  l0.Entity = "9223372064443620498"
  l0.SoundId = "soundbinary/4038486265.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1238127895", "1238127895", "S03M010_Main", "box_Ordered_Output_141.Out", "box_PlaySound_v2_127.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|987286582"
  l0.Out = self.f_box_Simple_Node_156_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1128584378", "1128584378", "S03M010_Main", "box_Ordered_Output_21.Out", "box_Simple_Node_156.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_150()
  l0 = self.box_OnceOnly_v3_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|319487400", "319487400", "S03M010_Main", "box_Ordered_Output_21.Out", "box_OnceOnly_v3_150.In", clone, l0)
  l0:In(0)
end
function export:f_box_PlayMusic_91_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 4
  l0._graph = self
  l0._name = "box_StopMusic_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|525798240"
  l0.Out = self.f_box_StopMusic_214_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|243710857", "243710857", "S03M010_Main", "box_PlayMusic_91.Out", "box_StopMusic_214.In", clone, l0)
  l0:In()
end
function export:f_box_OnceOnly_v3_87_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_36
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective030",
    item = "Objective1",
    id = "342724"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_OnceOnly_v3_87
  l1 = self.box_MissionMessageController_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1289735007", "1289735007", "S03M010_Main", "box_OnceOnly_v3_87.Out", "box_MissionMessageController_v3_36.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_136_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_41()
  l0 = self.box_MissionMessageController_v3_136
  l1 = self.box_Multiple_AND_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|5463391", "5463391", "S03M010_Main", "box_MissionMessageController_v3_136.MessageCompleted", "box_Multiple_AND_41.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Player_Proximity_Monitor_143_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_47()
  l0 = self.box_Player_Proximity_Monitor_143
  l1 = self.box_Reach_Gameplay_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|268213929", "268213929", "S03M010_Main", "box_Player_Proximity_Monitor_143.Disabled", "box_Reach_Gameplay_47.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Player_Proximity_Monitor_143_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_47()
  l0 = self.box_Player_Proximity_Monitor_143
  l1 = self.box_Reach_Gameplay_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|977637982", "977637982", "S03M010_Main", "box_Player_Proximity_Monitor_143.Enabled", "box_Reach_Gameplay_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_Player_Proximity_Monitor_143_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_144()
  l0 = self.box_Player_Proximity_Monitor_143
  l1 = self.box_OnceOnly_v3_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|60257646", "60257646", "S03M010_Main", "box_Player_Proximity_Monitor_143.EnterRadius", "box_OnceOnly_v3_144.In", l0, l1)
  l1:In(1)
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.DedSec_Car01 = l0.UserID
  l0 = self.box_MissionCheckpointReach_101
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_CLOController_10
  l1 = self.box_MissionCheckpointReach_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1373624520", "1373624520", "S03M010_Main", "box_CLOController_10.OnUserInPlace", "box_MissionCheckpointReach_101.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_53()
  l0 = self.box_TutorialController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1411495755", "1411495755", "S03M010_Main", "box_Ordered_Output_4.Out", "box_TutorialController_53.Display", clone, l0)
  l0:Display()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_19
  l0.Trigger = "9223372069189597683"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1825162970", "1825162970", "S03M010_Main", "box_Ordered_Output_4.Out", "box_TriggerMonitor_v2_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|888709001", "888709001", "S03M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_26_NoMoveTimer()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|981083799"
  l0.Stopped = DummyFunction
  l0.ResetOut = self.f_box_ForcePawnsVehicleStop_v2_40_ResetOut
  l0 = self.box_VehicleMonitor_v3_26
  l1 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1738220851", "1738220851", "S03M010_Main", "box_VehicleMonitor_v3_26.NoMoveTimer", "box_ForcePawnsVehicleStop_v2_40.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_CinematicPrep_114_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_CinematicPrep_114
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1139030239", "1139030239", "S03M010_Main", "box_CinematicPrep_114.PostOut", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DistanceBasedProgressBarController_v2_30_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_54
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective020",
    item = "SubObjective4",
    id = "385766"
  }
  l0 = self.box_DistanceBasedProgressBarController_v2_30
  l1 = self.box_MissionMessageController_v3_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|857920000", "857920000", "S03M010_Main", "box_DistanceBasedProgressBarController_v2_30.Completed", "box_MissionMessageController_v3_54.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Reach_Gameplay_69
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372065299466229"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1118505815", "1118505815", "S03M010_Main", "box_Ordered_Output_24.Out", "box_Reach_Gameplay_69.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_46
  l0.Trigger = "9223372046253602710"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|499040896", "499040896", "S03M010_Main", "box_Ordered_Output_24.Out", "box_TriggerMonitor_v2_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_81
  l0.Trigger = "9223372055975586641"
  l0.CheckNow = 1
  l0.AutoDisable = 1
  l0 = self.box_MissionMessageController_v3_36
  l1 = self.box_TriggerMonitor_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1213785978", "1213785978", "S03M010_Main", "box_MissionMessageController_v3_36.Out", "box_TriggerMonitor_v2_81.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionZone_152_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1284789847"
  l0.Out = self.f_box_Get_Player_ID_111_Out
  l0 = self.box_MissionZone_152
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1577731858", "1577731858", "S03M010_Main", "box_MissionZone_152.Enabled", "box_Get_Player_ID_111.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1565336699"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_MultipleOR_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1280449010", "1280449010", "S03M010_Main", "box_MultipleOR_15.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_166_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_165
  l0.CLO = "9223372047749627595"
  l0 = self.box_CLOController_166
  l1 = self.box_CLOController_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|265999350", "265999350", "S03M010_Main", "box_CLOController_166.OnUserInPlace", "box_CLOController_165.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_104_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_114
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_104
  l1 = self.box_CinematicPrep_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1502094888", "1502094888", "S03M010_Main", "box_CLOController_104.OnUserInPlace", "box_CinematicPrep_114.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Player_Vehicle_Monitor_v2_25_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  self.Vehicle = l0.Vehicle
end
function export:f_box_Player_Vehicle_Monitor_v2_25_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_26()
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  l1 = self.box_VehicleMonitor_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2007358314", "2007358314", "S03M010_Main", "box_Player_Vehicle_Monitor_v2_25.Disabled", "box_VehicleMonitor_v3_26.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Player_Vehicle_Monitor_v2_25_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  self.Vehicle = l0.Vehicle
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  l0.PlayerEntity = nil
  l0.Brake = nil
  l0._graph = self
  l0._name = "box_ForcePawnsVehicleStop_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1381408848"
  l0.Stopped = self.f_box_ForcePawnsVehicleStop_v2_28_Stopped
  l0.ResetOut = DummyFunction
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  l1 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|980765808", "980765808", "S03M010_Main", "box_Player_Vehicle_Monitor_v2_25.Enter", "box_ForcePawnsVehicleStop_v2_28.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Player_Vehicle_Monitor_v2_25_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  self.Vehicle = l0.Vehicle
  self:OnEnter_box_MultipleOR_15()
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1614203693", "1614203693", "S03M010_Main", "box_Player_Vehicle_Monitor_v2_25.Leave", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_TriggerMonitor_v2_12_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_143()
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_Player_Proximity_Monitor_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|187110965", "187110965", "S03M010_Main", "box_TriggerMonitor_v2_12.Enabled", "box_Player_Proximity_Monitor_143.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_12_Leave()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1515995527"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_57_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_57_Out_1
  l0 = self.box_TriggerMonitor_v2_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|348242548", "348242548", "S03M010_Main", "box_TriggerMonitor_v2_12.Leave", "box_Ordered_Output_57.In", l0, l1)
  l1:In()
end
function export:f_box_MissionZone_86_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_205
  l0.PGTMissionArea = "9223372046625025743"
  l0 = self.box_MissionZone_86
  l1 = self.box_PGTController_v2_205
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1774735900", "1774735900", "S03M010_Main", "box_MissionZone_86.Enabled", "box_PGTController_v2_205.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionZone_86_SoftQuitCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372071437132119"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = 1
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1111704943"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = DummyFunction
  l0 = self.box_MissionZone_86
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|578527918", "578527918", "S03M010_Main", "box_MissionZone_86.SoftQuitCompleted", "box_Cinema_Zone_Cleanup_50.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_Reach_Gameplay_69_Reached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_27()
  l0 = self.box_Reach_Gameplay_69
  l1 = self.box_MultipleOR_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1718653223", "1718653223", "S03M010_Main", "box_Reach_Gameplay_69.Reached", "box_MultipleOR_27.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_StopMusic_214_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2056071410", "2056071410", "S03M010_Main", "box_StopMusic_214.Out", "box_MissionMessageController_v3_136.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Get_Player_ID_103_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|33846745", "33846745", "S03M010_Main", "box_Get_Player_ID_103.Out", "box_MultipleOR_33.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AgentStateMonitor_V2_48_CombatState()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|67660065"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  l0 = self.box_AgentStateMonitor_V2_48
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|799959313", "799959313", "S03M010_Main", "box_AgentStateMonitor_V2_48.CombatState", "box_Ordered_Output_141.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_203_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_104
  l0.CLO = "9223372047749626815"
  l0 = self.box_CLOController_203
  l1 = self.box_CLOController_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1338174860", "1338174860", "S03M010_Main", "box_CLOController_203.OnUserInPlace", "box_CLOController_104.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S03M010_Main"
  l0 = self.box_MultipleOR_31
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|229344726", "229344726", "S03M010_Main", "box_MultipleOR_31.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_109_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346301"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1745177414", "1745177414", "S03M010_Main", "box_Ordered_Output_109.Out", "box_PhoneCommunicationController_8.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_109_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669153"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|165758986"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2076858075", "2076858075", "S03M010_Main", "box_Ordered_Output_109.Out", "box_MissionMusicController_162.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_109_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_125
  l0.Entity = "9223372064443620498"
  l0.SoundId = "soundbinary/3234190337.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1698105376", "1698105376", "S03M010_Main", "box_Ordered_Output_109.Out", "box_PlaySound_v2_125.Play", clone, l0)
  l0:Play()
end
function export:f_box_CLOController_82_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_202
  l0.CLO = "9223372047154299814"
  l0 = self.box_CLOController_82
  l1 = self.box_CLOController_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1416268724", "1416268724", "S03M010_Main", "box_CLOController_82.OnUserInPlace", "box_CLOController_202.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_RewardController_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.IsFinalOjective
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|982579924"
  l0.Out = self.f_box_Integer_Arithmetics_131_Out
  l0 = self.box_RewardController_v3_13
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1241352794", "1241352794", "S03M010_Main", "box_RewardController_v3_13.Out", "box_Integer_Arithmetics_131.Add", l0, l1)
  l1:Add()
end
function export:f_box_GetNPC_7_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_7
  self.TalkesHQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.TalkesHQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1670527181"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_116_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_7
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|166553796", "166553796", "S03M010_Main", "box_GetNPC_7.GotNPCList", "box_VisibilityController_v2_116.Show", l0, l1)
  l1:Show()
end
function export:f_box_S03_M010_CIN_TrailerReaction_Main_120_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_7
  l0.Group = "HQ_Talker"
  l0 = self.box_S03_M010_CIN_TrailerReaction_Main_120
  l1 = self.box_GetNPC_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|692073828", "692073828", "S03M010_Main", "box_S03_M010_CIN_TrailerReaction_Main_120.Out", "box_GetNPC_7.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_TutorialController_53_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = "9223372055975586641"
  l0.AutoDisable = 1
  l0 = self.box_TutorialController_53
  l1 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|999633371", "999633371", "S03M010_Main", "box_TutorialController_53.Out", "box_TriggerMonitor_v2_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_13
  l0.ItemDB = "Items.9223372051996891804"
  l0 = self.box_MissionMessageController_v3_52
  l1 = self.box_RewardController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|139421856", "139421856", "S03M010_Main", "box_MissionMessageController_v3_52.Out", "box_RewardController_v3_13.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_PhoneCommunicationController_117_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_87()
  l0 = self.box_PhoneCommunicationController_117
  l1 = self.box_OnceOnly_v3_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1738324152", "1738324152", "S03M010_Main", "box_PhoneCommunicationController_117.StartCommunicationOut", "box_OnceOnly_v3_87.In", l0, l1)
  l1:In(1)
end
function export:f_box_MissionMessageController_v3_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|221811790"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_MissionMessageController_v3_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|936221595", "936221595", "S03M010_Main", "box_MissionMessageController_v3_18.Out", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_22_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_51
  l0.Entity = self.PlayerEntity
  l0.SoundIdList = self.ToSudio_Destination
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|751600552", "751600552", "S03M010_Main", "box_Ordered_Output_22.Out", "box_PlayDialog_v2_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1860376758"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1246368773", "1246368773", "S03M010_Main", "box_Ordered_Output_22.Out", "box_VisibilityController_v2_11.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_39_HideInVehicleEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2108517986"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_55_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|253118736", "253118736", "S03M010_Main", "box_Set_Is_Hiding_In_Vehicle_39.HideInVehicleEnabled", "box_VisibilityController_v2_55.Show", clone, l0)
  l0:Show()
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
  l0 = self.box_MissionCheckpointReach_32
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|84796934", "84796934", "S03M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_32.In", clone, l0)
  l0:In()
end
function export:f_box_MissionZone_98_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_64
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372048428775116"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0 = self.box_MissionZone_98
  l1 = self.box_Escape_Gameplay_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1600272553", "1600272553", "S03M010_Main", "box_MissionZone_98.Disabled", "box_Escape_Gameplay_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Integers_v2_129_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_117
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052153600721"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|255386785", "255386785", "S03M010_Main", "box_Compare_Integers_v2_129.A_eq_B", "box_PhoneCommunicationController_117.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Integers_v2_129_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_94
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346300"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1280130048", "1280130048", "S03M010_Main", "box_Compare_Integers_v2_129.A_lt_B", "box_PhoneCommunicationController_94.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_PhoneCommunicationController_5_StopCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Vehicle_Monitor_v2_25()
  l0 = self.box_PhoneCommunicationController_5
  l1 = self.box_Player_Vehicle_Monitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|670279732", "670279732", "S03M010_Main", "box_PhoneCommunicationController_5.StopCommunicationOut", "box_Player_Vehicle_Monitor_v2_25.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_OnceOnly_v3_78_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = nil
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|697493238"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = self.f_box_Set_Is_Hiding_In_Vehicle_39_HideInVehicleEnabled
  l0.HideInVehicleDisabled = DummyFunction
  l0 = self.box_OnceOnly_v3_78
  l1 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1549659541", "1549659541", "S03M010_Main", "box_OnceOnly_v3_78.Out", "box_Set_Is_Hiding_In_Vehicle_39.SetCanHideInVehicle", l0, l1)
  l1:SetCanHideInVehicle()
end
function export:f_box_Simple_Node_149_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_144()
  l0 = self.box_OnceOnly_v3_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|712356219", "712356219", "S03M010_Main", "box_Simple_Node_149.Out", "box_OnceOnly_v3_144.In", clone, l0)
  l0:In(0)
end
function export:f_box_Cinema_Zone_Cleanup_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_42()
  l0 = self.box_Mission_End_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1382979857", "1382979857", "S03M010_Main", "box_Cinema_Zone_Cleanup_49.Out", "box_Mission_End_42.End", clone, l0)
  l0:End()
end
function export:f_box_Ordered_Output_63_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Interact_Gameplay_35
  l0.Entity = "9223372048123726785"
  l0.IsManagingInteraction = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|994707392", "994707392", "S03M010_Main", "box_Ordered_Output_63.Out", "box_Interact_Gameplay_35.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_63_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hack_Gameplay_6
  l0.Entity = "9223372048428727196"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1125251682", "1125251682", "S03M010_Main", "box_Ordered_Output_63.Out", "box_Hack_Gameplay_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_63_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_GetNPC_58
  l0.Group = "S03M010_PGT"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|549197351", "549197351", "S03M010_Main", "box_Ordered_Output_63.Out", "box_GetNPC_58.GetEnemies", clone, l0)
  l0:GetEnemies()
end
function export:f_box_Set_Is_Hiding_In_Vehicle_38_HideInVehicleDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372072530101317"
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
  l0._name = "box_Cinema_Zone_Cleanup_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1355858093"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|303485883", "303485883", "S03M010_Main", "box_Set_Is_Hiding_In_Vehicle_38.HideInVehicleDisabled", "box_Cinema_Zone_Cleanup_9.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_ForcePawnsVehicleStop_v2_40_ResetOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_VehicleSeatingController_23
  l0.Pawn = self.PlayerEntity
  l0.UseAnimation = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1323030563", "1323030563", "S03M010_Main", "box_ForcePawnsVehicleStop_v2_40.ResetOut", "box_VehicleSeatingController_23.Unassign", clone, l0)
  l0:Unassign()
end
function export:f_box_Integer_Arithmetics_131_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.IsFinalOjective = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.IsFinalOjective
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1056174140"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_130_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_130_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1270020694", "1270020694", "S03M010_Main", "box_Integer_Arithmetics_131.Out", "box_Compare_Integers_v2_130.In", clone, l0)
  l0:In()
end
function export:f_box_GateController_66_Opened()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_43
  l0.PGTMissionArea = "9223372046625025743"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|694838704", "694838704", "S03M010_Main", "box_GateController_66.Opened", "box_PGTController_v2_43.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_156_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|914591246"
  l0.Out = self.f_box_Simple_Node_149_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1454500033", "1454500033", "S03M010_Main", "box_Simple_Node_156.Out", "box_Simple_Node_149.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_202_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_203
  l0.CLO = "9223372047749627595"
  l0 = self.box_CLOController_202
  l1 = self.box_CLOController_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1787879279", "1787879279", "S03M010_Main", "box_CLOController_202.OnUserInPlace", "box_CLOController_203.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Compare_Integers_v2_130_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_135
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372057030138897"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2031462515", "2031462515", "S03M010_Main", "box_Compare_Integers_v2_130.A_eq_B", "box_PhoneCommunicationController_135.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Integers_v2_130_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_93
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346302"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1630719540", "1630719540", "S03M010_Main", "box_Compare_Integers_v2_130.A_lt_B", "box_PhoneCommunicationController_93.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_EntityLoadingMonitor_89_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372056266289328"
  l0.SetOpen = nil
  l0.Instant = 1
  l0._graph = self
  l0._name = "box_GateController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1008598335"
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0 = self.box_EntityLoadingMonitor_89
  l1 = Boxes[PathID("domino/System/GateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|201290226", "201290226", "S03M010_Main", "box_EntityLoadingMonitor_89.AllLoaded", "box_GateController_124.Open", l0, l1)
  l1:Open()
end
function export:f_box_EntityLoadingMonitor_89_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_EntityLoadingMonitor_89
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|463657352", "463657352", "S03M010_Main", "box_EntityLoadingMonitor_89.Enabled", "box_TriggerMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_LMA_Layer_Controller_74_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_86
  l0.MissionArea = "9223372047943093150"
  l0.MissionLayer = "S03M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_LMA_Layer_Controller_74
  l1 = self.box_MissionZone_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1062744781", "1062744781", "S03M010_Main", "box_LMA_Layer_Controller_74.Loaded", "box_MissionZone_86.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Integer_Arithmetics_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.IsFinalOjective = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.IsFinalOjective
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|847609655"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_129_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_129_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|9598698", "9598698", "S03M010_Main", "box_Integer_Arithmetics_20.Out", "box_Compare_Integers_v2_129.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_165_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_163
  l0.CLO = "9223372047749626815"
  l0 = self.box_CLOController_165
  l1 = self.box_CLOController_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1694124005", "1694124005", "S03M010_Main", "box_CLOController_165.OnUserInPlace", "box_CLOController_163.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_TriggerMonitor_v2_14_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_OnceOnly_v3_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|587856853", "587856853", "S03M010_Main", "box_TriggerMonitor_v2_14.Enabled", "box_OnceOnly_v3_59.In", l0, l1)
  l1:In(0)
end
function export:f_box_TriggerMonitor_v2_14_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_OnceOnly_v3_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1530652604", "1530652604", "S03M010_Main", "box_TriggerMonitor_v2_14.Enter", "box_OnceOnly_v3_29.In", l0, l1)
  l1:In(0)
end
function export:f_box_Interact_Gameplay_35_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_52
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective020",
    item = "SubObjective5",
    id = "342726"
  }
  l0 = self.box_Interact_Gameplay_35
  l1 = self.box_MissionMessageController_v3_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|706327571", "706327571", "S03M010_Main", "box_Interact_Gameplay_35.Interacted", "box_MissionMessageController_v3_52.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_EntityLoadingMonitor_89
  l0.Entity = "9223372056266289328"
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_EntityLoadingMonitor_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1565503988", "1565503988", "S03M010_Main", "box_MissionMessageController_v3_3.Out", "box_EntityLoadingMonitor_89.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PGTController_v2_205_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_160
  l0.CLO = "9223372050275125896"
  l0 = self.box_PGTController_v2_205
  l1 = self.box_CLOController_160
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1186455724", "1186455724", "S03M010_Main", "box_PGTController_v2_205.Started", "box_CLOController_160.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionCheckpointReach_101_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_37
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionCheckpointReach_101
  l1 = self.box_CinematicPrep_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1174193894", "1174193894", "S03M010_Main", "box_MissionCheckpointReach_101.Out", "box_CinematicPrep_37.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_VisibilityController_v2_115_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S03_M010_CIN_TrailerReaction_Main_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|661425135", "661425135", "S03M010_Main", "box_VisibilityController_v2_115.Hidden", "box_S03_M010_CIN_TrailerReaction_Main_120.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_34_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_78()
  l0 = self.box_PlaySequence_v5_34
  l1 = self.box_OnceOnly_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|580636928", "580636928", "S03M010_Main", "box_PlaySequence_v5_34.Finished", "box_OnceOnly_v3_78.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_34_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_78()
  l0 = self.box_PlaySequence_v5_34
  l1 = self.box_OnceOnly_v3_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|351381120", "351381120", "S03M010_Main", "box_PlaySequence_v5_34.Skipped", "box_OnceOnly_v3_78.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_34_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|683816406"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_22_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_22_Out_1
  l0 = self.box_PlaySequence_v5_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1354847581", "1354847581", "S03M010_Main", "box_PlaySequence_v5_34.Started", "box_Ordered_Output_22.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_43_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_204
  l0.CLO = "9223372050275125896"
  l0 = self.box_PGTController_v2_43
  l1 = self.box_CLOController_204
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|198955995", "198955995", "S03M010_Main", "box_PGTController_v2_43.AllSpawned", "box_CLOController_204.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_29_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|555493449"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_109_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_109_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_109_Out_2
  l0 = self.box_OnceOnly_v3_29
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|193117299", "193117299", "S03M010_Main", "box_OnceOnly_v3_29.Out", "box_Ordered_Output_109.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_17_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_41()
  l0 = self.box_PhoneCommunicationController_17
  l1 = self.box_Multiple_AND_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1931518948", "1931518948", "S03M010_Main", "box_PhoneCommunicationController_17.OnCommunicationFinished", "box_Multiple_AND_41.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_ListWriterSoundID_164_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_164
  self.ToSudio_Destination = l0.Target
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046625025743"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1376911983"
  l0.Out = self.f_box_AI_Agent_Zone_157_Out
  l0 = self.box_ListWriterSoundID_164
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1404836340", "1404836340", "S03M010_Main", "box_ListWriterSoundID_164.Added", "box_AI_Agent_Zone_157.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriterSoundID_164_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_164
  self.ToSudio_Destination = l0.Target
end
function export:f_box_ListWriterSoundID_164_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriterSoundID_164
  self.ToSudio_Destination = l0.Target
end
function export:f_box_MultipleOR_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_110
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_27
  l1 = self.box_MissionCheckpointReach_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|107047996", "107047996", "S03M010_Main", "box_MultipleOR_27.Out", "box_MissionCheckpointReach_110.In", l0, l1)
  l1:In()
end
function export:f_box_AgentStateMonitor_V2_85_PostCombatSearchState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_121
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_AgentStateMonitor_V2_85
  l1 = self.box_PlaySound_v2_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1399972542", "1399972542", "S03M010_Main", "box_AgentStateMonitor_V2_85.PostCombatSearchState", "box_PlaySound_v2_121.Play", l0, l1)
  l1:Play()
end
function export:f_box_Get_Player_ID_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372056266289328"
  l0.SetOpen = nil
  l0.Instant = 1
  l0._graph = self
  l0._name = "box_GateController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|985140318"
  l0.Out = DummyFunction
  l0.Opened = self.f_box_GateController_66_Opened
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1810992715", "1810992715", "S03M010_Main", "box_Get_Player_ID_111.Out", "box_GateController_66.Open", clone, l0)
  l0:Open()
end
function export:f_box_OnceOnly_v3_144_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_143()
  l0 = self.box_OnceOnly_v3_144
  l1 = self.box_Player_Proximity_Monitor_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1277247090", "1277247090", "S03M010_Main", "box_OnceOnly_v3_144.Out", "box_Player_Proximity_Monitor_143.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_OnceOnly_v3_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_44
  l0.LMALayerName = "SF_04_MovieStudio_LMA"
  l0 = self.box_OnceOnly_v3_56
  l1 = self.box_LMA_Layer_Controller_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|343981094", "343981094", "S03M010_Main", "box_OnceOnly_v3_56.Out", "box_LMA_Layer_Controller_44.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Cinema_Zone_Cleanup_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_34
  l0.SceneEntity = "9223372052419824128"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S03/S03_M010_IntroStudio/s03_m010_introstudio.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|560608714", "560608714", "S03M010_Main", "box_Cinema_Zone_Cleanup_9.Out", "box_PlaySequence_v5_34.Start", clone, l0)
  l0:Start()
end
function export:f_box_AI_Agent_Zone_157_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetIsHindingInVehicle.lua")]
  l0.User = nil
  l0.CanHideInVehicle = 0
  l0._graph = self
  l0._name = "box_Set_Is_Hiding_In_Vehicle_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|974380522"
  l0.Out = DummyFunction
  l0.Hidden = DummyFunction
  l0.Unhidden = DummyFunction
  l0.HideInVehicleEnabled = DummyFunction
  l0.HideInVehicleDisabled = self.f_box_Set_Is_Hiding_In_Vehicle_38_HideInVehicleDisabled
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1157152001", "1157152001", "S03M010_Main", "box_AI_Agent_Zone_157.Out", "box_Set_Is_Hiding_In_Vehicle_38.SetCanHideInVehicle", clone, l0)
  l0:SetCanHideInVehicle()
end
function export:f_box_ForcePawnsVehicleStop_v2_28_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ForcePawnsVehicleStop_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_26()
  l0 = self.box_VehicleMonitor_v3_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2085358577", "2085358577", "S03M010_Main", "box_ForcePawnsVehicleStop_v2_28.Stopped", "box_VehicleMonitor_v3_26.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_19_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_53()
  l0 = self.box_TriggerMonitor_v2_19
  l1 = self.box_TutorialController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|154818634", "154818634", "S03M010_Main", "box_TriggerMonitor_v2_19.Enter", "box_TutorialController_53.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Timer_v2_95_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_75()
  l0 = self.box_Timer_v2_95
  l1 = self.box_MultipleOR_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|143082226", "143082226", "S03M010_Main", "box_Timer_v2_95.TimeElapsed", "box_MultipleOR_75.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GetNPC_58_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_58
  self.PGT_List = l0.NPCList
  l0 = self.box_AgentStateMonitor_V2_48
  l0.NPCList = self.PGT_List
  l0 = self.box_GetNPC_58
  l1 = self.box_AgentStateMonitor_V2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1482683477", "1482683477", "S03M010_Main", "box_GetNPC_58.GotNPCList", "box_AgentStateMonitor_V2_48.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_33_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372065299466227"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1612574973"
  l0.Out = self.f_box_Phys_Zone_Cleanup_45_Out
  l0 = self.box_MultipleOR_33
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1042916564", "1042916564", "S03M010_Main", "box_MultipleOR_33.Out", "box_Phys_Zone_Cleanup_45.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VehicleSeatingController_23_Unassigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_VehicleSeatingController_23
  l1 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1010248167", "1010248167", "S03M010_Main", "box_VehicleSeatingController_23.Unassigned", "box_MultipleOR_15.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_80_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriterSoundID_164
  l0.Input = self.ToSudio_Destination
  l0.SoundID[0] = "soundbinary/3917350329.bnk"
  l0.SoundID[1] = "soundbinary/98398996.bnk"
  l0 = self.box_CinematicPrep_80
  l1 = self.box_ListWriterSoundID_164
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2115294325", "2115294325", "S03M010_Main", "box_CinematicPrep_80.PreOut", "box_ListWriterSoundID_164.Add", l0, l1)
  l1:Add()
end
function export:f_box_MultipleOR_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_75
  l1 = self.box_OnceOnly_v3_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1218253010", "1218253010", "S03M010_Main", "box_MultipleOR_75.Out", "box_OnceOnly_v3_97.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_57_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationController_5()
  l0 = self.box_PhoneCommunicationController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|558195845", "558195845", "S03M010_Main", "box_Ordered_Output_57.Out", "box_PhoneCommunicationController_5.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_57_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_12()
  l0 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1363199276", "1363199276", "S03M010_Main", "box_Ordered_Output_57.Out", "box_TriggerMonitor_v2_12.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_204_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_82
  l0.CLO = "9223372047113308154"
  l0 = self.box_CLOController_204
  l1 = self.box_CLOController_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1186494147", "1186494147", "S03M010_Main", "box_CLOController_204.OnUserInPlace", "box_CLOController_82.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Vehicle_Monitor_v2_25()
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1213964808", "1213964808", "S03M010_Main", "box_Ordered_Output_16.Out", "box_Player_Vehicle_Monitor_v2_25.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_80
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|190933006", "190933006", "S03M010_Main", "box_Ordered_Output_16.Out", "box_CinematicPrep_80.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_Phys_Zone_Cleanup_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_10
  l0.CLO = "9223372046253601992"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|284271870", "284271870", "S03M010_Main", "box_Phys_Zone_Cleanup_45.Out", "box_CLOController_10.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionCheckpointReach_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_108
  l0.Group = "HQ_Talker"
  l0 = self.box_MissionCheckpointReach_32
  l1 = self.box_GetNPC_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1943668834", "1943668834", "S03M010_Main", "box_MissionCheckpointReach_32.Out", "box_GetNPC_108.GetAll", l0, l1)
  l1:GetAll()
end
function export:f_box_VisibilityController_v2_116_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_33()
  l0 = self.box_MultipleOR_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|161846632", "161846632", "S03M010_Main", "box_VisibilityController_v2_116.Shown", "box_MultipleOR_33.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Reach_Gameplay_47_Reached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|70781018"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_Reach_Gameplay_47
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1290500325", "1290500325", "S03M010_Main", "box_Reach_Gameplay_47.Reached", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_Reach_Gameplay_47_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_150()
  l0 = self.box_Reach_Gameplay_47
  l1 = self.box_OnceOnly_v3_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2082941489", "2082941489", "S03M010_Main", "box_Reach_Gameplay_47.Stopped", "box_OnceOnly_v3_150.In", l0, l1)
  l1:In(1)
end
function export:f_box_OnceOnly_v3_59_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|965254282"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_63_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_63_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_63_Out_2
  l0 = self.box_OnceOnly_v3_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1622598545", "1622598545", "S03M010_Main", "box_OnceOnly_v3_59.Out", "box_Ordered_Output_63.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_54_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.IsFinalOjective
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1125515412"
  l0.Out = self.f_box_Integer_Arithmetics_20_Out
  l0 = self.box_MissionMessageController_v3_54
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1208490102", "1208490102", "S03M010_Main", "box_MissionMessageController_v3_54.Out", "box_Integer_Arithmetics_20.Add", l0, l1)
  l1:Add()
end
function export:f_box_CinematicPrep_79_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_132
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective020",
    item = "Objective",
    id = "342723"
  }
  l0 = self.box_CinematicPrep_79
  l1 = self.box_MissionMessageController_v3_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|740803512", "740803512", "S03M010_Main", "box_CinematicPrep_79.PostOut", "box_MissionMessageController_v3_132.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Escape_Gameplay_64_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1923369762"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_107_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_107_Out_1
  l0 = self.box_Escape_Gameplay_64
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1209610475", "1209610475", "S03M010_Main", "box_Escape_Gameplay_64.Escaped", "box_Ordered_Output_107.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_64_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_64
  l1 = self.box_OnceOnly_v3_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2107763369", "2107763369", "S03M010_Main", "box_Escape_Gameplay_64.LeftArea", "box_OnceOnly_v3_56.In", l0, l1)
  l1:In(0)
end
function export:f_box_Multiple_AND_41_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 3
  l0._graph = self
  l0._name = "box_StopMusic_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1840708957"
  l0.Out = self.f_box_StopMusic_142_Out
  l0 = self.box_Multiple_AND_41
  l1 = Boxes[PathID("domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1524531254", "1524531254", "S03M010_Main", "box_Multiple_AND_41.Out", "box_StopMusic_142.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_46_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_74
  l0.LMALayerName = "SF_04_MovieStudio_LMA"
  l0 = self.box_TriggerMonitor_v2_46
  l1 = self.box_LMA_Layer_Controller_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|628886603", "628886603", "S03M010_Main", "box_TriggerMonitor_v2_46.Enter", "box_LMA_Layer_Controller_74.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionCheckpointReach_110_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_18
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective020",
    item = "Objective",
    id = "342723"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective020",
    item = "SubObjective4",
    id = "385766"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective020",
    item = "SubObjective5",
    id = "342726"
  }
  l0 = self.box_MissionCheckpointReach_110
  l1 = self.box_MissionMessageController_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1064537937", "1064537937", "S03M010_Main", "box_MissionCheckpointReach_110.Out", "box_MissionMessageController_v3_18.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_PhoneCommunicationController_135_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_87()
  l0 = self.box_PhoneCommunicationController_135
  l1 = self.box_OnceOnly_v3_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|53600393", "53600393", "S03M010_Main", "box_PhoneCommunicationController_135.StartCommunicationOut", "box_OnceOnly_v3_87.In", l0, l1)
  l1:In(0)
end
function export:f_box_StopMusic_142_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372071437132119"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = 1
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|948138487"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_49_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1741835571", "1741835571", "S03M010_Main", "box_StopMusic_142.Out", "box_Cinema_Zone_Cleanup_49.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_MissionLayer_v2_113_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372046625025743"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2097556571"
  l0.Out = self.f_box_AI_Agent_Zone_171_Out
  l0 = self.box_MissionLayer_v2_113
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|959075418", "959075418", "S03M010_Main", "box_MissionLayer_v2_113.Loaded", "box_AI_Agent_Zone_171.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hack_Gameplay_6_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_DistanceBasedProgressBarController_v2_30
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "DownloadingPages",
    id = "550989"
  }
  l0.TotalTime = 4
  l0 = self.box_Hack_Gameplay_6
  l1 = self.box_DistanceBasedProgressBarController_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|869983553", "869983553", "S03M010_Main", "box_Hack_Gameplay_6.Hacked", "box_DistanceBasedProgressBarController_v2_30.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_37_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S03.S03M010.Objectives.Objective010",
    item = "Objective2",
    id = "341393"
  }
  l0 = self.box_CinematicPrep_37
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1341273441", "1341273441", "S03M010_Main", "box_CinematicPrep_37.PostOut", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_CLOController_160_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_161
  l0.CLO = "9223372047113308154"
  l0 = self.box_CLOController_160
  l1 = self.box_CLOController_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1928583978", "1928583978", "S03M010_Main", "box_CLOController_160.OnUserInPlace", "box_CLOController_161.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_GetNPC_108_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_108
  self.TalkesHQ = l0.NPCList
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.TalkesHQ
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1216654623"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_115_Hidden
  l0.Out = DummyFunction
  l0 = self.box_GetNPC_108
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|912802757", "912802757", "S03M010_Main", "box_GetNPC_108.GotNPCList", "box_VisibilityController_v2_115.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayMusic.lua")]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0.FadeOutTime = nil
  l0.Object = nil
  l0.KeepLoaded = nil
  l0.MusicType = "MusicType"
  l0._graph = self
  l0._name = "box_PlayMusic_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|72091708"
  l0.Out = self.f_box_PlayMusic_91_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1452404121", "1452404121", "S03M010_Main", "box_Ordered_Output_107.Out", "box_PlayMusic_91.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_75()
  l0 = self.box_MultipleOR_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1809858267", "1809858267", "S03M010_Main", "box_Ordered_Output_107.Out", "box_MultipleOR_75.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionMessageController_v3_132_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|280193741"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0 = self.box_MissionMessageController_v3_132
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1300684883", "1300684883", "S03M010_Main", "box_MissionMessageController_v3_132.Out", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_81_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_98
  l0.MissionArea = "9223372047943093150"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_TriggerMonitor_v2_81
  l1 = self.box_MissionZone_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|1334639144", "1334639144", "S03M010_Main", "box_TriggerMonitor_v2_81.Enabled", "box_MissionZone_98.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TriggerMonitor_v2_81_Leave()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_95
  l0.Seconds = 10
  l0 = self.box_TriggerMonitor_v2_81
  l1 = self.box_Timer_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|2140974604", "2140974604", "S03M010_Main", "box_TriggerMonitor_v2_81.Leave", "box_Timer_v2_95.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_150_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PhoneCommunicationController_5()
  l0 = self.box_OnceOnly_v3_150
  l1 = self.box_PhoneCommunicationController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|216727283", "216727283", "S03M010_Main", "box_OnceOnly_v3_150.Out", "box_PhoneCommunicationController_5.StopCommunication", l0, l1)
  l1:StopCommunication()
end
function export:f_box_CLOController_161_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_166
  l0.CLO = "9223372047154299814"
  l0 = self.box_CLOController_161
  l1 = self.box_CLOController_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|739106902", "739106902", "S03M010_Main", "box_CLOController_161.OnUserInPlace", "box_CLOController_166.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlaySound_v2_119_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AgentStateMonitor_V2_85
  l0.NPCList = self.PGT_List
  l0 = self.box_PlaySound_v2_119
  l1 = self.box_AgentStateMonitor_V2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|684596728", "684596728", "S03M010_Main", "box_PlaySound_v2_119.Out", "box_AgentStateMonitor_V2_85.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_Agent_Zone_171_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionZone_152
  l0.MissionArea = "9223372047943093150"
  l0.MissionLayer = "S03M010_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|684645537", "684645537", "S03M010_Main", "box_AI_Agent_Zone_171.Out", "box_MissionZone_152.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_VisibilityController_v2_55_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_79
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|981101066", "981101066", "S03M010_Main", "box_VisibilityController_v2_55.Shown", "box_CinematicPrep_79.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_OnceOnly_v3_97_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346306"
  l0 = self.box_OnceOnly_v3_97
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|915459397", "915459397", "S03M010_Main", "box_OnceOnly_v3_97.Out", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionLayer_v2_102_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|527334444"
  l0.Out = self.f_box_Get_Player_ID_103_Out
  l0 = self.box_MissionLayer_v2_102
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S03\\S03M010\\S03M010.domino|@S03M010_Main|478952374", "478952374", "S03M010_Main", "box_MissionLayer_v2_102.Loaded", "box_Get_Player_ID_103.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_OnceOnly_v3_87()
end
function export:OnEnter_box_Player_Proximity_Monitor_143()
  local l0
  l0 = self.box_Player_Proximity_Monitor_143
  l0.TargetEntity = "9223372061714071678"
  l0.Radius = 140
end
function export:OnEnter_box_VehicleMonitor_v3_26()
  local l0
  l0 = self.box_VehicleMonitor_v3_26
  l0.Vehicle = self.Vehicle
  l0.NoMoveTime = 0.5
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_Player_Vehicle_Monitor_v2_25()
  local l0
  l0 = self.box_Player_Vehicle_Monitor_v2_25
  l0.CheckNow = 1
end
function export:OnEnter_box_Mission_End_42()
  local l0
  l0 = self.box_Mission_End_42
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S03M010_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_TriggerMonitor_v2_12()
  local l0
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = "9223372071677980293"
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_TutorialController_53()
  local l0
  l0 = self.box_TutorialController_53
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Notification010",
    item = "Notification",
    id = "640629"
  }
  l0.Duration = -1
end
function export:OnEnter_box_PhoneCommunicationController_5()
  local l0
  l0 = self.box_PhoneCommunicationController_5
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372069279195780"
end
function export:OnEnter_box_OnceOnly_v3_78()
end
function export:OnEnter_box_MultipleOR_27()
end
function export:OnEnter_box_OnceOnly_v3_144()
end
function export:OnEnter_box_MultipleOR_33()
end
function export:OnEnter_box_MultipleOR_75()
end
function export:OnEnter_box_Reach_Gameplay_47()
  local l0
  l0 = self.box_Reach_Gameplay_47
  l0.Entity = "9223372046253602529"
  l0.Entity_AreaRadius = 4
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_Multiple_AND_41()
end
function export:OnEnter_box_OnceOnly_v3_150()
end
_compilerVersion = 4
