export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("domino/System/AISquadStateController.lua")
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/ChangeGraphicKitModel.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/FelonySoundController.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/InstallPackageMonitor.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerStateController.lua")
  cbox:RegisterBox("domino/System/PlayerBlurPostFxController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProfilerMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/ReinforcementCallController.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BeachParty.S01_M010_CIN_BeachParty_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BigData.S01_M010_CIN_BigData_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BlumeIntruder.S01_M010_CIN_BlumeIntruder_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_cin_intro.S01_M010_CIN_Intro_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_SCR.S01_M010_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SendTrackingEvent.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TargetTagController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/482010863.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/133398520.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/341451500.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1791754925.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/567106130.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3538516433.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1249263752.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/862412337.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1866421549.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1198424637.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3465896214.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3703769483.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1048812891.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/166028691.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/29153627.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/396428598.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3506465663.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1566440503.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3677950031.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2045998479.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/532228594.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1870534600.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3980445112.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4162327257.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2105815314.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3256541240.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/488045842.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2962986814.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/71783185.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1040363428.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4003496994.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2161710103.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S01M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.EnemyTutorial_01 = nil
  self.EnemyTutorial_02 = nil
  self.Thrown_Zapper = nil
  self.ItemSelected = 0
  self.Enemy_03 = nil
  self.EnemyTutorial_03 = nil
  self.EnemyGameplay_01 = nil
  self.EnemyGameplay_02 = nil
  self.EnemyGameplay_04 = nil
  self.EnemyGameplay_03 = nil
  self.EnemyGameplay_05 = nil
  self.EnemyGameplay_06 = nil
  self.EnemyGameplay_07 = nil
  self.EnemyGameplay_08 = nil
  self.RCToy = nil
  self.RCDrone = nil
  self.S01M010_AiList = {}
  self.EnemyGameplay_09 = nil
  self.EnemyTutorial_04 = nil
  self.TaserTutoGuards = {}
  self.EnemyTutorial_05 = nil
  self.EnemyTutorial_06 = nil
  self.EnemyTutorial_07 = nil
  self.WipeProfileGuards = {}
  self.VentHackableDisable = {}
  self.DoorsHackable = {}
  self.JunctionBoxes = {}
  self._4thFloorDoors = {}
  self.ServerWipeDoor = {}
  self.EnemyTutorial_08 = nil
  self.TakedownTutorial = {}
  self.EnemyTutorial_Exterior_01 = nil
  self.EnemyTutorial_Exterior_02 = nil
  self.EnemyExterior = {}
  self.Enemy_Tutorial_Exterior_03 = nil
  self.CourtYard_World_Entities = {}
  self.EnemyTutorial_09 = nil
  self.EnemyTutorial_10 = nil
  self.CameraAccessCode = {}
  self.AccessDoorDisable = {}
  self.EnemyGameplay_10 = nil
  self.allNpcs = {}
  self.kmcList = {}
  self.kmcData = nil
  self.MainRoom_Doors = {}
  self.Maindoor = nil
  self.box_CLOController_v2_49 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_49
  l0._graph = self
  l0._name = "box_CLOController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|10791714"
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_49_OnUserInPlace
  self.box_HackableController_v2_74 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_74
  l0._graph = self
  l0._name = "box_HackableController_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|26548581"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_74_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_585 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_585
  l0._graph = self
  l0._name = "box_TutorialController_585"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|30155276"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_585_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_383 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_383
  l0._graph = self
  l0._name = "box_MultipleOR_383"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|37664631"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_383_Out
  self.box_S01M010_Weather_140 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_140
  l0._graph = self
  l0._name = "box_S01M010_Weather_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|44111035"
  l0.Out = self.f_box_S01M010_Weather_140_Out
  self.box_Hackable_Door_Controller_602 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_602
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_602"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|49251063"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_602_AiAccessDisabled
  self.box_PlayDialog_v2_23 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_23
  l0._graph = self
  l0._name = "box_PlayDialog_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|57041979"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_23_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Network_Surfing_Controller_264 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_264
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|59607606"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  self.box_AISquadStateController_224 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_224
  l0._graph = self
  l0._name = "box_AISquadStateController_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|60440127"
  l0.WanderSet = self.f_box_AISquadStateController_224_WanderSet
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_MissionLayer_v2_331 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_331
  l0._graph = self
  l0._name = "box_MissionLayer_v2_331"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|65642954"
  l0.Loaded = self.f_box_MissionLayer_v2_331_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_S01_M010_CIN_Intro_Main_627 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_cin_intro.S01_M010_CIN_Intro_Main.debug.lua")
  l0 = self.box_S01_M010_CIN_Intro_Main_627
  l0._graph = self
  l0._name = "box_S01_M010_CIN_Intro_Main_627"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|69247971"
  l0.Out = self.f_box_S01_M010_CIN_Intro_Main_627_Out
  l0.TS_Sitara = self.f_box_S01_M010_CIN_Intro_Main_627_TS_Sitara
  self.box_TutorialController_75 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_75
  l0._graph = self
  l0._name = "box_TutorialController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|69287477"
  l0.Out = self.f_box_TutorialController_75_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_560 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_560
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_560"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|72079079"
  l0.Enabled = self.f_box_TriggerMonitor_v2_560_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_560_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_560_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_S01_M010_CIN_BigData_Main_275 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BigData.S01_M010_CIN_BigData_Main.debug.lua")
  l0 = self.box_S01_M010_CIN_BigData_Main_275
  l0._graph = self
  l0._name = "box_S01_M010_CIN_BigData_Main_275"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|73045540"
  l0.Finished = self.f_box_S01_M010_CIN_BigData_Main_275_Finished
  l0.Out = self.f_box_S01_M010_CIN_BigData_Main_275_Out
  self.box_MissionCheckpointReach_340 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_340
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_340"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|74205167"
  l0.Out = self.f_box_MissionCheckpointReach_340_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_525 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_525
  l0._graph = self
  l0._name = "box_HackableController_v2_525"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|74708981"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_525_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S01M010_Weather_103 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_103
  l0._graph = self
  l0._name = "box_S01M010_Weather_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|84016400"
  l0.Out = self.f_box_S01M010_Weather_103_Out
  self.box_CLOController_412 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_412
  l0._graph = self
  l0._name = "box_CLOController_412"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|120194696"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_412_OnUserInPlace
  self.box_PlayDialog_v2_109 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_109
  l0._graph = self
  l0._name = "box_PlayDialog_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|127853616"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_343 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_343
  l0._graph = self
  l0._name = "box_CinematicPrep_343"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|128189717"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_343_PostOut
  self.box_s01_M010_BigData_GiantScreen_Main_108 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_108
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|129232336"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_108_Started
  l0.Ended = DummyFunction
  self.box_HackableController_v2_182 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_182
  l0._graph = self
  l0._name = "box_HackableController_v2_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|130854617"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_182_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_s01_M010_BigData_GiantScreen_Main_573 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_573
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_573"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|143111858"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_573_Started
  l0.Ended = DummyFunction
  self.box_ListWriter_178 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_178
  l0._graph = self
  l0._name = "box_ListWriter_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|143715185"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_178_Added
  l0.Removed = self.f_box_ListWriter_178_Removed
  l0.Out = self.f_box_ListWriter_178_Out
  self.box_OnceOnly_v3_262 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_262
  l0._graph = self
  l0._name = "box_OnceOnly_v3_262"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|152091581"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_262_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_43 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_43
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|153253017"
  l0.Out = self.f_box_MissionMessageController_v3_43_Out
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_513 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_513
  l0._graph = self
  l0._name = "box_TutorialController_513"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|158401026"
  l0.Out = self.f_box_TutorialController_513_Out
  l0.DisplayRequested = self.f_box_TutorialController_513_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_513_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|183372194"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_Interact_Gameplay_472 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_472
  l0._graph = self
  l0._name = "box_Interact_Gameplay_472"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|190600257"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_472_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_472_Interacted
  self.box_MultipleOR_313 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_313
  l0._graph = self
  l0._name = "box_MultipleOR_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|202688672"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_313_Out
  self.box_Hackable_Door_Controller_610 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_610
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_610"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|205963026"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_610_AiAccessDisabled
  self.box_Timer_v2_203 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_203
  l0._graph = self
  l0._name = "box_Timer_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|206145612"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_203_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_261 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_261
  l0._graph = self
  l0._name = "box_Timer_v2_261"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|208455603"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_261_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_131 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_131
  l0._graph = self
  l0._name = "box_HackableController_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|209161367"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_131_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListWriter_50 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_50
  l0._graph = self
  l0._name = "box_ListWriter_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|226672734"
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_box_ListWriter_50_Added
  l0.Removed = self.f_box_ListWriter_50_Removed
  l0.Out = self.f_box_ListWriter_50_Out
  self.box_Intel_Controller_199 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_199
  l0._graph = self
  l0._name = "box_Intel_Controller_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|227455693"
  l0.Enabled = self.f_box_Intel_Controller_199_Enabled
  l0.Disabled = DummyFunction
  self.box_Download_Gameplay_643 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_643
  l0._graph = self
  l0._name = "box_Download_Gameplay_643"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|235557814"
  l0.Started = self.f_box_Download_Gameplay_643_Started
  l0.Stopped = self.f_box_Download_Gameplay_643_Stopped
  l0.DownloadCompleted = self.f_box_Download_Gameplay_643_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_HackableController_v2_499 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_499
  l0._graph = self
  l0._name = "box_HackableController_v2_499"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|237245457"
  l0.Enabled = self.f_box_HackableController_v2_499_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_126 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_126
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|246572950"
  l0.Out = self.f_box_MissionMessageController_v3_126_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_187 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_187
  l0._graph = self
  l0._name = "box_ListWriter_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|247414874"
  l0._DynamicAnchors = {Data = 15}
  l0.Added = self.f_box_ListWriter_187_Added
  l0.Removed = self.f_box_ListWriter_187_Removed
  l0.Out = self.f_box_ListWriter_187_Out
  self.box_ListWriter_622 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_622
  l0._graph = self
  l0._name = "box_ListWriter_622"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|249275361"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_622_Added
  l0.Removed = self.f_box_ListWriter_622_Removed
  l0.Out = self.f_box_ListWriter_622_Out
  self.box_PlayDialog_v2_53 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_53
  l0._graph = self
  l0._name = "box_PlayDialog_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|250410956"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_53_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_29 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_29
  l0._graph = self
  l0._name = "box_PlayDialog_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|264730403"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_29_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_467 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_467
  l0._graph = self
  l0._name = "box_PlaySound_v2_467"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|268457564"
  l0.Out = self.f_box_PlaySound_v2_467_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_289 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_289
  l0._graph = self
  l0._name = "box_HackableController_v2_289"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|270164041"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_289_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_447 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_447
  l0._graph = self
  l0._name = "box_TutorialController_447"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|275815610"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_447_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_154 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_154
  l0._graph = self
  l0._name = "box_ListWriter_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|277216892"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_154_Added
  l0.Removed = self.f_box_ListWriter_154_Removed
  l0.Out = self.f_box_ListWriter_154_Out
  self.box_ListWriter_181 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_181
  l0._graph = self
  l0._name = "box_ListWriter_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|278003222"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_181_Added
  l0.Removed = self.f_box_ListWriter_181_Removed
  l0.Out = self.f_box_ListWriter_181_Out
  self.box_RewardController_v3_223 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_223
  l0._graph = self
  l0._name = "box_RewardController_v3_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|287878814"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = self.f_box_RewardController_v3_223_RewardsRegistered
  l0.RewardsExecuted = DummyFunction
  self.box_CLOController_420 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_420
  l0._graph = self
  l0._name = "box_CLOController_420"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|291641432"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_420_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_209 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_209
  l0._graph = self
  l0._name = "box_Timer_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|303156345"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_209_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_34 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_34
  l0._graph = self
  l0._name = "box_PlaySound_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|308036852"
  l0.Out = self.f_box_PlaySound_v2_34_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_577 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_577
  l0._graph = self
  l0._name = "box_HackableController_v2_577"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|311414132"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_577_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySequence_v5_524 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_524
  l0._graph = self
  l0._name = "box_PlaySequence_v5_524"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|311579804"
  l0._DynamicAnchors = {
    SPOut = {"Stopping"}
  }
  l0.Started = self.f_box_PlaySequence_v5_524_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_524_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_524_Finished
  l0.SPOut.Stopping = DummyFunction
  self.box_Moveable_Entity_Monitor_247 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_247
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|312271375"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_247_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_247_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_CLOController_v2_80 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_80
  l0._graph = self
  l0._name = "box_CLOController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|313456004"
  l0._DynamicAnchors = {CLO = 8, UserID = 8}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_80_OnUserInPlace
  self.box_ListWriter_494 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_494
  l0._graph = self
  l0._name = "box_ListWriter_494"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|319454266"
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_box_ListWriter_494_Added
  l0.Removed = self.f_box_ListWriter_494_Removed
  l0.Out = self.f_box_ListWriter_494_Out
  self.box_HackableController_v2_576 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_576
  l0._graph = self
  l0._name = "box_HackableController_v2_576"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|319962098"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_576_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ReinforcementSystemMonitor_v2_297 = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_297
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|320811545"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_297_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_297_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_Multiple_AND_63 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_63
  l0._graph = self
  l0._name = "box_Multiple_AND_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|322722988"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_63_Out
  self.box_ReinforcementCallController_370 = cbox:CreateBox("domino/System/ReinforcementCallController.lua")
  l0 = self.box_ReinforcementCallController_370
  l0._graph = self
  l0._name = "box_ReinforcementCallController_370"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|323258898"
  l0.Out = DummyFunction
  l0.EnabledCallers = self.f_box_ReinforcementCallController_370_EnabledCallers
  l0.DisabledCallers = DummyFunction
  l0.Registered = self.f_box_ReinforcementCallController_370_Registered
  l0.Unregistered = DummyFunction
  self.box_TutorialController_552 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_552
  l0._graph = self
  l0._name = "box_TutorialController_552"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|327329057"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_552_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_28 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_28
  l0._graph = self
  l0._name = "box_PlayDialog_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|336016788"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_28_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_252 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_252
  l0._graph = self
  l0._name = "box_MultipleOR_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|338981954"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_252_Out
  self.box_AISquadStateController_119 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_119
  l0._graph = self
  l0._name = "box_AISquadStateController_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|345754520"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_119_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_ListWriter_26 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_26
  l0._graph = self
  l0._name = "box_ListWriter_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|346386186"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_26_Added
  l0.Removed = self.f_box_ListWriter_26_Removed
  l0.Out = self.f_box_ListWriter_26_Out
  self.box_MapPointController_v4_157 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_157
  l0._graph = self
  l0._name = "box_MapPointController_v4_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|351164046"
  l0.Shown = self.f_box_MapPointController_v4_157_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Assign_Patrol_Controller_v2_169 = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self.box_Assign_Patrol_Controller_v2_169
  l0._graph = self
  l0._name = "box_Assign_Patrol_Controller_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|358843695"
  l0.Out = DummyFunction
  l0.Assigned = self.f_box_Assign_Patrol_Controller_v2_169_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self.box_ListWriter_418 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_418
  l0._graph = self
  l0._name = "box_ListWriter_418"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|360998745"
  l0._DynamicAnchors = {Data = 15}
  l0.Added = self.f_box_ListWriter_418_Added
  l0.Removed = self.f_box_ListWriter_418_Removed
  l0.Out = self.f_box_ListWriter_418_Out
  self.box_MultipleOR_228 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_228
  l0._graph = self
  l0._name = "box_MultipleOR_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|371773148"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_228_Out
  self.box_MultipleOR_333 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_333
  l0._graph = self
  l0._name = "box_MultipleOR_333"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|380882073"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_333_Out
  self.box_PlayDialog_v2_296 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_296
  l0._graph = self
  l0._name = "box_PlayDialog_v2_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|385895154"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_296_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_77 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_77
  l0._graph = self
  l0._name = "box_PlaySound_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|387529069"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Intel_Controller_196 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_196
  l0._graph = self
  l0._name = "box_Intel_Controller_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|398800387"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_196_Disabled
  self.box_HackableController_v2_534 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_534
  l0._graph = self
  l0._name = "box_HackableController_v2_534"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|399635993"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_534_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Target_Tag_Controller_422 = cbox:CreateBox("domino/System/TargetTagController.lua")
  l0 = self.box_Target_Tag_Controller_422
  l0._graph = self
  l0._name = "box_Target_Tag_Controller_422"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|402999551"
  l0.Out = DummyFunction
  l0.TagAdded = self.f_box_Target_Tag_Controller_422_TagAdded
  l0.ErrorAdding = DummyFunction
  l0.TagRemoved = DummyFunction
  l0.ErrorRemoving = DummyFunction
  l0.TaggingEnabled = DummyFunction
  l0.TaggingDisabled = DummyFunction
  l0.ProfilerlessTaggingEnabled = DummyFunction
  l0.ProfilerlessTaggingDisabled = DummyFunction
  l0.TaggerComponentEnabled = DummyFunction
  l0.TaggerComponentDisabled = DummyFunction
  self.box_ReinforcementCallController_495 = cbox:CreateBox("domino/System/ReinforcementCallController.lua")
  l0 = self.box_ReinforcementCallController_495
  l0._graph = self
  l0._name = "box_ReinforcementCallController_495"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|403576415"
  l0.Out = DummyFunction
  l0.EnabledCallers = self.f_box_ReinforcementCallController_495_EnabledCallers
  l0.DisabledCallers = DummyFunction
  l0.Registered = self.f_box_ReinforcementCallController_495_Registered
  l0.Unregistered = DummyFunction
  self.box_CLOController_609 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_609
  l0._graph = self
  l0._name = "box_CLOController_609"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|423198327"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_609_OnUserInPlace
  self.box_TutorialController_392 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_392
  l0._graph = self
  l0._name = "box_TutorialController_392"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|423539292"
  l0.Out = self.f_box_TutorialController_392_Out
  l0.DisplayRequested = self.f_box_TutorialController_392_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_219 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_219
  l0._graph = self
  l0._name = "box_TutorialController_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|426569789"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_219_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_219_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_338 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_338
  l0._graph = self
  l0._name = "box_MultipleOR_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|438001717"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_338_Out
  self.box_S01M010_Weather_173 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_173
  l0._graph = self
  l0._name = "box_S01M010_Weather_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|453001380"
  l0.Out = self.f_box_S01M010_Weather_173_Out
  self.box_CLOController_v2_214 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_214
  l0._graph = self
  l0._name = "box_CLOController_v2_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|458186195"
  l0._DynamicAnchors = {CLO = 11, UserID = 11}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_214_OnUserInPlace
  self.box_HackableController_v2_146 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_146
  l0._graph = self
  l0._name = "box_HackableController_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|486635439"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_146_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_311 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_311
  l0._graph = self
  l0._name = "box_MissionLayer_v2_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|492860592"
  l0.Loaded = self.f_box_MissionLayer_v2_311_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_579 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_579
  l0._graph = self
  l0._name = "box_HackableController_v2_579"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|499282226"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_579_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_566 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_566
  l0._graph = self
  l0._name = "box_PlaySound_v2_566"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|501933136"
  l0.Out = self.f_box_PlaySound_v2_566_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_339 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_339
  l0._graph = self
  l0._name = "box_MissionLayer_v2_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|505190257"
  l0.Loaded = self.f_box_MissionLayer_v2_339_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PawnHealthMonitor_v3_239 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_239
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|512806172"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_239_Enabled
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_239_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_239_Killed
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_239_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_PlaySound_v2_468 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_468
  l0._graph = self
  l0._name = "box_PlaySound_v2_468"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|517800842"
  l0.Out = self.f_box_PlaySound_v2_468_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_130 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_130
  l0._graph = self
  l0._name = "box_ListWriter_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|518165288"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_130_Added
  l0.Removed = self.f_box_ListWriter_130_Removed
  l0.Out = self.f_box_ListWriter_130_Out
  self.box_CLOController_389 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_389
  l0._graph = self
  l0._name = "box_CLOController_389"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|518774505"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_389_OnUserInPlace
  self.box_PlayDialog_v2_94 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_94
  l0._graph = self
  l0._name = "box_PlayDialog_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|522230289"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_112 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_112
  l0._graph = self
  l0._name = "box_HackableController_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|528701237"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_112_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_302 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_302
  l0._graph = self
  l0._name = "box_HackableController_v2_302"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|534058603"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_302_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Interact_Gameplay_45 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_45
  l0._graph = self
  l0._name = "box_Interact_Gameplay_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|541278134"
  l0.Started = self.f_box_Interact_Gameplay_45_Started
  l0.Stopped = self.f_box_Interact_Gameplay_45_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_45_Interacted
  self.box_MissionController_v4_8 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_8
  l0._graph = self
  l0._name = "box_MissionController_v4_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|541749408"
  self.box_PlayDialog_v2_7 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_7
  l0._graph = self
  l0._name = "box_PlayDialog_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|543932587"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_7_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_250 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_250
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|544371364"
  l0.Out = self.f_box_MissionCheckpointReach_250_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_321 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_321
  l0._graph = self
  l0._name = "box_CinematicPrep_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|558474153"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_321_PostOut
  self.box_EntityLoadingMonitor_232 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_232
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|559887332"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_232_AllLoaded
  self.box_Hackable_Door_Controller_605 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_605
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_605"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|562043381"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_605_AiAccessDisabled
  self.box_AISquadStateController_505 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_505
  l0._graph = self
  l0._name = "box_AISquadStateController_505"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|566909702"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_box_AISquadStateController_505_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_MissionLayer_v2_423 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_423
  l0._graph = self
  l0._name = "box_MissionLayer_v2_423"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|569147540"
  l0.Loaded = self.f_box_MissionLayer_v2_423_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlayDialog_v2_409 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_409
  l0._graph = self
  l0._name = "box_PlayDialog_v2_409"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|570144280"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_409_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_506 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_506
  l0._graph = self
  l0._name = "box_PlaySound_v2_506"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|576086112"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_656 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_656
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_656"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|576661302"
  l0.Out = self.f_box_MissionMessageController_v3_656_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_530 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_530
  l0._graph = self
  l0._name = "box_OnceOnly_v3_530"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|578525176"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_530_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_206 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_206
  l0._graph = self
  l0._name = "box_PlaySound_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|579045775"
  l0.Out = self.f_box_PlaySound_v2_206_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S01_M010_CIN_BeachParty_Main_96 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BeachParty.S01_M010_CIN_BeachParty_Main.debug.lua")
  l0 = self.box_S01_M010_CIN_BeachParty_Main_96
  l0._graph = self
  l0._name = "box_S01_M010_CIN_BeachParty_Main_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|586585960"
  l0.Out = self.f_box_S01_M010_CIN_BeachParty_Main_96_Out
  l0.VentilationShaftEscape_CIN_Finish = self.f_box_S01_M010_CIN_BeachParty_Main_96_VentilationShaftEscape_CIN_Finish
  l0.VentilationShaftEscape_CIN_Started = self.f_box_S01_M010_CIN_BeachParty_Main_96_VentilationShaftEscape_CIN_Started
  self.box_Hackable_Door_Controller_606 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_606
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_606"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|593668373"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_606_AiAccessDisabled
  self.box_ListForEach_221 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_221
  l0._graph = self
  l0._name = "box_ListForEach_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|600678952"
  l0.Started = self.f_box_ListForEach_221_Started
  l0.Stopped = self.f_box_ListForEach_221_Stopped
  l0.ForEach = self.f_box_ListForEach_221_ForEach
  l0.GotNext = self.f_box_ListForEach_221_GotNext
  l0.EndOfList = self.f_box_ListForEach_221_EndOfList
  l0.GotFirst = DummyFunction
  self.box_ListWriter_85 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_85
  l0._graph = self
  l0._name = "box_ListWriter_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|604123415"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_85_Added
  l0.Removed = self.f_box_ListWriter_85_Removed
  l0.Out = self.f_box_ListWriter_85_Out
  self.box_TriggerMonitor_v2_117 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_117
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|611773998"
  l0.Enabled = self.f_box_TriggerMonitor_v2_117_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_117_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_117_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_40 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_40
  l0._graph = self
  l0._name = "box_PlaySound_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|615561824"
  l0.Out = self.f_box_PlaySound_v2_40_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_170 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_170
  l0._graph = self
  l0._name = "box_PlayDialog_v2_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|617258219"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_ListWriter_194 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_194
  l0._graph = self
  l0._name = "box_ListWriter_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|618534797"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_194_Added
  l0.Removed = self.f_box_ListWriter_194_Removed
  l0.Out = self.f_box_ListWriter_194_Out
  self.box_CinematicPrep_287 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_287
  l0._graph = self
  l0._name = "box_CinematicPrep_287"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|618767606"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_287_PostOut
  self.box_MissionMessageController_v3_68 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_68
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|629278063"
  l0.Out = self.f_box_MissionMessageController_v3_68_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_639 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_639
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_639"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|630225465"
  l0.Out = self.f_box_MissionMessageController_v3_639_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_337 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_337
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|649931327"
  l0.Out = self.f_box_MissionMessageController_v3_337_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_234 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_234
  l0._graph = self
  l0._name = "box_MapPointController_v4_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|653784601"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_234_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_249 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_249
  l0._graph = self
  l0._name = "box_MultipleOR_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|662306951"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_249_Out
  self.box_ListWriter_197 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_197
  l0._graph = self
  l0._name = "box_ListWriter_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|673605907"
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_box_ListWriter_197_Added
  l0.Removed = self.f_box_ListWriter_197_Removed
  l0.Out = self.f_box_ListWriter_197_Out
  self.box_s01_M010_BigData_GiantScreen_Main_238 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_238
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|675496000"
  l0.Started = DummyFunction
  l0.Ended = self.f_box_s01_M010_BigData_GiantScreen_Main_238_Ended
  self.box_MissionMessageController_v3_93 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_93
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|703951864"
  l0.Out = self.f_box_MissionMessageController_v3_93_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_457 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_457
  l0._graph = self
  l0._name = "box_HackableController_v2_457"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|704412943"
  l0.Enabled = self.f_box_HackableController_v2_457_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_476 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_476
  l0._graph = self
  l0._name = "box_OnceOnly_v3_476"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|706965198"
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_box_OnceOnly_v3_476_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_208 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_208
  l0._graph = self
  l0._name = "box_Timer_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|708596089"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_208_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_22 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_22
  l0._graph = self
  l0._name = "box_PlayDialog_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|709042859"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_22_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_v2_58 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_58
  l0._graph = self
  l0._name = "box_CLOController_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|711208799"
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_58_OnUserInPlace
  self.box_CLOController_v2_189 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_189
  l0._graph = self
  l0._name = "box_CLOController_v2_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|711970598"
  l0._DynamicAnchors = {CLO = 11, UserID = 11}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_189_OnUserInPlace
  self.box_OnceOnly_v3_242 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_242
  l0._graph = self
  l0._name = "box_OnceOnly_v3_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|716059460"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_242_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_114 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_114
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|718196406"
  l0.Out = self.f_box_MissionMessageController_v3_114_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_41 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_41
  l0._graph = self
  l0._name = "box_CinematicPrep_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|718719409"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_41_PostOut
  self.box_ListWriter_166 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_166
  l0._graph = self
  l0._name = "box_ListWriter_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|724653016"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_166_Added
  l0.Removed = self.f_box_ListWriter_166_Removed
  l0.Out = self.f_box_ListWriter_166_Out
  self.box_PlayDialog_v2_60 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_60
  l0._graph = self
  l0._name = "box_PlayDialog_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|749569644"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_60_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_578 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_578
  l0._graph = self
  l0._name = "box_HackableController_v2_578"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|752551864"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_578_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_518 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_518
  l0._graph = self
  l0._name = "box_CinematicPrep_518"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|770339782"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_518_PostOut
  self.box_Hackable_Monitor_588 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_588
  l0._graph = self
  l0._name = "box_Hackable_Monitor_588"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|777103079"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_588_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_TutorialController_356 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_356
  l0._graph = self
  l0._name = "box_TutorialController_356"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|779717896"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_356_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_356_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_604 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_604
  l0._graph = self
  l0._name = "box_HackableController_v2_604"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|783513694"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_604_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_257 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_257
  l0._graph = self
  l0._name = "box_OnceOnly_v3_257"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|785033861"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_257_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_624 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_624
  l0._graph = self
  l0._name = "box_CLOController_624"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|787983782"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_624_OnUserInPlace
  self.box_CinematicPrep_309 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_309
  l0._graph = self
  l0._name = "box_CinematicPrep_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|788258209"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_309_PostOut
  self.box_MissionCheckpointReach_501 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_501
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_501"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|796697613"
  l0.Out = self.f_box_MissionCheckpointReach_501_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_20 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_20
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|800666007"
  l0.Out = self.f_box_MissionCheckpointReach_20_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_AISquadStateController_587 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_587
  l0._graph = self
  l0._name = "box_AISquadStateController_587"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|835333306"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_587_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_HackableController_v2_544 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_544
  l0._graph = self
  l0._name = "box_HackableController_v2_544"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|836696216"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_544_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Teleport_To_SpawnPoint_62 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_62
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|842516654"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = DummyFunction
  self.box_ListWriter_171 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_171
  l0._graph = self
  l0._name = "box_ListWriter_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|849294740"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_171_Added
  l0.Removed = self.f_box_ListWriter_171_Removed
  l0.Out = self.f_box_ListWriter_171_Out
  self.box_s01_M010_BigData_GiantScreen_Main_113 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_113
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|854245226"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_113_Started
  l0.Ended = DummyFunction
  self.box_MissionMessageController_v3_129 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_129
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|860906452"
  l0.Out = self.f_box_MissionMessageController_v3_129_Out
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_549 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_549
  l0._graph = self
  l0._name = "box_TutorialController_549"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|868288669"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_42 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_42
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|870672688"
  l0.Out = self.f_box_MissionMessageController_v3_42_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_349 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_349
  l0._graph = self
  l0._name = "box_MapPointController_v4_349"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|872494071"
  l0.Shown = self.f_box_MapPointController_v4_349_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOController_v2_52 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_52
  l0._graph = self
  l0._name = "box_CLOController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|887071779"
  l0._DynamicAnchors = {CLO = 8, UserID = 8}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_52_OnUserInPlace
  self.box_MissionZone_148 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_148
  l0._graph = self
  l0._name = "box_MissionZone_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|889363403"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_PlaySound_v2_180 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_180
  l0._graph = self
  l0._name = "box_PlaySound_v2_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|897025971"
  l0.Out = self.f_box_PlaySound_v2_180_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_504 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_504
  l0._graph = self
  l0._name = "box_MultipleOR_504"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|903380154"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_504_Out
  self.box_MissionCheckpointReach_324 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_324
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|905716327"
  l0.Out = self.f_box_MissionCheckpointReach_324_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_HackableController_v2_193 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_193
  l0._graph = self
  l0._name = "box_HackableController_v2_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|908948896"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_193_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_282 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_282
  l0._graph = self
  l0._name = "box_HackableController_v2_282"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|913310570"
  l0.Enabled = self.f_box_HackableController_v2_282_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Restore_Mission_SubObjectives_128 = cbox:CreateBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.debug.lua")
  l0 = self.box_Restore_Mission_SubObjectives_128
  l0._graph = self
  l0._name = "box_Restore_Mission_SubObjectives_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|913434390"
  l0.Restored = self.f_box_Restore_Mission_SubObjectives_128_Restored
  self.box_TriggerMonitor_v2_584 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_584
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_584"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|921234678"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_584_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_584_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_312 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_312
  l0._graph = self
  l0._name = "box_PlayDialog_v2_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|947861493"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_312_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_288 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_288
  l0._graph = self
  l0._name = "box_HackableController_v2_288"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|955007030"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_288_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_580 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_580
  l0._graph = self
  l0._name = "box_HackableController_v2_580"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|956375883"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_580_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S01M010_Weather_465 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_465
  l0._graph = self
  l0._name = "box_S01M010_Weather_465"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|962807662"
  l0.Out = self.f_box_S01M010_Weather_465_Out
  self.box_TutorialController_421 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_421
  l0._graph = self
  l0._name = "box_TutorialController_421"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|975731858"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_421_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_421_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_164 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_164
  l0._graph = self
  l0._name = "box_ListWriter_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|978040890"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_164_Added
  l0.Removed = self.f_box_ListWriter_164_Removed
  l0.Out = self.f_box_ListWriter_164_Out
  self.box_TutorialController_557 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_557
  l0._graph = self
  l0._name = "box_TutorialController_557"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|983681965"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Multiple_AND_192 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_192
  l0._graph = self
  l0._name = "box_Multiple_AND_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|984113028"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_192_Out
  self.box_InstallPackageMonitor_101 = cbox:CreateBox("domino/System/InstallPackageMonitor.lua")
  l0 = self.box_InstallPackageMonitor_101
  l0._graph = self
  l0._name = "box_InstallPackageMonitor_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|987700250"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InstallFinished = self.f_box_InstallPackageMonitor_101_InstallFinished
  l0.IsInstalling = DummyFunction
  l0.IsNotInstalling = DummyFunction
  self.box_AISquadStateController_106 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_106
  l0._graph = self
  l0._name = "box_AISquadStateController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|988201557"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_box_AISquadStateController_106_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_Intel_Controller_590 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_590
  l0._graph = self
  l0._name = "box_Intel_Controller_590"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|994183217"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_590_Disabled
  self.box_Moveable_Entity_Monitor_253 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_253
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1004995130"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_253_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MissionCheckpointReach_14 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_14
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1006296045"
  l0.Out = self.f_box_MissionCheckpointReach_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_TutorialController_76 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_76
  l0._graph = self
  l0._name = "box_TutorialController_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1009214670"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_76_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_76_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_210 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_210
  l0._graph = self
  l0._name = "box_PlayDialog_v2_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1019593129"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_210_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_35 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_35
  l0._graph = self
  l0._name = "box_PlayDialog_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1031715601"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TutorialController_558 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_558
  l0._graph = self
  l0._name = "box_TutorialController_558"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1032079700"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_329 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_329
  l0._graph = self
  l0._name = "box_PlaySound_v2_329"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1032475534"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_32 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_32
  l0._graph = self
  l0._name = "box_PlayDialog_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1032871313"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Profiler_Monitor_v2_440 = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self.box_Profiler_Monitor_v2_440
  l0._graph = self
  l0._name = "box_Profiler_Monitor_v2_440"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1040591834"
  l0.Enabled = self.f_box_Profiler_Monitor_v2_440_Enabled
  l0.Disabled = self.f_box_Profiler_Monitor_v2_440_Disabled
  l0.InfoDisplayed = self.f_box_Profiler_Monitor_v2_440_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self.box_Hackable_Door_Controller_614 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_614
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_614"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1041814527"
  l0.AiAccessEnabled = self.f_box_Hackable_Door_Controller_614_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self.box_PlaySound_v2_402 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_402
  l0._graph = self
  l0._name = "box_PlaySound_v2_402"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1045218207"
  l0.Out = self.f_box_PlaySound_v2_402_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Profiler_Monitor_v2_226 = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self.box_Profiler_Monitor_v2_226
  l0._graph = self
  l0._name = "box_Profiler_Monitor_v2_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1049295961"
  l0.Enabled = self.f_box_Profiler_Monitor_v2_226_Enabled
  l0.Disabled = self.f_box_Profiler_Monitor_v2_226_Disabled
  l0.InfoDisplayed = self.f_box_Profiler_Monitor_v2_226_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self.box_TriggerMonitor_v2_201 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_201
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1051825989"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_201_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_201_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_MapPointController_v4_46 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_46
  l0._graph = self
  l0._name = "box_MapPointController_v4_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1056747196"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_46_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_EntityLoadingMonitor_185 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_185
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1060083515"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_185_AllLoaded
  self.box_MultipleOR_463 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_463
  l0._graph = self
  l0._name = "box_MultipleOR_463"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1067045776"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_463_Out
  self.box_PlaySound_v2_535 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_535
  l0._graph = self
  l0._name = "box_PlaySound_v2_535"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1072114245"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_136 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_136
  l0._graph = self
  l0._name = "box_HackableController_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1074243749"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_136_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySequence_v5_581 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_581
  l0._graph = self
  l0._name = "box_PlaySequence_v5_581"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1076933682"
  l0._DynamicAnchors = {
    SPOut = {"Teleport", "GotoCover"}
  }
  l0.Started = self.f_box_PlaySequence_v5_581_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_581_Finished
  l0.SPOut.Teleport = self.f_box_PlaySequence_v5_581_SPOut__Teleport_
  l0.SPOut.GotoCover = self.f_box_PlaySequence_v5_581_SPOut__GotoCover_
  self.box_ReinforcementCallController_484 = cbox:CreateBox("domino/System/ReinforcementCallController.lua")
  l0 = self.box_ReinforcementCallController_484
  l0._graph = self
  l0._name = "box_ReinforcementCallController_484"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1079684745"
  l0.Out = DummyFunction
  l0.EnabledCallers = self.f_box_ReinforcementCallController_484_EnabledCallers
  l0.DisabledCallers = DummyFunction
  l0.Registered = self.f_box_ReinforcementCallController_484_Registered
  l0.Unregistered = DummyFunction
  self.box_Moveable_Entity_Monitor_244 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_244
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1084659345"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_244_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_244_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_HackableController_v2_115 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_115
  l0._graph = self
  l0._name = "box_HackableController_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1085181126"
  l0.Enabled = self.f_box_HackableController_v2_115_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_89 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_89
  l0._graph = self
  l0._name = "box_TutorialController_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1085344498"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_89_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_89_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Door_Controller_598 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_598
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_598"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1085449818"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_598_AiAccessDisabled
  self.box_Hackable_Door_Controller_613 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_613
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_613"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1088956383"
  l0.AiAccessEnabled = self.f_box_Hackable_Door_Controller_613_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self.box_Interact_Gameplay_191 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_191
  l0._graph = self
  l0._name = "box_Interact_Gameplay_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1097572860"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_191_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_191_Interacted
  self.box_s01_M010_BigData_GiantScreen_Main_528 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_528
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_528"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1114176200"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_528_Started
  l0.Ended = DummyFunction
  self.box_CLOController_v2_61 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_61
  l0._graph = self
  l0._name = "box_CLOController_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1118215615"
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_61_OnUserInPlace
  self.box_PlaySound_v2_204 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_204
  l0._graph = self
  l0._name = "box_PlaySound_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1121832653"
  l0.Out = self.f_box_PlaySound_v2_204_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_278 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_278
  l0._graph = self
  l0._name = "box_PlayDialog_v2_278"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1127863661"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_278_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_464 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_464
  l0._graph = self
  l0._name = "box_PlaySequence_v5_464"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1130044357"
  l0.Started = self.f_box_PlaySequence_v5_464_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_464_Finished
  self.box_Intel_Controller_589 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_589
  l0._graph = self
  l0._name = "box_Intel_Controller_589"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1137807563"
  l0.Enabled = self.f_box_Intel_Controller_589_Enabled
  l0.Disabled = DummyFunction
  self.box_HackableController_v2_554 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_554
  l0._graph = self
  l0._name = "box_HackableController_v2_554"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1141389781"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = self.f_box_HackableController_v2_554_ProfileReset
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_104 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_104
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1143483849"
  l0.Out = self.f_box_MissionMessageController_v3_104_Out
  l0.MessageCompleted = DummyFunction
  self.box_s01_M010_BigData_GiantScreen_Main_153 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_153
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1143694161"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_153_Started
  l0.Ended = DummyFunction
  self.box_AISquadStateController_599 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_599
  l0._graph = self
  l0._name = "box_AISquadStateController_599"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1147955920"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_599_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_HackableController_v2_188 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_188
  l0._graph = self
  l0._name = "box_HackableController_v2_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1148807725"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_188_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_515 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_515
  l0._graph = self
  l0._name = "box_MissionLayer_v2_515"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1152580226"
  l0.Loaded = self.f_box_MissionLayer_v2_515_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_48 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_48
  l0._graph = self
  l0._name = "box_Multiple_AND_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1154534462"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_48_Out
  self.box_ListWriter_36 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_36
  l0._graph = self
  l0._name = "box_ListWriter_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1155623023"
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_box_ListWriter_36_Added
  l0.Removed = self.f_box_ListWriter_36_Removed
  l0.Out = self.f_box_ListWriter_36_Out
  self.box_Hackable_Door_Controller_615 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_615
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_615"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1173633300"
  l0.AiAccessEnabled = self.f_box_Hackable_Door_Controller_615_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self.box_PlayDialog_v2_135 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_135
  l0._graph = self
  l0._name = "box_PlayDialog_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1184030343"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_135_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_348 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_348
  l0._graph = self
  l0._name = "box_MultipleOR_348"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1188629476"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_348_Out
  self.box_ListWriter_446 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_446
  l0._graph = self
  l0._name = "box_ListWriter_446"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1197934223"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_446_Added
  l0.Removed = self.f_box_ListWriter_446_Removed
  l0.Out = self.f_box_ListWriter_446_Out
  self.box_ListWriter_15 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_15
  l0._graph = self
  l0._name = "box_ListWriter_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1203385563"
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_box_ListWriter_15_Added
  l0.Removed = self.f_box_ListWriter_15_Removed
  l0.Out = self.f_box_ListWriter_15_Out
  self.box_PlayDialog_v2_156 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_156
  l0._graph = self
  l0._name = "box_PlayDialog_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1208725274"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_156_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Door_Controller_603 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_603
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_603"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1218249299"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_603_AiAccessDisabled
  self.box_PlaySound_v2_527 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_527
  l0._graph = self
  l0._name = "box_PlaySound_v2_527"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1221997767"
  l0.Out = self.f_box_PlaySound_v2_527_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S01M010_Weather_174 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_174
  l0._graph = self
  l0._name = "box_S01M010_Weather_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1225378551"
  l0.Out = self.f_box_S01M010_Weather_174_Out
  self.box_PawnHealthMonitor_v3_399 = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_399
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_399"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1227477267"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PawnHealthMonitor_v3_399_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = self.f_box_PawnHealthMonitor_v3_399_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_HackableController_v2_177 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_177
  l0._graph = self
  l0._name = "box_HackableController_v2_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1238290826"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_177_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_477 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_477
  l0._graph = self
  l0._name = "box_CLOController_477"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1238781033"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_477_OnUserInPlace
  self.box_HackableController_v2_456 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_456
  l0._graph = self
  l0._name = "box_HackableController_v2_456"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1239137024"
  l0.Enabled = self.f_box_HackableController_v2_456_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_92 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_92
  l0._graph = self
  l0._name = "box_Timer_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1259175801"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_92_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_212 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_212
  l0._graph = self
  l0._name = "box_CinematicPrep_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1261946229"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_212_PostOut
  self.box_HackableController_v2_5 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_5
  l0._graph = self
  l0._name = "box_HackableController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1262938345"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_5_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Intel_Controller_12 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_12
  l0._graph = self
  l0._name = "box_Intel_Controller_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1275935476"
  l0.Enabled = self.f_box_Intel_Controller_12_Enabled
  l0.Disabled = DummyFunction
  self.box_TutorialController_545 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_545
  l0._graph = self
  l0._name = "box_TutorialController_545"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1280837782"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_545_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_545_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_474 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_474
  l0._graph = self
  l0._name = "box_PlaySound_v2_474"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1281626892"
  l0.Out = self.f_box_PlaySound_v2_474_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_259 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_259
  l0._graph = self
  l0._name = "box_PlaySound_v2_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1282457159"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TutorialController_555 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_555
  l0._graph = self
  l0._name = "box_TutorialController_555"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1304029520"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_555_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_372 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_372
  l0._graph = self
  l0._name = "box_HackableController_v2_372"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1304538135"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_372_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_245 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_245
  l0._graph = self
  l0._name = "box_MultipleOR_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1305001995"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_245_Out
  self.box_TutorialController_546 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_546
  l0._graph = self
  l0._name = "box_TutorialController_546"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1307355578"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_box_TutorialController_546_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_176 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_176
  l0._graph = self
  l0._name = "box_ListWriter_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1316404410"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_176_Added
  l0.Removed = self.f_box_ListWriter_176_Removed
  l0.Out = self.f_box_ListWriter_176_Out
  self.box_InteractionScriptMonitor_v2_24 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_24
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1317685155"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_24_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_24_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_HackableController_v2_81 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_81
  l0._graph = self
  l0._name = "box_HackableController_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1318872237"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_81_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_323 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_323
  l0._graph = self
  l0._name = "box_CinematicPrep_323"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1323631055"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_323_PostOut
  self.box_HackableController_v2_167 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_167
  l0._graph = self
  l0._name = "box_HackableController_v2_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1342555446"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_167_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_379 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_379
  l0._graph = self
  l0._name = "box_TutorialController_379"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1346224074"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_box_TutorialController_379_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_285 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_285
  l0._graph = self
  l0._name = "box_MultipleOR_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1352902205"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_285_Out
  self.box_HackableController_v2_277 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_277
  l0._graph = self
  l0._name = "box_HackableController_v2_277"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1353495680"
  l0.Enabled = self.f_box_HackableController_v2_277_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionCheckpointReach_318 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_318
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_318"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1367996933"
  l0.Out = self.f_box_MissionCheckpointReach_318_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CLOController_516 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_516
  l0._graph = self
  l0._name = "box_CLOController_516"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1392839388"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_516_OnUserInPlace
  self.box_HackableController_v2_66 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_66
  l0._graph = self
  l0._name = "box_HackableController_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1423008294"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_66_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_575 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_575
  l0._graph = self
  l0._name = "box_HackableController_v2_575"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1425154922"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_575_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_391 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_391
  l0._graph = self
  l0._name = "box_Timer_v2_391"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1428819230"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_391_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_57 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_57
  l0._graph = self
  l0._name = "box_Hackable_Monitor_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1433981746"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_57_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_57_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_S01M010_Weather_97 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_97
  l0._graph = self
  l0._name = "box_S01M010_Weather_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1458648724"
  l0.Out = self.f_box_S01M010_Weather_97_Out
  self.box_ListWriter_110 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_110
  l0._graph = self
  l0._name = "box_ListWriter_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1460759622"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_110_Added
  l0.Removed = self.f_box_ListWriter_110_Removed
  l0.Out = self.f_box_ListWriter_110_Out
  self.box_MultipleOR_207 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_207
  l0._graph = self
  l0._name = "box_MultipleOR_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1464208268"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_207_Out
  self.box_HackableController_v2_165 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_165
  l0._graph = self
  l0._name = "box_HackableController_v2_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1468752101"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_165_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_415 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_415
  l0._graph = self
  l0._name = "box_TutorialController_415"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1474469337"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_box_TutorialController_415_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_s01_M010_BigData_GiantScreen_Main_118 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_118
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1482202874"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_118_Started
  l0.Ended = DummyFunction
  self.box_ListWriter_225 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_225
  l0._graph = self
  l0._name = "box_ListWriter_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1486443752"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_225_Added
  l0.Removed = self.f_box_ListWriter_225_Removed
  l0.Out = self.f_box_ListWriter_225_Out
  self.box_PlaySound_v2_184 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_184
  l0._graph = self
  l0._name = "box_PlaySound_v2_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1487683782"
  l0.Out = self.f_box_PlaySound_v2_184_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hack_Gameplay_88 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_88
  l0._graph = self
  l0._name = "box_Hack_Gameplay_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1498450110"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Hack_Gameplay_88_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_88_Hacked
  self.box_TutorialController_445 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_445
  l0._graph = self
  l0._name = "box_TutorialController_445"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1501167839"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_445_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_445_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_Moveable_Entity_Monitor_248 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_248
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1506918968"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_248_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_248_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_CLOController_v2_44 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_44
  l0._graph = self
  l0._name = "box_CLOController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1507892143"
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_44_OnUserInPlace
  self.box_HackableController_v2_450 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_450
  l0._graph = self
  l0._name = "box_HackableController_v2_450"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1511322635"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_450_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_292 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_292
  l0._graph = self
  l0._name = "box_MissionLayer_v2_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1524956748"
  l0.Loaded = self.f_box_MissionLayer_v2_292_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_123 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_123
  l0._graph = self
  l0._name = "box_CLOController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1531078482"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_123_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_TutorialController_59 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_59
  l0._graph = self
  l0._name = "box_TutorialController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1539116936"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_59_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_S01M010_Weather_139 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_139
  l0._graph = self
  l0._name = "box_S01M010_Weather_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1548179821"
  l0.Out = self.f_box_S01M010_Weather_139_Out
  self.box_PlaySound_v2_541 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_541
  l0._graph = self
  l0._name = "box_PlaySound_v2_541"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1555183177"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Moveable_Entity_Monitor_243 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_243
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1567295343"
  l0.Enabled = self.f_box_Moveable_Entity_Monitor_243_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_box_Moveable_Entity_Monitor_243_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_ListForEach_190 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_190
  l0._graph = self
  l0._name = "box_ListForEach_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1570276931"
  l0.Started = self.f_box_ListForEach_190_Started
  l0.Stopped = self.f_box_ListForEach_190_Stopped
  l0.ForEach = self.f_box_ListForEach_190_ForEach
  l0.GotNext = self.f_box_ListForEach_190_GotNext
  l0.EndOfList = self.f_box_ListForEach_190_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Profiler_Monitor_v2_375 = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self.box_Profiler_Monitor_v2_375
  l0._graph = self
  l0._name = "box_Profiler_Monitor_v2_375"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1576269118"
  l0.Enabled = self.f_box_Profiler_Monitor_v2_375_Enabled
  l0.Disabled = self.f_box_Profiler_Monitor_v2_375_Disabled
  l0.InfoDisplayed = self.f_box_Profiler_Monitor_v2_375_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self.box_TriggerMonitor_v2_387 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_387
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_387"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1582682575"
  l0.Enabled = self.f_box_TriggerMonitor_v2_387_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_387_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_387_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_S01M010_Weather_95 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.debug.lua")
  l0 = self.box_S01M010_Weather_95
  l0._graph = self
  l0._name = "box_S01M010_Weather_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1588341650"
  l0.Out = self.f_box_S01M010_Weather_95_Out
  self.box_CLOController_v2_3 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_3
  l0._graph = self
  l0._name = "box_CLOController_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1590090516"
  l0._DynamicAnchors = {CLO = 8, UserID = 8}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_3_OnUserInPlace
  self.box_HackableController_v2_107 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_107
  l0._graph = self
  l0._name = "box_HackableController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1598853275"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_107_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlayDialog_v2_134 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_134
  l0._graph = self
  l0._name = "box_PlayDialog_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1613335265"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_134_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_s01_M010_BigData_GiantScreen_Main_159 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_159
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1615810594"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_159_Started
  l0.Ended = DummyFunction
  self.box_HackableController_v2_132 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_132
  l0._graph = self
  l0._name = "box_HackableController_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1618332109"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_132_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AISquadStateController_508 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_508
  l0._graph = self
  l0._name = "box_AISquadStateController_508"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1619470942"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_box_AISquadStateController_508_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_PGTController_v2_509 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_509
  l0._graph = self
  l0._name = "box_PGTController_v2_509"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1620756295"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_509_AllSpawned
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_509_ScriptedAgentsAdded
  self.box_Profiler_Monitor_v2_507 = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self.box_Profiler_Monitor_v2_507
  l0._graph = self
  l0._name = "box_Profiler_Monitor_v2_507"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1635782024"
  l0.Enabled = self.f_box_Profiler_Monitor_v2_507_Enabled
  l0.Disabled = self.f_box_Profiler_Monitor_v2_507_Disabled
  l0.InfoDisplayed = self.f_box_Profiler_Monitor_v2_507_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self.box_MissionCheckpointReach_310 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_310
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1637639258"
  l0.Out = self.f_box_MissionCheckpointReach_310_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_503 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_503
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_503"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1644265723"
  l0.Out = self.f_box_MissionCheckpointReach_503_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Intel_Controller_414 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_414
  l0._graph = self
  l0._name = "box_Intel_Controller_414"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1648362478"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_414_Disabled
  self.box_Hackable_Monitor_374 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_374
  l0._graph = self
  l0._name = "box_Hackable_Monitor_374"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1648806234"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_374_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_374_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_390 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_390
  l0._graph = self
  l0._name = "box_Timer_v2_390"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1651837183"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_390_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_162 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_162
  l0._graph = self
  l0._name = "box_HackableController_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1651897576"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_162_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_478 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_478
  l0._graph = self
  l0._name = "box_PlaySound_v2_478"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1654512500"
  l0.Out = self.f_box_PlaySound_v2_478_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_124 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_124
  l0._graph = self
  l0._name = "box_PGTController_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1658021726"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_124_AllSpawned
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_124_ScriptedAgentsAdded
  self.box_ListForEach_163 = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self.box_ListForEach_163
  l0._graph = self
  l0._name = "box_ListForEach_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1661605084"
  l0.Started = self.f_box_ListForEach_163_Started
  l0.Stopped = self.f_box_ListForEach_163_Stopped
  l0.ForEach = self.f_box_ListForEach_163_ForEach
  l0.GotNext = self.f_box_ListForEach_163_GotNext
  l0.EndOfList = self.f_box_ListForEach_163_EndOfList
  l0.GotFirst = DummyFunction
  self.box_Timer_v2_82 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_82
  l0._graph = self
  l0._name = "box_Timer_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1665323995"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_82_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_417 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_417
  l0._graph = self
  l0._name = "box_Timer_v2_417"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1683829294"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Timer_v2_417_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_417_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_263 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_263
  l0._graph = self
  l0._name = "box_OnceOnly_v3_263"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1686116878"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_263_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_183 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_183
  l0._graph = self
  l0._name = "box_ListWriter_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1688014735"
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_box_ListWriter_183_Added
  l0.Removed = self.f_box_ListWriter_183_Removed
  l0.Out = self.f_box_ListWriter_183_Out
  self.box_TriggerMonitor_v2_419 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_419
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_419"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1691826766"
  l0.Enabled = self.f_box_TriggerMonitor_v2_419_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_419_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_419_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_377 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_377
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_377"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1700836056"
  l0.Enabled = self.f_box_TriggerMonitor_v2_377_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_377_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_377_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_HackableController_v2_227 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_227
  l0._graph = self
  l0._name = "box_HackableController_v2_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1714552143"
  l0.Enabled = self.f_box_HackableController_v2_227_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_102 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_102
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1718138657"
  l0.Out = self.f_box_MissionMessageController_v3_102_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_122 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_122
  l0._graph = self
  l0._name = "box_HackableController_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1723699752"
  l0.Enabled = self.f_box_HackableController_v2_122_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_EntityLoadingMonitor_366 = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self.box_EntityLoadingMonitor_366
  l0._graph = self
  l0._name = "box_EntityLoadingMonitor_366"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1723814313"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_box_EntityLoadingMonitor_366_AllLoaded
  self.box_HackableController_v2_151 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_151
  l0._graph = self
  l0._name = "box_HackableController_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1724876934"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_151_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AISquadStateController_202 = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_202
  l0._graph = self
  l0._name = "box_AISquadStateController_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1746086012"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_box_AISquadStateController_202_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_s01_M010_BigData_GiantScreen_Main_67 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.debug.lua")
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_67
  l0._graph = self
  l0._name = "box_s01_M010_BigData_GiantScreen_Main_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1753894171"
  l0.Started = self.f_box_s01_M010_BigData_GiantScreen_Main_67_Started
  l0.Ended = DummyFunction
  self.box_TriggerMonitor_v2_266 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_266
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1758120035"
  l0.Enabled = self.f_box_TriggerMonitor_v2_266_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_266_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_266_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_ListWriter_127 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_127
  l0._graph = self
  l0._name = "box_ListWriter_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1767835256"
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_box_ListWriter_127_Added
  l0.Removed = self.f_box_ListWriter_127_Removed
  l0.Out = self.f_box_ListWriter_127_Out
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1782733543"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_HackableController_v2_38 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_38
  l0._graph = self
  l0._name = "box_HackableController_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1796311999"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_38_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_396 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_396
  l0._graph = self
  l0._name = "box_TutorialController_396"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1802794834"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_396_DisplayRequested
  l0.NotificationHidden = self.f_box_TutorialController_396_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_TutorialController_559 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_559
  l0._graph = self
  l0._name = "box_TutorialController_559"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1804570040"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_559_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Reach_Gameplay_569 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_569
  l0._graph = self
  l0._name = "box_Reach_Gameplay_569"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1811402946"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Reach_Gameplay_569_Stopped
  l0.Reached = self.f_box_Reach_Gameplay_569_Reached
  self.box_PlaySound_v2_565 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_565
  l0._graph = self
  l0._name = "box_PlaySound_v2_565"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1829413902"
  l0.Out = self.f_box_PlaySound_v2_565_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_325 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_325
  l0._graph = self
  l0._name = "box_MissionLayer_v2_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1838712480"
  l0.Loaded = self.f_box_MissionLayer_v2_325_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionCheckpointReach_362 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_362
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_362"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1854322727"
  l0.Out = self.f_box_MissionCheckpointReach_362_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S01_M010_CIN_BlumeIntruder_Main_270 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BlumeIntruder.S01_M010_CIN_BlumeIntruder_Main.debug.lua")
  l0 = self.box_S01_M010_CIN_BlumeIntruder_Main_270
  l0._graph = self
  l0._name = "box_S01_M010_CIN_BlumeIntruder_Main_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1859512320"
  l0.Out = self.f_box_S01_M010_CIN_BlumeIntruder_Main_270_Out
  self.box_MultipleOR_246 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_246
  l0._graph = self
  l0._name = "box_MultipleOR_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1860674628"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_246_Out
  self.box_Reach_Gameplay_561 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_561
  l0._graph = self
  l0._name = "box_Reach_Gameplay_561"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1866167325"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Reach_Gameplay_561_Stopped
  l0.Reached = self.f_box_Reach_Gameplay_561_Reached
  self.box_TutorialController_547 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_547
  l0._graph = self
  l0._name = "box_TutorialController_547"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1867856996"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_box_TutorialController_547_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self.box_Hack_Gameplay_395 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_395
  l0._graph = self
  l0._name = "box_Hack_Gameplay_395"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1871943720"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Hack_Gameplay_395_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_395_Hacked
  self.box_MultipleOR_335 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_335
  l0._graph = self
  l0._name = "box_MultipleOR_335"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1885681475"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_335_Out
  self.box_HackableController_v2_334 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_334
  l0._graph = self
  l0._name = "box_HackableController_v2_334"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1886001701"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_334_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_502 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_502
  l0._graph = self
  l0._name = "box_MultipleOR_502"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1886780879"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_502_Out
  self.box_MapPointController_v4_220 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_220
  l0._graph = self
  l0._name = "box_MapPointController_v4_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1887120569"
  l0.Shown = self.f_box_MapPointController_v4_220_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_HackableController_v2_473 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_473
  l0._graph = self
  l0._name = "box_HackableController_v2_473"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1892287303"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_473_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_315 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_315
  l0._graph = self
  l0._name = "box_HackableController_v2_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1898720130"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_315_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_141 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_141
  l0._graph = self
  l0._name = "box_HackableController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1906051564"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_box_HackableController_v2_141_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlayDialog_v2_73 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_73
  l0._graph = self
  l0._name = "box_PlayDialog_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1909402125"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_73_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_492 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_492
  l0._graph = self
  l0._name = "box_PlaySound_v2_492"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1911916818"
  l0.Out = self.f_box_PlaySound_v2_492_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_v2_17 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_17
  l0._graph = self
  l0._name = "box_CLOController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1912816053"
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_17_OnUserInPlace
  self.box_LMA_Layer_Controller_363 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_363
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_363"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1918705090"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_363_Unloaded
  self.box_Network_Surfing_Monitor_222 = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self.box_Network_Surfing_Monitor_222
  l0._graph = self
  l0._name = "box_Network_Surfing_Monitor_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1925932747"
  l0.Enabled = self.f_box_Network_Surfing_Monitor_222_Enabled
  l0.Disabled = self.f_box_Network_Surfing_Monitor_222_Disabled
  l0.OnNetworkSurfingActivated = self.f_box_Network_Surfing_Monitor_222_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = DummyFunction
  self.box_ListWriter_367 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_367
  l0._graph = self
  l0._name = "box_ListWriter_367"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1927056802"
  l0._DynamicAnchors = {Data = 15}
  l0.Added = self.f_box_ListWriter_367_Added
  l0.Removed = self.f_box_ListWriter_367_Removed
  l0.Out = self.f_box_ListWriter_367_Out
  self.box_S01_M010_SCR_Main_393 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_SCR.S01_M010_SCR_Main.debug.lua")
  l0 = self.box_S01_M010_SCR_Main_393
  l0._graph = self
  l0._name = "box_S01_M010_SCR_Main_393"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1935267016"
  l0.Out = self.f_box_S01_M010_SCR_Main_393_Out
  l0.Started = self.f_box_S01_M010_SCR_Main_393_Started
  self.box_Hackable_Door_Controller_601 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_601
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_601"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1937823010"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_601_AiAccessDisabled
  self.box_PlaySound_v2_539 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_539
  l0._graph = self
  l0._name = "box_PlaySound_v2_539"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1951148309"
  l0.Out = self.f_box_PlaySound_v2_539_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TutorialController_496 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_496
  l0._graph = self
  l0._name = "box_TutorialController_496"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1967276892"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PlayDialog_v2_72 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_72
  l0._graph = self
  l0._name = "box_PlayDialog_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1968313432"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_72_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Reach_Gameplay_562 = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.debug.lua")
  l0 = self.box_Reach_Gameplay_562
  l0._graph = self
  l0._name = "box_Reach_Gameplay_562"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1971466118"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Reach_Gameplay_562_Stopped
  l0.Reached = self.f_box_Reach_Gameplay_562_Reached
  self.box_CLOController_v2_158 = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self.box_CLOController_v2_158
  l0._graph = self
  l0._name = "box_CLOController_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1975251356"
  l0._DynamicAnchors = {CLO = 11, UserID = 11}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_v2_158_OnUserInPlace
  self.box_MissionCheckpointReach_211 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_211
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1993906424"
  l0.Out = self.f_box_MissionCheckpointReach_211_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PGTController_v2_594 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_594
  l0._graph = self
  l0._name = "box_PGTController_v2_594"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1995207493"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_594_AllSpawned
  l0.ScriptedAgentsAdded = self.f_box_PGTController_v2_594_ScriptedAgentsAdded
  self.box_Hackable_Door_Controller_607 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_607
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_607"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1997423906"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_607_AiAccessDisabled
  self.box_HackableController_v2_470 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_470
  l0._graph = self
  l0._name = "box_HackableController_v2_470"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1997622075"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_470_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TutorialController_83 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_83
  l0._graph = self
  l0._name = "box_TutorialController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2000177692"
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_box_TutorialController_83_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Hackable_Door_Controller_600 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_600
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_600"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2002966923"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_600_AiAccessDisabled
  self.box_Intel_Controller_556 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_556
  l0._graph = self
  l0._name = "box_Intel_Controller_556"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2015649640"
  l0.Enabled = self.f_box_Intel_Controller_556_Enabled
  l0.Disabled = self.f_box_Intel_Controller_556_Disabled
  self.box_OnceOnly_v3_255 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_255
  l0._graph = self
  l0._name = "box_OnceOnly_v3_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2030654300"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_255_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_254 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_254
  l0._graph = self
  l0._name = "box_MultipleOR_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2048676998"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_254_Out
  self.box_HackableController_v2_30 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_30
  l0._graph = self
  l0._name = "box_HackableController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2050878151"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_30_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_172 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_172
  l0._graph = self
  l0._name = "box_HackableController_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2052257210"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_172_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_608 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_608
  l0._graph = self
  l0._name = "box_HackableController_v2_608"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2053361705"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_608_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_475 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_475
  l0._graph = self
  l0._name = "box_CinematicPrep_475"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2053553732"
  l0.PreOut = self.f_box_CinematicPrep_475_PreOut
  l0.PostOut = DummyFunction
  self.box_PlayDialog_v2_65 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_65
  l0._graph = self
  l0._name = "box_PlayDialog_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2054355060"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_286 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_286
  l0._graph = self
  l0._name = "box_PlayDialog_v2_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2055870420"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_286_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_448 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_448
  l0._graph = self
  l0._name = "box_CLOController_448"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2056148584"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_448_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_TutorialController_551 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_551
  l0._graph = self
  l0._name = "box_TutorialController_551"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2062976391"
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Intel_Controller_574 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_574
  l0._graph = self
  l0._name = "box_Intel_Controller_574"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2066868151"
  l0.Enabled = self.f_box_Intel_Controller_574_Enabled
  l0.Disabled = self.f_box_Intel_Controller_574_Disabled
  self.box_CinematicPrep_403 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_403
  l0._graph = self
  l0._name = "box_CinematicPrep_403"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2069656581"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_403_PostOut
  self.box_PlayDialog_v2_39 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_39
  l0._graph = self
  l0._name = "box_PlayDialog_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2071820881"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_39_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_105 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_105
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2074638310"
  l0.Out = self.f_box_MissionMessageController_v3_105_Out
  l0.MessageCompleted = DummyFunction
  self.box_AgentStateMonitor_V2_327 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_327
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_327"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2077842158"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AgentStateMonitor_V2_327_Disabled
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
  l0.CombatState = self.f_box_AgentStateMonitor_V2_327_CombatState
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
  self.box_CinematicPrep_532 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_532
  l0._graph = self
  l0._name = "box_CinematicPrep_532"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2077865988"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_532_PostOut
  self.box_HackableController_v2_536 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_536
  l0._graph = self
  l0._name = "box_HackableController_v2_536"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2083311119"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_536_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_529 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_529
  l0._graph = self
  l0._name = "box_PlaySound_v2_529"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2087370098"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_320 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_320
  l0._graph = self
  l0._name = "box_MissionLayer_v2_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2087448954"
  l0.Loaded = self.f_box_MissionLayer_v2_320_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_537 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_537
  l0._graph = self
  l0._name = "box_HackableController_v2_537"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2091070126"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_box_HackableController_v2_537_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_111 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_111
  l0._graph = self
  l0._name = "box_HackableController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2093759001"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_111_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_133 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_133
  l0._graph = self
  l0._name = "box_HackableController_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2094923476"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_133_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_233 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_233
  l0._graph = self
  l0._name = "box_HackableController_v2_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2096343700"
  l0.Enabled = self.f_box_HackableController_v2_233_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_314 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_314
  l0._graph = self
  l0._name = "box_PlaySound_v2_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2117655447"
  l0.Out = self.f_box_PlaySound_v2_314_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_145 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_145
  l0._graph = self
  l0._name = "box_HackableController_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2118438732"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_145_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2123357003"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_256 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_256
  l0._graph = self
  l0._name = "box_OnceOnly_v3_256"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2126011188"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_256_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_469 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_469
  l0._graph = self
  l0._name = "box_PlaySound_v2_469"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2132060647"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_78 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_78
  l0._graph = self
  l0._name = "box_ListWriter_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2132299081"
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_box_ListWriter_78_Added
  l0.Removed = self.f_box_ListWriter_78_Removed
  l0.Out = self.f_box_ListWriter_78_Out
  self.box_PlaySound_v2_195 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_195
  l0._graph = self
  l0._name = "box_PlaySound_v2_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2133978542"
  l0.Out = self.f_box_PlaySound_v2_195_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Teleport_To_SpawnPoint_16 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_16
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2143765128"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_16_TeleportDone
  self.box_PlaySound_v2_237 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_237
  l0._graph = self
  l0._name = "box_PlaySound_v2_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2144187361"
  l0.Out = self.f_box_PlaySound_v2_237_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|637662107", "637662107", "S01M010_Main", "CheckPoint_0", "box_MultipleOR_10.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_515
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2894357", "2894357", "S01M010_Main", "CheckPoint_1", "box_MissionLayer_v2_515.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_10()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1626811245"
  l0.Out = self.f_box_Get_Player_ID_216_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|193798969", "193798969", "S01M010_Main", "CheckPoint_10", "box_Get_Player_ID_216.In", self, l0)
  l0:In()
end
function export:CheckPoint_11()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1492452746"
  l0.Out = self.f_box_Get_Player_ID_217_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|804142934", "804142934", "S01M010_Main", "CheckPoint_11", "box_Get_Player_ID_217.In", self, l0)
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_292
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|340852085", "340852085", "S01M010_Main", "CheckPoint_2", "box_MissionLayer_v2_292.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_5()
  local l0
  l0 = self.box_MissionLayer_v2_311
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|115840561", "115840561", "S01M010_Main", "CheckPoint_5", "box_MissionLayer_v2_311.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_6()
  local l0
  l0 = self.box_MissionLayer_v2_320
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|501608864", "501608864", "S01M010_Main", "CheckPoint_6", "box_MissionLayer_v2_320.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_7()
  local l0
  l0 = self.box_MissionLayer_v2_325
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1652712980", "1652712980", "S01M010_Main", "CheckPoint_7", "box_MissionLayer_v2_325.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_8()
  local l0
  l0 = self.box_MissionLayer_v2_331
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1241248484", "1241248484", "S01M010_Main", "CheckPoint_8", "box_MissionLayer_v2_331.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_9()
  local l0
  l0 = self.box_MissionLayer_v2_339
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|999556154", "999556154", "S01M010_Main", "CheckPoint_9", "box_MissionLayer_v2_339.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_Intro()
  local l0
  l0 = self.box_MissionLayer_v2_423
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1638219161", "1638219161", "S01M010_Main", "CheckPoint_Intro", "box_MissionLayer_v2_423.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|29101851", "29101851", "S01M010_Main", "In", "box_MultipleOR_10.Input", self, l0)
  l0:Input(0)
end
function export:f_box_CLOController_v2_49_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_49
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self.box_ListWriter_50
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0 = self.box_CLOController_v2_49
  l1 = self.box_ListWriter_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1988851880", "1988851880", "S01M010_Main", "box_CLOController_v2_49.OnUserInPlace", "box_ListWriter_50.Add", l0, l1)
  l1:Add()
end
function export:f_box_HackableController_v2_74_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_189
  l0.CLO[0] = "9223372057272174795"
  l0.CLO[1] = "9223372057272174797"
  l0.CLO[2] = "9223372058418094309"
  l0.CLO[3] = "9223372057272174799"
  l0.CLO[4] = "9223372058418094308"
  l0.CLO[5] = "9223372057272174802"
  l0.CLO[6] = "9223372057272174803"
  l0.CLO[7] = "9223372058418094307"
  l0.CLO[8] = "9223372057272174805"
  l0.CLO[9] = "9223372057272174806"
  l0.CLO[10] = "9223372058418094306"
  l0 = self.box_HackableController_v2_74
  l1 = self.box_CLOController_v2_189
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|30909638", "30909638", "S01M010_Main", "box_HackableController_v2_74.Disabled", "box_CLOController_v2_189.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_TutorialController_585_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_92
  l0.Seconds = 60
  l0 = self.box_TutorialController_585
  l1 = self.box_Timer_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2031592864", "2031592864", "S01M010_Main", "box_TutorialController_585.DisplayRequested", "box_Timer_v2_92.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_517_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1575485300", "1575485300", "S01M010_Main", "box_Get_Player_ID_517.Out", "box_S01M010_Weather_139.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_383_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_362
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_383
  l1 = self.box_MissionCheckpointReach_362
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|699870650", "699870650", "S01M010_Main", "box_MultipleOR_383.Out", "box_MissionCheckpointReach_362.In", l0, l1)
  l1:In()
end
function export:f_box_S01M010_Weather_140_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_378"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|516179034"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_378_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_140
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1876686134", "1876686134", "S01M010_Main", "box_S01M010_Weather_140.Out", "box_SmartphoneAppController_378.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_Hackable_Door_Controller_602_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_74
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Door_Controller_602
  l1 = self.box_HackableController_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|666685961", "666685961", "S01M010_Main", "box_Hackable_Door_Controller_602.AiAccessDisabled", "box_HackableController_v2_74.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlayDialog_v2_23_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_60
  l0.SoundId = "soundbinary/3256541240.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_23
  l1 = self.box_PlayDialog_v2_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1980740954", "1980740954", "S01M010_Main", "box_PlayDialog_v2_23.Finished", "box_PlayDialog_v2_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_37_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_464
  l0.SceneEntity = "9223372067977579598"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M010_ProxyHack/s01_m010_proxyhack.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|535300245", "535300245", "S01M010_Main", "box_VisibilityController_v2_37.Shown", "box_PlaySequence_v5_464.Start", clone, l0)
  l0:Start()
end
function export:f_box_AISquadStateController_224_WanderSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_192()
  l0 = self.box_AISquadStateController_224
  l1 = self.box_Multiple_AND_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|490603271", "490603271", "S01M010_Main", "box_AISquadStateController_224.WanderSet", "box_Multiple_AND_192.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Change_GraphicKit_Model_631_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_v2_58
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1275525568", "1275525568", "S01M010_Main", "box_Change_GraphicKit_Model_631.Changed", "box_CLOController_v2_58.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_331_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_328"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1289502609"
  l0.Out = self.f_box_Get_Player_ID_328_Out
  l0 = self.box_MissionLayer_v2_331
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|498212188", "498212188", "S01M010_Main", "box_MissionLayer_v2_331.Loaded", "box_Get_Player_ID_328.In", l0, l1)
  l1:In()
end
function export:f_box_Change_GraphicKit_Model_637_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_171
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|984044329", "984044329", "S01M010_Main", "box_Change_GraphicKit_Model_637.Changed", "box_ListWriter_171.Add", clone, l0)
  l0:Add()
end
function export:f_box_S01_M010_CIN_Intro_Main_627_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_48()
  l0 = self.box_S01_M010_CIN_Intro_Main_627
  l1 = self.box_Multiple_AND_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|761083161", "761083161", "S01M010_Main", "box_S01_M010_CIN_Intro_Main_627.Out", "box_Multiple_AND_48.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_S01_M010_CIN_Intro_Main_627_TS_Sitara()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_278
  l0.SoundId = "soundbinary/1048812891.bnk"
  l0.UseFacial = 0
  l0 = self.box_S01_M010_CIN_Intro_Main_627
  l1 = self.box_PlayDialog_v2_278
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|628422365", "628422365", "S01M010_Main", "box_S01_M010_CIN_Intro_Main_627.TS_Sitara", "box_PlayDialog_v2_278.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_75_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_219()
  l0 = self.box_TutorialController_75
  l1 = self.box_TutorialController_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1385641731", "1385641731", "S01M010_Main", "box_TutorialController_75.Out", "box_TutorialController_219.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_560_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_392()
  l0 = self.box_TriggerMonitor_v2_560
  l1 = self.box_TutorialController_392
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|530687939", "530687939", "S01M010_Main", "box_TriggerMonitor_v2_560.Disabled", "box_TutorialController_392.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_560_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_46
  l0.MapPoint = "9223372057211925497"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_TriggerMonitor_v2_560
  l1 = self.box_MapPointController_v4_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1317514239", "1317514239", "S01M010_Main", "box_TriggerMonitor_v2_560.Enabled", "box_MapPointController_v4_46.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_TriggerMonitor_v2_560_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_560()
  l0 = self.box_TriggerMonitor_v2_560
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|475994997", "475994997", "S01M010_Main", "box_TriggerMonitor_v2_560.Enter", "box_TriggerMonitor_v2_560.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_S01_M010_CIN_BigData_Main_275_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_195
  l0.SoundId = "soundbinary/4162327257.bnk"
  l0 = self.box_S01_M010_CIN_BigData_Main_275
  l1 = self.box_PlaySound_v2_195
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1705642663", "1705642663", "S01M010_Main", "box_S01_M010_CIN_BigData_Main_275.Finished", "box_PlaySound_v2_195.Play", l0, l1)
  l1:Play()
end
function export:f_box_S01_M010_CIN_BigData_Main_275_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_192()
  l0 = self.box_S01_M010_CIN_BigData_Main_275
  l1 = self.box_Multiple_AND_192
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1267682384", "1267682384", "S01M010_Main", "box_S01_M010_CIN_BigData_Main_275.Out", "box_Multiple_AND_192.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MissionCheckpointReach_340_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|665268497"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_120_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_120_Out_1
  l0 = self.box_MissionCheckpointReach_340
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|884405910", "884405910", "S01M010_Main", "box_MissionCheckpointReach_340.Out", "box_Ordered_Output_120.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_525_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_548"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1418132053"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_548_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_525
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2139380361", "2139380361", "S01M010_Main", "box_HackableController_v2_525.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_548.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_S01M010_Weather_103_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|138671294"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_19_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_103
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1333335325", "1333335325", "S01M010_Main", "box_S01M010_Weather_103.Out", "box_SmartphoneAppController_19.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_SetTimeOfDay_405_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_406"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|817415614"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_406_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1594810981", "1594810981", "S01M010_Main", "box_SetTimeOfDay_405.Out", "box_TimeScale_Controller_406.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_SetActionMap_v2_373_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_187
  l0.Input = self.CourtYard_World_Entities
  l0.Data[0] = "9223372059224539270"
  l0.Data[1] = "9223372059224539295"
  l0.Data[2] = "9223372059224539309"
  l0.Data[3] = "9223372059224539276"
  l0.Data[4] = "9223372059224539278"
  l0.Data[5] = "9223372059224539317"
  l0.Data[6] = "9223372059224539315"
  l0.Data[7] = "9223372059224539301"
  l0.Data[8] = "9223372059224539303"
  l0.Data[9] = "9223372059460980791"
  l0.Data[10] = "9223372059460980797"
  l0.Data[11] = "9223372059460980799"
  l0.Data[12] = "9223372059460980777"
  l0.Data[13] = "9223372059460980783"
  l0.Data[14] = "9223372059460980785"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|3223457", "3223457", "S01M010_Main", "box_SetActionMap_v2_373.Pushed", "box_ListWriter_187.Add", clone, l0)
  l0:Add()
end
function export:f_box_CLOController_412_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_412
  self.EnemyTutorial_Exterior_02 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_01
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_543"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|616530570"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_543_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_CLOController_412
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1226182359", "1226182359", "S01M010_Main", "box_CLOController_412.OnUserInPlace", "box_DPad_Hackable_Controller_543.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_Ordered_Output_498_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_639
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective022",
    item = "Objective",
    id = "688739"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|657074658", "657074658", "S01M010_Main", "box_Ordered_Output_498.Out", "box_MissionMessageController_v3_639.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_498_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_568"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1929313313"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_568_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1169180765", "1169180765", "S01M010_Main", "box_Ordered_Output_498.Out", "box_MissionMusicController_568.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_CinematicPrep_343_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_126
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective023",
    item = "Objective",
    id = "688740"
  }
  l0 = self.box_CinematicPrep_343
  l1 = self.box_MissionMessageController_v3_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|528644693", "528644693", "S01M010_Main", "box_CinematicPrep_343.PostOut", "box_MissionMessageController_v3_126.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_108_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_333()
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_108
  l1 = self.box_MultipleOR_333
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|559570170", "559570170", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_108.Started", "box_MultipleOR_333.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_182_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_130
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0 = self.box_HackableController_v2_182
  l1 = self.box_ListWriter_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1391413068", "1391413068", "S01M010_Main", "box_HackableController_v2_182.Disabled", "box_ListWriter_130.Add", l0, l1)
  l1:Add()
end
function export:f_box_SmartphoneAppController_19_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1471901261"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_138_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|829484279", "829484279", "S01M010_Main", "box_SmartphoneAppController_19.OverrideActivated", "box_FelonySystemController_v2_138.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_573_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1917470385"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_86_Hidden
  l0.Out = DummyFunction
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_573
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|663214409", "663214409", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_573.Started", "box_VisibilityController_v2_86.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ListWriter_178_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_178
  self.JunctionBoxes = l0.Target
  l0 = self.box_HackableController_v2_182
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_178
  l1 = self.box_HackableController_v2_182
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|118930403", "118930403", "S01M010_Main", "box_ListWriter_178.Added", "box_HackableController_v2_182.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_178_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_178
  self.JunctionBoxes = l0.Target
end
function export:f_box_ListWriter_178_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_178
  self.JunctionBoxes = l0.Target
end
function export:f_box_OnceOnly_v3_262_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_253
  l0.MoveableEntity = "9223372063874878374"
  l0 = self.box_OnceOnly_v3_262
  l1 = self.box_Moveable_Entity_Monitor_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1858088139", "1858088139", "S01M010_Main", "box_OnceOnly_v3_262.Out", "box_Moveable_Entity_Monitor_253.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_170
  l0.SoundId = "soundbinary/3506465663.bnk"
  l0.UseFacial = 0
  l0 = self.box_MissionMessageController_v3_43
  l1 = self.box_PlayDialog_v2_170
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1429529956", "1429529956", "S01M010_Main", "box_MissionMessageController_v3_43.Out", "box_PlayDialog_v2_170.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_513_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_558
  l0.SurvivalGuideItemDB = "Items.9223372053993007703"
  l0 = self.box_TutorialController_513
  l1 = self.box_TutorialController_558
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|281766318", "281766318", "S01M010_Main", "box_TutorialController_513.DisplayRequested", "box_TutorialController_558.Display", l0, l1)
  l1:Display()
end
function export:f_box_TutorialController_513_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_588()
  l0 = self.box_TutorialController_513
  l1 = self.box_Hackable_Monitor_588
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1666760171", "1666760171", "S01M010_Main", "box_TutorialController_513.NotificationHidden", "box_Hackable_Monitor_588.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TutorialController_513_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_588()
  l0 = self.box_TutorialController_513
  l1 = self.box_Hackable_Monitor_588
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1100811047", "1100811047", "S01M010_Main", "box_TutorialController_513.Out", "box_Hackable_Monitor_588.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_582_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Teleport_To_SpawnPoint_62
  l0.SpawnPoint = "9223372057534316000"
  l0.UseFadeToBlack = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|888176637", "888176637", "S01M010_Main", "box_Get_Player_ID_582.Out", "box_Teleport_To_SpawnPoint_62.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_504()
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_MultipleOR_504
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|664404938", "664404938", "S01M010_Main", "box_MissionLayer_v2_4.Unloaded", "box_MultipleOR_504.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Interact_Gameplay_472_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_472()
  l0 = self.box_Interact_Gameplay_472
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|991341160", "991341160", "S01M010_Main", "box_Interact_Gameplay_472.Interacted", "box_Interact_Gameplay_472.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_472_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_590
  l0.Entity = "9223372069104140478"
  l0 = self.box_Interact_Gameplay_472
  l1 = self.box_Intel_Controller_590
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|142169447", "142169447", "S01M010_Main", "box_Interact_Gameplay_472.Stopped", "box_Intel_Controller_590.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionMusicController_512_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_204
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|64005900", "64005900", "S01M010_Main", "box_MissionMusicController_512.Deactivated", "box_PlaySound_v2_204.Play", clone, l0)
  l0:Play()
end
function export:f_box_MultipleOR_313_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_250
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_313
  l1 = self.box_MissionCheckpointReach_250
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1536311077", "1536311077", "S01M010_Main", "box_MultipleOR_313.Out", "box_MissionCheckpointReach_250.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Door_Controller_610_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_602
  l0.Entity = "9223372059224539295"
  l0 = self.box_Hackable_Door_Controller_610
  l1 = self.box_Hackable_Door_Controller_602
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1722842038", "1722842038", "S01M010_Main", "box_Hackable_Door_Controller_610.AiAccessDisabled", "box_Hackable_Door_Controller_602.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_Timer_v2_203_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_206
  l0.SoundId = "soundbinary/71783185.bnk"
  l0 = self.box_Timer_v2_203
  l1 = self.box_PlaySound_v2_206
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1963299316", "1963299316", "S01M010_Main", "box_Timer_v2_203.TimeElapsed", "box_PlaySound_v2_206.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_261_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_506
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_Timer_v2_261
  l1 = self.box_PlaySound_v2_506
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1723168401", "1723168401", "S01M010_Main", "box_Timer_v2_261.TimeElapsed", "box_PlaySound_v2_506.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_131_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_579
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_131
  l1 = self.box_HackableController_v2_579
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1936956441", "1936956441", "S01M010_Main", "box_HackableController_v2_131.HackForced", "box_HackableController_v2_579.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SecurityCamController_385_InitialTargetSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_656
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective013",
    item = "Objective",
    id = "459234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1465233751", "1465233751", "S01M010_Main", "box_SecurityCamController_385.InitialTargetSet", "box_MissionMessageController_v3_656.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|794668992", "794668992", "S01M010_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_50_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_50
  self.TakedownTutorial = l0.Target
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_632"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1041793933"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_632_Changed
  l0 = self.box_ListWriter_50
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|630043776", "630043776", "S01M010_Main", "box_ListWriter_50.Added", "box_Change_GraphicKit_Model_632.Change", l0, l1)
  l1:Change()
end
function export:f_box_ListWriter_50_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_50
  self.TakedownTutorial = l0.Target
end
function export:f_box_ListWriter_50_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_50
  self.TakedownTutorial = l0.Target
end
function export:f_box_Intel_Controller_199_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_191()
  l0 = self.box_Intel_Controller_199
  l1 = self.box_Interact_Gameplay_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|169987468", "169987468", "S01M010_Main", "box_Intel_Controller_199.Enabled", "box_Interact_Gameplay_191.Start", l0, l1)
  l1:Start()
end
function export:f_box_Download_Gameplay_643_DownloadCompleted()
  local l0
  self = self._graph
  self:OnEnter_box_Download_Gameplay_643()
  l0 = self.box_Download_Gameplay_643
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1566454740", "1566454740", "S01M010_Main", "box_Download_Gameplay_643.DownloadCompleted", "box_Download_Gameplay_643.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Download_Gameplay_643_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1437466664"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_231_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_231_Out_1
  l0 = self.box_Download_Gameplay_643
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|544334442", "544334442", "S01M010_Main", "box_Download_Gameplay_643.Started", "box_Ordered_Output_231.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_643_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_335()
  l0 = self.box_Download_Gameplay_643
  l1 = self.box_MultipleOR_335
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1856295687", "1856295687", "S01M010_Main", "box_Download_Gameplay_643.Stopped", "box_MultipleOR_335.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_499_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_415()
  l0 = self.box_HackableController_v2_499
  l1 = self.box_TutorialController_415
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|239395898", "239395898", "S01M010_Main", "box_HackableController_v2_499.Enabled", "box_TutorialController_415.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_FelonySoundController_563_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_367
  l0.Input = self.CourtYard_World_Entities
  l0.Data[0] = "9223372059224539270"
  l0.Data[1] = "9223372059224539295"
  l0.Data[2] = "9223372059224539309"
  l0.Data[3] = "9223372059224539276"
  l0.Data[4] = "9223372059224539278"
  l0.Data[5] = "9223372059224539317"
  l0.Data[6] = "9223372059224539315"
  l0.Data[7] = "9223372059224539301"
  l0.Data[8] = "9223372059224539303"
  l0.Data[9] = "9223372059460980791"
  l0.Data[10] = "9223372059460980797"
  l0.Data[11] = "9223372059460980799"
  l0.Data[12] = "9223372059460980777"
  l0.Data[13] = "9223372059460980783"
  l0.Data[14] = "9223372059460980785"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|837363448", "837363448", "S01M010_Main", "box_FelonySoundController_563.Enabled", "box_ListWriter_367.Add", clone, l0)
  l0:Add()
end
function export:f_box_MissionMessageController_v3_126_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_126
  l1 = self.box_s01_M010_BigData_GiantScreen_Main_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|594697198", "594697198", "S01M010_Main", "box_MissionMessageController_v3_126.Out", "box_s01_M010_BigData_GiantScreen_Main_159.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_187_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_187
  self.CourtYard_World_Entities = l0.Target
  l0 = self.box_EntityLoadingMonitor_185
  l0.AutoDisable = 1
  l0.EntityList = self.CourtYard_World_Entities
  l0 = self.box_ListWriter_187
  l1 = self.box_EntityLoadingMonitor_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|411648002", "411648002", "S01M010_Main", "box_ListWriter_187.Added", "box_EntityLoadingMonitor_185.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_187_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_187
  self.CourtYard_World_Entities = l0.Target
end
function export:f_box_ListWriter_187_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_187
  self.CourtYard_World_Entities = l0.Target
end
function export:f_box_ListWriter_622_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_622
  self.EnemyExterior = l0.Target
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_633"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|720886603"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_633_Changed
  l0 = self.box_ListWriter_622
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|830971825", "830971825", "S01M010_Main", "box_ListWriter_622.Added", "box_Change_GraphicKit_Model_633.Change", l0, l1)
  l1:Change()
end
function export:f_box_ListWriter_622_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_622
  self.EnemyExterior = l0.Target
end
function export:f_box_ListWriter_622_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_622
  self.EnemyExterior = l0.Target
end
function export:f_box_PlayDialog_v2_53_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_72
  l0.SoundId = "soundbinary/29153627.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_53
  l1 = self.box_PlayDialog_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|971035090", "971035090", "S01M010_Main", "box_PlayDialog_v2_53.Finished", "box_PlayDialog_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_29_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_7
  l0.SoundId = "soundbinary/567106130.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_29
  l1 = self.box_PlayDialog_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|997485036", "997485036", "S01M010_Main", "box_PlayDialog_v2_29.Finished", "box_PlayDialog_v2_7.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_467_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_261
  l0.Seconds = 16.2
  l0 = self.box_PlaySound_v2_467
  l1 = self.box_Timer_v2_261
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1887285414", "1887285414", "S01M010_Main", "box_PlaySound_v2_467.Out", "box_Timer_v2_261.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_289_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_607
  l0.Entity = "9223372059224539270"
  l0 = self.box_HackableController_v2_289
  l1 = self.box_Hackable_Door_Controller_607
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1081876249", "1081876249", "S01M010_Main", "box_HackableController_v2_289.Disabled", "box_Hackable_Door_Controller_607.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_Ordered_Output_648_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1385767309", "1385767309", "S01M010_Main", "box_Ordered_Output_648.Out", "box_s01_M010_BigData_GiantScreen_Main_108.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_648_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_512"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|195860974"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_512_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|34506568", "34506568", "S01M010_Main", "box_Ordered_Output_648.Out", "box_MissionMusicController_512.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_TutorialController_447_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_499
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_TutorialController_447
  l1 = self.box_HackableController_v2_499
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|349632436", "349632436", "S01M010_Main", "box_TutorialController_447.DisplayRequested", "box_HackableController_v2_499.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_ListWriter_154_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_154
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_162
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_154
  l1 = self.box_HackableController_v2_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1022002081", "1022002081", "S01M010_Main", "box_ListWriter_154.Added", "box_HackableController_v2_162.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_154_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_154
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_154_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_154
  self.AccessDoorDisable = l0.Target
end
function export:f_box_Player_State_Controller_205_CoverEntered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_v2_3
  l0.CLO[0] = "9223372047874975198"
  l0.CLO[1] = "9223372047874975197"
  l0.CLO[2] = "9223372047874975200"
  l0.CLO[3] = "9223372047874975199"
  l0.CLO[4] = "9223372047874975201"
  l0.CLO[5] = "9223372064215696431"
  l0.CLO[6] = "9223372064215696432"
  l0.CLO[7] = "9223372047874975203"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1313488919", "1313488919", "S01M010_Main", "box_Player_State_Controller_205.CoverEntered", "box_CLOController_v2_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_ListWriter_181_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_181
  self.S01M010_AiList = l0.Target
  self:OnEnter_box_PGTController_v2_594()
  l1 = self.box_PGTController_v2_594
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1139321106", "1139321106", "S01M010_Main", "box_ListWriter_181.Added", "box_PGTController_v2_594.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_181_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_181
  self.S01M010_AiList = l0.Target
end
function export:f_box_ListWriter_181_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_181
  self.S01M010_AiList = l0.Target
end
function export:f_box_RewardController_v3_223_RewardsRegistered()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_220
  l0.MapPoint = "9223372057211925497"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0 = self.box_RewardController_v3_223
  l1 = self.box_MapPointController_v4_220
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|397553284", "397553284", "S01M010_Main", "box_RewardController_v3_223.RewardsRegistered", "box_MapPointController_v4_220.Show", l0, l1)
  l1:Show()
end
function export:f_box_CLOController_420_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_531"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1597400132"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_531_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_531_Out_1
  l0 = self.box_CLOController_420
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1857260949", "1857260949", "S01M010_Main", "box_CLOController_420.UnspawnedUser", "box_Ordered_Output_531.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_209_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_22
  l0.SoundId = "soundbinary/3703769483.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_Timer_v2_209
  l1 = self.box_PlayDialog_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2032274945", "2032274945", "S01M010_Main", "box_Timer_v2_209.TimeElapsed", "box_PlayDialog_v2_22.Start", l0, l1)
  l1:Start()
end
function export:f_box_DPad_Hackable_Controller_69_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1119795029"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_box_DPad_Hackable_Controller_84_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1614096934", "1614096934", "S01M010_Main", "box_DPad_Hackable_Controller_69.Removed", "box_DPad_Hackable_Controller_84.Add", clone, l0)
  l0:Add()
end
function export:f_box_PlaySound_v2_34_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_637"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|65932680"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_637_Changed
  l0 = self.box_PlaySound_v2_34
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1416842852", "1416842852", "S01M010_Main", "box_PlaySound_v2_34.Out", "box_Change_GraphicKit_Model_637.Change", l0, l1)
  l1:Change()
end
function export:f_box_Player_State_Controller_522_CoverToCoverAllowedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_207()
  l0 = self.box_MultipleOR_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|445494526", "445494526", "S01M010_Main", "box_Player_State_Controller_522.CoverToCoverAllowedReset", "box_MultipleOR_207.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_HackableController_v2_577_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_133
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_577
  l1 = self.box_HackableController_v2_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1689575575", "1689575575", "S01M010_Main", "box_HackableController_v2_577.Disabled", "box_HackableController_v2_133.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySequence_v5_524_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_530()
  l0 = self.box_PlaySequence_v5_524
  l1 = self.box_OnceOnly_v3_530
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2055751836", "2055751836", "S01M010_Main", "box_PlaySequence_v5_524.Finished", "box_OnceOnly_v3_530.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_524_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_530()
  l0 = self.box_PlaySequence_v5_524
  l1 = self.box_OnceOnly_v3_530
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|619075390", "619075390", "S01M010_Main", "box_PlaySequence_v5_524.Skipped", "box_OnceOnly_v3_530.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_524_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069104140478"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_368"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1967697306"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_524
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1622358095", "1622358095", "S01M010_Main", "box_PlaySequence_v5_524.Started", "box_VisibilityController_v2_368.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Moveable_Entity_Monitor_247_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_249()
  l0 = self.box_Moveable_Entity_Monitor_247
  l1 = self.box_MultipleOR_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2083875199", "2083875199", "S01M010_Main", "box_Moveable_Entity_Monitor_247.Enabled", "box_MultipleOR_249.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Moveable_Entity_Monitor_247_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_246()
  l0 = self.box_Moveable_Entity_Monitor_247
  l1 = self.box_MultipleOR_246
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1760797259", "1760797259", "S01M010_Main", "box_Moveable_Entity_Monitor_247.OnBkwMovementStarted", "box_MultipleOR_246.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOController_v2_80_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_80
  self.EnemyGameplay_01 = l0.UserID[0]
  self.EnemyGameplay_02 = l0.UserID[1]
  self.EnemyGameplay_03 = l0.UserID[2]
  self.EnemyGameplay_04 = l0.UserID[3]
  self.EnemyGameplay_05 = l0.UserID[4]
  self.EnemyGameplay_09 = l0.UserID[5]
  self.EnemyGameplay_10 = l0.UserID[6]
  self.EnemyGameplay_07 = l0.UserID[7]
  l0 = self.box_ListWriter_494
  l0.Input = self.S01M010_AiList
  l0.Data[0] = self.EnemyGameplay_01
  l0.Data[1] = self.EnemyGameplay_02
  l0.Data[2] = self.EnemyGameplay_03
  l0.Data[3] = self.EnemyGameplay_04
  l0.Data[4] = self.EnemyGameplay_05
  l0.Data[5] = self.EnemyGameplay_07
  l0.Data[6] = self.EnemyGameplay_09
  l0.Data[7] = self.EnemyGameplay_10
  l0 = self.box_CLOController_v2_80
  l1 = self.box_ListWriter_494
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|47054828", "47054828", "S01M010_Main", "box_CLOController_v2_80.OnUserInPlace", "box_ListWriter_494.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_494_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_494
  self.S01M010_AiList = l0.Target
  self:OnEnter_box_PGTController_v2_509()
  l1 = self.box_PGTController_v2_509
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1054511137", "1054511137", "S01M010_Main", "box_ListWriter_494.Added", "box_PGTController_v2_509.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_494_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_494
  self.S01M010_AiList = l0.Target
end
function export:f_box_ListWriter_494_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_494
  self.S01M010_AiList = l0.Target
end
function export:f_box_HackableController_v2_576_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_608
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_576
  l1 = self.box_HackableController_v2_608
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|311878441", "311878441", "S01M010_Main", "box_HackableController_v2_576.ProfilingDisabled", "box_HackableController_v2_608.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ReinforcementSystemMonitor_v2_297_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_285()
  l0 = self.box_ReinforcementSystemMonitor_v2_297
  l1 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|335340693", "335340693", "S01M010_Main", "box_ReinforcementSystemMonitor_v2_297.None", "box_MultipleOR_285.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ReinforcementSystemMonitor_v2_297_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "UZulu"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372052875637346"
  l0.AgentList = self.S01M010_AiList
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_493"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1383321796"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = self.f_box_ReinforcementSystemController_v2_493_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_ReinforcementSystemMonitor_v2_297
  l1 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1066693850", "1066693850", "S01M010_Main", "box_ReinforcementSystemMonitor_v2_297.Reinforcing", "box_ReinforcementSystemController_v2_493.StopReinforcing", l0, l1)
  l1:StopReinforcing()
end
function export:f_box_Multiple_AND_63_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|725683263"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  l0 = self.box_Multiple_AND_63
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|7814440", "7814440", "S01M010_Main", "box_Multiple_AND_63.Out", "box_Ordered_Output_33.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementCallController_370_EnabledCallers()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_106
  l0.Position = "9223372069340157573"
  l0.Affiliation = "UZulu"
  l0.SearchOverrideParamTimeout = -1
  l0 = self.box_ReinforcementCallController_370
  l1 = self.box_AISquadStateController_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1312840995", "1312840995", "S01M010_Main", "box_ReinforcementCallController_370.EnabledCallers", "box_AISquadStateController_106.SetInUntargetedSearch", l0, l1)
  l1:SetInUntargetedSearch()
end
function export:f_box_ReinforcementCallController_370_Registered()
  local l0
  self = self._graph
  self:OnEnter_box_ReinforcementCallController_370()
  l0 = self.box_ReinforcementCallController_370
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|802709693", "802709693", "S01M010_Main", "box_ReinforcementCallController_370.Registered", "box_ReinforcementCallController_370.EnableCallers", l0, l0)
  l0:EnableCallers()
end
function export:f_box_TutorialController_552_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_201()
  l0 = self.box_TutorialController_552
  l1 = self.box_TriggerMonitor_v2_201
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1781929729", "1781929729", "S01M010_Main", "box_TutorialController_552.DisplayRequested", "box_TriggerMonitor_v2_201.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Show_Or_Hide_All_UI_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1489842137"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_265_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_265_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|38217593", "38217593", "S01M010_Main", "box_Show_Or_Hide_All_UI_11.Hidden", "box_Ordered_Output_265.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_28_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_73
  l0.SoundId = "soundbinary/3465896214.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_28
  l1 = self.box_PlayDialog_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1946111133", "1946111133", "S01M010_Main", "box_PlayDialog_v2_28.Finished", "box_PlayDialog_v2_73.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_252_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372063874878362"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1755629701"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_241_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_252
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1116046856", "1116046856", "S01M010_Main", "box_MultipleOR_252.Out", "box_MoveableEntityController_241.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_AISquadStateController_119_VanishSet()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_420
  l0.UserList = self.TakedownTutorial
  l0 = self.box_AISquadStateController_119
  l1 = self.box_CLOController_420
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1544385430", "1544385430", "S01M010_Main", "box_AISquadStateController_119.VanishSet", "box_CLOController_420.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_ListWriter_26_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_26
  self.CameraAccessCode = l0.Target
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = self.CameraAccessCode
  l0.TargetEntity = "9223372052040779329"
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_385"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|209882146"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_box_SecurityCamController_385_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_ListWriter_26
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1640317640", "1640317640", "S01M010_Main", "box_ListWriter_26.Added", "box_SecurityCamController_385.SetInitialTarget", l0, l1)
  l1:SetInitialTarget()
end
function export:f_box_ListWriter_26_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_26
  self.CameraAccessCode = l0.Target
end
function export:f_box_ListWriter_26_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_26
  self.CameraAccessCode = l0.Target
end
function export:f_box_MapPointController_v4_157_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_66
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_MapPointController_v4_157
  l1 = self.box_HackableController_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|394244329", "394244329", "S01M010_Main", "box_MapPointController_v4_157.Shown", "box_HackableController_v2_66.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Assign_Patrol_Controller_v2_169_Assigned()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_399()
  l0 = self.box_Assign_Patrol_Controller_v2_169
  l1 = self.box_PawnHealthMonitor_v3_399
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1776228506", "1776228506", "S01M010_Main", "box_Assign_Patrol_Controller_v2_169.Assigned", "box_PawnHealthMonitor_v3_399.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_418_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_418
  self.CourtYard_World_Entities = l0.Target
  l0 = self.box_EntityLoadingMonitor_232
  l0.AutoDisable = 1
  l0.EntityList = self.CourtYard_World_Entities
  l0 = self.box_ListWriter_418
  l1 = self.box_EntityLoadingMonitor_232
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|655420611", "655420611", "S01M010_Main", "box_ListWriter_418.Added", "box_EntityLoadingMonitor_232.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_418_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_418
  self.CourtYard_World_Entities = l0.Target
end
function export:f_box_ListWriter_418_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_418
  self.CourtYard_World_Entities = l0.Target
end
function export:f_box_FelonySoundController_591_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "S01M010_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1732135723", "1732135723", "S01M010_Main", "box_FelonySoundController_591.Disabled", "box_MissionLayer_v2_4.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_MultipleOR_228_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_148()
  l0 = self.box_MultipleOR_228
  l1 = self.box_MissionZone_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|143246136", "143246136", "S01M010_Main", "box_MultipleOR_228.Out", "box_MissionZone_148.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_333_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_310
  l0.Checkpoint = "CheckPoint_5"
  l0 = self.box_MultipleOR_333
  l1 = self.box_MissionCheckpointReach_310
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|144664612", "144664612", "S01M010_Main", "box_MultipleOR_333.Out", "box_MissionCheckpointReach_310.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_296_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_286
  l0.SoundId = "soundbinary/4003496994.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_296
  l1 = self.box_PlayDialog_v2_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1981175014", "1981175014", "S01M010_Main", "box_PlayDialog_v2_296.Finished", "box_PlayDialog_v2_286.Start", l0, l1)
  l1:Start()
end
function export:f_box_Intel_Controller_196_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Download_Gameplay_643()
  l0 = self.box_Intel_Controller_196
  l1 = self.box_Download_Gameplay_643
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2097919455", "2097919455", "S01M010_Main", "box_Intel_Controller_196.Disabled", "box_Download_Gameplay_643.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_534_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_260"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|801691004"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_260_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_534
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|326752545", "326752545", "S01M010_Main", "box_HackableController_v2_534.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_260.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_Target_Tag_Controller_422_TagAdded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|57637895"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_37_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Target_Tag_Controller_422
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|542859086", "542859086", "S01M010_Main", "box_Target_Tag_Controller_422.TagAdded", "box_VisibilityController_v2_37.Show", l0, l1)
  l1:Show()
end
function export:f_box_ReinforcementCallController_495_EnabledCallers()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_505
  l0.Position = "9223372069340157573"
  l0.Affiliation = "UZulu"
  l0.SearchOverrideParamTimeout = -1
  l0 = self.box_ReinforcementCallController_495
  l1 = self.box_AISquadStateController_505
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|301624526", "301624526", "S01M010_Main", "box_ReinforcementCallController_495.EnabledCallers", "box_AISquadStateController_505.SetInUntargetedSearch", l0, l1)
  l1:SetInUntargetedSearch()
end
function export:f_box_ReinforcementCallController_495_Registered()
  local l0
  self = self._graph
  self:OnEnter_box_ReinforcementCallController_495()
  l0 = self.box_ReinforcementCallController_495
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1185713186", "1185713186", "S01M010_Main", "box_ReinforcementCallController_495.Registered", "box_ReinforcementCallController_495.EnableCallers", l0, l0)
  l0:EnableCallers()
end
function export:f_box_CLOController_609_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_609
  self.Enemy_Tutorial_Exterior_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Enemy_Tutorial_Exterior_03
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_611"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1057305926"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_611_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_CLOController_609
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1060974394", "1060974394", "S01M010_Main", "box_CLOController_609.OnUserInPlace", "box_DPad_Hackable_Controller_611.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_TutorialController_392_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_391
  l0.Seconds = 60
  l0 = self.box_TutorialController_392
  l1 = self.box_Timer_v2_391
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|740558008", "740558008", "S01M010_Main", "box_TutorialController_392.DisplayRequested", "box_Timer_v2_391.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_392_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_551
  l0.SurvivalGuideItemDB = "Items.9223372053993007681"
  l0 = self.box_TutorialController_392
  l1 = self.box_TutorialController_551
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|19349773", "19349773", "S01M010_Main", "box_TutorialController_392.Out", "box_TutorialController_551.Display", l0, l1)
  l1:Display()
end
function export:f_box_DPad_Hackable_Controller_521_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_02
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_523"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1046553516"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_523_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1334562550", "1334562550", "S01M010_Main", "box_DPad_Hackable_Controller_521.Removed", "box_DPad_Hackable_Controller_523.Remove", clone, l0)
  l0:Remove()
end
function export:f_box_InteractionScriptController_471_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Intel_Controller_589
  l0.Entity = "9223372069104140478"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1114418258", "1114418258", "S01M010_Main", "box_InteractionScriptController_471.Enabled", "box_Intel_Controller_589.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TutorialController_219_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_282
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_TutorialController_219
  l1 = self.box_HackableController_v2_282
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1637972984", "1637972984", "S01M010_Main", "box_TutorialController_219.DisplayRequested", "box_HackableController_v2_282.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_TutorialController_219_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_57()
  l0 = self.box_TutorialController_219
  l1 = self.box_Hackable_Monitor_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|812587704", "812587704", "S01M010_Main", "box_TutorialController_219.NotificationHidden", "box_Hackable_Monitor_57.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_DPad_Hackable_Controller_268_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_78
  l0.Input = self.S01M010_AiList
  l0.Data[0] = self.EnemyGameplay_02
  l0.Data[1] = self.EnemyGameplay_03
  l0.Data[2] = self.EnemyGameplay_04
  l0.Data[3] = self.EnemyGameplay_05
  l0.Data[4] = self.EnemyGameplay_07
  l0.Data[5] = self.EnemyGameplay_09
  l0.Data[6] = self.EnemyGameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|411499255", "411499255", "S01M010_Main", "box_DPad_Hackable_Controller_268.Added", "box_ListWriter_78.Add", clone, l0)
  l0:Add()
end
function export:f_box_MultipleOR_338_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_340
  l0.Checkpoint = "CheckPoint_9"
  l0 = self.box_MultipleOR_338
  l1 = self.box_MissionCheckpointReach_340
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|903555771", "903555771", "S01M010_Main", "box_MultipleOR_338.Out", "box_MissionCheckpointReach_340.In", l0, l1)
  l1:In()
end
function export:f_box_FelonySystemController_v2_137_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_593"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|743185561"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_593_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|446036617", "446036617", "S01M010_Main", "box_FelonySystemController_v2_137.Disabled", "box_FelonySoundController_593.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S01M010_Weather_173_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_381"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1899531729"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_381_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_173
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1962568320", "1962568320", "S01M010_Main", "box_S01M010_Weather_173.Out", "box_SmartphoneAppController_381.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_Show_Or_Hide_All_UI_612_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_v2_52
  l0.CLO[0] = "9223372047874975198"
  l0.CLO[1] = "9223372047874975197"
  l0.CLO[2] = "9223372047874975200"
  l0.CLO[3] = "9223372047874975199"
  l0.CLO[4] = "9223372047874975201"
  l0.CLO[5] = "9223372064215696431"
  l0.CLO[6] = "9223372064215696432"
  l0.CLO[7] = "9223372047874975203"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1504420383", "1504420383", "S01M010_Main", "box_Show_Or_Hide_All_UI_612.Hidden", "box_CLOController_v2_52.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_SetActionMap_v2_64_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = "9223372047565021189"
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|839036244"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_box_Player_State_Controller_13_CoverEntered
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|285837113", "285837113", "S01M010_Main", "box_SetActionMap_v2_64.Pushed", "box_Player_State_Controller_13.EnterCover", clone, l0)
  l0:EnterCover()
end
function export:f_box_MoveableEntityController_229_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|90656953", "90656953", "S01M010_Main", "box_MoveableEntityController_229.MovedForward", "box_OnceOnly_v3_255.In", clone, l0)
  l0:In(0)
end
function export:f_box_CLOController_v2_214_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_214
  self.kmcList = l0.UserIDList
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1347723419"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_51_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_51_Out_1
  l0 = self.box_CLOController_v2_214
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1789989232", "1789989232", "S01M010_Main", "box_CLOController_v2_214.OnUserInPlace", "box_Ordered_Output_51.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_146_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_309
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_146
  l1 = self.box_CinematicPrep_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1327594671", "1327594671", "S01M010_Main", "box_HackableController_v2_146.Disabled", "box_CinematicPrep_309.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_FelonySoundController_595_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_373"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|102673741"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_373_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|176581163", "176581163", "S01M010_Main", "box_FelonySoundController_595.Enabled", "box_SetActionMap_v2_373.Push", clone, l0)
  l0:Push()
end
function export:f_box_MissionLayer_v2_311_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1577538684"
  l0.Out = self.f_box_Get_Player_ID_308_Out
  l0 = self.box_MissionLayer_v2_311
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2090583475", "2090583475", "S01M010_Main", "box_MissionLayer_v2_311.Loaded", "box_Get_Player_ID_308.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_579_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_30
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_579
  l1 = self.box_HackableController_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1489436672", "1489436672", "S01M010_Main", "box_HackableController_v2_579.Disabled", "box_HackableController_v2_30.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySound_v2_566_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_467
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_PlaySound_v2_566
  l1 = self.box_PlaySound_v2_467
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1753529046", "1753529046", "S01M010_Main", "box_PlaySound_v2_566.Out", "box_PlaySound_v2_467.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionLayer_v2_339_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_341"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1808211663"
  l0.Out = self.f_box_Get_Player_ID_341_Out
  l0 = self.box_MissionLayer_v2_339
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|806155789", "806155789", "S01M010_Main", "box_MissionLayer_v2_339.Loaded", "box_Get_Player_ID_341.In", l0, l1)
  l1:In()
end
function export:f_box_DPad_Hackable_Controller_55_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientAttract"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_398"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|813595310"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_box_DPad_Hackable_Controller_398_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1777582237", "1777582237", "S01M010_Main", "box_DPad_Hackable_Controller_55.Removed", "box_DPad_Hackable_Controller_398.Add", clone, l0)
  l0:Add()
end
function export:f_box_PawnHealthMonitor_v3_239_DBNO()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_242()
  l0 = self.box_PawnHealthMonitor_v3_239
  l1 = self.box_OnceOnly_v3_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1105793512", "1105793512", "S01M010_Main", "box_PawnHealthMonitor_v3_239.DBNO", "box_OnceOnly_v3_242.In", l0, l1)
  l1:In(1)
end
function export:f_box_PawnHealthMonitor_v3_239_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_421()
  l0 = self.box_PawnHealthMonitor_v3_239
  l1 = self.box_TutorialController_421
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1950138266", "1950138266", "S01M010_Main", "box_PawnHealthMonitor_v3_239.Disabled", "box_TutorialController_421.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_PawnHealthMonitor_v3_239_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_421()
  l0 = self.box_PawnHealthMonitor_v3_239
  l1 = self.box_TutorialController_421
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2078042323", "2078042323", "S01M010_Main", "box_PawnHealthMonitor_v3_239.Enabled", "box_TutorialController_421.Display", l0, l1)
  l1:Display()
end
function export:f_box_PawnHealthMonitor_v3_239_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_242()
  l0 = self.box_PawnHealthMonitor_v3_239
  l1 = self.box_OnceOnly_v3_242
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1827743162", "1827743162", "S01M010_Main", "box_PawnHealthMonitor_v3_239.Killed", "box_OnceOnly_v3_242.In", l0, l1)
  l1:In(0)
end
function export:f_box_SmartphoneAppController_378_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1855102795"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_144_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|224043568", "224043568", "S01M010_Main", "box_SmartphoneAppController_378.OverrideActivated", "box_FelonySystemController_v2_144.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_468_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_567"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1664888768"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_468
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1603145601", "1603145601", "S01M010_Main", "box_PlaySound_v2_468.Out", "box_MissionMusicController_567.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_130_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_130
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_146
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_130
  l1 = self.box_HackableController_v2_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1814350665", "1814350665", "S01M010_Main", "box_ListWriter_130.Added", "box_HackableController_v2_146.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_130_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_130
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_130_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_130
  self.AccessDoorDisable = l0.Target
end
function export:f_box_CLOController_389_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_389
  self.EnemyTutorial_Exterior_01 = l0.UserID
  l0 = self.box_CLOController_412
  l0.CLO = "9223372057212037717"
  l0 = self.box_CLOController_389
  l1 = self.box_CLOController_412
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|569109359", "569109359", "S01M010_Main", "box_CLOController_389.OnUserInPlace", "box_CLOController_412.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_112_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_372
  l0.HackableEntity = "9223372054409466352"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_112
  l1 = self.box_HackableController_v2_372
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1646172319", "1646172319", "S01M010_Main", "box_HackableController_v2_112.Disabled", "box_HackableController_v2_372.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_302_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_158
  l0.CLO[0] = "9223372057272174795"
  l0.CLO[1] = "9223372057272174797"
  l0.CLO[2] = "9223372058418094309"
  l0.CLO[3] = "9223372057272174799"
  l0.CLO[4] = "9223372058418094308"
  l0.CLO[5] = "9223372057272174802"
  l0.CLO[6] = "9223372057272174803"
  l0.CLO[7] = "9223372058418094307"
  l0.CLO[8] = "9223372057272174805"
  l0.CLO[9] = "9223372057272174806"
  l0.CLO[10] = "9223372058418094306"
  l0 = self.box_HackableController_v2_302
  l1 = self.box_CLOController_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1616153446", "1616153446", "S01M010_Main", "box_HackableController_v2_302.Disabled", "box_CLOController_v2_158.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Interact_Gameplay_45_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_45()
  l0 = self.box_Interact_Gameplay_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1596234372", "1596234372", "S01M010_Main", "box_Interact_Gameplay_45.Interacted", "box_Interact_Gameplay_45.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_45_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_556()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_Intel_Controller_556
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1199925082", "1199925082", "S01M010_Main", "box_Interact_Gameplay_45.Started", "box_Intel_Controller_556.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_45_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_556()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_Intel_Controller_556
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|663130680", "663130680", "S01M010_Main", "box_Interact_Gameplay_45.Stopped", "box_Intel_Controller_556.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PlayDialog_v2_7_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_35
  l0.SoundId = "soundbinary/133398520.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_7
  l1 = self.box_PlayDialog_v2_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1317368011", "1317368011", "S01M010_Main", "box_PlayDialog_v2_7.Finished", "box_PlayDialog_v2_35.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_250_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_250
  l1 = self.box_s01_M010_BigData_GiantScreen_Main_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1401457228", "1401457228", "S01M010_Main", "box_MissionCheckpointReach_250.Out", "box_s01_M010_BigData_GiantScreen_Main_67.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_321_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_525
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0 = self.box_CinematicPrep_321
  l1 = self.box_HackableController_v2_525
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|327019808", "327019808", "S01M010_Main", "box_CinematicPrep_321.PostOut", "box_HackableController_v2_525.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_EntityLoadingMonitor_232_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_315
  l0.HackableEntityList = self.CourtYard_World_Entities
  l0.ProfileLinkedToHack = 1
  l0 = self.box_EntityLoadingMonitor_232
  l1 = self.box_HackableController_v2_315
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1577124280", "1577124280", "S01M010_Main", "box_EntityLoadingMonitor_232.AllLoaded", "box_HackableController_v2_315.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Door_Controller_605_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_628"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1494573827"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_628_Changed
  l0 = self.box_Hackable_Door_Controller_605
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2134241829", "2134241829", "S01M010_Main", "box_Hackable_Door_Controller_605.AiAccessDisabled", "box_Change_GraphicKit_Model_628.Change", l0, l1)
  l1:Change()
end
function export:f_box_AISquadStateController_505_UntargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_40
  l0.SoundId = "soundbinary/3538516433.bnk"
  l0 = self.box_AISquadStateController_505
  l1 = self.box_PlaySound_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1349168120", "1349168120", "S01M010_Main", "box_AISquadStateController_505.UntargetedSearchSet", "box_PlaySound_v2_40.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionLayer_v2_423_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_407"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|843802326"
  l0.Out = self.f_box_Get_Player_ID_407_Out
  l0 = self.box_MissionLayer_v2_423
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1484622308", "1484622308", "S01M010_Main", "box_MissionLayer_v2_423.Loaded", "box_Get_Player_ID_407.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_409_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_237
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_PlayDialog_v2_409
  l1 = self.box_PlaySound_v2_237
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|130976027", "130976027", "S01M010_Main", "box_PlayDialog_v2_409.Finished", "box_PlaySound_v2_237.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionMessageController_v3_656_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_223
  l0.entity = "9223372052040779329"
  l0.ItemDB = "Items.9223372052040779115"
  l0.RewardEvent = "OnHackSuccess"
  l0 = self.box_MissionMessageController_v3_656
  l1 = self.box_RewardController_v3_223
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|781521919", "781521919", "S01M010_Main", "box_MissionMessageController_v3_656.Out", "box_RewardController_v3_223.RegisterRewards", l0, l1)
  l1:RegisterRewards()
end
function export:f_box_OnceOnly_v3_530_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_OnceOnly_v3_530
  l1 = self.box_s01_M010_BigData_GiantScreen_Main_528
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1973711498", "1973711498", "S01M010_Main", "box_OnceOnly_v3_530.Out", "box_s01_M010_BigData_GiantScreen_Main_528.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_206_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_208
  l0.Seconds = 1.25
  l0 = self.box_PlaySound_v2_206
  l1 = self.box_Timer_v2_208
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|957979609", "957979609", "S01M010_Main", "box_PlaySound_v2_206.Out", "box_Timer_v2_208.Start", l0, l1)
  l1:Start()
end
function export:f_box_S01_M010_CIN_BeachParty_Main_96_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1684844295"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_147_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_S01_M010_CIN_BeachParty_Main_96
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|37110467", "37110467", "S01M010_Main", "box_S01_M010_CIN_BeachParty_Main_96.Out", "box_FelonySystemController_v2_147.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_S01_M010_CIN_BeachParty_Main_96_VentilationShaftEscape_CIN_Finish()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_541
  l0.SoundId = "soundbinary/1198424637.bnk"
  l0 = self.box_S01_M010_CIN_BeachParty_Main_96
  l1 = self.box_PlaySound_v2_541
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|498355404", "498355404", "S01M010_Main", "box_S01_M010_CIN_BeachParty_Main_96.VentilationShaftEscape_CIN Finish", "box_PlaySound_v2_541.Play", l0, l1)
  l1:Play()
end
function export:f_box_S01_M010_CIN_BeachParty_Main_96_VentilationShaftEscape_CIN_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_180
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_S01_M010_CIN_BeachParty_Main_96
  l1 = self.box_PlaySound_v2_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|973247644", "973247644", "S01M010_Main", "box_S01_M010_CIN_BeachParty_Main_96.VentilationShaftEscape_CIN Started", "box_PlaySound_v2_180.Play", l0, l1)
  l1:Play()
end
function export:f_box_Hackable_Door_Controller_606_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_605
  l0.Entity = "9223372059224539295"
  l0 = self.box_Hackable_Door_Controller_606
  l1 = self.box_Hackable_Door_Controller_605
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1695309388", "1695309388", "S01M010_Main", "box_Hackable_Door_Controller_606.AiAccessDisabled", "box_Hackable_Door_Controller_605.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_Ordered_Output_198_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_39
  l0.SoundId = "soundbinary/396428598.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1458825884", "1458825884", "S01M010_Main", "box_Ordered_Output_198.Out", "box_PlayDialog_v2_39.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_198_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = nil
  l0.PropagationSpeed = nil
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
  l0._name = "box_BlackoutController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1728709101"
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = self.f_box_BlackoutController_71_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|209287741", "209287741", "S01M010_Main", "box_Ordered_Output_198.Out", "box_BlackoutController_71.StopBlackout", clone, l0)
  l0:StopBlackout()
end
function export:f_box_Ordered_Output_198_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_104
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective013",
    item = "Objective",
    id = "459234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective019",
    item = "Sub-Objective",
    id = "603844"
  }
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives",
    item = "Sub-Objective",
    id = "698199"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|746497930", "746497930", "S01M010_Main", "box_Ordered_Output_198.Out", "box_MissionMessageController_v3_104.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_ListForEach_221_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_221
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_221_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_221
  self.kmcData = l0.Data
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.kmcData
  l0._graph = self
  l0._name = "box_Vehicle_Controller_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|297551773"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_ListForEach_221
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1690319353", "1690319353", "S01M010_Main", "box_ListForEach_221.ForEach", "box_Vehicle_Controller_215.DisableForPlayer", l0, l1)
  l1:DisableForPlayer()
end
function export:f_box_ListForEach_221_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_221
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_221_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_221
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_221_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_221
  self.kmcData = l0.Data
end
function export:f_box_ListWriter_85_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_85
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_107
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_85
  l1 = self.box_HackableController_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1793272854", "1793272854", "S01M010_Main", "box_ListWriter_85.Added", "box_HackableController_v2_107.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_85_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_85
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_85_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_85
  self.AccessDoorDisable = l0.Target
end
function export:f_box_TriggerMonitor_v2_117_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_390
  l0.Seconds = 3
  l0 = self.box_TriggerMonitor_v2_117
  l1 = self.box_Timer_v2_390
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|981026241", "981026241", "S01M010_Main", "box_TriggerMonitor_v2_117.Disabled", "box_Timer_v2_390.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_117_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372058903936058"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_640"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|737417446"
  l0.Enabled = self.f_box_InteractionScriptController_640_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_TriggerMonitor_v2_117
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1718063551", "1718063551", "S01M010_Main", "box_TriggerMonitor_v2_117.Enabled", "box_InteractionScriptController_640.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_117_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_117()
  l0 = self.box_TriggerMonitor_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|503293497", "503293497", "S01M010_Main", "box_TriggerMonitor_v2_117.Enter", "box_TriggerMonitor_v2_117.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_40_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_636"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1115763699"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_636_Changed
  l0 = self.box_PlaySound_v2_40
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2127530545", "2127530545", "S01M010_Main", "box_PlaySound_v2_40.Out", "box_Change_GraphicKit_Model_636.Change", l0, l1)
  l1:Change()
end
function export:f_box_DPad_Hackable_Controller_543_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_02
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_542"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1454935095"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_542_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1701251991", "1701251991", "S01M010_Main", "box_DPad_Hackable_Controller_543.Removed", "box_DPad_Hackable_Controller_542.Remove", clone, l0)
  l0:Remove()
end
function export:f_box_ListWriter_194_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_194
  self.JunctionBoxes = l0.Target
  l0 = self.box_HackableController_v2_193
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_194
  l1 = self.box_HackableController_v2_193
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|790985071", "790985071", "S01M010_Main", "box_ListWriter_194.Added", "box_HackableController_v2_193.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_194_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_194
  self.JunctionBoxes = l0.Target
end
function export:f_box_ListWriter_194_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_194
  self.JunctionBoxes = l0.Target
end
function export:f_box_CinematicPrep_287_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_645"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1735748449"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_645_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_645_Out_1
  l0 = self.box_CinematicPrep_287
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|509755752", "509755752", "S01M010_Main", "box_CinematicPrep_287.PostOut", "box_Ordered_Output_645.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_202
  l0.Affiliation = "UZulu"
  l0 = self.box_MissionMessageController_v3_68
  l1 = self.box_AISquadStateController_202
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|407492454", "407492454", "S01M010_Main", "box_MissionMessageController_v3_68.Out", "box_AISquadStateController_202.ForceVanish", l0, l1)
  l1:ForceVanish()
end
function export:f_box_MissionMessageController_v3_639_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_639
  l1 = self.box_s01_M010_BigData_GiantScreen_Main_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1680400937", "1680400937", "S01M010_Main", "box_MissionMessageController_v3_639.Out", "box_s01_M010_BigData_GiantScreen_Main_153.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMusicController_526_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_478
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|688799450", "688799450", "S01M010_Main", "box_MissionMusicController_526.Deactivated", "box_PlaySound_v2_478.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionMessageController_v3_337_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_356()
  l0 = self.box_MissionMessageController_v3_337
  l1 = self.box_TutorialController_356
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|722439792", "722439792", "S01M010_Main", "box_MissionMessageController_v3_337.Out", "box_TutorialController_356.Display", l0, l1)
  l1:Display()
end
function export:f_box_MapPointController_v4_234_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1557208082"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_18_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_MapPointController_v4_234
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|368390299", "368390299", "S01M010_Main", "box_MapPointController_v4_234.Hidden", "box_Show_Or_Hide_All_UI_18.Show", l0, l1)
  l1:Show()
end
function export:f_box_MultipleOR_249_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052040779117"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|458033593"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_229_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_249
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|664205803", "664205803", "S01M010_Main", "box_MultipleOR_249.Out", "box_MoveableEntityController_229.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_Ordered_Output_120_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reach_Gameplay_562()
  l0 = self.box_Reach_Gameplay_562
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1615977246", "1615977246", "S01M010_Main", "box_Ordered_Output_120.Out", "box_Reach_Gameplay_562.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_120_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_329
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1710183975", "1710183975", "S01M010_Main", "box_Ordered_Output_120.Out", "box_PlaySound_v2_329.Play", clone, l0)
  l0:Play()
end
function export:f_box_Change_GraphicKit_Model_635_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_544
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|299653955", "299653955", "S01M010_Main", "box_Change_GraphicKit_Model_635.Changed", "box_HackableController_v2_544.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_ListWriter_197_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_197
  self.TakedownTutorial = l0.Target
  l0 = self.box_ListWriter_194
  l0.Input = self.JunctionBoxes
  l0.Data[0] = "9223372051483390003"
  l0.Data[1] = "9223372051483390005"
  l0.Data[2] = "9223372051483390007"
  l0.Data[3] = "9223372051483390009"
  l0.Data[4] = "9223372051483390011"
  l0.Data[5] = "9223372051483390013"
  l0.Data[6] = "9223372051483390015"
  l0.Data[7] = "9223372051483390017"
  l0.Data[8] = "9223372051483390019"
  l0.Data[9] = "9223372052137878771"
  l0.Data[10] = "9223372053478527657"
  l0.Data[11] = "9223372053478534917"
  l0 = self.box_ListWriter_197
  l1 = self.box_ListWriter_194
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1705875729", "1705875729", "S01M010_Main", "box_ListWriter_197.Added", "box_ListWriter_194.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_197_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_197
  self.TakedownTutorial = l0.Target
end
function export:f_box_ListWriter_197_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_197
  self.TakedownTutorial = l0.Target
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_238_Ended()
  local l0, l1
  self = self._graph
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_238
  l1 = self.box_S01_M010_CIN_BeachParty_Main_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1580556747", "1580556747", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_238.Ended", "box_S01_M010_CIN_BeachParty_Main_96.In", l0, l1)
  l1:In()
end
function export:f_box_SendTrackingEvent_121_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_43
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective022",
    item = "Objective",
    id = "688739"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|15666721", "15666721", "S01M010_Main", "box_SendTrackingEvent_121.Out", "box_MissionMessageController_v3_43.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_93_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_68
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  l0.IncrementalObjectiveTotalSub1 = 1
  l0 = self.box_MissionMessageController_v3_93
  l1 = self.box_MissionMessageController_v3_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|296262586", "296262586", "S01M010_Main", "box_MissionMessageController_v3_93.Out", "box_MissionMessageController_v3_68.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_HackableController_v2_457_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_348()
  l0 = self.box_HackableController_v2_457
  l1 = self.box_MultipleOR_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1635913787", "1635913787", "S01M010_Main", "box_HackableController_v2_457.Enabled", "box_MultipleOR_348.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_OnceOnly_v3_476_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_546()
  l0 = self.box_OnceOnly_v3_476
  l1 = self.box_TutorialController_546
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2059473359", "2059473359", "S01M010_Main", "box_OnceOnly_v3_476.Out", "box_TutorialController_546.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Timer_v2_208_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1384893643"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_Timer_v2_208
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1376077393", "1376077393", "S01M010_Main", "box_Timer_v2_208.TimeElapsed", "box_MissionMusicController_161.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlayDialog_v2_22_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_109
  l0.SoundId = "soundbinary/1866421549.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_22
  l1 = self.box_PlayDialog_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|628926090", "628926090", "S01M010_Main", "box_PlayDialog_v2_22.Finished", "box_PlayDialog_v2_109.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_v2_58_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_58
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self.box_ListWriter_36
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0 = self.box_CLOController_v2_58
  l1 = self.box_ListWriter_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2015890096", "2015890096", "S01M010_Main", "box_CLOController_v2_58.OnUserInPlace", "box_ListWriter_36.Add", l0, l1)
  l1:Add()
end
function export:f_box_Ordered_Output_653_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|109399369", "109399369", "S01M010_Main", "box_Ordered_Output_653.Out", "box_s01_M010_BigData_GiantScreen_Main_118.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_653_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_571"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|820201103"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_571_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1738048184", "1738048184", "S01M010_Main", "box_Ordered_Output_653.Out", "box_MissionMusicController_571.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_CLOController_v2_189_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_189
  self.kmcList = l0.UserIDList
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1589082404"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_160_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_160_Out_1
  l0 = self.box_CLOController_v2_189
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1227455727", "1227455727", "S01M010_Main", "box_CLOController_v2_189.OnUserInPlace", "box_Ordered_Output_160.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_342_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_238
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1663290382", "1663290382", "S01M010_Main", "box_Ordered_Output_342.Out", "box_s01_M010_BigData_GiantScreen_Main_238.Off", clone, l0)
  l0:Off()
end
function export:f_box_Ordered_Output_342_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_77
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2075810467", "2075810467", "S01M010_Main", "box_Ordered_Output_342.Out", "box_PlaySound_v2_77.Play", clone, l0)
  l0:Play()
end
function export:f_box_OnceOnly_v3_242_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_239()
  l0 = self.box_OnceOnly_v3_242
  l1 = self.box_PawnHealthMonitor_v3_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2105080539", "2105080539", "S01M010_Main", "box_OnceOnly_v3_242.Out", "box_PawnHealthMonitor_v3_239.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|594343427"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_198_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_198_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_198_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2018865606", "2018865606", "S01M010_Main", "box_Ordered_Output_79.Out", "box_Ordered_Output_198.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069104140478"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_540"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|190191519"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|219065809", "219065809", "S01M010_Main", "box_Ordered_Output_79.Out", "box_VisibilityController_v2_540.Show", clone, l0)
  l0:Show()
end
function export:f_box_MissionMessageController_v3_114_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_119
  l0.Affiliation = "UZulu"
  l0 = self.box_MissionMessageController_v3_114
  l1 = self.box_AISquadStateController_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|523825604", "523825604", "S01M010_Main", "box_MissionMessageController_v3_114.Out", "box_AISquadStateController_119.ForceVanish", l0, l1)
  l1:ForceVanish()
end
function export:f_box_FelonySystemController_v2_452_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_563"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|240869543"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_563_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|263265138", "263265138", "S01M010_Main", "box_FelonySystemController_v2_452.Disabled", "box_FelonySoundController_563.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_41_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoMoveState"
  l0._graph = self
  l0._name = "box_SetActionMap_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|792799921"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_87_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_CinematicPrep_41
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1699799406", "1699799406", "S01M010_Main", "box_CinematicPrep_41.PostOut", "box_SetActionMap_v2_87.Push", l0, l1)
  l1:Push()
end
function export:f_box_Change_GraphicKit_Model_633_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_129
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective018",
    item = "Sub-Objective",
    id = "603843"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1974842706", "1974842706", "S01M010_Main", "box_Change_GraphicKit_Model_633.Changed", "box_MissionMessageController_v3_129.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_ListWriter_166_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_166
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_167
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_166
  l1 = self.box_HackableController_v2_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|627601892", "627601892", "S01M010_Main", "box_ListWriter_166.Added", "box_HackableController_v2_167.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_166_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_166
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_166_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_166
  self.AccessDoorDisable = l0.Target
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_313()
  l0 = self.box_MultipleOR_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|421031608", "421031608", "S01M010_Main", "box_Ordered_Output_33.Out", "box_MultipleOR_313.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_135
  l0.SoundId = "soundbinary/1040363428.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2031991649", "2031991649", "S01M010_Main", "box_Ordered_Output_33.Out", "box_PlayDialog_v2_135.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Target_Tag_Controller_422
  l0.TargetEntity = self.EnemyGameplay_01
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|911341986", "911341986", "S01M010_Main", "box_Ordered_Output_27.Out", "box_Target_Tag_Controller_422.AddTagEntity", clone, l0)
  l0:AddTagEntity()
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_25
  l0.SoundId = "soundbinary/3538516433.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|907924250", "907924250", "S01M010_Main", "box_Ordered_Output_27.Out", "box_PlaySound_v2_25.Play", clone, l0)
  l0:Play()
end
function export:f_box_InteractionScriptController_640_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Intel_Controller_12
  l0.Entity = "9223372068507759626"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1007538275", "1007538275", "S01M010_Main", "box_InteractionScriptController_640.Enabled", "box_Intel_Controller_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_FelonySoundController_593_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_157
  l0.MapPoint = "9223372047335524055"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1024100676", "1024100676", "S01M010_Main", "box_FelonySoundController_593.Enabled", "box_MapPointController_v4_157.Show", clone, l0)
  l0:Show()
end
function export:f_box_SetActionMap_v2_416_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_234
  l0.MapPoint = "9223372061240119421"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|703513393", "703513393", "S01M010_Main", "box_SetActionMap_v2_416.Popped", "box_MapPointController_v4_234.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlayDialog_v2_60_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_29
  l0.SoundId = "soundbinary/166028691.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_60
  l1 = self.box_PlayDialog_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2061648713", "2061648713", "S01M010_Main", "box_PlayDialog_v2_60.Finished", "box_PlayDialog_v2_29.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_578_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_80
  l0.CLO[0] = "9223372047874975198"
  l0.CLO[1] = "9223372047874975197"
  l0.CLO[2] = "9223372047874975200"
  l0.CLO[3] = "9223372047874975199"
  l0.CLO[4] = "9223372047874975201"
  l0.CLO[5] = "9223372064215696431"
  l0.CLO[6] = "9223372064215696432"
  l0.CLO[7] = "9223372047874975203"
  l0 = self.box_HackableController_v2_578
  l1 = self.box_CLOController_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2117878733", "2117878733", "S01M010_Main", "box_HackableController_v2_578.Disabled", "box_CLOController_v2_80.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_518_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1825981922"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_150_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_150_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_150_Out_2
  l0 = self.box_CinematicPrep_518
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|98822166", "98822166", "S01M010_Main", "box_CinematicPrep_518.PostOut", "box_Ordered_Output_150.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_588_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_513()
  l0 = self.box_Hackable_Monitor_588
  l1 = self.box_TutorialController_513
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|505439938", "505439938", "S01M010_Main", "box_Hackable_Monitor_588.HackSuccess", "box_TutorialController_513.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_TutorialController_356_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_377()
  l0 = self.box_TutorialController_356
  l1 = self.box_TriggerMonitor_v2_377
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|411879029", "411879029", "S01M010_Main", "box_TutorialController_356.DisplayRequested", "box_TriggerMonitor_v2_377.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_356_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_377()
  l0 = self.box_TutorialController_356
  l1 = self.box_TriggerMonitor_v2_377
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1989704267", "1989704267", "S01M010_Main", "box_TutorialController_356.NotificationHidden", "box_TriggerMonitor_v2_377.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_604_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_85
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0 = self.box_HackableController_v2_604
  l1 = self.box_ListWriter_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|512465013", "512465013", "S01M010_Main", "box_HackableController_v2_604.Disabled", "box_ListWriter_85.Add", l0, l1)
  l1:Add()
end
function export:f_box_OnceOnly_v3_257_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_243
  l0.MoveableEntity = "9223372063874878362"
  l0 = self.box_OnceOnly_v3_257
  l1 = self.box_Moveable_Entity_Monitor_243
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|181513566", "181513566", "S01M010_Main", "box_OnceOnly_v3_257.Out", "box_Moveable_Entity_Monitor_243.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_624_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_624
  self.Enemy_Tutorial_Exterior_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Enemy_Tutorial_Exterior_03
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_623"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|810430246"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_623_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_CLOController_624
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|22049265", "22049265", "S01M010_Main", "box_CLOController_624.OnUserInPlace", "box_DPad_Hackable_Controller_623.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_CinematicPrep_309_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_102
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective013",
    item = "Objective",
    id = "459234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  l0 = self.box_CinematicPrep_309
  l1 = self.box_MissionMessageController_v3_102
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1380509262", "1380509262", "S01M010_Main", "box_CinematicPrep_309.PostOut", "box_MissionMessageController_v3_102.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_DPad_Hackable_Controller_6_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientShutdown"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_268"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|429028009"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_box_DPad_Hackable_Controller_268_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|653620697", "653620697", "S01M010_Main", "box_DPad_Hackable_Controller_6.Added", "box_DPad_Hackable_Controller_268.Add", clone, l0)
  l0:Add()
end
function export:f_box_SetActionMap_v2_87_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  l0.TrackingEvent = "EraseYourFootprints"
  l0._graph = self
  l0._name = "box_SendTrackingEvent_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|677706951"
  l0.Out = self.f_box_SendTrackingEvent_121_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1901787328", "1901787328", "S01M010_Main", "box_SetActionMap_v2_87.Pushed", "box_SendTrackingEvent_121.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_501_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_502()
  l0 = self.box_MissionCheckpointReach_501
  l1 = self.box_MultipleOR_502
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|421335916", "421335916", "S01M010_Main", "box_MissionCheckpointReach_501.Out", "box_MultipleOR_502.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionCheckpointReach_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_376"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1419338627"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_376_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MissionCheckpointReach_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1426285067", "1426285067", "S01M010_Main", "box_MissionCheckpointReach_20.Out", "box_Ordered_Output_376.In", l0, l1)
  l1:In()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_260_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_518
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1906275296", "1906275296", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_260.Locked", "box_CinematicPrep_518.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Show_Or_Hide_All_UI_31_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_417()
  l0 = self.box_Timer_v2_417
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|980102601", "980102601", "S01M010_Main", "box_Show_Or_Hide_All_UI_31.Shown", "box_Timer_v2_417.Start", clone, l0)
  l0:Start()
end
function export:f_box_DPad_Hackable_Controller_623_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_622
  l0.Input = self.EnemyExterior
  l0.Data[0] = self.EnemyTutorial_Exterior_01
  l0.Data[1] = self.EnemyTutorial_Exterior_02
  l0.Data[2] = self.Enemy_Tutorial_Exterior_03
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|737224222", "737224222", "S01M010_Main", "box_DPad_Hackable_Controller_623.Removed", "box_ListWriter_622.Add", clone, l0)
  l0:Add()
end
function export:f_box_DPad_Hackable_Controller_398_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_396()
  l0 = self.box_TutorialController_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2004492093", "2004492093", "S01M010_Main", "box_DPad_Hackable_Controller_398.Added", "box_TutorialController_396.Display", clone, l0)
  l0:Display()
end
function export:f_box_TimeScale_Controller_406_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_371"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1437131399"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_371_OverrideActivated
  l0.OverrideCleared = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|770173653", "770173653", "S01M010_Main", "box_TimeScale_Controller_406.Locked", "box_SmartphoneAppController_371.ActivateOverride", clone, l0)
  l0:ActivateOverride()
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
  l0 = self.box_MissionCheckpointReach_14
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1063746224", "1063746224", "S01M010_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_14.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMusicController_571_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_474
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1236799031", "1236799031", "S01M010_Main", "box_MissionMusicController_571.Deactivated", "box_PlaySound_v2_474.Play", clone, l0)
  l0:Play()
end
function export:f_box_Get_Player_ID_326_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|617151092", "617151092", "S01M010_Main", "box_Get_Player_ID_326.Out", "box_S01M010_Weather_140.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_149_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_148()
  l0 = self.box_MissionZone_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|299889258", "299889258", "S01M010_Main", "box_Ordered_Output_149.Out", "box_MissionZone_148.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_149_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01_M010_CIN_BlumeIntruder_Main_270
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|918623758", "918623758", "S01M010_Main", "box_Ordered_Output_149.Out", "box_S01_M010_CIN_BlumeIntruder_Main_270.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateController_587_VanishSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|831441970"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_149_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_149_Out_1
  l0 = self.box_AISquadStateController_587
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2006651968", "2006651968", "S01M010_Main", "box_AISquadStateController_587.VanishSet", "box_Ordered_Output_149.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_544_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_550"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1060536551"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_550_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_544
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2003583582", "2003583582", "S01M010_Main", "box_HackableController_v2_544.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_550.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_Player_State_Controller_13_CoverEntered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = 0
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_638"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2121128111"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = self.f_box_Player_State_Controller_638_CoverToCoverAllowedSet
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|478686856", "478686856", "S01M010_Main", "box_Player_State_Controller_13.CoverEntered", "box_Player_State_Controller_638.SetCoverToCoverAllowed", clone, l0)
  l0:SetCoverToCoverAllowed()
end
function export:f_box_Get_Player_ID_407_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_465
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|48683467", "48683467", "S01M010_Main", "box_Get_Player_ID_407.Out", "box_S01M010_Weather_465.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_171_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_171
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_172
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_171
  l1 = self.box_HackableController_v2_172
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|76404295", "76404295", "S01M010_Main", "box_ListWriter_171.Added", "box_HackableController_v2_172.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_171_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_171
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_171_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_171
  self.AccessDoorDisable = l0.Target
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_113_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_335()
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_113
  l1 = self.box_MultipleOR_335
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|159303163", "159303163", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_113.Started", "box_MultipleOR_335.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_129_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_534
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0 = self.box_MissionMessageController_v3_129
  l1 = self.box_HackableController_v2_534
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|774272314", "774272314", "S01M010_Main", "box_MissionMessageController_v3_129.Out", "box_HackableController_v2_534.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_FelonySystemController_v2_175_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_510"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2093976026"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_510_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|913564043", "913564043", "S01M010_Main", "box_FelonySystemController_v2_175.Disabled", "box_FelonySoundController_510.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionMessageController_v3_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_338()
  l0 = self.box_MissionMessageController_v3_42
  l1 = self.box_MultipleOR_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1575719008", "1575719008", "S01M010_Main", "box_MissionMessageController_v3_42.Out", "box_MultipleOR_338.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MapPointController_v4_349_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_337
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective018",
    item = "Sub-Objective",
    id = "603843"
  }
  l0 = self.box_MapPointController_v4_349
  l1 = self.box_MissionMessageController_v3_337
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1526441887", "1526441887", "S01M010_Main", "box_MapPointController_v4_349.Shown", "box_MissionMessageController_v3_337.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_SmartphoneAppController_54_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|442283675"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_137_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1466075470", "1466075470", "S01M010_Main", "box_SmartphoneAppController_54.OverrideActivated", "box_FelonySystemController_v2_137.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_v2_52_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_52
  self.EnemyGameplay_01 = l0.UserID[0]
  self.EnemyGameplay_02 = l0.UserID[1]
  self.EnemyGameplay_03 = l0.UserID[2]
  self.EnemyGameplay_04 = l0.UserID[3]
  self.EnemyGameplay_05 = l0.UserID[4]
  self.EnemyGameplay_09 = l0.UserID[5]
  self.EnemyGameplay_10 = l0.UserID[6]
  self.EnemyGameplay_07 = l0.UserID[7]
  l0 = self.box_AISquadStateController_224
  l0.Affiliation = "UZulu"
  l0 = self.box_CLOController_v2_52
  l1 = self.box_AISquadStateController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|960454092", "960454092", "S01M010_Main", "box_CLOController_v2_52.OnUserInPlace", "box_AISquadStateController_224.SetInWander", l0, l1)
  l1:SetInWander()
end
function export:f_box_PlaySound_v2_180_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_297()
  l0 = self.box_PlaySound_v2_180
  l1 = self.box_ReinforcementSystemMonitor_v2_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1874319862", "1874319862", "S01M010_Main", "box_PlaySound_v2_180.Out", "box_ReinforcementSystemMonitor_v2_297.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_504_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_503
  l0.Checkpoint = "CheckPoint_10"
  l0 = self.box_MultipleOR_504
  l1 = self.box_MissionCheckpointReach_503
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|504577869", "504577869", "S01M010_Main", "box_MultipleOR_504.Out", "box_MissionCheckpointReach_503.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_324_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_305"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2142426732"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_305_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_305_Out_1
  l0 = self.box_MissionCheckpointReach_324
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1449373281", "1449373281", "S01M010_Main", "box_MissionCheckpointReach_324.Out", "box_Ordered_Output_305.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_193_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_635"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|672607271"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_635_Changed
  l0 = self.box_HackableController_v2_193
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1891723209", "1891723209", "S01M010_Main", "box_HackableController_v2_193.Disabled", "box_Change_GraphicKit_Model_635.Change", l0, l1)
  l1:Change()
end
function export:f_box_HackableController_v2_282_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_57()
  l0 = self.box_HackableController_v2_282
  l1 = self.box_Hackable_Monitor_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|516611156", "516611156", "S01M010_Main", "box_HackableController_v2_282.Enabled", "box_Hackable_Monitor_57.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Restore_Mission_SubObjectives_128_Restored()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_653"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|711479338"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_653_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_653_Out_1
  l0 = self.box_Restore_Mission_SubObjectives_128
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1732006070", "1732006070", "S01M010_Main", "box_Restore_Mission_SubObjectives_128.Restored", "box_Ordered_Output_653.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_584_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_585()
  l0 = self.box_TriggerMonitor_v2_584
  l1 = self.box_TutorialController_585
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|369200157", "369200157", "S01M010_Main", "box_TriggerMonitor_v2_584.Disabled", "box_TutorialController_585.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_584_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_89()
  l0 = self.box_TriggerMonitor_v2_584
  l1 = self.box_TutorialController_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1687579169", "1687579169", "S01M010_Main", "box_TriggerMonitor_v2_584.Enter", "box_TutorialController_89.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MissionMusicController_449_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_314
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1932433896", "1932433896", "S01M010_Main", "box_MissionMusicController_449.Deactivated", "box_PlaySound_v2_314.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlayDialog_v2_312_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_409
  l0.SoundId = "soundbinary/482010863.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_312
  l1 = self.box_PlayDialog_v2_409
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|978495540", "978495540", "S01M010_Main", "box_PlayDialog_v2_312.Finished", "box_PlayDialog_v2_409.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_288_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_49
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0 = self.box_HackableController_v2_288
  l1 = self.box_CLOController_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1444175555", "1444175555", "S01M010_Main", "box_HackableController_v2_288.Disabled", "box_CLOController_v2_49.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_580_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_560()
  l0 = self.box_HackableController_v2_580
  l1 = self.box_TriggerMonitor_v2_560
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1154046315", "1154046315", "S01M010_Main", "box_HackableController_v2_580.Disabled", "box_TriggerMonitor_v2_560.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_S01M010_Weather_465_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1377931792"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_294_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_465
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|877901701", "877901701", "S01M010_Main", "box_S01M010_Weather_465.Out", "box_SmartphoneAppController_294.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_FelonySoundController_596_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_131
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1564543989", "1564543989", "S01M010_Main", "box_FelonySoundController_596.Enabled", "box_HackableController_v2_131.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_TutorialController_421_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_549
  l0.SurvivalGuideItemDB = "Items.9223372053993007694"
  l0 = self.box_TutorialController_421
  l1 = self.box_TutorialController_549
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|827511695", "827511695", "S01M010_Main", "box_TutorialController_421.DisplayRequested", "box_TutorialController_549.Display", l0, l1)
  l1:Display()
end
function export:f_box_TutorialController_421_NotificationHidden()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_83
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_WheelTaserConsolidated",
    item = "Description",
    id = "606083"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_WheelTaserConsolidated_PC",
    id = "690017"
  }
  l0.Duration = -1
  l0 = self.box_TutorialController_421
  l1 = self.box_TutorialController_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1962452519", "1962452519", "S01M010_Main", "box_TutorialController_421.NotificationHidden", "box_TutorialController_83.Display", l0, l1)
  l1:Display()
end
function export:f_box_ListWriter_164_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_164
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_165
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_164
  l1 = self.box_HackableController_v2_165
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1611391653", "1611391653", "S01M010_Main", "box_ListWriter_164.Added", "box_HackableController_v2_165.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_164_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_164
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_164_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_164
  self.AccessDoorDisable = l0.Target
end
function export:f_box_Multiple_AND_192_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_554
  l0.HackableEntity = self.PlayerEntity
  l0 = self.box_Multiple_AND_192
  l1 = self.box_HackableController_v2_554
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|574341266", "574341266", "S01M010_Main", "box_Multiple_AND_192.Out", "box_HackableController_v2_554.ResetProfile", l0, l1)
  l1:ResetProfile()
end
function export:f_box_InstallPackageMonitor_101_InstallFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_501
  l0.Checkpoint = "CheckPoint_11"
  l0 = self.box_InstallPackageMonitor_101
  l1 = self.box_MissionCheckpointReach_501
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1010674345", "1010674345", "S01M010_Main", "box_InstallPackageMonitor_101.InstallFinished", "box_MissionCheckpointReach_501.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateController_106_UntargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_34
  l0.SoundId = "soundbinary/3538516433.bnk"
  l0 = self.box_AISquadStateController_106
  l1 = self.box_PlaySound_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1859435477", "1859435477", "S01M010_Main", "box_AISquadStateController_106.UntargetedSearchSet", "box_PlaySound_v2_34.Play", l0, l1)
  l1:Play()
end
function export:f_box_Intel_Controller_590_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_475
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Intel_Controller_590
  l1 = self.box_CinematicPrep_475
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|764846035", "764846035", "S01M010_Main", "box_Intel_Controller_590.Disabled", "box_CinematicPrep_475.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Moveable_Entity_Monitor_253_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_254()
  l0 = self.box_Moveable_Entity_Monitor_253
  l1 = self.box_MultipleOR_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1403758090", "1403758090", "S01M010_Main", "box_Moveable_Entity_Monitor_253.OnBkwMovementStarted", "box_MultipleOR_254.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionCheckpointReach_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1320800680"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_MissionCheckpointReach_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1447447596", "1447447596", "S01M010_Main", "box_MissionCheckpointReach_14.Out", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_TutorialController_76_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_395()
  l0 = self.box_TutorialController_76
  l1 = self.box_Hack_Gameplay_395
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|997909718", "997909718", "S01M010_Main", "box_TutorialController_76.DisplayRequested", "box_Hack_Gameplay_395.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_76_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_395()
  l0 = self.box_TutorialController_76
  l1 = self.box_Hack_Gameplay_395
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|457149567", "457149567", "S01M010_Main", "box_TutorialController_76.NotificationHidden", "box_Hack_Gameplay_395.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlayDialog_v2_210_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_156
  l0.SoundId = "soundbinary/1566440503.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_210
  l1 = self.box_PlayDialog_v2_156
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|514287643", "514287643", "S01M010_Main", "box_PlayDialog_v2_210.Finished", "box_PlayDialog_v2_156.Start", l0, l1)
  l1:Start()
end
function export:f_box_Profiler_Monitor_v2_440_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_476()
  l0 = self.box_Profiler_Monitor_v2_440
  l1 = self.box_OnceOnly_v3_476
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|633939362", "633939362", "S01M010_Main", "box_Profiler_Monitor_v2_440.Disabled", "box_OnceOnly_v3_476.In", l0, l1)
  l1:In(1)
end
function export:f_box_Profiler_Monitor_v2_440_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_222()
  l0 = self.box_Profiler_Monitor_v2_440
  l1 = self.box_Network_Surfing_Monitor_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1779524381", "1779524381", "S01M010_Main", "box_Profiler_Monitor_v2_440.Enabled", "box_Network_Surfing_Monitor_222.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Profiler_Monitor_v2_440_InfoDisplayed()
  local l0
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_440()
  l0 = self.box_Profiler_Monitor_v2_440
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|281776481", "281776481", "S01M010_Main", "box_Profiler_Monitor_v2_440.InfoDisplayed", "box_Profiler_Monitor_v2_440.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Change_GraphicKit_Model_632_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_536
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|12634987", "12634987", "S01M010_Main", "box_Change_GraphicKit_Model_632.Changed", "box_HackableController_v2_536.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_Hackable_Door_Controller_614_AiAccessEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_615
  l0.Entity = "9223372059224539309"
  l0 = self.box_Hackable_Door_Controller_614
  l1 = self.box_Hackable_Door_Controller_615
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|989416058", "989416058", "S01M010_Main", "box_Hackable_Door_Controller_614.AiAccessEnabled", "box_Hackable_Door_Controller_615.EnableAiAccess", l0, l1)
  l1:EnableAiAccess()
end
function export:f_box_PlaySound_v2_402_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_461"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1460460331"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_402
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|752070295", "752070295", "S01M010_Main", "box_PlaySound_v2_402.Out", "box_MissionMusicController_461.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_DPad_Hackable_Controller_523_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_624
  l0.CLO = "9223372059407954395"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1214700502", "1214700502", "S01M010_Main", "box_DPad_Hackable_Controller_523.Removed", "box_CLOController_624.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Profiler_Monitor_v2_226_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_476()
  l0 = self.box_Profiler_Monitor_v2_226
  l1 = self.box_OnceOnly_v3_476
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|392056650", "392056650", "S01M010_Main", "box_Profiler_Monitor_v2_226.Disabled", "box_OnceOnly_v3_476.In", l0, l1)
  l1:In(0)
end
function export:f_box_Profiler_Monitor_v2_226_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_440()
  l0 = self.box_Profiler_Monitor_v2_226
  l1 = self.box_Profiler_Monitor_v2_440
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1356156275", "1356156275", "S01M010_Main", "box_Profiler_Monitor_v2_226.Enabled", "box_Profiler_Monitor_v2_440.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Profiler_Monitor_v2_226_InfoDisplayed()
  local l0
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_226()
  l0 = self.box_Profiler_Monitor_v2_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1023242158", "1023242158", "S01M010_Main", "box_Profiler_Monitor_v2_226.InfoDisplayed", "box_Profiler_Monitor_v2_226.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_201_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_386"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2138015477"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_386_Pushed
  l0.Popped = DummyFunction
  l0 = self.box_TriggerMonitor_v2_201
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1354781196", "1354781196", "S01M010_Main", "box_TriggerMonitor_v2_201.Disabled", "box_SetActionMap_v2_386.Push", l0, l1)
  l1:Push()
end
function export:f_box_TriggerMonitor_v2_201_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_379()
  l0 = self.box_TriggerMonitor_v2_201
  l1 = self.box_TutorialController_379
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|644468049", "644468049", "S01M010_Main", "box_TriggerMonitor_v2_201.Enter", "box_TutorialController_379.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MapPointController_v4_46_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_333()
  l0 = self.box_MapPointController_v4_46
  l1 = self.box_MultipleOR_333
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|598260330", "598260330", "S01M010_Main", "box_MapPointController_v4_46.Hidden", "box_MultipleOR_333.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_DPad_Hackable_Controller_611_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_389
  l0.CLO = "9223372057212037718"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|420088165", "420088165", "S01M010_Main", "box_DPad_Hackable_Controller_611.Removed", "box_CLOController_389.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_EntityLoadingMonitor_185_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_334
  l0.HackableEntityList = self.CourtYard_World_Entities
  l0.ProfileLinkedToHack = 1
  l0 = self.box_EntityLoadingMonitor_185
  l1 = self.box_HackableController_v2_334
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1831304077", "1831304077", "S01M010_Main", "box_EntityLoadingMonitor_185.AllLoaded", "box_HackableController_v2_334.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_550_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_164
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1504066207", "1504066207", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_550.Locked", "box_ListWriter_164.Add", clone, l0)
  l0:Add()
end
function export:f_box_MultipleOR_463_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_20
  l0.Checkpoint = "CheckPoint_Intro"
  l0 = self.box_MultipleOR_463
  l1 = self.box_MissionCheckpointReach_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|285485031", "285485031", "S01M010_Main", "box_MultipleOR_463.Out", "box_MissionCheckpointReach_20.In", l0, l1)
  l1:In()
end
function export:f_box_DPad_Hackable_Controller_155_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|790517198"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_box_DPad_Hackable_Controller_6_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1453989977", "1453989977", "S01M010_Main", "box_DPad_Hackable_Controller_155.Added", "box_DPad_Hackable_Controller_6.Add", clone, l0)
  l0:Add()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_424_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_403
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|661836541", "661836541", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_424.Locked", "box_CinematicPrep_403.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_HackableController_v2_136_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_577
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_136
  l1 = self.box_HackableController_v2_577
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1605542632", "1605542632", "S01M010_Main", "box_HackableController_v2_136.HackForced", "box_HackableController_v2_577.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySequence_v5_581_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_416"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|746668529"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_416_Popped
  l0 = self.box_PlaySequence_v5_581
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|193681442", "193681442", "S01M010_Main", "box_PlaySequence_v5_581.Finished", "box_SetActionMap_v2_416.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_PlaySequence_v5_581_SPOut__GotoCover_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = "9223372057272175960"
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_358"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1274738441"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySequence_v5_581
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|63315813", "63315813", "S01M010_Main", "box_PlaySequence_v5_581.SPOut", "box_Player_State_Controller_358.EnterCover", l0, l1)
  l1:EnterCover()
end
function export:f_box_PlaySequence_v5_581_SPOut__Teleport_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_582"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|168486533"
  l0.Out = self.f_box_Get_Player_ID_582_Out
  l0 = self.box_PlaySequence_v5_581
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1163664771", "1163664771", "S01M010_Main", "box_PlaySequence_v5_581.SPOut", "box_Get_Player_ID_582.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_581_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_609
  l0.CLO = "9223372059407954395"
  l0 = self.box_PlaySequence_v5_581
  l1 = self.box_CLOController_609
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1927064447", "1927064447", "S01M010_Main", "box_PlaySequence_v5_581.Started", "box_CLOController_609.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ReinforcementCallController_484_EnabledCallers()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_508
  l0.Position = "9223372069340157573"
  l0.Affiliation = "UZulu"
  l0.SearchOverrideParamTimeout = -1
  l0 = self.box_ReinforcementCallController_484
  l1 = self.box_AISquadStateController_508
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1223282417", "1223282417", "S01M010_Main", "box_ReinforcementCallController_484.EnabledCallers", "box_AISquadStateController_508.SetInUntargetedSearch", l0, l1)
  l1:SetInUntargetedSearch()
end
function export:f_box_ReinforcementCallController_484_Registered()
  local l0
  self = self._graph
  self:OnEnter_box_ReinforcementCallController_484()
  l0 = self.box_ReinforcementCallController_484
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1592018501", "1592018501", "S01M010_Main", "box_ReinforcementCallController_484.Registered", "box_ReinforcementCallController_484.EnableCallers", l0, l0)
  l0:EnableCallers()
end
function export:f_box_Moveable_Entity_Monitor_244_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_246()
  l0 = self.box_Moveable_Entity_Monitor_244
  l1 = self.box_MultipleOR_246
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1741187020", "1741187020", "S01M010_Main", "box_Moveable_Entity_Monitor_244.Enabled", "box_MultipleOR_246.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Moveable_Entity_Monitor_244_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_245()
  l0 = self.box_Moveable_Entity_Monitor_244
  l1 = self.box_MultipleOR_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1706875236", "1706875236", "S01M010_Main", "box_Moveable_Entity_Monitor_244.OnBkwMovementStarted", "box_MultipleOR_245.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_115_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_522"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|308971189"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = self.f_box_Player_State_Controller_522_CoverToCoverAllowedReset
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_115
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1021241110", "1021241110", "S01M010_Main", "box_HackableController_v2_115.Enabled", "box_Player_State_Controller_522.ResetCoverToCoverAllowed", l0, l1)
  l1:ResetCoverToCoverAllowed()
end
function export:f_box_TutorialController_89_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_584()
  l0 = self.box_TutorialController_89
  l1 = self.box_TriggerMonitor_v2_584
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1234026720", "1234026720", "S01M010_Main", "box_TutorialController_89.DisplayRequested", "box_TriggerMonitor_v2_584.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_89_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_584()
  l0 = self.box_TutorialController_89
  l1 = self.box_TriggerMonitor_v2_584
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|897845373", "897845373", "S01M010_Main", "box_TutorialController_89.NotificationHidden", "box_TriggerMonitor_v2_584.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Door_Controller_598_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_600
  l0.Entity = "9223372059224539309"
  l0 = self.box_Hackable_Door_Controller_598
  l1 = self.box_Hackable_Door_Controller_600
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1685456918", "1685456918", "S01M010_Main", "box_Hackable_Door_Controller_598.AiAccessDisabled", "box_Hackable_Door_Controller_600.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_Hackable_Door_Controller_613_AiAccessEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_613
  l1 = self.box_S01_M010_SCR_Main_393
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2101099760", "2101099760", "S01M010_Main", "box_Hackable_Door_Controller_613.AiAccessEnabled", "box_S01_M010_SCR_Main_393.MainAdmiration", l0, l1)
  l1:MainAdmiration()
end
function export:f_box_Interact_Gameplay_191_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_191()
  l0 = self.box_Interact_Gameplay_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|357112452", "357112452", "S01M010_Main", "box_Interact_Gameplay_191.Interacted", "box_Interact_Gameplay_191.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_191_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_414
  l0.Entity = "9223372068507759626"
  l0 = self.box_Interact_Gameplay_191
  l1 = self.box_Intel_Controller_414
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|758297367", "758297367", "S01M010_Main", "box_Interact_Gameplay_191.Stopped", "box_Intel_Controller_414.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_528_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_532
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_528
  l1 = self.box_CinematicPrep_532
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|255832410", "255832410", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_528.Started", "box_CinematicPrep_532.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Change_GraphicKit_Model_636_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_166
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|389998736", "389998736", "S01M010_Main", "box_Change_GraphicKit_Model_636.Changed", "box_ListWriter_166.Add", clone, l0)
  l0:Add()
end
function export:f_box_CLOController_v2_61_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_61
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self.box_ListWriter_15
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0 = self.box_CLOController_v2_61
  l1 = self.box_ListWriter_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1708923845", "1708923845", "S01M010_Main", "box_CLOController_v2_61.OnUserInPlace", "box_ListWriter_15.Add", l0, l1)
  l1:Add()
end
function export:f_box_DPad_Hackable_Controller_84_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_76()
  l0 = self.box_TutorialController_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2065806340", "2065806340", "S01M010_Main", "box_DPad_Hackable_Controller_84.Added", "box_TutorialController_76.Display", clone, l0)
  l0:Display()
end
function export:f_box_PlaySound_v2_204_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1930772119"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_204
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|644013296", "644013296", "S01M010_Main", "box_PlaySound_v2_204.Out", "box_MissionMusicController_125.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlayDialog_v2_278_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_296
  l0.SoundId = "soundbinary/862412337.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_278
  l1 = self.box_PlayDialog_v2_296
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|621575920", "621575920", "S01M010_Main", "box_PlayDialog_v2_278.Finished", "box_PlayDialog_v2_296.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_464_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_514"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2127256833"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_514_Popped
  l0 = self.box_PlaySequence_v5_464
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|67891729", "67891729", "S01M010_Main", "box_PlaySequence_v5_464.Finished", "box_SetActionMap_v2_514.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_PlaySequence_v5_464_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_41
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_464
  l1 = self.box_CinematicPrep_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1831401949", "1831401949", "S01M010_Main", "box_PlaySequence_v5_464.Started", "box_CinematicPrep_41.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Intel_Controller_589_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_472()
  l0 = self.box_Intel_Controller_589
  l1 = self.box_Interact_Gameplay_472
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|128254844", "128254844", "S01M010_Main", "box_Intel_Controller_589.Enabled", "box_Interact_Gameplay_472.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_554_ProfileReset()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_553"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1462300041"
  l0.Out = DummyFunction
  l0.Locked = DummyFunction
  l0.IntensitySet = DummyFunction
  l0.Unlocked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_553_Unlocked
  l0 = self.box_HackableController_v2_554
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1616173891", "1616173891", "S01M010_Main", "box_HackableController_v2_554.ProfileReset", "box_PlayerBlurPlayerBlurPostFxControllerController_553.Unlock", l0, l1)
  l1:Unlock()
end
function export:f_box_MissionMessageController_v3_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_105
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective019",
    item = "Sub-Objective",
    id = "603844"
  }
  l0.IncrementalObjectiveTotalSub2 = 1
  l0 = self.box_MissionMessageController_v3_104
  l1 = self.box_MissionMessageController_v3_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|654315801", "654315801", "S01M010_Main", "box_MissionMessageController_v3_104.Out", "box_MissionMessageController_v3_105.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_153_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_207()
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_153
  l1 = self.box_MultipleOR_207
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1091062508", "1091062508", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_153.Started", "box_MultipleOR_207.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_116_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_93
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective013",
    item = "Objective",
    id = "459234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective019",
    item = "Sub-Objective",
    id = "603844"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|527213533", "527213533", "S01M010_Main", "box_Ordered_Output_116.Out", "box_MissionMessageController_v3_93.UpdateObjective", clone, l0)
  l0:UpdateObjective()
end
function export:f_box_Ordered_Output_116_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_9()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1193666172", "1193666172", "S01M010_Main", "box_Ordered_Output_116.Out", "box_BlackoutController_9.StartBlackout", clone, l0)
  l0:StartBlackout()
end
function export:f_box_Ordered_Output_116_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_209
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1250690335", "1250690335", "S01M010_Main", "box_Ordered_Output_116.Out", "box_Timer_v2_209.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_116_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_566
  l0.SoundId = "soundbinary/1791754925.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|807844299", "807844299", "S01M010_Main", "box_Ordered_Output_116.Out", "box_PlaySound_v2_566.Play", clone, l0)
  l0:Play()
end
function export:f_box_AISquadStateController_599_VanishSet()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_524
  l0.SceneEntity = "9223372054424489846"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_ServerTowerClimb_CIN/s01_servertowerclimb_cin.seq"
  l0 = self.box_AISquadStateController_599
  l1 = self.box_PlaySequence_v5_524
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1600122343", "1600122343", "S01M010_Main", "box_AISquadStateController_599.VanishSet", "box_PlaySequence_v5_524.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_188_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_154
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0 = self.box_HackableController_v2_188
  l1 = self.box_ListWriter_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|79857726", "79857726", "S01M010_Main", "box_HackableController_v2_188.Disabled", "box_ListWriter_154.Add", l0, l1)
  l1:Add()
end
function export:f_box_MissionLayer_v2_515_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_517"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|31242126"
  l0.Out = self.f_box_Get_Player_ID_517_Out
  l0 = self.box_MissionLayer_v2_515
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|501572486", "501572486", "S01M010_Main", "box_MissionLayer_v2_515.Loaded", "box_Get_Player_ID_517.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_365_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1238610857"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_142_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|631401508", "631401508", "S01M010_Main", "box_SmartphoneAppController_365.OverrideActivated", "box_FelonySystemController_v2_142.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Multiple_AND_48_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_463()
  l0 = self.box_Multiple_AND_48
  l1 = self.box_MultipleOR_463
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|828070560", "828070560", "S01M010_Main", "box_Multiple_AND_48.Out", "box_MultipleOR_463.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_36_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_36
  self.TakedownTutorial = l0.Target
  l0 = self.box_HackableController_v2_537
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0 = self.box_ListWriter_36
  l1 = self.box_HackableController_v2_537
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1366201401", "1366201401", "S01M010_Main", "box_ListWriter_36.Added", "box_HackableController_v2_537.AssignProfile", l0, l1)
  l1:AssignProfile()
end
function export:f_box_ListWriter_36_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_36
  self.TakedownTutorial = l0.Target
end
function export:f_box_ListWriter_36_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_36
  self.TakedownTutorial = l0.Target
end
function export:f_box_FelonySystemController_v2_143_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_597"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1594828137"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_597_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1189782793", "1189782793", "S01M010_Main", "box_FelonySystemController_v2_143.Disabled", "box_FelonySoundController_597.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Hackable_Door_Controller_615_AiAccessEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_613
  l0.Entity = "9223372059224539295"
  l0 = self.box_Hackable_Door_Controller_615
  l1 = self.box_Hackable_Door_Controller_613
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2031248683", "2031248683", "S01M010_Main", "box_Hackable_Door_Controller_615.AiAccessEnabled", "box_Hackable_Door_Controller_613.EnableAiAccess", l0, l1)
  l1:EnableAiAccess()
end
function export:f_box_PlayDialog_v2_135_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_134
  l0.SoundId = "soundbinary/532228594.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_135
  l1 = self.box_PlayDialog_v2_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|542404351", "542404351", "S01M010_Main", "box_PlayDialog_v2_135.Finished", "box_PlayDialog_v2_134.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_348_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_324
  l0.Checkpoint = "CheckPoint_7"
  l0 = self.box_MultipleOR_348
  l1 = self.box_MissionCheckpointReach_324
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1344580734", "1344580734", "S01M010_Main", "box_MultipleOR_348.Out", "box_MissionCheckpointReach_324.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_446_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_446
  self.EnemyExterior = l0.Target
end
function export:f_box_ListWriter_446_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_446
  self.EnemyExterior = l0.Target
end
function export:f_box_ListWriter_446_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_446
  self.EnemyExterior = l0.Target
end
function export:f_box_ListWriter_15_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_15
  self.TakedownTutorial = l0.Target
  self:OnEnter_box_Multiple_AND_63()
  l1 = self.box_Multiple_AND_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1973050335", "1973050335", "S01M010_Main", "box_ListWriter_15.Added", "box_Multiple_AND_63.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_ListWriter_15_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_15
  self.TakedownTutorial = l0.Target
end
function export:f_box_ListWriter_15_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_15
  self.TakedownTutorial = l0.Target
end
function export:f_box_PlayDialog_v2_156_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_94
  l0.SoundId = "soundbinary/341451500.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_156
  l1 = self.box_PlayDialog_v2_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|505337017", "505337017", "S01M010_Main", "box_PlayDialog_v2_156.Finished", "box_PlayDialog_v2_94.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMusicController_500_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_402
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|494763815", "494763815", "S01M010_Main", "box_MissionMusicController_500.Deactivated", "box_PlaySound_v2_402.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Door_Controller_603_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_606
  l0.Entity = "9223372059224539309"
  l0 = self.box_Hackable_Door_Controller_603
  l1 = self.box_Hackable_Door_Controller_606
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|757706528", "757706528", "S01M010_Main", "box_Hackable_Door_Controller_603.AiAccessDisabled", "box_Hackable_Door_Controller_606.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_PlaySound_v2_527_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_511"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|695820637"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_527
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|367945814", "367945814", "S01M010_Main", "box_PlaySound_v2_527.Out", "box_MissionMusicController_511.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_S01M010_Weather_174_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_382"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1293325479"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_382_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_174
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|418337705", "418337705", "S01M010_Main", "box_S01M010_Weather_174.Out", "box_SmartphoneAppController_382.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_PawnHealthMonitor_v3_399_DBNO()
  local l0
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_399()
  l0 = self.box_PawnHealthMonitor_v3_399
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1734564992", "1734564992", "S01M010_Main", "box_PawnHealthMonitor_v3_399.DBNO", "box_PawnHealthMonitor_v3_399.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PawnHealthMonitor_v3_399_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_1"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1546743330"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_70_Popped
  l0 = self.box_PawnHealthMonitor_v3_399
  l1 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1124268110", "1124268110", "S01M010_Main", "box_PawnHealthMonitor_v3_399.Disabled", "box_SetActionMap_v2_70.Pop", l0, l1)
  l1:Pop()
end
function export:f_box_HackableController_v2_177_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_26
  l0.Input = self.CameraAccessCode
  l0.Data[0] = "9223372064006955537"
  l0.Data[1] = "9223372064006959194"
  l0.Data[2] = "9223372064006959196"
  l0.Data[3] = "9223372064006959198"
  l0.Data[4] = "9223372064006959200"
  l0.Data[5] = "9223372064149220607"
  l0 = self.box_HackableController_v2_177
  l1 = self.box_ListWriter_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1975440734", "1975440734", "S01M010_Main", "box_HackableController_v2_177.Disabled", "box_ListWriter_26.Add", l0, l1)
  l1:Add()
end
function export:f_box_FelonySystemController_v2_142_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_596"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|965327879"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_596_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2124460433", "2124460433", "S01M010_Main", "box_FelonySystemController_v2_142.Disabled", "box_FelonySoundController_596.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_477_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_477
  self.EnemyTutorial_Exterior_02 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_01
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_521"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|424478983"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_521_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_CLOController_477
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|201439096", "201439096", "S01M010_Main", "box_CLOController_477.OnUserInPlace", "box_DPad_Hackable_Controller_521.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_HackableController_v2_456_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_457
  l0.HackableEntity = "9223372052040779139"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_456
  l1 = self.box_HackableController_v2_457
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2097615422", "2097615422", "S01M010_Main", "box_HackableController_v2_456.Enabled", "box_HackableController_v2_457.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Timer_v2_92_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_585()
  l0 = self.box_Timer_v2_92
  l1 = self.box_TutorialController_585
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|28835373", "28835373", "S01M010_Main", "box_Timer_v2_92.TimeElapsed", "box_TutorialController_585.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_CinematicPrep_212_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_498"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|125521946"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_498_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_498_Out_1
  l0 = self.box_CinematicPrep_212
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1331982424", "1331982424", "S01M010_Main", "box_CinematicPrep_212.PostOut", "box_Ordered_Output_498.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_5_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_496()
  l0 = self.box_HackableController_v2_5
  l1 = self.box_TutorialController_496
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|208115616", "208115616", "S01M010_Main", "box_HackableController_v2_5.Disabled", "box_TutorialController_496.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Intel_Controller_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_199
  l0.Entity = "9223372058903936058"
  l0 = self.box_Intel_Controller_12
  l1 = self.box_Intel_Controller_199
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|18170379", "18170379", "S01M010_Main", "box_Intel_Controller_12.Enabled", "box_Intel_Controller_199.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_545_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_24()
  l0 = self.box_TutorialController_545
  l1 = self.box_InteractionScriptMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|591343117", "591343117", "S01M010_Main", "box_TutorialController_545.DisplayRequested", "box_InteractionScriptMonitor_v2_24.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_545_NotificationHidden()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_59
  l0.SurvivalGuideItemDB = "Items.9223372053993039382"
  l0 = self.box_TutorialController_545
  l1 = self.box_TutorialController_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1280745598", "1280745598", "S01M010_Main", "box_TutorialController_545.NotificationHidden", "box_TutorialController_59.Display", l0, l1)
  l1:Display()
end
function export:f_box_PlaySound_v2_474_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_538"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2137895905"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_474
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2083257248", "2083257248", "S01M010_Main", "box_PlaySound_v2_474.Out", "box_MissionMusicController_538.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Get_Player_ID_328_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_173
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1346982665", "1346982665", "S01M010_Main", "box_Get_Player_ID_328.Out", "box_S01M010_Weather_173.In", clone, l0)
  l0:In()
end
function export:f_box_SmartphoneAppController_382_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_145
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1645462727", "1645462727", "S01M010_Main", "box_SmartphoneAppController_382.OverrideActivated", "box_HackableController_v2_145.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_TutorialController_555_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_383()
  l0 = self.box_TutorialController_555
  l1 = self.box_MultipleOR_383
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1787695146", "1787695146", "S01M010_Main", "box_TutorialController_555.DisplayRequested", "box_MultipleOR_383.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_372_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|731161165"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_HackableController_v2_372
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|413092034", "413092034", "S01M010_Main", "box_HackableController_v2_372.Disabled", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_245_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052040779138"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1701156701"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_230_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_245
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|472962431", "472962431", "S01M010_Main", "box_MultipleOR_245.Out", "box_MoveableEntityController_230.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_TutorialController_546_NotificationHidden()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_75
  l0.SurvivalGuideItemDB = "Items.9223372053993007713"
  l0 = self.box_TutorialController_546
  l1 = self.box_TutorialController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|443781410", "443781410", "S01M010_Main", "box_TutorialController_546.NotificationHidden", "box_TutorialController_75.Display", l0, l1)
  l1:Display()
end
function export:f_box_ListWriter_176_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_176
  self.JunctionBoxes = l0.Target
  l0 = self.box_HackableController_v2_177
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_176
  l1 = self.box_HackableController_v2_177
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|375859377", "375859377", "S01M010_Main", "box_ListWriter_176.Added", "box_HackableController_v2_177.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_176_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_176
  self.JunctionBoxes = l0.Target
end
function export:f_box_ListWriter_176_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_176
  self.JunctionBoxes = l0.Target
end
function export:f_box_InteractionScriptMonitor_v2_24_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_513()
  l0 = self.box_InteractionScriptMonitor_v2_24
  l1 = self.box_TutorialController_513
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1047171448", "1047171448", "S01M010_Main", "box_InteractionScriptMonitor_v2_24.Disabled", "box_TutorialController_513.Display", l0, l1)
  l1:Display()
end
function export:f_box_InteractionScriptMonitor_v2_24_InteractionFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_547()
  l0 = self.box_InteractionScriptMonitor_v2_24
  l1 = self.box_TutorialController_547
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1269143591", "1269143591", "S01M010_Main", "box_InteractionScriptMonitor_v2_24.InteractionFinished", "box_TutorialController_547.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_HackableController_v2_81_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_575
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_81
  l1 = self.box_HackableController_v2_575
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1567764572", "1567764572", "S01M010_Main", "box_HackableController_v2_81.HackForced", "box_HackableController_v2_575.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01_M010_CIN_Intro_Main_627
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1201313072", "1201313072", "S01M010_Main", "box_Ordered_Output_47.Out", "box_S01_M010_CIN_Intro_Main_627.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|298593633", "298593633", "S01M010_Main", "box_Ordered_Output_47.Out", "box_S01M010_Weather_103.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_323_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Restore_Mission_SubObjectives_128
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective013",
    item = "Objective",
    id = "459234"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  l0.IncrementalObjectiveTotalSub1 = 1
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective019",
    item = "Sub-Objective",
    id = "603844"
  }
  l0.IncrementalObjectiveTotalSub2 = 1
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives",
    item = "Sub-Objective",
    id = "698199"
  }
  l0.IncrementalObjectiveTotalSub3 = 1
  l0.AutoHideObjective = 1
  l0 = self.box_CinematicPrep_323
  l1 = self.box_Restore_Mission_SubObjectives_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1549758318", "1549758318", "S01M010_Main", "box_CinematicPrep_323.PostOut", "box_Restore_Mission_SubObjectives_128.Restore", l0, l1)
  l1:Restore()
end
function export:f_box_HackableController_v2_167_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_212
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_167
  l1 = self.box_CinematicPrep_212
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|77206694", "77206694", "S01M010_Main", "box_HackableController_v2_167.Disabled", "box_CinematicPrep_212.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_TutorialController_379_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_201()
  l0 = self.box_TutorialController_379
  l1 = self.box_TriggerMonitor_v2_201
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1140566096", "1140566096", "S01M010_Main", "box_TutorialController_379.NotificationHidden", "box_TriggerMonitor_v2_201.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_51_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_221
  l0.List = self.kmcList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1272848340", "1272848340", "S01M010_Main", "box_Ordered_Output_51.Out", "box_ListForEach_221.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_51_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_470
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|851442595", "851442595", "S01M010_Main", "box_Ordered_Output_51.Out", "box_HackableController_v2_470.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_MultipleOR_285_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_123
  l0.UserList = self.S01M010_AiList
  l0 = self.box_MultipleOR_285
  l1 = self.box_CLOController_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|923225160", "923225160", "S01M010_Main", "box_MultipleOR_285.Out", "box_CLOController_123.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_HackableController_v2_277_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_456
  l0.HackableEntity = "9223372052040779140"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_277
  l1 = self.box_HackableController_v2_456
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1177386911", "1177386911", "S01M010_Main", "box_HackableController_v2_277.Enabled", "box_HackableController_v2_456.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_MissionCheckpointReach_318_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1146622411"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_116_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_116_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_116_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_116_Out_3
  l0 = self.box_MissionCheckpointReach_318
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1059470958", "1059470958", "S01M010_Main", "box_MissionCheckpointReach_318.Out", "box_Ordered_Output_116.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_294_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|869147428"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_175_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1743211010", "1743211010", "S01M010_Main", "box_SmartphoneAppController_294.OverrideActivated", "box_FelonySystemController_v2_175.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ReinforcementSystemController_v2_493_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_285()
  l0 = self.box_MultipleOR_285
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1923774221", "1923774221", "S01M010_Main", "box_ReinforcementSystemController_v2_493.ReinforcingStopped", "box_MultipleOR_285.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_516_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_516
  self.EnemyTutorial_Exterior_01 = l0.UserID
  l0 = self.box_CLOController_477
  l0.CLO = "9223372057212037717"
  l0 = self.box_CLOController_516
  l1 = self.box_CLOController_477
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|970908771", "970908771", "S01M010_Main", "box_CLOController_516.OnUserInPlace", "box_CLOController_477.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_548_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_183
  l0.Input = self.JunctionBoxes
  l0.Data[0] = "9223372051483390003"
  l0.Data[1] = "9223372051483390005"
  l0.Data[2] = "9223372051483390007"
  l0.Data[3] = "9223372051483390009"
  l0.Data[4] = "9223372051483390011"
  l0.Data[5] = "9223372051483390013"
  l0.Data[6] = "9223372051483390015"
  l0.Data[7] = "9223372051483390017"
  l0.Data[8] = "9223372051483390019"
  l0.Data[9] = "9223372052137878771"
  l0.Data[10] = "9223372053478527657"
  l0.Data[11] = "9223372053478534917"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|775332343", "775332343", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_548.Locked", "box_ListWriter_183.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_376_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1497989672"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|665408743", "665408743", "S01M010_Main", "box_Ordered_Output_376.Out", "box_Ordered_Output_91.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_66_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_288
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_66
  l1 = self.box_HackableController_v2_288
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|229364705", "229364705", "S01M010_Main", "box_HackableController_v2_66.Disabled", "box_HackableController_v2_288.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_575_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_38
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_575
  l1 = self.box_HackableController_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1876590865", "1876590865", "S01M010_Main", "box_HackableController_v2_575.ProfilingDisabled", "box_HackableController_v2_38.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MissionMusicController_427_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_468
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|840549921", "840549921", "S01M010_Main", "box_MissionMusicController_427.Deactivated", "box_PlaySound_v2_468.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_391_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_392()
  l0 = self.box_Timer_v2_391
  l1 = self.box_TutorialController_392
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1793314734", "1793314734", "S01M010_Main", "box_Timer_v2_391.TimeElapsed", "box_TutorialController_392.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_251_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_48()
  l0 = self.box_Multiple_AND_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|478808944", "478808944", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_251.Locked", "box_Multiple_AND_48.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Hackable_Monitor_57_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_580
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_57
  l1 = self.box_HackableController_v2_580
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|686312000", "686312000", "S01M010_Main", "box_Hackable_Monitor_57.Disabled", "box_HackableController_v2_580.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_57_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_219()
  l0 = self.box_Hackable_Monitor_57
  l1 = self.box_TutorialController_219
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|578854178", "578854178", "S01M010_Main", "box_Hackable_Monitor_57.HackSuccess", "box_TutorialController_219.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_SmartphoneAppController_371_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1157353432"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_143_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|604887019", "604887019", "S01M010_Main", "box_SmartphoneAppController_371.OverrideActivated", "box_FelonySystemController_v2_143.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_231_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_28
  l0.SoundId = "soundbinary/1249263752.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1737135093", "1737135093", "S01M010_Main", "box_Ordered_Output_231.Out", "box_PlayDialog_v2_28.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_231_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_225
  l0.Input = self.MainRoom_Doors
  l0.Data[0] = "9223372063874921820"
  l0.Data[1] = "9223372052040779138"
  l0.Data[2] = "9223372052040779117"
  l0.Data[3] = "9223372063874878362"
  l0.Data[4] = "9223372063874878374"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|360179374", "360179374", "S01M010_Main", "box_Ordered_Output_231.Out", "box_ListWriter_225.Add", clone, l0)
  l0:Add()
end
function export:f_box_DPad_Hackable_Controller_542_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_446
  l0.Input = self.EnemyExterior
  l0.Data[0] = self.EnemyTutorial_Exterior_01
  l0.Data[1] = self.EnemyTutorial_Exterior_02
  l0.Data[2] = self.Enemy_Tutorial_Exterior_03
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1520740371", "1520740371", "S01M010_Main", "box_DPad_Hackable_Controller_542.Removed", "box_ListWriter_446.Add", clone, l0)
  l0:Add()
end
function export:f_box_S01M010_Weather_97_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|883345185"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_54_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_97
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|564132913", "564132913", "S01M010_Main", "box_S01M010_Weather_97.Out", "box_SmartphoneAppController_54.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_ListWriter_110_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_110
  self.AccessDoorDisable = l0.Target
  l0 = self.box_HackableController_v2_111
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_110
  l1 = self.box_HackableController_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|288170093", "288170093", "S01M010_Main", "box_ListWriter_110.Added", "box_HackableController_v2_111.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_110_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_110
  self.AccessDoorDisable = l0.Target
end
function export:f_box_ListWriter_110_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_110
  self.AccessDoorDisable = l0.Target
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_553_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_151
  l0.HackableEntity = self.EnemyGameplay_01
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|600258786", "600258786", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_553.Unlocked", "box_HackableController_v2_151.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_MultipleOR_207_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_211
  l0.Checkpoint = "CheckPoint_8"
  l0 = self.box_MultipleOR_207
  l1 = self.box_MissionCheckpointReach_211
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|60800559", "60800559", "S01M010_Main", "box_MultipleOR_207.Out", "box_MissionCheckpointReach_211.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_165_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_323
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_165
  l1 = self.box_CinematicPrep_323
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|895571485", "895571485", "S01M010_Main", "box_HackableController_v2_165.Disabled", "box_CinematicPrep_323.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_FelonySystemController_v2_138_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_595"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|491828147"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_595_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1694297289", "1694297289", "S01M010_Main", "box_FelonySystemController_v2_138.Disabled", "box_FelonySoundController_595.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TutorialController_415_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_496()
  l0 = self.box_TutorialController_415
  l1 = self.box_TutorialController_496
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|917667278", "917667278", "S01M010_Main", "box_TutorialController_415.NotificationHidden", "box_TutorialController_496.Display", l0, l1)
  l1:Display()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_118_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_348()
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_118
  l1 = self.box_MultipleOR_348
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1124984768", "1124984768", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_118.Started", "box_MultipleOR_348.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_225_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_225
  self.MainRoom_Doors = l0.Target
  self:OnEnter_box_MultipleOR_245()
  l1 = self.box_MultipleOR_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1185514387", "1185514387", "S01M010_Main", "box_ListWriter_225.Added", "box_MultipleOR_245.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_225_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_225
  self.MainRoom_Doors = l0.Target
end
function export:f_box_ListWriter_225_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_225
  self.MainRoom_Doors = l0.Target
end
function export:f_box_PlaySound_v2_184_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_184
  l1 = self.box_S01_M010_CIN_BigData_Main_275
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|300590475", "300590475", "S01M010_Main", "box_PlaySound_v2_184.Out", "box_S01_M010_CIN_BigData_Main_275.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_265_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_581
  l0.SceneEntity = "9223372068441348233"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M010_CoverTuto/s01_m010_covertuto.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2140882457", "2140882457", "S01M010_Main", "box_Ordered_Output_265.Out", "box_PlaySequence_v5_581.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_265_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_264
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1735290552", "1735290552", "S01M010_Main", "box_Ordered_Output_265.Out", "box_Network_Surfing_Controller_264.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Get_Player_ID_217_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_502()
  l0 = self.box_MultipleOR_502
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|433565175", "433565175", "S01M010_Main", "box_Get_Player_ID_217.Out", "box_MultipleOR_502.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Change_GraphicKit_Model_628_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_v2_214
  l0.CLO[0] = "9223372057272174795"
  l0.CLO[1] = "9223372057272174797"
  l0.CLO[2] = "9223372058418094309"
  l0.CLO[3] = "9223372057272174799"
  l0.CLO[4] = "9223372058418094308"
  l0.CLO[5] = "9223372057272174802"
  l0.CLO[6] = "9223372057272174803"
  l0.CLO[7] = "9223372058418094307"
  l0.CLO[8] = "9223372057272174805"
  l0.CLO[9] = "9223372057272174806"
  l0.CLO[10] = "9223372058418094306"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1683424664", "1683424664", "S01M010_Main", "box_Change_GraphicKit_Model_628.Changed", "box_CLOController_v2_214.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_354"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1729731997"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_354_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1320414812", "1320414812", "S01M010_Main", "box_Ordered_Output_91.Out", "box_SetActionMap_v2_354.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_369"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1837975798"
  l0.Out = self.f_box_Simple_Node_369_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|501705635", "501705635", "S01M010_Main", "box_Ordered_Output_91.Out", "box_Simple_Node_369.In", clone, l0)
  l0:In()
end
function export:f_box_Hack_Gameplay_88_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_396()
  l0 = self.box_Hack_Gameplay_88
  l1 = self.box_TutorialController_396
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1860876239", "1860876239", "S01M010_Main", "box_Hack_Gameplay_88.Hacked", "box_TutorialController_396.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Hack_Gameplay_88_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Assign_Patrol_Controller_v2_169
  l0.NPC = self.EnemyGameplay_01
  l0.Patrol = "9223372047720865811"
  l0 = self.box_Hack_Gameplay_88
  l1 = self.box_Assign_Patrol_Controller_v2_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1502856878", "1502856878", "S01M010_Main", "box_Hack_Gameplay_88.Stopped", "box_Assign_Patrol_Controller_v2_169.Assign", l0, l1)
  l1:Assign()
end
function export:f_box_TutorialController_445_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_419()
  l0 = self.box_TutorialController_445
  l1 = self.box_TriggerMonitor_v2_419
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1399928768", "1399928768", "S01M010_Main", "box_TutorialController_445.DisplayRequested", "box_TriggerMonitor_v2_419.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TutorialController_445_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_419()
  l0 = self.box_TutorialController_445
  l1 = self.box_TriggerMonitor_v2_419
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|972236808", "972236808", "S01M010_Main", "box_TutorialController_445.NotificationHidden", "box_TriggerMonitor_v2_419.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Moveable_Entity_Monitor_248_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_252()
  l0 = self.box_Moveable_Entity_Monitor_248
  l1 = self.box_MultipleOR_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1596450065", "1596450065", "S01M010_Main", "box_Moveable_Entity_Monitor_248.Enabled", "box_MultipleOR_252.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Moveable_Entity_Monitor_248_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_249()
  l0 = self.box_Moveable_Entity_Monitor_248
  l1 = self.box_MultipleOR_249
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1258853132", "1258853132", "S01M010_Main", "box_Moveable_Entity_Monitor_248.OnBkwMovementStarted", "box_MultipleOR_249.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CLOController_v2_44_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_44
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self.box_ListWriter_197
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0 = self.box_CLOController_v2_44
  l1 = self.box_ListWriter_197
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|917002370", "917002370", "S01M010_Main", "box_CLOController_v2_44.OnUserInPlace", "box_ListWriter_197.Add", l0, l1)
  l1:Add()
end
function export:f_box_HackableController_v2_450_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_603
  l0.Entity = "9223372059224539270"
  l0 = self.box_HackableController_v2_450
  l1 = self.box_Hackable_Door_Controller_603
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|897037839", "897037839", "S01M010_Main", "box_HackableController_v2_450.Disabled", "box_Hackable_Door_Controller_603.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_497_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_178
  l0.Input = self.JunctionBoxes
  l0.Data[0] = "9223372051483390003"
  l0.Data[1] = "9223372051483390005"
  l0.Data[2] = "9223372051483390007"
  l0.Data[3] = "9223372051483390009"
  l0.Data[4] = "9223372051483390011"
  l0.Data[5] = "9223372051483390013"
  l0.Data[6] = "9223372051483390015"
  l0.Data[7] = "9223372051483390017"
  l0.Data[8] = "9223372051483390019"
  l0.Data[9] = "9223372052137878771"
  l0.Data[10] = "9223372053478527657"
  l0.Data[11] = "9223372053478534917"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|817086951", "817086951", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_497.Locked", "box_ListWriter_178.Add", clone, l0)
  l0:Add()
end
function export:f_box_MissionLayer_v2_292_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2082853730"
  l0.Out = self.f_box_Get_Player_ID_269_Out
  l0 = self.box_MissionLayer_v2_292
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1791676057", "1791676057", "S01M010_Main", "box_MissionLayer_v2_292.Loaded", "box_Get_Player_ID_269.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_123_UnspawnedUser()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_297()
  l0 = self.box_CLOController_123
  l1 = self.box_ReinforcementSystemMonitor_v2_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1448638471", "1448638471", "S01M010_Main", "box_CLOController_123.UnspawnedUser", "box_ReinforcementSystemMonitor_v2_297.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Change_GraphicKit_Model_634_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_v2_17
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1963335270", "1963335270", "S01M010_Main", "box_Change_GraphicKit_Model_634.Changed", "box_CLOController_v2_17.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_TutorialController_59_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_547()
  l0 = self.box_TutorialController_59
  l1 = self.box_TutorialController_547
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1902887660", "1902887660", "S01M010_Main", "box_TutorialController_59.DisplayRequested", "box_TutorialController_547.Display", l0, l1)
  l1:Display()
end
function export:f_box_SetActionMap_v2_70_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_0"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoMoveState"
  l0._graph = self
  l0._name = "box_SetActionMap_v2_586"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1907745910"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_586_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1629425225", "1629425225", "S01M010_Main", "box_SetActionMap_v2_70.Popped", "box_SetActionMap_v2_586.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_S01M010_Weather_139_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_384"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2090273483"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_384_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_139
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|462743345", "462743345", "S01M010_Main", "box_S01M010_Weather_139.Out", "box_SmartphoneAppController_384.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_Show_Or_Hide_All_UI_18_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TutorialController_555
  l0.SurvivalGuideItemDB = "Items.9223372053993007726"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1844422610", "1844422610", "S01M010_Main", "box_Show_Or_Hide_All_UI_18.Shown", "box_TutorialController_555.Display", clone, l0)
  l0:Display()
end
function export:f_box_Moveable_Entity_Monitor_243_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_254()
  l0 = self.box_Moveable_Entity_Monitor_243
  l1 = self.box_MultipleOR_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|552233671", "552233671", "S01M010_Main", "box_Moveable_Entity_Monitor_243.Enabled", "box_MultipleOR_254.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Moveable_Entity_Monitor_243_OnBkwMovementStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_252()
  l0 = self.box_Moveable_Entity_Monitor_243
  l1 = self.box_MultipleOR_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|726644067", "726644067", "S01M010_Main", "box_Moveable_Entity_Monitor_243.OnBkwMovementStarted", "box_MultipleOR_252.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListForEach_190_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_190
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_190_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_190
  self.kmcData = l0.Data
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.kmcData
  l0._graph = self
  l0._name = "box_Vehicle_Controller_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2090818296"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_ListForEach_190
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|227209887", "227209887", "S01M010_Main", "box_ListForEach_190.ForEach", "box_Vehicle_Controller_213.DisableForPlayer", l0, l1)
  l1:DisableForPlayer()
end
function export:f_box_ListForEach_190_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_190
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_190_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_190
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_190_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_190
  self.kmcData = l0.Data
end
function export:f_box_Change_GraphicKit_Model_466_Changed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_473
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1563395838", "1563395838", "S01M010_Main", "box_Change_GraphicKit_Model_466.Changed", "box_HackableController_v2_473.AssignProfile", clone, l0)
  l0:AssignProfile()
end
function export:f_box_Profiler_Monitor_v2_375_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_447
  l0.SurvivalGuideItemDB = "Items.9223372053993007714"
  l0 = self.box_Profiler_Monitor_v2_375
  l1 = self.box_TutorialController_447
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1084705699", "1084705699", "S01M010_Main", "box_Profiler_Monitor_v2_375.Disabled", "box_TutorialController_447.Display", l0, l1)
  l1:Display()
end
function export:f_box_Profiler_Monitor_v2_375_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_415()
  l0 = self.box_Profiler_Monitor_v2_375
  l1 = self.box_TutorialController_415
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2084546039", "2084546039", "S01M010_Main", "box_Profiler_Monitor_v2_375.Enabled", "box_TutorialController_415.Display", l0, l1)
  l1:Display()
end
function export:f_box_Profiler_Monitor_v2_375_InfoDisplayed()
  local l0
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_375()
  l0 = self.box_Profiler_Monitor_v2_375
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1916480153", "1916480153", "S01M010_Main", "box_Profiler_Monitor_v2_375.InfoDisplayed", "box_Profiler_Monitor_v2_375.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Get_Player_ID_308_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2048985032", "2048985032", "S01M010_Main", "box_Get_Player_ID_308.Out", "box_S01M010_Weather_95.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_387_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_375()
  l0 = self.box_TriggerMonitor_v2_387
  l1 = self.box_Profiler_Monitor_v2_375
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|229397469", "229397469", "S01M010_Main", "box_TriggerMonitor_v2_387.Disabled", "box_Profiler_Monitor_v2_375.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_387_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_45()
  l0 = self.box_TriggerMonitor_v2_387
  l1 = self.box_Interact_Gameplay_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|710230553", "710230553", "S01M010_Main", "box_TriggerMonitor_v2_387.Enabled", "box_Interact_Gameplay_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_387_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_387()
  l0 = self.box_TriggerMonitor_v2_387
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1405409250", "1405409250", "S01M010_Main", "box_TriggerMonitor_v2_387.Enter", "box_TriggerMonitor_v2_387.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_S01M010_Weather_95_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_365"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1153008606"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_365_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_S01M010_Weather_95
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1348308181", "1348308181", "S01M010_Main", "box_S01M010_Weather_95.Out", "box_SmartphoneAppController_365.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_Ordered_Output_160_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_190
  l0.List = self.kmcList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1162835434", "1162835434", "S01M010_Main", "box_Ordered_Output_160.Out", "box_ListForEach_190.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_160_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_516
  l0.CLO = "9223372057212037718"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1197135375", "1197135375", "S01M010_Main", "box_Ordered_Output_160.Out", "box_CLOController_516.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_v2_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_3
  self.EnemyGameplay_01 = l0.UserID[0]
  self.EnemyGameplay_02 = l0.UserID[1]
  self.EnemyGameplay_03 = l0.UserID[2]
  self.EnemyGameplay_04 = l0.UserID[3]
  self.EnemyGameplay_05 = l0.UserID[4]
  self.EnemyGameplay_09 = l0.UserID[5]
  self.EnemyGameplay_10 = l0.UserID[6]
  self.EnemyGameplay_07 = l0.UserID[7]
  l0 = self.box_ListWriter_181
  l0.Input = self.S01M010_AiList
  l0.Data[0] = self.EnemyGameplay_01
  l0.Data[1] = self.EnemyGameplay_02
  l0.Data[2] = self.EnemyGameplay_03
  l0.Data[3] = self.EnemyGameplay_04
  l0.Data[4] = self.EnemyGameplay_05
  l0.Data[5] = self.EnemyGameplay_07
  l0.Data[6] = self.EnemyGameplay_09
  l0.Data[7] = self.EnemyGameplay_10
  l0 = self.box_CLOController_v2_3
  l1 = self.box_ListWriter_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1629063503", "1629063503", "S01M010_Main", "box_CLOController_v2_3.OnUserInPlace", "box_ListWriter_181.Add", l0, l1)
  l1:Add()
end
function export:f_box_FelonySoundController_597_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_81
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|929534778", "929534778", "S01M010_Main", "box_FelonySoundController_597.Enabled", "box_HackableController_v2_81.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_Ordered_Output_531_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_184
  l0.SoundId = "soundbinary/3980445112.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|422703299", "422703299", "S01M010_Main", "box_Ordered_Output_531.Out", "box_PlaySound_v2_184.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_531_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_535
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|345333123", "345333123", "S01M010_Main", "box_Ordered_Output_531.Out", "box_PlaySound_v2_535.Play", clone, l0)
  l0:Play()
end
function export:f_box_HackableController_v2_107_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_614
  l0.Entity = "9223372059224539270"
  l0 = self.box_HackableController_v2_107
  l1 = self.box_Hackable_Door_Controller_614
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|432624798", "432624798", "S01M010_Main", "box_HackableController_v2_107.Disabled", "box_Hackable_Door_Controller_614.EnableAiAccess", l0, l1)
  l1:EnableAiAccess()
end
function export:f_box_PlayDialog_v2_134_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_53
  l0.SoundId = "soundbinary/488045842.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_134
  l1 = self.box_PlayDialog_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1079989743", "1079989743", "S01M010_Main", "box_PlayDialog_v2_134.Finished", "box_PlayDialog_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_159_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_483"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2065252030"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_483_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_483_Out_1
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_159
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|72222905", "72222905", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_159.Started", "box_Ordered_Output_483.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_132_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_576
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_132
  l1 = self.box_HackableController_v2_576
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|893067684", "893067684", "S01M010_Main", "box_HackableController_v2_132.HackForced", "box_HackableController_v2_576.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_AISquadStateController_508_UntargetedSearchSet()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_227
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0 = self.box_AISquadStateController_508
  l1 = self.box_HackableController_v2_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1386399098", "1386399098", "S01M010_Main", "box_AISquadStateController_508.UntargetedSearchSet", "box_HackableController_v2_227.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_PGTController_v2_509_AllSpawned()
  local l0
  self = self._graph
  self:OnEnter_box_PGTController_v2_509()
  l0 = self.box_PGTController_v2_509
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1580453238", "1580453238", "S01M010_Main", "box_PGTController_v2_509.AllSpawned", "box_PGTController_v2_509.AddScriptedAgents", l0, l0)
  l0:AddScriptedAgents()
end
function export:f_box_PGTController_v2_509_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementCallController_370()
  l0 = self.box_PGTController_v2_509
  l1 = self.box_ReinforcementCallController_370
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|433961559", "433961559", "S01M010_Main", "box_PGTController_v2_509.ScriptedAgentsAdded", "box_ReinforcementCallController_370.Register", l0, l1)
  l1:Register()
end
function export:f_box_Get_Player_ID_216_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_504()
  l0 = self.box_MultipleOR_504
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|277831912", "277831912", "S01M010_Main", "box_Get_Player_ID_216.Out", "box_MultipleOR_504.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Profiler_Monitor_v2_507_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_545()
  l0 = self.box_Profiler_Monitor_v2_507
  l1 = self.box_TutorialController_545
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1093997571", "1093997571", "S01M010_Main", "box_Profiler_Monitor_v2_507.Disabled", "box_TutorialController_545.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Profiler_Monitor_v2_507_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_545()
  l0 = self.box_Profiler_Monitor_v2_507
  l1 = self.box_TutorialController_545
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|874558774", "874558774", "S01M010_Main", "box_Profiler_Monitor_v2_507.Enabled", "box_TutorialController_545.Display", l0, l1)
  l1:Display()
end
function export:f_box_Profiler_Monitor_v2_507_InfoDisplayed()
  local l0
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_507()
  l0 = self.box_Profiler_Monitor_v2_507
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1035610789", "1035610789", "S01M010_Main", "box_Profiler_Monitor_v2_507.InfoDisplayed", "box_Profiler_Monitor_v2_507.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_310_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_117()
  l0 = self.box_MissionCheckpointReach_310
  l1 = self.box_TriggerMonitor_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|728876846", "728876846", "S01M010_Main", "box_MissionCheckpointReach_310.Out", "box_TriggerMonitor_v2_117.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_503_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_503
  l1 = self.box_InstallPackageMonitor_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|663485891", "663485891", "S01M010_Main", "box_MissionCheckpointReach_503.Out", "box_InstallPackageMonitor_101.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Intel_Controller_414_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_196
  l0.Entity = "9223372058903936058"
  l0 = self.box_Intel_Controller_414
  l1 = self.box_Intel_Controller_196
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|217774756", "217774756", "S01M010_Main", "box_Intel_Controller_414.Disabled", "box_Intel_Controller_196.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hackable_Monitor_374_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_5
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Monitor_374
  l1 = self.box_HackableController_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1641798799", "1641798799", "S01M010_Main", "box_Hackable_Monitor_374.Disabled", "box_HackableController_v2_5.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_374_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_374()
  l0 = self.box_Hackable_Monitor_374
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|824141500", "824141500", "S01M010_Main", "box_Hackable_Monitor_374.HackSuccess", "box_Hackable_Monitor_374.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_390_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_23
  l0.SoundId = "soundbinary/3677950031.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_Timer_v2_390
  l1 = self.box_PlayDialog_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|604308962", "604308962", "S01M010_Main", "box_Timer_v2_390.TimeElapsed", "box_PlayDialog_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_162_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_651"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2051131149"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_651_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_651_Out_1
  l0 = self.box_HackableController_v2_162
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1603606532", "1603606532", "S01M010_Main", "box_HackableController_v2_162.Disabled", "box_Ordered_Output_651.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_478_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_444"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1163171834"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_478
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|244008059", "244008059", "S01M010_Main", "box_PlaySound_v2_478.Out", "box_MissionMusicController_444.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PGTController_v2_124_AllSpawned()
  local l0
  self = self._graph
  self:OnEnter_box_PGTController_v2_124()
  l0 = self.box_PGTController_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1622177761", "1622177761", "S01M010_Main", "box_PGTController_v2_124.AllSpawned", "box_PGTController_v2_124.AddScriptedAgents", l0, l0)
  l0:AddScriptedAgents()
end
function export:f_box_PGTController_v2_124_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementCallController_484()
  l0 = self.box_PGTController_v2_124
  l1 = self.box_ReinforcementCallController_484
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|182045965", "182045965", "S01M010_Main", "box_PGTController_v2_124.ScriptedAgentsAdded", "box_ReinforcementCallController_484.Register", l0, l1)
  l1:Register()
end
function export:f_box_ListForEach_163_EndOfList()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_163
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_163_ForEach()
  local l0, l1
  self = self._graph
  l0 = self.box_ListForEach_163
  self.kmcData = l0.Data
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.kmcData
  l0._graph = self
  l0._name = "box_Vehicle_Controller_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1024403066"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_ListForEach_163
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1877176629", "1877176629", "S01M010_Main", "box_ListForEach_163.ForEach", "box_Vehicle_Controller_186.DisableForPlayer", l0, l1)
  l1:DisableForPlayer()
end
function export:f_box_ListForEach_163_GotNext()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_163
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_163_Started()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_163
  self.kmcData = l0.Data
end
function export:f_box_ListForEach_163_Stopped()
  local l0
  self = self._graph
  l0 = self.box_ListForEach_163
  self.kmcData = l0.Data
end
function export:f_box_Timer_v2_82_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_233
  l0.HackableEntity = "9223372052137878771"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Timer_v2_82
  l1 = self.box_HackableController_v2_233
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|486567757", "486567757", "S01M010_Main", "box_Timer_v2_82.Stopped", "box_HackableController_v2_233.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Timer_v2_82_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_82()
  l0 = self.box_Timer_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1709024638", "1709024638", "S01M010_Main", "box_Timer_v2_82.TimeElapsed", "box_Timer_v2_82.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_417_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_559
  l0.SurvivalGuideItemDB = "Items.9223372053993007708"
  l0 = self.box_Timer_v2_417
  l1 = self.box_TutorialController_559
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1821414942", "1821414942", "S01M010_Main", "box_Timer_v2_417.Stopped", "box_TutorialController_559.Display", l0, l1)
  l1:Display()
end
function export:f_box_Timer_v2_417_TimeElapsed()
  local l0
  self = self._graph
  self:OnEnter_box_Timer_v2_417()
  l0 = self.box_Timer_v2_417
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1059036200", "1059036200", "S01M010_Main", "box_Timer_v2_417.TimeElapsed", "box_Timer_v2_417.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_FelonySystemController_v2_147_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = nil
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_591"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|370088317"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySoundController_591_Disabled
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|158750386", "158750386", "S01M010_Main", "box_FelonySystemController_v2_147.Enabled", "box_FelonySoundController_591.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_263_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_244
  l0.MoveableEntity = "9223372052040779138"
  l0 = self.box_OnceOnly_v3_263
  l1 = self.box_Moveable_Entity_Monitor_244
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|537652995", "537652995", "S01M010_Main", "box_OnceOnly_v3_263.Out", "box_Moveable_Entity_Monitor_244.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_183_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_183
  self.JunctionBoxes = l0.Target
  l0 = self.box_HackableController_v2_188
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0 = self.box_ListWriter_183
  l1 = self.box_HackableController_v2_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1904037541", "1904037541", "S01M010_Main", "box_ListWriter_183.Added", "box_HackableController_v2_188.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_ListWriter_183_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_183
  self.JunctionBoxes = l0.Target
end
function export:f_box_ListWriter_183_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_183
  self.JunctionBoxes = l0.Target
end
function export:f_box_TriggerMonitor_v2_419_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PawnHealthMonitor_v3_239()
  l0 = self.box_TriggerMonitor_v2_419
  l1 = self.box_PawnHealthMonitor_v3_239
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|317385232", "317385232", "S01M010_Main", "box_TriggerMonitor_v2_419.Disabled", "box_PawnHealthMonitor_v3_239.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_419_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_266()
  l0 = self.box_TriggerMonitor_v2_419
  l1 = self.box_TriggerMonitor_v2_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|324436852", "324436852", "S01M010_Main", "box_TriggerMonitor_v2_419.Enabled", "box_TriggerMonitor_v2_266.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_419_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_445()
  l0 = self.box_TriggerMonitor_v2_419
  l1 = self.box_TutorialController_445
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1498678788", "1498678788", "S01M010_Main", "box_TriggerMonitor_v2_419.Enter", "box_TutorialController_445.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_TriggerMonitor_v2_377_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_379()
  l0 = self.box_TriggerMonitor_v2_377
  l1 = self.box_TutorialController_379
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1834761994", "1834761994", "S01M010_Main", "box_TriggerMonitor_v2_377.Disabled", "box_TutorialController_379.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_377_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_552
  l0.SurvivalGuideItemDB = "Items.9223372053993007725"
  l0 = self.box_TriggerMonitor_v2_377
  l1 = self.box_TutorialController_552
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|96147717", "96147717", "S01M010_Main", "box_TriggerMonitor_v2_377.Enabled", "box_TutorialController_552.Display", l0, l1)
  l1:Display()
end
function export:f_box_TriggerMonitor_v2_377_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_356()
  l0 = self.box_TriggerMonitor_v2_377
  l1 = self.box_TutorialController_356
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1162983401", "1162983401", "S01M010_Main", "box_TriggerMonitor_v2_377.Enter", "box_TutorialController_356.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_MoveableEntityController_230_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_263
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|168133489", "168133489", "S01M010_Main", "box_MoveableEntityController_230.MovedForward", "box_OnceOnly_v3_263.In", clone, l0)
  l0:In(0)
end
function export:f_box_HackableController_v2_227_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_122
  l0.HackableEntity = "9223372054409466354"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_227
  l1 = self.box_HackableController_v2_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2115706302", "2115706302", "S01M010_Main", "box_HackableController_v2_227.Enabled", "box_HackableController_v2_122.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_MissionMessageController_v3_102_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_648"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|271317765"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_648_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_648_Out_1
  l0 = self.box_MissionMessageController_v3_102
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2122673458", "2122673458", "S01M010_Main", "box_MissionMessageController_v3_102.Out", "box_Ordered_Output_648.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_122_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_115
  l0.HackableEntity = "9223372054409466352"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_122
  l1 = self.box_HackableController_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1495937210", "1495937210", "S01M010_Main", "box_HackableController_v2_122.Enabled", "box_HackableController_v2_115.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_EntityLoadingMonitor_366_AllLoaded()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_289
  l0.HackableEntityList = self.CourtYard_World_Entities
  l0.ProfileLinkedToHack = 1
  l0 = self.box_EntityLoadingMonitor_366
  l1 = self.box_HackableController_v2_289
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1040950810", "1040950810", "S01M010_Main", "box_EntityLoadingMonitor_366.AllLoaded", "box_HackableController_v2_289.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_151_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_112
  l0.HackableEntity = "9223372054409466354"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_151
  l1 = self.box_HackableController_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1434769845", "1434769845", "S01M010_Main", "box_HackableController_v2_151.Disabled", "box_HackableController_v2_112.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_BlackoutController_71_BlackoutStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_565
  l0.SoundId = "soundbinary/2962986814.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|474289221", "474289221", "S01M010_Main", "box_BlackoutController_71.BlackoutStopped", "box_PlaySound_v2_565.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetActionMap_v2_354_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_349
  l0.MapPoint = "9223372061240119421"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1165987175", "1165987175", "S01M010_Main", "box_SetActionMap_v2_354.Popped", "box_MapPointController_v4_349.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_645_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_313()
  l0 = self.box_MultipleOR_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|119817514", "119817514", "S01M010_Main", "box_Ordered_Output_645.Out", "box_MultipleOR_313.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_645_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_500"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1212699939"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_500_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|682432503", "682432503", "S01M010_Main", "box_Ordered_Output_645.Out", "box_MissionMusicController_500.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_AISquadStateController_202_VanishSet()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372066236583618"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_471"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|425629956"
  l0.Enabled = self.f_box_InteractionScriptController_471_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_AISquadStateController_202
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1321678172", "1321678172", "S01M010_Main", "box_AISquadStateController_202.VanishSet", "box_InteractionScriptController_471.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_s01_M010_BigData_GiantScreen_Main_67_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_176
  l0.Input = self.JunctionBoxes
  l0.Data[0] = "9223372051483390003"
  l0.Data[1] = "9223372051483390005"
  l0.Data[2] = "9223372051483390007"
  l0.Data[3] = "9223372051483390009"
  l0.Data[4] = "9223372051483390011"
  l0.Data[5] = "9223372051483390013"
  l0.Data[6] = "9223372051483390015"
  l0.Data[7] = "9223372051483390017"
  l0.Data[8] = "9223372051483390019"
  l0.Data[9] = "9223372052137878771"
  l0.Data[10] = "9223372053478527657"
  l0.Data[11] = "9223372053478534917"
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_67
  l1 = self.box_ListWriter_176
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|539578259", "539578259", "S01M010_Main", "box_s01_M010_BigData_GiantScreen_Main_67.Started", "box_ListWriter_176.Add", l0, l1)
  l1:Add()
end
function export:f_box_MoveableEntityController_241_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_257
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|582521988", "582521988", "S01M010_Main", "box_MoveableEntityController_241.MovedForward", "box_OnceOnly_v3_257.In", clone, l0)
  l0:In(0)
end
function export:f_box_TriggerMonitor_v2_266_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_507()
  l0 = self.box_TriggerMonitor_v2_266
  l1 = self.box_Profiler_Monitor_v2_507
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|407492392", "407492392", "S01M010_Main", "box_TriggerMonitor_v2_266.Disabled", "box_Profiler_Monitor_v2_507.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_266_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_569()
  l0 = self.box_TriggerMonitor_v2_266
  l1 = self.box_Reach_Gameplay_569
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|210267983", "210267983", "S01M010_Main", "box_TriggerMonitor_v2_266.Enabled", "box_Reach_Gameplay_569.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_266_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_266()
  l0 = self.box_TriggerMonitor_v2_266
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1875491137", "1875491137", "S01M010_Main", "box_TriggerMonitor_v2_266.Enter", "box_TriggerMonitor_v2_266.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_ListWriter_127_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_127
  self.TakedownTutorial = l0.Target
  l0 = self.box_CinematicPrep_321
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_ListWriter_127
  l1 = self.box_CinematicPrep_321
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|540382858", "540382858", "S01M010_Main", "box_ListWriter_127.Added", "box_CinematicPrep_321.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_ListWriter_127_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_127
  self.TakedownTutorial = l0.Target
end
function export:f_box_ListWriter_127_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_127
  self.TakedownTutorial = l0.Target
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S01M010_Main"
  l0 = self.box_MultipleOR_10
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1257867942", "1257867942", "S01M010_Main", "box_MultipleOR_10.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_HackableController_v2_38_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_634"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1531395071"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_634_Changed
  l0 = self.box_HackableController_v2_38
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1737983292", "1737983292", "S01M010_Main", "box_HackableController_v2_38.Disabled", "box_Change_GraphicKit_Model_634.Change", l0, l1)
  l1:Change()
end
function export:f_box_TutorialController_396_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_88()
  l0 = self.box_TutorialController_396
  l1 = self.box_Hack_Gameplay_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1799174348", "1799174348", "S01M010_Main", "box_TutorialController_396.DisplayRequested", "box_Hack_Gameplay_88.Start", l0, l1)
  l1:Start()
end
function export:f_box_TutorialController_396_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_88()
  l0 = self.box_TutorialController_396
  l1 = self.box_Hack_Gameplay_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|618648247", "618648247", "S01M010_Main", "box_TutorialController_396.NotificationHidden", "box_Hack_Gameplay_88.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_TutorialController_559_DisplayRequested()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_82()
  l0 = self.box_TutorialController_559
  l1 = self.box_Timer_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2089375079", "2089375079", "S01M010_Main", "box_TutorialController_559.DisplayRequested", "box_Timer_v2_82.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_341_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|812255194", "812255194", "S01M010_Main", "box_Get_Player_ID_341.Out", "box_S01M010_Weather_174.In", clone, l0)
  l0:In()
end
function export:f_box_Reach_Gameplay_569_Reached()
  local l0
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_569()
  l0 = self.box_Reach_Gameplay_569
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|255637187", "255637187", "S01M010_Main", "box_Reach_Gameplay_569.Reached", "box_Reach_Gameplay_569.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Reach_Gameplay_569_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_448
  l0.UserList = self.EnemyExterior
  l0 = self.box_Reach_Gameplay_569
  l1 = self.box_CLOController_448
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2086459308", "2086459308", "S01M010_Main", "box_Reach_Gameplay_569.Stopped", "box_CLOController_448.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Ordered_Output_168_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListForEach_163
  l0.List = self.kmcList
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|977412923", "977412923", "S01M010_Main", "box_Ordered_Output_168.Out", "box_ListForEach_163.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_168_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_466"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1574505977"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_466_Changed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|169659521", "169659521", "S01M010_Main", "box_Ordered_Output_168.Out", "box_Change_GraphicKit_Model_466.Change", clone, l0)
  l0:Change()
end
function export:f_box_Ordered_Output_150_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_383()
  l0 = self.box_MultipleOR_383
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|210050987", "210050987", "S01M010_Main", "box_Ordered_Output_150.Out", "box_MultipleOR_383.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_150_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_228()
  l0 = self.box_MultipleOR_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|418730945", "418730945", "S01M010_Main", "box_Ordered_Output_150.Out", "box_MultipleOR_228.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_150_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_526"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|649462459"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_526_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1915148468", "1915148468", "S01M010_Main", "box_Ordered_Output_150.Out", "box_MissionMusicController_526.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_MoveableEntityController_240_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_256
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1181335119", "1181335119", "S01M010_Main", "box_MoveableEntityController_240.MovedForward", "box_OnceOnly_v3_256.In", clone, l0)
  l0:In(0)
end
function export:f_box_PlaySound_v2_565_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_529
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_PlaySound_v2_565
  l1 = self.box_PlaySound_v2_529
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1286443375", "1286443375", "S01M010_Main", "box_PlaySound_v2_565.Out", "box_PlaySound_v2_529.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_369_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_228()
  l0 = self.box_MultipleOR_228
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1102051171", "1102051171", "S01M010_Main", "box_Simple_Node_369.Out", "box_MultipleOR_228.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionLayer_v2_325_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|826944144"
  l0.Out = self.f_box_Get_Player_ID_326_Out
  l0 = self.box_MissionLayer_v2_325
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1225278094", "1225278094", "S01M010_Main", "box_MissionLayer_v2_325.Loaded", "box_Get_Player_ID_326.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_90_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Reach_Gameplay_561()
  l0 = self.box_Reach_Gameplay_561
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1604040274", "1604040274", "S01M010_Main", "box_Ordered_Output_90.Out", "box_Reach_Gameplay_561.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_90_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_89()
  l0 = self.box_TutorialController_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1265656900", "1265656900", "S01M010_Main", "box_Ordered_Output_90.Out", "box_TutorialController_89.Display", clone, l0)
  l0:Display()
end
function export:f_box_Ordered_Output_90_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_539
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1099793041", "1099793041", "S01M010_Main", "box_Ordered_Output_90.Out", "box_PlaySound_v2_539.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionCheckpointReach_362_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_445()
  l0 = self.box_MissionCheckpointReach_362
  l1 = self.box_TutorialController_445
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1673113621", "1673113621", "S01M010_Main", "box_MissionCheckpointReach_362.Out", "box_TutorialController_445.Display", l0, l1)
  l1:Display()
end
function export:f_box_FelonySystemController_v2_144_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0._name = "box_FelonySoundController_592"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2104181344"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySoundController_592_Enabled
  l0.Disabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1184284639", "1184284639", "S01M010_Main", "box_FelonySystemController_v2_144.Disabled", "box_FelonySoundController_592.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S01_M010_CIN_BlumeIntruder_Main_270_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_604
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_S01_M010_CIN_BlumeIntruder_Main_270
  l1 = self.box_HackableController_v2_604
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2145687613", "2145687613", "S01M010_Main", "box_S01_M010_CIN_BlumeIntruder_Main_270.Out", "box_HackableController_v2_604.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_246_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372063874921820"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1827086959"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_240_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_246
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1509503476", "1509503476", "S01M010_Main", "box_MultipleOR_246.Out", "box_MoveableEntityController_240.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_Reach_Gameplay_561_Reached()
  local l0
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_561()
  l0 = self.box_Reach_Gameplay_561
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|772378013", "772378013", "S01M010_Main", "box_Reach_Gameplay_561.Reached", "box_Reach_Gameplay_561.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Reach_Gameplay_561_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_42
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective023",
    item = "Objective",
    id = "688740"
  }
  l0 = self.box_Reach_Gameplay_561
  l1 = self.box_MissionMessageController_v3_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1379289390", "1379289390", "S01M010_Main", "box_Reach_Gameplay_561.Stopped", "box_MissionMessageController_v3_42.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_TutorialController_547_NotificationHidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_24()
  l0 = self.box_TutorialController_547
  l1 = self.box_InteractionScriptMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|465227929", "465227929", "S01M010_Main", "box_TutorialController_547.NotificationHidden", "box_InteractionScriptMonitor_v2_24.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Cinema_Zone_Cleanup_179_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateController_599
  l0.Affiliation = "UZulu"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|851933786", "851933786", "S01M010_Main", "box_Cinema_Zone_Cleanup_179.Out", "box_AISquadStateController_599.ForceVanish", clone, l0)
  l0:ForceVanish()
end
function export:f_box_Hack_Gameplay_395_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_76()
  l0 = self.box_Hack_Gameplay_395
  l1 = self.box_TutorialController_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1553642725", "1553642725", "S01M010_Main", "box_Hack_Gameplay_395.Hacked", "box_TutorialController_76.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_Hack_Gameplay_395_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|506057608"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_55_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_Hack_Gameplay_395
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1719859368", "1719859368", "S01M010_Main", "box_Hack_Gameplay_395.Stopped", "box_DPad_Hackable_Controller_55.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_MultipleOR_335_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_318
  l0.Checkpoint = "CheckPoint_6"
  l0 = self.box_MultipleOR_335
  l1 = self.box_MissionCheckpointReach_318
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|684915307", "684915307", "S01M010_Main", "box_MultipleOR_335.Out", "box_MissionCheckpointReach_318.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_334_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_450
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_334
  l1 = self.box_HackableController_v2_450
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|908404132", "908404132", "S01M010_Main", "box_HackableController_v2_334.Disabled", "box_HackableController_v2_450.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_502_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_16
  l0.SpawnPoint = "9223372047207301297"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.MountInstallPackage = 1
  l0 = self.box_MultipleOR_502
  l1 = self.box_Teleport_To_SpawnPoint_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1727889513", "1727889513", "S01M010_Main", "box_MultipleOR_502.Out", "box_Teleport_To_SpawnPoint_16.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_220_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Profiler_Monitor_v2_226()
  l0 = self.box_MapPointController_v4_220
  l1 = self.box_Profiler_Monitor_v2_226
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1863210854", "1863210854", "S01M010_Main", "box_MapPointController_v4_220.Shown", "box_Profiler_Monitor_v2_226.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_473_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_424"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1069942413"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_424_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_473
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|180989758", "180989758", "S01M010_Main", "box_HackableController_v2_473.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_424.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_VisibilityController_v2_413_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_363
  l0.LMALayerName = "SF_09_ctOS_Data_Center_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1544266439", "1544266439", "S01M010_Main", "box_VisibilityController_v2_413.Shown", "box_LMA_Layer_Controller_363.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_HackableController_v2_315_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_598
  l0.Entity = "9223372059224539270"
  l0 = self.box_HackableController_v2_315
  l1 = self.box_Hackable_Door_Controller_598
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1248006751", "1248006751", "S01M010_Main", "box_HackableController_v2_315.Disabled", "box_Hackable_Door_Controller_598.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_SmartphoneAppController_381_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_136
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1417031265", "1417031265", "S01M010_Main", "box_SmartphoneAppController_381.OverrideActivated", "box_HackableController_v2_136.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_SetActionMap_v2_21_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_0"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoMoveState"
  l0._graph = self
  l0._name = "box_SetActionMap_v2_583"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2025252331"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_583_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1368653483", "1368653483", "S01M010_Main", "box_SetActionMap_v2_21.Pushed", "box_SetActionMap_v2_583.Push", clone, l0)
  l0:Push()
end
function export:f_box_HackableController_v2_141_HackForced()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_578
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_141
  l1 = self.box_HackableController_v2_578
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|511689707", "511689707", "S01M010_Main", "box_HackableController_v2_141.HackForced", "box_HackableController_v2_578.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetActionMap_v2_586_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientTrigger"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1068832985"
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_box_DPad_Hackable_Controller_155_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1294302131", "1294302131", "S01M010_Main", "box_SetActionMap_v2_586.Popped", "box_DPad_Hackable_Controller_155.Add", clone, l0)
  l0:Add()
end
function export:f_box_PlayDialog_v2_73_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_210
  l0.SoundId = "soundbinary/2161710103.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_73
  l1 = self.box_PlayDialog_v2_210
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|46553328", "46553328", "S01M010_Main", "box_PlayDialog_v2_73.Finished", "box_PlayDialog_v2_210.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_492_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_570"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|917186816"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_492
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|35724629", "35724629", "S01M010_Main", "box_PlaySound_v2_492.Out", "box_MissionMusicController_570.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_v2_17_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_17
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self.box_ListWriter_127
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0 = self.box_CLOController_v2_17
  l1 = self.box_ListWriter_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|21488680", "21488680", "S01M010_Main", "box_CLOController_v2_17.OnUserInPlace", "box_ListWriter_127.Add", l0, l1)
  l1:Add()
end
function export:f_box_VisibilityController_v2_86_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|456005194"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_64_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|21623349", "21623349", "S01M010_Main", "box_VisibilityController_v2_86.Hidden", "box_SetActionMap_v2_64.Push", clone, l0)
  l0:Push()
end
function export:f_box_LMA_Layer_Controller_363_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_363
  l1 = self.box_MissionController_v4_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2131805431", "2131805431", "S01M010_Main", "box_LMA_Layer_Controller_363.Unloaded", "box_MissionController_v4_8.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Network_Surfing_Monitor_222_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_476()
  l0 = self.box_Network_Surfing_Monitor_222
  l1 = self.box_OnceOnly_v3_476
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1120334875", "1120334875", "S01M010_Main", "box_Network_Surfing_Monitor_222.Disabled", "box_OnceOnly_v3_476.In", l0, l1)
  l1:In(2)
end
function export:f_box_Network_Surfing_Monitor_222_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_546()
  l0 = self.box_Network_Surfing_Monitor_222
  l1 = self.box_TutorialController_546
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|898666709", "898666709", "S01M010_Main", "box_Network_Surfing_Monitor_222.Enabled", "box_TutorialController_546.Display", l0, l1)
  l1:Display()
end
function export:f_box_Network_Surfing_Monitor_222_OnNetworkSurfingActivated()
  local l0
  self = self._graph
  self:OnEnter_box_Network_Surfing_Monitor_222()
  l0 = self.box_Network_Surfing_Monitor_222
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1113314386", "1113314386", "S01M010_Main", "box_Network_Surfing_Monitor_222.OnNetworkSurfingActivated", "box_Network_Surfing_Monitor_222.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_ListWriter_367_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_367
  self.CourtYard_World_Entities = l0.Target
  l0 = self.box_EntityLoadingMonitor_366
  l0.AutoDisable = 1
  l0.EntityList = self.CourtYard_World_Entities
  l0 = self.box_ListWriter_367
  l1 = self.box_EntityLoadingMonitor_366
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|430606845", "430606845", "S01M010_Main", "box_ListWriter_367.Added", "box_EntityLoadingMonitor_366.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_367_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_367
  self.CourtYard_World_Entities = l0.Target
end
function export:f_box_ListWriter_367_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_367
  self.CourtYard_World_Entities = l0.Target
end
function export:f_box_MissionMusicController_568_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_492
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1276794072", "1276794072", "S01M010_Main", "box_MissionMusicController_568.Deactivated", "box_PlaySound_v2_492.Play", clone, l0)
  l0:Play()
end
function export:f_box_S01_M010_SCR_Main_393_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_63()
  l0 = self.box_S01_M010_SCR_Main_393
  l1 = self.box_Multiple_AND_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|866341060", "866341060", "S01M010_Main", "box_S01_M010_SCR_Main_393.Out", "box_Multiple_AND_63.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_S01_M010_SCR_Main_393_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_61
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0 = self.box_S01_M010_SCR_Main_393
  l1 = self.box_CLOController_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|290213518", "290213518", "S01M010_Main", "box_S01_M010_SCR_Main_393.Started", "box_CLOController_v2_61.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Door_Controller_601_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_302
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_Hackable_Door_Controller_601
  l1 = self.box_HackableController_v2_302
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1896859392", "1896859392", "S01M010_Main", "box_Hackable_Door_Controller_601.AiAccessDisabled", "box_HackableController_v2_302.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySound_v2_539_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_327()
  l0 = self.box_PlaySound_v2_539
  l1 = self.box_AgentStateMonitor_V2_327
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2009548971", "2009548971", "S01M010_Main", "box_PlaySound_v2_539.Out", "box_AgentStateMonitor_V2_327.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlayDialog_v2_72_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_65
  l0.SoundId = "soundbinary/1870534600.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_72
  l1 = self.box_PlayDialog_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|465729604", "465729604", "S01M010_Main", "box_PlayDialog_v2_72.Finished", "box_PlayDialog_v2_65.Start", l0, l1)
  l1:Start()
end
function export:f_box_Reach_Gameplay_562_Reached()
  local l0
  self = self._graph
  self:OnEnter_box_Reach_Gameplay_562()
  l0 = self.box_Reach_Gameplay_562
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|478938354", "478938354", "S01M010_Main", "box_Reach_Gameplay_562.Reached", "box_Reach_Gameplay_562.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Reach_Gameplay_562_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_342"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|712581633"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_342_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_342_Out_1
  l0 = self.box_Reach_Gameplay_562
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|368378061", "368378061", "S01M010_Main", "box_Reach_Gameplay_562.Stopped", "box_Ordered_Output_342.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_v2_158_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_158
  self.kmcList = l0.UserIDList
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1822815930"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_168_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_168_Out_1
  l0 = self.box_CLOController_v2_158
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|10238986", "10238986", "S01M010_Main", "box_CLOController_v2_158.OnUserInPlace", "box_Ordered_Output_168.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_211_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1843015490"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_90_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_90_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_90_Out_2
  l0 = self.box_MissionCheckpointReach_211
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1431364063", "1431364063", "S01M010_Main", "box_MissionCheckpointReach_211.Out", "box_Ordered_Output_90.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_594_AllSpawned()
  local l0
  self = self._graph
  self:OnEnter_box_PGTController_v2_594()
  l0 = self.box_PGTController_v2_594
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|176781110", "176781110", "S01M010_Main", "box_PGTController_v2_594.AllSpawned", "box_PGTController_v2_594.AddScriptedAgents", l0, l0)
  l0:AddScriptedAgents()
end
function export:f_box_PGTController_v2_594_ScriptedAgentsAdded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementCallController_495()
  l0 = self.box_PGTController_v2_594
  l1 = self.box_ReinforcementCallController_495
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|903028315", "903028315", "S01M010_Main", "box_PGTController_v2_594.ScriptedAgentsAdded", "box_ReinforcementCallController_495.Register", l0, l1)
  l1:Register()
end
function export:f_box_Hackable_Door_Controller_607_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_610
  l0.Entity = "9223372059224539309"
  l0 = self.box_Hackable_Door_Controller_607
  l1 = self.box_Hackable_Door_Controller_610
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|441013201", "441013201", "S01M010_Main", "box_Hackable_Door_Controller_607.AiAccessDisabled", "box_Hackable_Door_Controller_610.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_HackableController_v2_470_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1430056014"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_251_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_470
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1009074892", "1009074892", "S01M010_Main", "box_HackableController_v2_470.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_251.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_TutorialController_83_DisplayRequested()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_557
  l0.SurvivalGuideItemDB = "Items.9223372053993007696"
  l0 = self.box_TutorialController_83
  l1 = self.box_TutorialController_557
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|752151665", "752151665", "S01M010_Main", "box_TutorialController_83.DisplayRequested", "box_TutorialController_557.Display", l0, l1)
  l1:Display()
end
function export:f_box_Hackable_Door_Controller_600_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_601
  l0.Entity = "9223372059224539295"
  l0 = self.box_Hackable_Door_Controller_600
  l1 = self.box_Hackable_Door_Controller_601
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|981605308", "981605308", "S01M010_Main", "box_Hackable_Door_Controller_600.AiAccessDisabled", "box_Hackable_Door_Controller_601.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:f_box_MissionMusicController_218_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_527
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|990831054", "990831054", "S01M010_Main", "box_MissionMusicController_218.Deactivated", "box_PlaySound_v2_527.Play", clone, l0)
  l0:Play()
end
function export:f_box_Intel_Controller_556_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_574()
  l0 = self.box_Intel_Controller_556
  l1 = self.box_Intel_Controller_574
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1704963305", "1704963305", "S01M010_Main", "box_Intel_Controller_556.Disabled", "box_Intel_Controller_574.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Intel_Controller_556_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_574()
  l0 = self.box_Intel_Controller_556
  l1 = self.box_Intel_Controller_574
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1099861030", "1099861030", "S01M010_Main", "box_Intel_Controller_556.Enabled", "box_Intel_Controller_574.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetActionMap_v2_583_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|808923838"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_31_Shown
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1459759930", "1459759930", "S01M010_Main", "box_SetActionMap_v2_583.Pushed", "box_Show_Or_Hide_All_UI_31.Show", clone, l0)
  l0:Show()
end
function export:f_box_Get_Player_ID_319_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 3
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_405"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|95387699"
  l0.Out = self.f_box_SetTimeOfDay_405_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2015526829", "2015526829", "S01M010_Main", "box_Get_Player_ID_319.Out", "box_SetTimeOfDay_405.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_OnceOnly_v3_255_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_248
  l0.MoveableEntity = "9223372052040779117"
  l0 = self.box_OnceOnly_v3_255
  l1 = self.box_Moveable_Entity_Monitor_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1043432633", "1043432633", "S01M010_Main", "box_OnceOnly_v3_255.Out", "box_Moveable_Entity_Monitor_248.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MoveableEntityController_235_MovedForward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_262
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2027212278", "2027212278", "S01M010_Main", "box_MoveableEntityController_235.MovedForward", "box_OnceOnly_v3_262.In", clone, l0)
  l0:In(0)
end
function export:f_box_MultipleOR_254_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372063874878374"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2048198683"
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_box_MoveableEntityController_235_MovedForward
  l0.MovedBackward = DummyFunction
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_254
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1090812589", "1090812589", "S01M010_Main", "box_MultipleOR_254.Out", "box_MoveableEntityController_235.MoveForward", l0, l1)
  l1:MoveForward()
end
function export:f_box_HackableController_v2_30_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0._name = "box_Change_GraphicKit_Model_631"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|64677823"
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_box_Change_GraphicKit_Model_631_Changed
  l0 = self.box_HackableController_v2_30
  l1 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1490617443", "1490617443", "S01M010_Main", "box_HackableController_v2_30.Disabled", "box_Change_GraphicKit_Model_631.Change", l0, l1)
  l1:Change()
end
function export:f_box_Ordered_Output_651_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_s01_M010_BigData_GiantScreen_Main_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|358907540", "358907540", "S01M010_Main", "box_Ordered_Output_651.Out", "box_s01_M010_BigData_GiantScreen_Main_113.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_651_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_427"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1428127177"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_427_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|991444087", "991444087", "S01M010_Main", "box_Ordered_Output_651.Out", "box_MissionMusicController_427.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_HackableController_v2_172_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_343
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_172
  l1 = self.box_CinematicPrep_343
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|523400947", "523400947", "S01M010_Main", "box_HackableController_v2_172.Disabled", "box_CinematicPrep_343.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_HackableController_v2_608_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_v2_44
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0 = self.box_HackableController_v2_608
  l1 = self.box_CLOController_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|185845281", "185845281", "S01M010_Main", "box_HackableController_v2_608.Disabled", "box_CLOController_v2_44.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CinematicPrep_475_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372070692006222"
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
  l0._name = "box_Cinema_Zone_Cleanup_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1870644369"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_179_Out
  l0 = self.box_CinematicPrep_475
  l1 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1784494920", "1784494920", "S01M010_Main", "box_CinematicPrep_475.PreOut", "box_Cinema_Zone_Cleanup_179.CleanZone", l0, l1)
  l1:CleanZone()
end
function export:f_box_PlayDialog_v2_286_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_312
  l0.SoundId = "soundbinary/2105815314.bnk"
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_286
  l1 = self.box_PlayDialog_v2_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|669886935", "669886935", "S01M010_Main", "box_PlayDialog_v2_286.Finished", "box_PlayDialog_v2_312.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_448_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_587
  l0.Affiliation = "UZulu"
  l0 = self.box_CLOController_448
  l1 = self.box_AISquadStateController_587
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1897380477", "1897380477", "S01M010_Main", "box_CLOController_448.UnspawnedUser", "box_AISquadStateController_587.ForceVanish", l0, l1)
  l1:ForceVanish()
end
function export:f_box_BlackoutController_9_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_9()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|114839317", "114839317", "S01M010_Main", "box_BlackoutController_9.BlackoutStarted", "box_BlackoutController_9.StartBackup", clone, l0)
  l0:StartBackup()
end
function export:f_box_Ordered_Output_483_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_338()
  l0 = self.box_MultipleOR_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|97949204", "97949204", "S01M010_Main", "box_Ordered_Output_483.Out", "box_MultipleOR_338.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_483_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_449"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|936341440"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_449_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1517356299", "1517356299", "S01M010_Main", "box_Ordered_Output_483.Out", "box_MissionMusicController_449.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Intel_Controller_574_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_114
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives",
    item = "Sub-Objective",
    id = "698199"
  }
  l0.IncrementalObjectiveTotalSub3 = 1
  l0 = self.box_Intel_Controller_574
  l1 = self.box_MissionMessageController_v3_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|723167242", "723167242", "S01M010_Main", "box_Intel_Controller_574.Disabled", "box_MissionMessageController_v3_114.IncrementObjective", l0, l1)
  l1:IncrementObjective()
end
function export:f_box_Intel_Controller_574_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_374()
  l0 = self.box_Intel_Controller_574
  l1 = self.box_Hackable_Monitor_374
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1129015752", "1129015752", "S01M010_Main", "box_Intel_Controller_574.Enabled", "box_Hackable_Monitor_374.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CinematicPrep_403_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_397"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2135913289"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_397_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_397_Out_1
  l0 = self.box_CinematicPrep_403
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|412955631", "412955631", "S01M010_Main", "box_CinematicPrep_403.PostOut", "box_Ordered_Output_397.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_39_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_32
  l0.SoundId = "soundbinary/2045998479.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_PlayDialog_v2_39
  l1 = self.box_PlayDialog_v2_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|886844080", "886844080", "S01M010_Main", "box_PlayDialog_v2_39.Finished", "box_PlayDialog_v2_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_105_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_277
  l0.HackableEntity = "9223372052040779138"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_MissionMessageController_v3_105
  l1 = self.box_HackableController_v2_277
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1744726704", "1744726704", "S01M010_Main", "box_MissionMessageController_v3_105.Out", "box_HackableController_v2_277.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_AgentStateMonitor_V2_327_CombatState()
  local l0
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_327()
  l0 = self.box_AgentStateMonitor_V2_327
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|516119202", "516119202", "S01M010_Main", "box_AgentStateMonitor_V2_327.CombatState", "box_AgentStateMonitor_V2_327.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AgentStateMonitor_V2_327_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_259
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_AgentStateMonitor_V2_327
  l1 = self.box_PlaySound_v2_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|756242288", "756242288", "S01M010_Main", "box_AgentStateMonitor_V2_327.Disabled", "box_PlaySound_v2_259.Play", l0, l1)
  l1:Play()
end
function export:f_box_CinematicPrep_532_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|716784966"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0 = self.box_CinematicPrep_532
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1718339539", "1718339539", "S01M010_Main", "box_CinematicPrep_532.PostOut", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_269_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S01M010_Weather_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|328282881", "328282881", "S01M010_Main", "box_Get_Player_ID_269.Out", "box_S01M010_Weather_97.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_536_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2129968247"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_290_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_536
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|635311575", "635311575", "S01M010_Main", "box_HackableController_v2_536.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_290.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_MissionLayer_v2_320_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_319"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2027559685"
  l0.Out = self.f_box_Get_Player_ID_319_Out
  l0 = self.box_MissionLayer_v2_320
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1194004833", "1194004833", "S01M010_Main", "box_MissionLayer_v2_320.Loaded", "box_Get_Player_ID_319.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_384_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_452"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|718232461"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_452_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1599460784", "1599460784", "S01M010_Main", "box_SmartphoneAppController_384.OverrideActivated", "box_FelonySystemController_v2_452.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_537_ProfileAssigned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0._name = "box_PlayerBlurPlayerBlurPostFxControllerController_497"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1515482776"
  l0.Out = DummyFunction
  l0.Locked = self.f_box_PlayerBlurPlayerBlurPostFxControllerController_497_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0 = self.box_HackableController_v2_537
  l1 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|253459446", "253459446", "S01M010_Main", "box_HackableController_v2_537.ProfileAssigned", "box_PlayerBlurPlayerBlurPostFxControllerController_497.Lock", l0, l1)
  l1:Lock()
end
function export:f_box_HackableController_v2_111_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_287
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_111
  l1 = self.box_CinematicPrep_287
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1155879874", "1155879874", "S01M010_Main", "box_HackableController_v2_111.Disabled", "box_CinematicPrep_287.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_FelonySoundController_510_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_418
  l0.Input = self.CourtYard_World_Entities
  l0.Data[0] = "9223372059224539270"
  l0.Data[1] = "9223372059224539295"
  l0.Data[2] = "9223372059224539309"
  l0.Data[3] = "9223372059224539276"
  l0.Data[4] = "9223372059224539278"
  l0.Data[5] = "9223372059224539317"
  l0.Data[6] = "9223372059224539315"
  l0.Data[7] = "9223372059224539301"
  l0.Data[8] = "9223372059224539303"
  l0.Data[9] = "9223372059460980791"
  l0.Data[10] = "9223372059460980797"
  l0.Data[11] = "9223372059460980799"
  l0.Data[12] = "9223372059460980777"
  l0.Data[13] = "9223372059460980783"
  l0.Data[14] = "9223372059460980785"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|559017393", "559017393", "S01M010_Main", "box_FelonySoundController_510.Enabled", "box_ListWriter_418.Add", clone, l0)
  l0:Add()
end
function export:f_box_HackableController_v2_133_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = nil
  l0.AimingMode = nil
  l0.CoverEntity = "9223372047565021189"
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0._name = "box_Player_State_Controller_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|277720260"
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_box_Player_State_Controller_205_CoverEntered
  l0.CoverExited = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_133
  l1 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|187125097", "187125097", "S01M010_Main", "box_HackableController_v2_133.Disabled", "box_Player_State_Controller_205.EnterCover", l0, l1)
  l1:EnterCover()
end
function export:f_box_HackableController_v2_233_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0.HackCategoryType[1] = "IngredientTrigger"
  l0.HackCategoryType[2] = "IngredientShutdown"
  l0.HackCategoryType[3] = "IngredientAttract"
  l0._graph = self
  l0._name = "box_DPad_Hackable_Controller_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|303890855"
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_box_DPad_Hackable_Controller_69_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0 = self.box_HackableController_v2_233
  l1 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1647624522", "1647624522", "S01M010_Main", "box_HackableController_v2_233.Enabled", "box_DPad_Hackable_Controller_69.Remove", l0, l1)
  l1:Remove()
end
function export:f_box_FelonySoundController_592_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_132
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|902763825", "902763825", "S01M010_Main", "box_FelonySoundController_592.Enabled", "box_HackableController_v2_132.ForceHack", clone, l0)
  l0:ForceHack()
end
function export:f_box_PlaySound_v2_314_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_572"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|260946441"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_314
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1330889956", "1330889956", "S01M010_Main", "box_PlaySound_v2_314.Out", "box_MissionMusicController_572.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_145_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_141
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_HackableController_v2_145
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|55779018", "55779018", "S01M010_Main", "box_HackableController_v2_145.Disabled", "box_HackableController_v2_141.ForceHack", l0, l1)
  l1:ForceHack()
end
function export:f_box_Player_State_Controller_638_CoverToCoverAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerStateController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_612"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|455702704"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_612_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2044981260", "2044981260", "S01M010_Main", "box_Player_State_Controller_638.CoverToCoverAllowedSet", "box_Show_Or_Hide_All_UI_612.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_OnceOnly_v3_256_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Moveable_Entity_Monitor_247
  l0.MoveableEntity = "9223372063874921820"
  l0 = self.box_OnceOnly_v3_256
  l1 = self.box_Moveable_Entity_Monitor_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1019301913", "1019301913", "S01M010_Main", "box_OnceOnly_v3_256.Out", "box_Moveable_Entity_Monitor_247.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_SetActionMap_v2_514_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_1"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1905777272"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_21_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1691120486", "1691120486", "S01M010_Main", "box_SetActionMap_v2_514.Popped", "box_SetActionMap_v2_21.Push", clone, l0)
  l0:Push()
end
function export:f_box_PlayerBlurPlayerBlurPostFxControllerController_290_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_110
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2138077539", "2138077539", "S01M010_Main", "box_PlayerBlurPlayerBlurPostFxControllerController_290.Locked", "box_ListWriter_110.Add", clone, l0)
  l0:Add()
end
function export:f_box_ListWriter_78_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_78
  self.S01M010_AiList = l0.Target
  self:OnEnter_box_PGTController_v2_124()
  l1 = self.box_PGTController_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|668622086", "668622086", "S01M010_Main", "box_ListWriter_78.Added", "box_PGTController_v2_124.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_78_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_78
  self.S01M010_AiList = l0.Target
end
function export:f_box_ListWriter_78_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_78
  self.S01M010_AiList = l0.Target
end
function export:f_box_PlaySound_v2_195_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_195
  l1 = self.box_s01_M010_BigData_GiantScreen_Main_573
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|466322167", "466322167", "S01M010_Main", "box_PlaySound_v2_195.Out", "box_s01_M010_BigData_GiantScreen_Main_573.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_397_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_463()
  l0 = self.box_MultipleOR_463
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1829153927", "1829153927", "S01M010_Main", "box_Ordered_Output_397.Out", "box_MultipleOR_463.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_397_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2009451242"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_218_Deactivated
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1908282829", "1908282829", "S01M010_Main", "box_Ordered_Output_397.Out", "box_MissionMusicController_218.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_SetActionMap_v2_386_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|332844247"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_11_Hidden
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|966727521", "966727521", "S01M010_Main", "box_SetActionMap_v2_386.Pushed", "box_Show_Or_Hide_All_UI_11.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_305_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_387()
  l0 = self.box_TriggerMonitor_v2_387
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|877867688", "877867688", "S01M010_Main", "box_Ordered_Output_305.Out", "box_TriggerMonitor_v2_387.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_305_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_469
  l0.SoundId = "soundbinary/1465087397.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|724985429", "724985429", "S01M010_Main", "box_Ordered_Output_305.Out", "box_PlaySound_v2_469.Play", clone, l0)
  l0:Play()
end
function export:f_box_Teleport_To_SpawnPoint_16_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_413"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1894629652"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_413_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Teleport_To_SpawnPoint_16
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1661687116", "1661687116", "S01M010_Main", "box_Teleport_To_SpawnPoint_16.TeleportDone", "box_VisibilityController_v2_413.Show", l0, l1)
  l1:Show()
end
function export:f_box_PlaySound_v2_237_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_203
  l0.Seconds = 1
  l0 = self.box_PlaySound_v2_237
  l1 = self.box_Timer_v2_203
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|1588075758", "1588075758", "S01M010_Main", "box_PlaySound_v2_237.Out", "box_Timer_v2_203.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_TutorialController_585()
  local l0
  l0 = self.box_TutorialController_585
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Climbing",
    item = "Description",
    id = "340104"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_Climbing_PC",
    id = "690014"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_383()
end
function export:OnEnter_box_TriggerMonitor_v2_560()
  local l0
  l0 = self.box_TriggerMonitor_v2_560
  l0.Trigger = "9223372066281048285"
end
function export:OnEnter_box_TutorialController_513()
  local l0
  l0 = self.box_TutorialController_513
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_HackingDoors",
    item = "Description",
    id = "693273"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_HackingDoors_PC",
    id = "693447"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Interact_Gameplay_472()
  local l0
  l0 = self.box_Interact_Gameplay_472
  l0.Entity = "9223372066236583618"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_313()
end
function export:OnEnter_box_Download_Gameplay_643()
  local l0
  l0 = self.box_Download_Gameplay_643
  l0.TargetEntity = "9223372058903936058"
  l0.LinkedObjective = "Objective"
  l0.Duration = 20
  l0.DownloadRadiusPreset = "Interior"
  l0.OverridedRadius = 12
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "KeypadShutdown",
    id = "5903"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.5
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 1
  l0.AutoDetectDownload = 1
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_297()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_297
  l0.Affiliation = "UZulu"
  l0.CheckNow = 1
end
function export:OnEnter_box_Multiple_AND_63()
end
function export:OnEnter_box_ReinforcementCallController_370()
  local l0
  l0 = self.box_ReinforcementCallController_370
  l0.EntityList = self.S01M010_AiList
  l0.Mission = "MissionList.9223372047207302094"
end
function export:OnEnter_box_MultipleOR_252()
end
function export:OnEnter_box_MultipleOR_228()
end
function export:OnEnter_box_MultipleOR_333()
end
function export:OnEnter_box_ReinforcementCallController_495()
  local l0
  l0 = self.box_ReinforcementCallController_495
  l0.EntityList = self.S01M010_AiList
  l0.Mission = "MissionList.9223372047207302094"
end
function export:OnEnter_box_TutorialController_392()
  local l0
  l0 = self.box_TutorialController_392
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackLink",
    item = "Description",
    id = "340997"
  }
  l0.Duration = -1
end
function export:OnEnter_box_TutorialController_219()
  local l0
  l0 = self.box_TutorialController_219
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective020",
    item = "Objective",
    id = "634444"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_338()
end
function export:OnEnter_box_PawnHealthMonitor_v3_239()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_239
  l0.PawnList = self.EnemyExterior
end
function export:OnEnter_box_Interact_Gameplay_45()
  local l0
  l0 = self.box_Interact_Gameplay_45
  l0.Entity = "9223372061671495694"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_OnceOnly_v3_530()
end
function export:OnEnter_box_TriggerMonitor_v2_117()
  local l0
  l0 = self.box_TriggerMonitor_v2_117
  l0.Trigger = "9223372064379350647"
end
function export:OnEnter_box_MultipleOR_249()
end
function export:OnEnter_box_OnceOnly_v3_476()
end
function export:OnEnter_box_OnceOnly_v3_242()
end
function export:OnEnter_box_Hackable_Monitor_588()
  local l0
  l0 = self.box_Hackable_Monitor_588
  l0.HackableEntity = "9223372058618458050"
end
function export:OnEnter_box_TutorialController_356()
  local l0
  l0 = self.box_TutorialController_356
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_BasicMovement",
    item = "Description",
    id = "340102"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MissionZone_148()
  local l0
  l0 = self.box_MissionZone_148
  l0.MissionArea = "9223372058315934977"
  l0.MissionLayer = "S01M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 1
end
function export:OnEnter_box_MultipleOR_504()
end
function export:OnEnter_box_TriggerMonitor_v2_584()
  local l0
  l0 = self.box_TriggerMonitor_v2_584
  l0.Trigger = "9223372059241667221"
end
function export:OnEnter_box_TutorialController_421()
  local l0
  l0 = self.box_TutorialController_421
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Melee",
    item = "Description",
    id = "459188"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Multiple_AND_192()
end
function export:OnEnter_box_TutorialController_76()
  local l0
  l0 = self.box_TutorialController_76
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Hacking5",
    item = "Description",
    id = "689514"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_Hacking5_PC",
    id = "690040"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Profiler_Monitor_v2_440()
  local l0
  l0 = self.box_Profiler_Monitor_v2_440
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372062574079781"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:OnEnter_box_Profiler_Monitor_v2_226()
  local l0
  l0 = self.box_Profiler_Monitor_v2_226
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372062574079779"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:OnEnter_box_TriggerMonitor_v2_201()
  local l0
  l0 = self.box_TriggerMonitor_v2_201
  l0.Trigger = "9223372056499467195"
end
function export:OnEnter_box_MultipleOR_463()
end
function export:OnEnter_box_ReinforcementCallController_484()
  local l0
  l0 = self.box_ReinforcementCallController_484
  l0.EntityList = self.S01M010_AiList
  l0.Mission = "MissionList.9223372047207302094"
end
function export:OnEnter_box_TutorialController_89()
  local l0
  l0 = self.box_TutorialController_89
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_JunctionBox",
    item = "Description",
    id = "635330"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_JunctionBox_PC",
    id = "690037"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Interact_Gameplay_191()
  local l0
  l0 = self.box_Interact_Gameplay_191
  l0.Entity = "9223372058903936058"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Multiple_AND_48()
end
function export:OnEnter_box_MultipleOR_348()
end
function export:OnEnter_box_PawnHealthMonitor_v3_399()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_399
  l0.Pawn = self.EnemyGameplay_01
end
function export:OnEnter_box_TutorialController_545()
  local l0
  l0 = self.box_TutorialController_545
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_LockedObjects",
    item = "Description",
    id = "689237"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_LockedObjects_PC",
    id = "690039"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_245()
end
function export:OnEnter_box_TutorialController_546()
  local l0
  l0 = self.box_TutorialController_546
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_LockedObjects",
    item = "Description",
    id = "689237"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_LockedObjects_PC",
    id = "690039"
  }
  l0.Duration = -1
end
function export:OnEnter_box_InteractionScriptMonitor_v2_24()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_24
  l0.InteractionScriptEntity = "9223372061951647701"
end
function export:OnEnter_box_TutorialController_379()
  local l0
  l0 = self.box_TutorialController_379
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Climbing",
    item = "Description",
    id = "340104"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_Climbing_PC",
    id = "690014"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_285()
end
function export:OnEnter_box_Hackable_Monitor_57()
  local l0
  l0 = self.box_Hackable_Monitor_57
  l0.HackableEntity = "9223372052040779329"
end
function export:OnEnter_box_MultipleOR_207()
end
function export:OnEnter_box_TutorialController_415()
  local l0
  l0 = self.box_TutorialController_415
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_LockedObjects",
    item = "Description",
    id = "689237"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_LockedObjects_PC",
    id = "690039"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Hack_Gameplay_88()
  local l0
  l0 = self.box_Hack_Gameplay_88
  l0.Entity = "9223372052137878771"
  l0.HackCategory = "IngredientAttract"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_TutorialController_445()
  local l0
  l0 = self.box_TutorialController_445
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Cover",
    item = "Description",
    id = "459186"
  }
  l0.NotificationOverridePC = {
    section = "MISSIONS.TUTORIALS.Notification_Cover",
    item = "Description_PC",
    id = "698529"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Profiler_Monitor_v2_375()
  local l0
  l0 = self.box_Profiler_Monitor_v2_375
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372061671495694"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:OnEnter_box_TriggerMonitor_v2_387()
  local l0
  l0 = self.box_TriggerMonitor_v2_387
  l0.Trigger = "9223372055563998902"
end
function export:OnEnter_box_PGTController_v2_509()
  local l0
  l0 = self.box_PGTController_v2_509
  l0.PGTMissionArea = "9223372069423440676"
  l0.AgentList = self.S01M010_AiList
end
function export:OnEnter_box_Profiler_Monitor_v2_507()
  local l0
  l0 = self.box_Profiler_Monitor_v2_507
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372058618458050"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:OnEnter_box_Hackable_Monitor_374()
  local l0
  l0 = self.box_Hackable_Monitor_374
  l0.HackableEntity = "9223372058315931033"
end
function export:OnEnter_box_PGTController_v2_124()
  local l0
  l0 = self.box_PGTController_v2_124
  l0.PGTMissionArea = "9223372069423440676"
  l0.AgentList = self.S01M010_AiList
end
function export:OnEnter_box_Timer_v2_82()
  local l0
  l0 = self.box_Timer_v2_82
  l0.Seconds = 0.5
end
function export:OnEnter_box_Timer_v2_417()
  local l0
  l0 = self.box_Timer_v2_417
  l0.Seconds = 2
end
function export:OnEnter_box_TriggerMonitor_v2_419()
  local l0
  l0 = self.box_TriggerMonitor_v2_419
  l0.Trigger = "9223372058578000221"
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_377()
  local l0
  l0 = self.box_TriggerMonitor_v2_377
  l0.Trigger = "9223372057212037709"
end
function export:OnEnter_box_TriggerMonitor_v2_266()
  local l0
  l0 = self.box_TriggerMonitor_v2_266
  l0.Trigger = "9223372059407782551"
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_TutorialController_396()
  local l0
  l0 = self.box_TutorialController_396
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Hacking3",
    item = "Description",
    id = "473916"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_Hacking3_PC",
    id = "690031"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Reach_Gameplay_569()
  local l0
  l0 = self.box_Reach_Gameplay_569
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372058618284267"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_MultipleOR_246()
end
function export:OnEnter_box_Reach_Gameplay_561()
  local l0
  l0 = self.box_Reach_Gameplay_561
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372055563998908"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_TutorialController_547()
  local l0
  l0 = self.box_TutorialController_547
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_ClosedCircuitBox3",
    item = "Description",
    id = "459184"
  }
  l0.NotificationOverridePC = {
    section = "MISSIONS.TUTORIALS.Notification_ClosedCircuitBox3",
    item = "Description",
    id = "459184"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Hack_Gameplay_395()
  local l0
  l0 = self.box_Hack_Gameplay_395
  l0.Entity = "9223372052137878771"
  l0.HackCategory = "IngredientArm"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_MultipleOR_335()
end
function export:OnEnter_box_MultipleOR_502()
end
function export:OnEnter_box_Network_Surfing_Monitor_222()
end
function export:OnEnter_box_TutorialController_496()
  local l0
  l0 = self.box_TutorialController_496
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_VRPuzzle3",
    item = "Description",
    id = "481615"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "Notification_VRPuzzle3_PC",
    id = "690035"
  }
  l0.Duration = -1
end
function export:OnEnter_box_Reach_Gameplay_562()
  local l0
  l0 = self.box_Reach_Gameplay_562
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372055563998910"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:OnEnter_box_PGTController_v2_594()
  local l0
  l0 = self.box_PGTController_v2_594
  l0.PGTMissionArea = "9223372069423440676"
  l0.AgentList = self.S01M010_AiList
end
function export:OnEnter_box_Intel_Controller_556()
  local l0
  l0 = self.box_Intel_Controller_556
  l0.Entity = "9223372060332184897"
end
function export:OnEnter_box_MultipleOR_254()
end
function export:OnEnter_box_BlackoutController_9()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 60
  l0.PropagationSpeed = 15
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = 2
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0._name = "box_BlackoutController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01M010\\S01M010.domino|@S01M010_Main|2062379329"
  l0.BlackoutStarted = self.f_box_BlackoutController_9_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Intel_Controller_574()
  local l0
  l0 = self.box_Intel_Controller_574
  l0.Entity = "9223372067252589513"
end
function export:OnEnter_box_AgentStateMonitor_V2_327()
  local l0
  l0 = self.box_AgentStateMonitor_V2_327
  l0.NPCList = self.S01M010_AiList
end
function export:Out()
end
_compilerVersion = 4
