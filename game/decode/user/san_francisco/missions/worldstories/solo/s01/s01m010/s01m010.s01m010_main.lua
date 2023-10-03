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
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/FelonySoundController.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/InstallPackageMonitor.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  cbox:RegisterBox("domino/System/ReinforcementCallController.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BeachParty.S01_M010_CIN_BeachParty_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BigData.S01_M010_CIN_BigData_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BlumeIntruder.S01_M010_CIN_BlumeIntruder_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_cin_intro.S01_M010_CIN_Intro_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_SCR.S01_M010_SCR_Main.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
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
  self[49] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_49_OnUserInPlace
  self[74] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[74]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_74_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[585] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[585]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_585_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[383] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[383]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_383_Out
  self[140] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[140]
  l0._graph = self
  l0.Out = self.f_140_Out
  self[602] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[602]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_602_AiAccessDisabled
  self[23] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_23_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[264] = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self[264]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  self[224] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[224]
  l0._graph = self
  l0.WanderSet = self.f_224_WanderSet
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
  self[331] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[331]
  l0._graph = self
  l0.Loaded = self.f_331_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[627] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_cin_intro.S01_M010_CIN_Intro_Main.lua")
  l0 = self[627]
  l0._graph = self
  l0.Out = self.f_627_Out
  l0.TS_Sitara = self.f_627_TS_Sitara
  self[75] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = self.f_75_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[560] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[560]
  l0._graph = self
  l0.Enabled = self.f_560_Enabled
  l0.Disabled = self.f_560_Disabled
  l0.Enter = self.f_560_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[275] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BigData.S01_M010_CIN_BigData_Main.lua")
  l0 = self[275]
  l0._graph = self
  l0.Finished = self.f_275_Finished
  l0.Out = self.f_275_Out
  self[340] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[340]
  l0._graph = self
  l0.Out = self.f_340_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[525] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[525]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_525_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[103] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = self.f_103_Out
  self[412] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[412]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_412_OnUserInPlace
  self[109] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[109]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[343] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[343]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_343_PostOut
  self[108] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[108]
  l0._graph = self
  l0.Started = self.f_108_Started
  l0.Ended = DummyFunction
  self[182] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[182]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_182_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[573] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[573]
  l0._graph = self
  l0.Started = self.f_573_Started
  l0.Ended = DummyFunction
  self[178] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[178]
  l0._graph = self
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_178_Added
  l0.Removed = self.f_178_Removed
  l0.Out = self.f_178_Out
  self[262] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[262]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_262_Out
  l0.ResetOut = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0.MessageCompleted = DummyFunction
  self[513] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[513]
  l0._graph = self
  l0.Out = self.f_513_Out
  l0.DisplayRequested = self.f_513_DisplayRequested
  l0.NotificationHidden = self.f_513_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_4_Unloaded
  l0.Reseted = DummyFunction
  self[472] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[472]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_472_Stopped
  l0.Interacted = self.f_472_Interacted
  self[313] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[313]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_313_Out
  self[610] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[610]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_610_AiAccessDisabled
  self[203] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[203]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_203_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[261] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[261]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_261_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[131] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[131]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_131_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[50] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_50_Added
  l0.Removed = self.f_50_Removed
  l0.Out = self.f_50_Out
  self[199] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[199]
  l0._graph = self
  l0.Enabled = self.f_199_Enabled
  l0.Disabled = DummyFunction
  self[643] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[643]
  l0._graph = self
  l0.Started = self.f_643_Started
  l0.Stopped = self.f_643_Stopped
  l0.DownloadCompleted = self.f_643_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[499] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[499]
  l0._graph = self
  l0.Enabled = self.f_499_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[126] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[126]
  l0._graph = self
  l0.Out = self.f_126_Out
  l0.MessageCompleted = DummyFunction
  self[187] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[187]
  l0._graph = self
  l0._DynamicAnchors = {Data = 15}
  l0.Added = self.f_187_Added
  l0.Removed = self.f_187_Removed
  l0.Out = self.f_187_Out
  self[622] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[622]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_622_Added
  l0.Removed = self.f_622_Removed
  l0.Out = self.f_622_Out
  self[53] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_53_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[29] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_29_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[467] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[467]
  l0._graph = self
  l0.Out = self.f_467_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[289] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[289]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_289_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[447] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[447]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_447_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[154] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[154]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_154_Added
  l0.Removed = self.f_154_Removed
  l0.Out = self.f_154_Out
  self[181] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[181]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_181_Added
  l0.Removed = self.f_181_Removed
  l0.Out = self.f_181_Out
  self[223] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[223]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = self.f_223_RewardsRegistered
  l0.RewardsExecuted = DummyFunction
  self[420] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[420]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_420_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[209] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[209]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_209_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[577] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[577]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_577_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[524] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[524]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Stopping"}
  }
  l0.Started = self.f_524_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_524_Skipped
  l0.Finished = self.f_524_Finished
  l0.SPOut.Stopping = DummyFunction
  self[247] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[247]
  l0._graph = self
  l0.Enabled = self.f_247_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_247_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[80] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 8, UserID = 8}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_80_OnUserInPlace
  self[494] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[494]
  l0._graph = self
  l0._DynamicAnchors = {Data = 8}
  l0.Added = self.f_494_Added
  l0.Removed = self.f_494_Removed
  l0.Out = self.f_494_Out
  self[576] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[576]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_576_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[297] = cbox:CreateBox("domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[297]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_297_None
  l0.Reinforcing = self.f_297_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[63] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_63_Out
  self[370] = cbox:CreateBox("domino/System/ReinforcementCallController.lua")
  l0 = self[370]
  l0._graph = self
  l0.Out = DummyFunction
  l0.EnabledCallers = self.f_370_EnabledCallers
  l0.DisabledCallers = DummyFunction
  l0.Registered = self.f_370_Registered
  l0.Unregistered = DummyFunction
  self[552] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[552]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_552_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[28] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_28_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[252] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[252]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_252_Out
  self[119] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[119]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_119_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[26] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_26_Added
  l0.Removed = self.f_26_Removed
  l0.Out = self.f_26_Out
  self[157] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[157]
  l0._graph = self
  l0.Shown = self.f_157_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[169] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[169]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Assigned = self.f_169_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[418] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[418]
  l0._graph = self
  l0._DynamicAnchors = {Data = 15}
  l0.Added = self.f_418_Added
  l0.Removed = self.f_418_Removed
  l0.Out = self.f_418_Out
  self[228] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[228]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_228_Out
  self[333] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[333]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_333_Out
  self[296] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[296]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_296_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[77] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[196] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[196]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_196_Disabled
  self[534] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[534]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_534_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[422] = cbox:CreateBox("domino/System/TargetTagController.lua")
  l0 = self[422]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TagAdded = self.f_422_TagAdded
  l0.ErrorAdding = DummyFunction
  l0.TagRemoved = DummyFunction
  l0.ErrorRemoving = DummyFunction
  l0.TaggingEnabled = DummyFunction
  l0.TaggingDisabled = DummyFunction
  l0.ProfilerlessTaggingEnabled = DummyFunction
  l0.ProfilerlessTaggingDisabled = DummyFunction
  l0.TaggerComponentEnabled = DummyFunction
  l0.TaggerComponentDisabled = DummyFunction
  self[495] = cbox:CreateBox("domino/System/ReinforcementCallController.lua")
  l0 = self[495]
  l0._graph = self
  l0.Out = DummyFunction
  l0.EnabledCallers = self.f_495_EnabledCallers
  l0.DisabledCallers = DummyFunction
  l0.Registered = self.f_495_Registered
  l0.Unregistered = DummyFunction
  self[609] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[609]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_609_OnUserInPlace
  self[392] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[392]
  l0._graph = self
  l0.Out = self.f_392_Out
  l0.DisplayRequested = self.f_392_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[219] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[219]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_219_DisplayRequested
  l0.NotificationHidden = self.f_219_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[338] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[338]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_338_Out
  self[173] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[173]
  l0._graph = self
  l0.Out = self.f_173_Out
  self[214] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[214]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 11, UserID = 11}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_214_OnUserInPlace
  self[146] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[146]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_146_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[311] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[311]
  l0._graph = self
  l0.Loaded = self.f_311_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[579] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[579]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_579_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[566] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[566]
  l0._graph = self
  l0.Out = self.f_566_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[339] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[339]
  l0._graph = self
  l0.Loaded = self.f_339_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[239] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[239]
  l0._graph = self
  l0.Enabled = self.f_239_Enabled
  l0.Disabled = self.f_239_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = self.f_239_Killed
  l0.DBNO = self.f_239_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[468] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[468]
  l0._graph = self
  l0.Out = self.f_468_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[130] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[130]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_130_Added
  l0.Removed = self.f_130_Removed
  l0.Out = self.f_130_Out
  self[389] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[389]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_389_OnUserInPlace
  self[94] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[94]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[112] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[112]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_112_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[302] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[302]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_302_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[45] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[45]
  l0._graph = self
  l0.Started = self.f_45_Started
  l0.Stopped = self.f_45_Stopped
  l0.Interacted = self.f_45_Interacted
  self[8] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[8]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_7_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[250] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[250]
  l0._graph = self
  l0.Out = self.f_250_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[321] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[321]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_321_PostOut
  self[232] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[232]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_232_AllLoaded
  self[605] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[605]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_605_AiAccessDisabled
  self[505] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[505]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_505_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[423] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[423]
  l0._graph = self
  l0.Loaded = self.f_423_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[409] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[409]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_409_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[506] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[506]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[656] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[656]
  l0._graph = self
  l0.Out = self.f_656_Out
  l0.MessageCompleted = DummyFunction
  self[530] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[530]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_530_Out
  l0.ResetOut = DummyFunction
  self[206] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[206]
  l0._graph = self
  l0.Out = self.f_206_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[96] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BeachParty.S01_M010_CIN_BeachParty_Main.lua")
  l0 = self[96]
  l0._graph = self
  l0.Out = self.f_96_Out
  l0.VentilationShaftEscape_CIN_Finish = self.f_96_VentilationShaftEscape_CIN_Finish
  l0.VentilationShaftEscape_CIN_Started = self.f_96_VentilationShaftEscape_CIN_Started
  self[606] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[606]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_606_AiAccessDisabled
  self[221] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[221]
  l0._graph = self
  l0.Started = self.f_221_Started
  l0.Stopped = self.f_221_Stopped
  l0.ForEach = self.f_221_ForEach
  l0.GotNext = self.f_221_GotNext
  l0.EndOfList = self.f_221_EndOfList
  l0.GotFirst = DummyFunction
  self[85] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[85]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_85_Added
  l0.Removed = self.f_85_Removed
  l0.Out = self.f_85_Out
  self[117] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[117]
  l0._graph = self
  l0.Enabled = self.f_117_Enabled
  l0.Disabled = self.f_117_Disabled
  l0.Enter = self.f_117_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[40] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[170] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[170]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[194] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[194]
  l0._graph = self
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_194_Added
  l0.Removed = self.f_194_Removed
  l0.Out = self.f_194_Out
  self[287] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[287]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_287_PostOut
  self[68] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = self.f_68_Out
  l0.MessageCompleted = DummyFunction
  self[639] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[639]
  l0._graph = self
  l0.Out = self.f_639_Out
  l0.MessageCompleted = DummyFunction
  self[337] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[337]
  l0._graph = self
  l0.Out = self.f_337_Out
  l0.MessageCompleted = DummyFunction
  self[234] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[234]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_234_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[249] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[249]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_249_Out
  self[197] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[197]
  l0._graph = self
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_197_Added
  l0.Removed = self.f_197_Removed
  l0.Out = self.f_197_Out
  self[238] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[238]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Ended = self.f_238_Ended
  self[93] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = self.f_93_Out
  l0.MessageCompleted = DummyFunction
  self[457] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[457]
  l0._graph = self
  l0.Enabled = self.f_457_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[476] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[476]
  l0._graph = self
  l0._DynamicAnchors = {In = 3}
  l0.Out = self.f_476_Out
  l0.ResetOut = DummyFunction
  self[208] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[208]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_208_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[22] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_22_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[58] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_58_OnUserInPlace
  self[189] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[189]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 11, UserID = 11}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_189_OnUserInPlace
  self[242] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[242]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_242_Out
  l0.ResetOut = DummyFunction
  self[114] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[114]
  l0._graph = self
  l0.Out = self.f_114_Out
  l0.MessageCompleted = DummyFunction
  self[41] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[41]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_41_PostOut
  self[166] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[166]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_166_Added
  l0.Removed = self.f_166_Removed
  l0.Out = self.f_166_Out
  self[60] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_60_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[578] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[578]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_578_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[518] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[518]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_518_PostOut
  self[588] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[588]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_588_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[356] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[356]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_356_DisplayRequested
  l0.NotificationHidden = self.f_356_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[604] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[604]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_604_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[257] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[257]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_257_Out
  l0.ResetOut = DummyFunction
  self[624] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[624]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_624_OnUserInPlace
  self[309] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[309]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_309_PostOut
  self[501] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[501]
  l0._graph = self
  l0.Out = self.f_501_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = self.f_20_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[587] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[587]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_587_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[544] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[544]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_544_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[62] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[62]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = DummyFunction
  self[171] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[171]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_171_Added
  l0.Removed = self.f_171_Removed
  l0.Out = self.f_171_Out
  self[113] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[113]
  l0._graph = self
  l0.Started = self.f_113_Started
  l0.Ended = DummyFunction
  self[129] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[129]
  l0._graph = self
  l0.Out = self.f_129_Out
  l0.MessageCompleted = DummyFunction
  self[549] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[549]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[42] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = self.f_42_Out
  l0.MessageCompleted = DummyFunction
  self[349] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[349]
  l0._graph = self
  l0.Shown = self.f_349_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[52] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 8, UserID = 8}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_52_OnUserInPlace
  self[148] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[148]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[180] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[180]
  l0._graph = self
  l0.Out = self.f_180_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[504] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[504]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_504_Out
  self[324] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[324]
  l0._graph = self
  l0.Out = self.f_324_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[193] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[193]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_193_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[282] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[282]
  l0._graph = self
  l0.Enabled = self.f_282_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[128] = cbox:CreateBox("domino/Library/common/MissionFlow.Restore_Mission_SubObjectives.lua")
  l0 = self[128]
  l0._graph = self
  l0.Restored = self.f_128_Restored
  self[584] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[584]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_584_Disabled
  l0.Enter = self.f_584_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[312] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[312]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_312_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[288] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[288]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_288_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[580] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[580]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_580_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[465] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[465]
  l0._graph = self
  l0.Out = self.f_465_Out
  self[421] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[421]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_421_DisplayRequested
  l0.NotificationHidden = self.f_421_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[164] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[164]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_164_Added
  l0.Removed = self.f_164_Removed
  l0.Out = self.f_164_Out
  self[557] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[557]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[192] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[192]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_192_Out
  self[101] = cbox:CreateBox("domino/System/InstallPackageMonitor.lua")
  l0 = self[101]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InstallFinished = self.f_101_InstallFinished
  l0.IsInstalling = DummyFunction
  l0.IsNotInstalling = DummyFunction
  self[106] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[106]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_106_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[590] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[590]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_590_Disabled
  self[253] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[253]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_253_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[76] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_76_DisplayRequested
  l0.NotificationHidden = self.f_76_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[210] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[210]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_210_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[35] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[558] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[558]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[329] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[329]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[32] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[440] = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self[440]
  l0._graph = self
  l0.Enabled = self.f_440_Enabled
  l0.Disabled = self.f_440_Disabled
  l0.InfoDisplayed = self.f_440_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self[614] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[614]
  l0._graph = self
  l0.AiAccessEnabled = self.f_614_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self[402] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[402]
  l0._graph = self
  l0.Out = self.f_402_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[226] = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self[226]
  l0._graph = self
  l0.Enabled = self.f_226_Enabled
  l0.Disabled = self.f_226_Disabled
  l0.InfoDisplayed = self.f_226_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self[201] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[201]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_201_Disabled
  l0.Enter = self.f_201_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[46] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[46]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_46_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[185] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[185]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_185_AllLoaded
  self[463] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[463]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_463_Out
  self[535] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[535]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[136] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_136_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[581] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[581]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Teleport", "GotoCover"}
  }
  l0.Started = self.f_581_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_581_Finished
  l0.SPOut.Teleport = self.f_581_SPOut__Teleport_
  l0.SPOut.GotoCover = self.f_581_SPOut__GotoCover_
  self[484] = cbox:CreateBox("domino/System/ReinforcementCallController.lua")
  l0 = self[484]
  l0._graph = self
  l0.Out = DummyFunction
  l0.EnabledCallers = self.f_484_EnabledCallers
  l0.DisabledCallers = DummyFunction
  l0.Registered = self.f_484_Registered
  l0.Unregistered = DummyFunction
  self[244] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[244]
  l0._graph = self
  l0.Enabled = self.f_244_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_244_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[115] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[115]
  l0._graph = self
  l0.Enabled = self.f_115_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[89] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[89]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_89_DisplayRequested
  l0.NotificationHidden = self.f_89_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[598] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[598]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_598_AiAccessDisabled
  self[613] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[613]
  l0._graph = self
  l0.AiAccessEnabled = self.f_613_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self[191] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[191]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_191_Stopped
  l0.Interacted = self.f_191_Interacted
  self[528] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[528]
  l0._graph = self
  l0.Started = self.f_528_Started
  l0.Ended = DummyFunction
  self[61] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[61]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_61_OnUserInPlace
  self[204] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[204]
  l0._graph = self
  l0.Out = self.f_204_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[278] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[278]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_278_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[464] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[464]
  l0._graph = self
  l0.Started = self.f_464_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_464_Finished
  self[589] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[589]
  l0._graph = self
  l0.Enabled = self.f_589_Enabled
  l0.Disabled = DummyFunction
  self[554] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[554]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = self.f_554_ProfileReset
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[104] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = self.f_104_Out
  l0.MessageCompleted = DummyFunction
  self[153] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[153]
  l0._graph = self
  l0.Started = self.f_153_Started
  l0.Ended = DummyFunction
  self[599] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[599]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_599_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[188] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[188]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_188_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[515] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[515]
  l0._graph = self
  l0.Loaded = self.f_515_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[48] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_48_Out
  self[36] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_36_Added
  l0.Removed = self.f_36_Removed
  l0.Out = self.f_36_Out
  self[615] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[615]
  l0._graph = self
  l0.AiAccessEnabled = self.f_615_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self[135] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_135_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[348] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[348]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_348_Out
  self[446] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[446]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_446_Added
  l0.Removed = self.f_446_Removed
  l0.Out = self.f_446_Out
  self[15] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_15_Added
  l0.Removed = self.f_15_Removed
  l0.Out = self.f_15_Out
  self[156] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[156]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_156_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[603] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[603]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_603_AiAccessDisabled
  self[527] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[527]
  l0._graph = self
  l0.Out = self.f_527_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[174] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[174]
  l0._graph = self
  l0.Out = self.f_174_Out
  self[399] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[399]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_399_Disabled
  l0.Damaged = DummyFunction
  l0.Killed = DummyFunction
  l0.DBNO = self.f_399_DBNO
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[177] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[177]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_177_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[477] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[477]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_477_OnUserInPlace
  self[456] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[456]
  l0._graph = self
  l0.Enabled = self.f_456_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[92] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_92_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[212] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[212]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_212_PostOut
  self[5] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[12] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  self[545] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[545]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_545_DisplayRequested
  l0.NotificationHidden = self.f_545_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[474] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[474]
  l0._graph = self
  l0.Out = self.f_474_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[259] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[259]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[555] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[555]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_555_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[372] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[372]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_372_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[245] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[245]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_245_Out
  self[546] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[546]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_546_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[176] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[176]
  l0._graph = self
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_176_Added
  l0.Removed = self.f_176_Removed
  l0.Out = self.f_176_Out
  self[24] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_24_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_24_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[81] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_81_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[323] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[323]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_323_PostOut
  self[167] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[167]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_167_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[379] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[379]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_379_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[285] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[285]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_285_Out
  self[277] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[277]
  l0._graph = self
  l0.Enabled = self.f_277_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[318] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[318]
  l0._graph = self
  l0.Out = self.f_318_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[516] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[516]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_516_OnUserInPlace
  self[66] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_66_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[575] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[575]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_575_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[391] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[391]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_391_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[57] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[57]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_57_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_57_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[97] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = self.f_97_Out
  self[110] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[110]
  l0._graph = self
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_110_Added
  l0.Removed = self.f_110_Removed
  l0.Out = self.f_110_Out
  self[207] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[207]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_207_Out
  self[165] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[165]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_165_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[415] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[415]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_415_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[118] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[118]
  l0._graph = self
  l0.Started = self.f_118_Started
  l0.Ended = DummyFunction
  self[225] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[225]
  l0._graph = self
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_225_Added
  l0.Removed = self.f_225_Removed
  l0.Out = self.f_225_Out
  self[184] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[184]
  l0._graph = self
  l0.Out = self.f_184_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[88] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[88]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_88_Stopped
  l0.Hacked = self.f_88_Hacked
  self[445] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[445]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_445_DisplayRequested
  l0.NotificationHidden = self.f_445_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[248] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[248]
  l0._graph = self
  l0.Enabled = self.f_248_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_248_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[44] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_44_OnUserInPlace
  self[450] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[450]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_450_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[292] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[292]
  l0._graph = self
  l0.Loaded = self.f_292_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[123] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[123]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_123_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[59] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_59_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[139] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[139]
  l0._graph = self
  l0.Out = self.f_139_Out
  self[541] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[541]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[243] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[243]
  l0._graph = self
  l0.Enabled = self.f_243_Enabled
  l0.Disabled = DummyFunction
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = self.f_243_OnBkwMovementStarted
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[190] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[190]
  l0._graph = self
  l0.Started = self.f_190_Started
  l0.Stopped = self.f_190_Stopped
  l0.ForEach = self.f_190_ForEach
  l0.GotNext = self.f_190_GotNext
  l0.EndOfList = self.f_190_EndOfList
  l0.GotFirst = DummyFunction
  self[375] = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self[375]
  l0._graph = self
  l0.Enabled = self.f_375_Enabled
  l0.Disabled = self.f_375_Disabled
  l0.InfoDisplayed = self.f_375_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self[387] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[387]
  l0._graph = self
  l0.Enabled = self.f_387_Enabled
  l0.Disabled = self.f_387_Disabled
  l0.Enter = self.f_387_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[95] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01M010.S01M010_Weather.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = self.f_95_Out
  self[3] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 8, UserID = 8}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[107] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_107_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[134] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_134_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[159] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[159]
  l0._graph = self
  l0.Started = self.f_159_Started
  l0.Ended = DummyFunction
  self[132] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[132]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_132_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[508] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[508]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = self.f_508_UntargetedSearchSet
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[509] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[509]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_509_AllSpawned
  l0.ScriptedAgentsAdded = self.f_509_ScriptedAgentsAdded
  self[507] = cbox:CreateBox("domino/System/ProfilerMonitor_v2.lua")
  l0 = self[507]
  l0._graph = self
  l0.Enabled = self.f_507_Enabled
  l0.Disabled = self.f_507_Disabled
  l0.InfoDisplayed = self.f_507_InfoDisplayed
  l0.ListInfoDisplayed = DummyFunction
  l0.InfoHidden = DummyFunction
  l0.ListInfoHidden = DummyFunction
  l0.IsOn = DummyFunction
  l0.IsOff = DummyFunction
  l0.DelayBeforeSendingEventSet = DummyFunction
  l0.DelayBeforeSendingEventReset = DummyFunction
  self[310] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[310]
  l0._graph = self
  l0.Out = self.f_310_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[503] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[503]
  l0._graph = self
  l0.Out = self.f_503_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[414] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[414]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_414_Disabled
  self[374] = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self[374]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_374_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_374_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self[390] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[390]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_390_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[162] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[162]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_162_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[478] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[478]
  l0._graph = self
  l0.Out = self.f_478_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[124] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[124]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_124_AllSpawned
  l0.ScriptedAgentsAdded = self.f_124_ScriptedAgentsAdded
  self[163] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[163]
  l0._graph = self
  l0.Started = self.f_163_Started
  l0.Stopped = self.f_163_Stopped
  l0.ForEach = self.f_163_ForEach
  l0.GotNext = self.f_163_GotNext
  l0.EndOfList = self.f_163_EndOfList
  l0.GotFirst = DummyFunction
  self[82] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_82_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[417] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[417]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = self.f_417_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_417_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[263] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[263]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_263_Out
  l0.ResetOut = DummyFunction
  self[183] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[183]
  l0._graph = self
  l0._DynamicAnchors = {Data = 12}
  l0.Added = self.f_183_Added
  l0.Removed = self.f_183_Removed
  l0.Out = self.f_183_Out
  self[419] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[419]
  l0._graph = self
  l0.Enabled = self.f_419_Enabled
  l0.Disabled = self.f_419_Disabled
  l0.Enter = self.f_419_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[377] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[377]
  l0._graph = self
  l0.Enabled = self.f_377_Enabled
  l0.Disabled = self.f_377_Disabled
  l0.Enter = self.f_377_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[227] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[227]
  l0._graph = self
  l0.Enabled = self.f_227_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[102] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = self.f_102_Out
  l0.MessageCompleted = DummyFunction
  self[122] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[122]
  l0._graph = self
  l0.Enabled = self.f_122_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[366] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[366]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_366_AllLoaded
  self[151] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[151]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_151_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[202] = cbox:CreateBox("domino/System/AISquadStateController.lua")
  l0 = self[202]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = DummyFunction
  l0.CombatSet = DummyFunction
  l0.VanishSet = self.f_202_VanishSet
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[67] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/s01_m010_bigdata_giantscreen.s01_M010_BigData_GiantScreen_Main.lua")
  l0 = self[67]
  l0._graph = self
  l0.Started = self.f_67_Started
  l0.Ended = DummyFunction
  self[266] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[266]
  l0._graph = self
  l0.Enabled = self.f_266_Enabled
  l0.Disabled = self.f_266_Disabled
  l0.Enter = self.f_266_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[127] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[127]
  l0._graph = self
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_127_Added
  l0.Removed = self.f_127_Removed
  l0.Out = self.f_127_Out
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[38] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_38_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[396] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[396]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_396_DisplayRequested
  l0.NotificationHidden = self.f_396_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[559] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[559]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_559_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[569] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[569]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_569_Stopped
  l0.Reached = self.f_569_Reached
  self[565] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[565]
  l0._graph = self
  l0.Out = self.f_565_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[325] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[325]
  l0._graph = self
  l0.Loaded = self.f_325_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[362] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[362]
  l0._graph = self
  l0.Out = self.f_362_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[270] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_CIN_BlumeIntruder.S01_M010_CIN_BlumeIntruder_Main.lua")
  l0 = self[270]
  l0._graph = self
  l0.Out = self.f_270_Out
  self[246] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[246]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_246_Out
  self[561] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[561]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_561_Stopped
  l0.Reached = self.f_561_Reached
  self[547] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[547]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = self.f_547_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[395] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[395]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_395_Stopped
  l0.Hacked = self.f_395_Hacked
  self[335] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[335]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_335_Out
  self[334] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[334]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_334_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[502] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[502]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_502_Out
  self[220] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[220]
  l0._graph = self
  l0.Shown = self.f_220_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[473] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[473]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_473_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[315] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[315]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_315_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[141] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[141]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_141_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[73] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[73]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_73_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[492] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[492]
  l0._graph = self
  l0.Out = self.f_492_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[17] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 7, UserID = 7}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_17_OnUserInPlace
  self[363] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[363]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_363_Unloaded
  self[222] = cbox:CreateBox("domino/System/NetworkSurfingMonitor.lua")
  l0 = self[222]
  l0._graph = self
  l0.Enabled = self.f_222_Enabled
  l0.Disabled = self.f_222_Disabled
  l0.OnNetworkSurfingActivated = self.f_222_OnNetworkSurfingActivated
  l0.OnNetworkSurfingDeactivated = DummyFunction
  self[367] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[367]
  l0._graph = self
  l0._DynamicAnchors = {Data = 15}
  l0.Added = self.f_367_Added
  l0.Removed = self.f_367_Removed
  l0.Out = self.f_367_Out
  self[393] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S01/S01M010/S01_M010_SCR.S01_M010_SCR_Main.lua")
  l0 = self[393]
  l0._graph = self
  l0.Out = self.f_393_Out
  l0.Started = self.f_393_Started
  self[601] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[601]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_601_AiAccessDisabled
  self[539] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[539]
  l0._graph = self
  l0.Out = self.f_539_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[496] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[496]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[72] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_72_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[562] = cbox:CreateBox("domino/Library/common/MissionIngredients.Reach_Gameplay.lua")
  l0 = self[562]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_562_Stopped
  l0.Reached = self.f_562_Reached
  self[158] = cbox:CreateBox("domino/System/CLOController_v2.lua")
  l0 = self[158]
  l0._graph = self
  l0._DynamicAnchors = {CLO = 11, UserID = 11}
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_158_OnUserInPlace
  self[211] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[211]
  l0._graph = self
  l0.Out = self.f_211_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[594] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[594]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_594_AllSpawned
  l0.ScriptedAgentsAdded = self.f_594_ScriptedAgentsAdded
  self[607] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[607]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_607_AiAccessDisabled
  self[470] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[470]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_470_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[83] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[83]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_83_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[600] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[600]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_600_AiAccessDisabled
  self[556] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[556]
  l0._graph = self
  l0.Enabled = self.f_556_Enabled
  l0.Disabled = self.f_556_Disabled
  self[255] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[255]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_255_Out
  l0.ResetOut = DummyFunction
  self[254] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[254]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_254_Out
  self[30] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_30_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[172] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[172]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_172_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[608] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[608]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_608_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[475] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[475]
  l0._graph = self
  l0.PreOut = self.f_475_PreOut
  l0.PostOut = DummyFunction
  self[65] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
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
  self[286] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[286]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_286_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[448] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[448]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_448_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[551] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[551]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[574] = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self[574]
  l0._graph = self
  l0.Enabled = self.f_574_Enabled
  l0.Disabled = self.f_574_Disabled
  self[403] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[403]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_403_PostOut
  self[39] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_39_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[105] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = self.f_105_Out
  l0.MessageCompleted = DummyFunction
  self[327] = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self[327]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_327_Disabled
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
  l0.CombatState = self.f_327_CombatState
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
  self[532] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[532]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_532_PostOut
  self[536] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[536]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_536_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[529] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[529]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[320] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[320]
  l0._graph = self
  l0.Loaded = self.f_320_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[537] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[537]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = self.f_537_ProfileAssigned
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[111] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[111]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_111_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[133] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[133]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_133_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[233] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[233]
  l0._graph = self
  l0.Enabled = self.f_233_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[314] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[314]
  l0._graph = self
  l0.Out = self.f_314_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[145] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[145]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_145_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[256] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[256]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_256_Out
  l0.ResetOut = DummyFunction
  self[469] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[469]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[78] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[78]
  l0._graph = self
  l0._DynamicAnchors = {Data = 7}
  l0.Added = self.f_78_Added
  l0.Removed = self.f_78_Removed
  l0.Out = self.f_78_Out
  self[195] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[195]
  l0._graph = self
  l0.Out = self.f_195_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[16] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_16_TeleportDone
  self[237] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[237]
  l0._graph = self
  l0.Out = self.f_237_Out
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
  l0 = self[10]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[515]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_10()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_216_Out
  l0:In()
end
function export:CheckPoint_11()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_217_Out
  l0:In()
end
function export:CheckPoint_2()
  local l0
  l0 = self[292]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_5()
  local l0
  l0 = self[311]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_6()
  local l0
  l0 = self[320]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_7()
  local l0
  l0 = self[325]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_8()
  local l0
  l0 = self[331]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_9()
  local l0
  l0 = self[339]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:CheckPoint_Intro()
  local l0
  l0 = self[423]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[10]
  l0:Input(0)
end
function export:f_49_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[49]
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self[50]
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0:Add()
end
function export:f_74_Disabled()
  local l0
  self = self._graph
  l0 = self[189]
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
  l0:Activate()
end
function export:f_585_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[92]
  l0.Seconds = 60
  l0:Start()
end
function export:f_517_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[139]
  l0:In()
end
function export:f_383_Out()
  local l0
  self = self._graph
  l0 = self[362]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_378_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_602_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[74]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_23_Finished()
  local l0
  self = self._graph
  l0 = self[60]
  l0.SoundId = "soundbinary/3256541240.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_37_Shown()
  local l0
  self = self._graph
  l0 = self[464]
  l0.SceneEntity = "9223372067977579598"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M010_ProxyHack/s01_m010_proxyhack.seq"
  l0:Start()
end
function export:f_224_WanderSet()
  local l0
  self = self._graph
  l0 = self[192]
  l0:Condition(1)
end
function export:f_631_Changed()
  local l0
  self = self._graph
  l0 = self[58]
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0:Activate()
end
function export:f_331_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_328_Out
  l0:In()
end
function export:f_637_Changed()
  local l0
  self = self._graph
  l0 = self[171]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_627_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Condition(0)
end
function export:f_627_TS_Sitara()
  local l0
  self = self._graph
  l0 = self[278]
  l0.SoundId = "soundbinary/1048812891.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_75_Out()
  local l0
  self = self._graph
  self:en_219()
  l0 = self[219]
  l0:Display()
end
function export:f_560_Disabled()
  local l0
  self = self._graph
  self:en_392()
  l0 = self[392]
  l0:Display()
end
function export:f_560_Enabled()
  local l0
  self = self._graph
  l0 = self[46]
  l0.MapPoint = "9223372057211925497"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Hide()
end
function export:f_560_Enter()
  local l0
  self = self._graph
  self:en_560()
  l0 = self[560]
  l0:Disable()
end
function export:f_275_Finished()
  local l0
  self = self._graph
  l0 = self[195]
  l0.SoundId = "soundbinary/4162327257.bnk"
  l0:Play()
end
function export:f_275_Out()
  local l0
  self = self._graph
  l0 = self[192]
  l0:Condition(0)
end
function export:f_340_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_120_Out_0
  l0.Out[1] = self.f_120_Out_1
  l0:In()
end
function export:f_525_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_548_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_103_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_19_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_405_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_406_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_373_Pushed()
  local l0
  self = self._graph
  l0 = self[187]
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
  l0:Add()
end
function export:f_412_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[412]
  self.EnemyTutorial_Exterior_02 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_01
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_543_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_498_Out_0()
  local l0
  self = self._graph
  l0 = self[639]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective022",
    item = "Objective",
    id = "688739"
  }
  l0:ShowNewObjective()
end
function export:f_498_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_568_Deactivated
  l0:Deactivate()
end
function export:f_343_PostOut()
  local l0
  self = self._graph
  l0 = self[126]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective023",
    item = "Objective",
    id = "688740"
  }
  l0:ShowNewObjective()
end
function export:f_108_Started()
  local l0
  self = self._graph
  l0 = self[333]
  l0:Input(0)
end
function export:f_182_Disabled()
  local l0
  self = self._graph
  l0 = self[130]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_19_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_138_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_573_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_86_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_178_Added()
  local l0
  self = self._graph
  l0 = self[178]
  self.JunctionBoxes = l0.Target
  l0 = self[182]
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_178_Out()
  local l0
  self = self._graph
  l0 = self[178]
  self.JunctionBoxes = l0.Target
end
function export:f_178_Removed()
  local l0
  self = self._graph
  l0 = self[178]
  self.JunctionBoxes = l0.Target
end
function export:f_262_Out()
  local l0
  self = self._graph
  l0 = self[253]
  l0.MoveableEntity = "9223372063874878374"
  l0:Enable()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[170]
  l0.SoundId = "soundbinary/3506465663.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_513_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[558]
  l0.SurvivalGuideItemDB = "Items.9223372053993007703"
  l0:Display()
end
function export:f_513_NotificationHidden()
  local l0
  self = self._graph
  self:en_588()
  l0 = self[588]
  l0:Disable()
end
function export:f_513_Out()
  local l0
  self = self._graph
  self:en_588()
  l0 = self[588]
  l0:Enable()
end
function export:f_582_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[62]
  l0.SpawnPoint = "9223372057534316000"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_4_Unloaded()
  local l0
  self = self._graph
  l0 = self[504]
  l0:Input(0)
end
function export:f_472_Interacted()
  local l0
  self = self._graph
  self:en_472()
  l0 = self[472]
  l0:Stop()
end
function export:f_472_Stopped()
  local l0
  self = self._graph
  l0 = self[590]
  l0.Entity = "9223372069104140478"
  l0:Disable()
end
function export:f_512_Deactivated()
  local l0
  self = self._graph
  l0 = self[204]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_313_Out()
  local l0
  self = self._graph
  l0 = self[250]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_610_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[602]
  l0.Entity = "9223372059224539295"
  l0:DisableAiAccess()
end
function export:f_203_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[206]
  l0.SoundId = "soundbinary/71783185.bnk"
  l0:Play()
end
function export:f_261_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[506]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_131_HackForced()
  local l0
  self = self._graph
  l0 = self[579]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_385_InitialTargetSet()
  local l0
  self = self._graph
  l0 = self[656]
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
  l0:ShowNewObjective()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_50_Added()
  local l0
  self = self._graph
  l0 = self[50]
  self.TakedownTutorial = l0.Target
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_632_Changed
  l0:Change()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[50]
  self.TakedownTutorial = l0.Target
end
function export:f_50_Removed()
  local l0
  self = self._graph
  l0 = self[50]
  self.TakedownTutorial = l0.Target
end
function export:f_199_Enabled()
  local l0
  self = self._graph
  self:en_191()
  l0 = self[191]
  l0:Start()
end
function export:f_643_DownloadCompleted()
  local l0
  self = self._graph
  self:en_643()
  l0 = self[643]
  l0:Stop()
end
function export:f_643_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_231_Out_0
  l0.Out[1] = self.f_231_Out_1
  l0:In()
end
function export:f_643_Stopped()
  local l0
  self = self._graph
  l0 = self[335]
  l0:Input(1)
end
function export:f_499_Enabled()
  local l0
  self = self._graph
  self:en_415()
  l0 = self[415]
  l0:HideNotification()
end
function export:f_563_Enabled()
  local l0
  self = self._graph
  l0 = self[367]
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
  l0:Add()
end
function export:f_126_Out()
  local l0
  self = self._graph
  l0 = self[159]
  l0:In()
end
function export:f_187_Added()
  local l0
  self = self._graph
  l0 = self[187]
  self.CourtYard_World_Entities = l0.Target
  l0 = self[185]
  l0.AutoDisable = 1
  l0.EntityList = self.CourtYard_World_Entities
  l0:Enable()
end
function export:f_187_Out()
  local l0
  self = self._graph
  l0 = self[187]
  self.CourtYard_World_Entities = l0.Target
end
function export:f_187_Removed()
  local l0
  self = self._graph
  l0 = self[187]
  self.CourtYard_World_Entities = l0.Target
end
function export:f_622_Added()
  local l0
  self = self._graph
  l0 = self[622]
  self.EnemyExterior = l0.Target
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_633_Changed
  l0:Change()
end
function export:f_622_Out()
  local l0
  self = self._graph
  l0 = self[622]
  self.EnemyExterior = l0.Target
end
function export:f_622_Removed()
  local l0
  self = self._graph
  l0 = self[622]
  self.EnemyExterior = l0.Target
end
function export:f_53_Finished()
  local l0
  self = self._graph
  l0 = self[72]
  l0.SoundId = "soundbinary/29153627.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_29_Finished()
  local l0
  self = self._graph
  l0 = self[7]
  l0.SoundId = "soundbinary/567106130.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_467_Out()
  local l0
  self = self._graph
  l0 = self[261]
  l0.Seconds = 16.2
  l0:Start()
end
function export:f_289_Disabled()
  local l0
  self = self._graph
  l0 = self[607]
  l0.Entity = "9223372059224539270"
  l0:DisableAiAccess()
end
function export:f_648_Out_0()
  local l0
  self = self._graph
  l0 = self[108]
  l0:In()
end
function export:f_648_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_512_Deactivated
  l0:Deactivate()
end
function export:f_447_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[499]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_154_Added()
  local l0
  self = self._graph
  l0 = self[154]
  self.AccessDoorDisable = l0.Target
  l0 = self[162]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_154_Out()
  local l0
  self = self._graph
  l0 = self[154]
  self.AccessDoorDisable = l0.Target
end
function export:f_154_Removed()
  local l0
  self = self._graph
  l0 = self[154]
  self.AccessDoorDisable = l0.Target
end
function export:f_205_CoverEntered()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO[0] = "9223372047874975198"
  l0.CLO[1] = "9223372047874975197"
  l0.CLO[2] = "9223372047874975200"
  l0.CLO[3] = "9223372047874975199"
  l0.CLO[4] = "9223372047874975201"
  l0.CLO[5] = "9223372064215696431"
  l0.CLO[6] = "9223372064215696432"
  l0.CLO[7] = "9223372047874975203"
  l0:Activate()
end
function export:f_181_Added()
  local l0
  self = self._graph
  l0 = self[181]
  self.S01M010_AiList = l0.Target
  self:en_594()
  l0 = self[594]
  l0:Start()
end
function export:f_181_Out()
  local l0
  self = self._graph
  l0 = self[181]
  self.S01M010_AiList = l0.Target
end
function export:f_181_Removed()
  local l0
  self = self._graph
  l0 = self[181]
  self.S01M010_AiList = l0.Target
end
function export:f_223_RewardsRegistered()
  local l0
  self = self._graph
  l0 = self[220]
  l0.MapPoint = "9223372057211925497"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Show()
end
function export:f_420_UnspawnedUser()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_531_Out_0
  l0.Out[1] = self.f_531_Out_1
  l0:In()
end
function export:f_209_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[22]
  l0.SoundId = "soundbinary/3703769483.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_69_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_84_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Add()
end
function export:f_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_637_Changed
  l0:Change()
end
function export:f_522_CoverToCoverAllowedReset()
  local l0
  self = self._graph
  l0 = self[207]
  l0:Input(0)
end
function export:f_577_Disabled()
  local l0
  self = self._graph
  l0 = self[133]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_524_Finished()
  local l0
  self = self._graph
  l0 = self[530]
  l0:In(1)
end
function export:f_524_Skipped()
  local l0
  self = self._graph
  l0 = self[530]
  l0:In(0)
end
function export:f_524_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069104140478"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_247_Enabled()
  local l0
  self = self._graph
  l0 = self[249]
  l0:Input(0)
end
function export:f_247_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[246]
  l0:Input(1)
end
function export:f_80_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[80]
  self.EnemyGameplay_01 = l0.UserID[0]
  self.EnemyGameplay_02 = l0.UserID[1]
  self.EnemyGameplay_03 = l0.UserID[2]
  self.EnemyGameplay_04 = l0.UserID[3]
  self.EnemyGameplay_05 = l0.UserID[4]
  self.EnemyGameplay_09 = l0.UserID[5]
  self.EnemyGameplay_10 = l0.UserID[6]
  self.EnemyGameplay_07 = l0.UserID[7]
  l0 = self[494]
  l0.Input = self.S01M010_AiList
  l0.Data[0] = self.EnemyGameplay_01
  l0.Data[1] = self.EnemyGameplay_02
  l0.Data[2] = self.EnemyGameplay_03
  l0.Data[3] = self.EnemyGameplay_04
  l0.Data[4] = self.EnemyGameplay_05
  l0.Data[5] = self.EnemyGameplay_07
  l0.Data[6] = self.EnemyGameplay_09
  l0.Data[7] = self.EnemyGameplay_10
  l0:Add()
end
function export:f_494_Added()
  local l0
  self = self._graph
  l0 = self[494]
  self.S01M010_AiList = l0.Target
  self:en_509()
  l0 = self[509]
  l0:Start()
end
function export:f_494_Out()
  local l0
  self = self._graph
  l0 = self[494]
  self.S01M010_AiList = l0.Target
end
function export:f_494_Removed()
  local l0
  self = self._graph
  l0 = self[494]
  self.S01M010_AiList = l0.Target
end
function export:f_576_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[608]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_297_None()
  local l0
  self = self._graph
  l0 = self[285]
  l0:Input(0)
end
function export:f_297_Reinforcing()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = "UZulu"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372052875637346"
  l0.AgentList = self.S01M010_AiList
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = self.f_493_ReinforcingStopped
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StopReinforcing()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_33_Out_0
  l0.Out[1] = self.f_33_Out_1
  l0:In()
end
function export:f_370_EnabledCallers()
  local l0
  self = self._graph
  l0 = self[106]
  l0.Position = "9223372069340157573"
  l0.Affiliation = "UZulu"
  l0.SearchOverrideParamTimeout = -1
  l0:SetInUntargetedSearch()
end
function export:f_370_Registered()
  local l0
  self = self._graph
  self:en_370()
  l0 = self[370]
  l0:EnableCallers()
end
function export:f_552_DisplayRequested()
  local l0
  self = self._graph
  self:en_201()
  l0 = self[201]
  l0:Enable()
end
function export:f_11_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_265_Out_0
  l0.Out[1] = self.f_265_Out_1
  l0:In()
end
function export:f_28_Finished()
  local l0
  self = self._graph
  l0 = self[73]
  l0.SoundId = "soundbinary/3465896214.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_252_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372063874878362"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_241_MovedForward
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
function export:f_119_VanishSet()
  local l0
  self = self._graph
  l0 = self[420]
  l0.UserList = self.TakedownTutorial
  l0:UnspawnUser()
end
function export:f_26_Added()
  local l0
  self = self._graph
  l0 = self[26]
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
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = self.f_385_InitialTargetSet
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0:SetInitialTarget()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[26]
  self.CameraAccessCode = l0.Target
end
function export:f_26_Removed()
  local l0
  self = self._graph
  l0 = self[26]
  self.CameraAccessCode = l0.Target
end
function export:f_157_Shown()
  local l0
  self = self._graph
  l0 = self[66]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_169_Assigned()
  local l0
  self = self._graph
  self:en_399()
  l0 = self[399]
  l0:Enable()
end
function export:f_418_Added()
  local l0
  self = self._graph
  l0 = self[418]
  self.CourtYard_World_Entities = l0.Target
  l0 = self[232]
  l0.AutoDisable = 1
  l0.EntityList = self.CourtYard_World_Entities
  l0:Enable()
end
function export:f_418_Out()
  local l0
  self = self._graph
  l0 = self[418]
  self.CourtYard_World_Entities = l0.Target
end
function export:f_418_Removed()
  local l0
  self = self._graph
  l0 = self[418]
  self.CourtYard_World_Entities = l0.Target
end
function export:f_591_Disabled()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = "S01M010_Main"
  l0:Unload()
end
function export:f_228_Out()
  local l0
  self = self._graph
  self:en_148()
  l0 = self[148]
  l0:Enable()
end
function export:f_333_Out()
  local l0
  self = self._graph
  l0 = self[310]
  l0.Checkpoint = "CheckPoint_5"
  l0:In()
end
function export:f_296_Finished()
  local l0
  self = self._graph
  l0 = self[286]
  l0.SoundId = "soundbinary/4003496994.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_196_Disabled()
  local l0
  self = self._graph
  self:en_643()
  l0 = self[643]
  l0:Start()
end
function export:f_534_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_260_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_422_TagAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_37_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_495_EnabledCallers()
  local l0
  self = self._graph
  l0 = self[505]
  l0.Position = "9223372069340157573"
  l0.Affiliation = "UZulu"
  l0.SearchOverrideParamTimeout = -1
  l0:SetInUntargetedSearch()
end
function export:f_495_Registered()
  local l0
  self = self._graph
  self:en_495()
  l0 = self[495]
  l0:EnableCallers()
end
function export:f_609_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[609]
  self.Enemy_Tutorial_Exterior_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Enemy_Tutorial_Exterior_03
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_611_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_392_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[391]
  l0.Seconds = 60
  l0:Start()
end
function export:f_392_Out()
  local l0
  self = self._graph
  l0 = self[551]
  l0.SurvivalGuideItemDB = "Items.9223372053993007681"
  l0:Display()
end
function export:f_521_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_02
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_523_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_471_Enabled()
  local l0
  self = self._graph
  l0 = self[589]
  l0.Entity = "9223372069104140478"
  l0:Enable()
end
function export:f_219_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[282]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_219_NotificationHidden()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Disable()
end
function export:f_268_Added()
  local l0
  self = self._graph
  l0 = self[78]
  l0.Input = self.S01M010_AiList
  l0.Data[0] = self.EnemyGameplay_02
  l0.Data[1] = self.EnemyGameplay_03
  l0.Data[2] = self.EnemyGameplay_04
  l0.Data[3] = self.EnemyGameplay_05
  l0.Data[4] = self.EnemyGameplay_07
  l0.Data[5] = self.EnemyGameplay_09
  l0.Data[6] = self.EnemyGameplay_10
  l0:Add()
end
function export:f_338_Out()
  local l0
  self = self._graph
  l0 = self[340]
  l0.Checkpoint = "CheckPoint_9"
  l0:In()
end
function export:f_137_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_593_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_173_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_381_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_612_Hidden()
  local l0
  self = self._graph
  l0 = self[52]
  l0.CLO[0] = "9223372047874975198"
  l0.CLO[1] = "9223372047874975197"
  l0.CLO[2] = "9223372047874975200"
  l0.CLO[3] = "9223372047874975199"
  l0.CLO[4] = "9223372047874975201"
  l0.CLO[5] = "9223372064215696431"
  l0.CLO[6] = "9223372064215696432"
  l0.CLO[7] = "9223372047874975203"
  l0:Activate()
end
function export:f_64_Pushed()
  local l0
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
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_13_CoverEntered
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
  l0:EnterCover()
end
function export:f_229_MovedForward()
  local l0
  self = self._graph
  l0 = self[255]
  l0:In(0)
end
function export:f_214_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[214]
  self.kmcList = l0.UserIDList
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_51_Out_0
  l0.Out[1] = self.f_51_Out_1
  l0:In()
end
function export:f_146_Disabled()
  local l0
  self = self._graph
  l0 = self[309]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_595_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_373_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_311_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_308_Out
  l0:In()
end
function export:f_579_Disabled()
  local l0
  self = self._graph
  l0 = self[30]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_566_Out()
  local l0
  self = self._graph
  l0 = self[467]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_339_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_341_Out
  l0:In()
end
function export:f_55_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientAttract"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_398_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Add()
end
function export:f_239_DBNO()
  local l0
  self = self._graph
  l0 = self[242]
  l0:In(1)
end
function export:f_239_Disabled()
  local l0
  self = self._graph
  self:en_421()
  l0 = self[421]
  l0:HideNotification()
end
function export:f_239_Enabled()
  local l0
  self = self._graph
  self:en_421()
  l0 = self[421]
  l0:Display()
end
function export:f_239_Killed()
  local l0
  self = self._graph
  l0 = self[242]
  l0:In(0)
end
function export:f_378_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_144_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_468_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_130_Added()
  local l0
  self = self._graph
  l0 = self[130]
  self.AccessDoorDisable = l0.Target
  l0 = self[146]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_130_Out()
  local l0
  self = self._graph
  l0 = self[130]
  self.AccessDoorDisable = l0.Target
end
function export:f_130_Removed()
  local l0
  self = self._graph
  l0 = self[130]
  self.AccessDoorDisable = l0.Target
end
function export:f_389_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[389]
  self.EnemyTutorial_Exterior_01 = l0.UserID
  l0 = self[412]
  l0.CLO = "9223372057212037717"
  l0:Activate()
end
function export:f_112_Disabled()
  local l0
  self = self._graph
  l0 = self[372]
  l0.HackableEntity = "9223372054409466352"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_302_Disabled()
  local l0
  self = self._graph
  l0 = self[158]
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
  l0:Activate()
end
function export:f_45_Interacted()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Stop()
end
function export:f_45_Started()
  local l0
  self = self._graph
  self:en_556()
  l0 = self[556]
  l0:Enable()
end
function export:f_45_Stopped()
  local l0
  self = self._graph
  self:en_556()
  l0 = self[556]
  l0:Disable()
end
function export:f_7_Finished()
  local l0
  self = self._graph
  l0 = self[35]
  l0.SoundId = "soundbinary/133398520.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_250_Out()
  local l0
  self = self._graph
  l0 = self[67]
  l0:In()
end
function export:f_321_PostOut()
  local l0
  self = self._graph
  l0 = self[525]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_232_AllLoaded()
  local l0
  self = self._graph
  l0 = self[315]
  l0.HackableEntityList = self.CourtYard_World_Entities
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_605_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_628_Changed
  l0:Change()
end
function export:f_505_UntargetedSearchSet()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SoundId = "soundbinary/3538516433.bnk"
  l0:Play()
end
function export:f_423_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_407_Out
  l0:In()
end
function export:f_409_Finished()
  local l0
  self = self._graph
  l0 = self[237]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_656_Out()
  local l0
  self = self._graph
  l0 = self[223]
  l0.entity = "9223372052040779329"
  l0.ItemDB = "Items.9223372052040779115"
  l0.RewardEvent = "OnHackSuccess"
  l0:RegisterRewards()
end
function export:f_530_Out()
  local l0
  self = self._graph
  l0 = self[528]
  l0:In()
end
function export:f_206_Out()
  local l0
  self = self._graph
  l0 = self[208]
  l0.Seconds = 1.25
  l0:Start()
end
function export:f_96_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_147_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Enable()
end
function export:f_96_VentilationShaftEscape_CIN_Finish()
  local l0
  self = self._graph
  l0 = self[541]
  l0.SoundId = "soundbinary/1198424637.bnk"
  l0:Play()
end
function export:f_96_VentilationShaftEscape_CIN_Started()
  local l0
  self = self._graph
  l0 = self[180]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_606_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[605]
  l0.Entity = "9223372059224539295"
  l0:DisableAiAccess()
end
function export:f_198_Out_0()
  local l0
  self = self._graph
  l0 = self[39]
  l0.SoundId = "soundbinary/396428598.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_198_Out_1()
  local l0
  self = self._graph
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
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = self.f_71_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0:StopBlackout()
end
function export:f_198_Out_2()
  local l0
  self = self._graph
  l0 = self[104]
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
  l0:UpdateObjective()
end
function export:f_221_EndOfList()
  local l0
  self = self._graph
  l0 = self[221]
  self.kmcData = l0.Data
end
function export:f_221_ForEach()
  local l0
  self = self._graph
  l0 = self[221]
  self.kmcData = l0.Data
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.kmcData
  l0._graph = self
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
  l0:DisableForPlayer()
end
function export:f_221_GotNext()
  local l0
  self = self._graph
  l0 = self[221]
  self.kmcData = l0.Data
end
function export:f_221_Started()
  local l0
  self = self._graph
  l0 = self[221]
  self.kmcData = l0.Data
end
function export:f_221_Stopped()
  local l0
  self = self._graph
  l0 = self[221]
  self.kmcData = l0.Data
end
function export:f_85_Added()
  local l0
  self = self._graph
  l0 = self[85]
  self.AccessDoorDisable = l0.Target
  l0 = self[107]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = self[85]
  self.AccessDoorDisable = l0.Target
end
function export:f_85_Removed()
  local l0
  self = self._graph
  l0 = self[85]
  self.AccessDoorDisable = l0.Target
end
function export:f_117_Disabled()
  local l0
  self = self._graph
  l0 = self[390]
  l0.Seconds = 3
  l0:Start()
end
function export:f_117_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372058903936058"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_640_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_117_Enter()
  local l0
  self = self._graph
  self:en_117()
  l0 = self[117]
  l0:Disable()
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_636_Changed
  l0:Change()
end
function export:f_543_Removed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_02
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_542_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_194_Added()
  local l0
  self = self._graph
  l0 = self[194]
  self.JunctionBoxes = l0.Target
  l0 = self[193]
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_194_Out()
  local l0
  self = self._graph
  l0 = self[194]
  self.JunctionBoxes = l0.Target
end
function export:f_194_Removed()
  local l0
  self = self._graph
  l0 = self[194]
  self.JunctionBoxes = l0.Target
end
function export:f_287_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_645_Out_0
  l0.Out[1] = self.f_645_Out_1
  l0:In()
end
function export:f_68_Out()
  local l0
  self = self._graph
  l0 = self[202]
  l0.Affiliation = "UZulu"
  l0:ForceVanish()
end
function export:f_639_Out()
  local l0
  self = self._graph
  l0 = self[153]
  l0:In()
end
function export:f_526_Deactivated()
  local l0
  self = self._graph
  l0 = self[478]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_337_Out()
  local l0
  self = self._graph
  self:en_356()
  l0 = self[356]
  l0:Display()
end
function export:f_234_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_18_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_249_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052040779117"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_229_MovedForward
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
function export:f_120_Out_0()
  local l0
  self = self._graph
  self:en_562()
  l0 = self[562]
  l0:Start()
end
function export:f_120_Out_1()
  local l0
  self = self._graph
  l0 = self[329]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_635_Changed()
  local l0
  self = self._graph
  l0 = self[544]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_197_Added()
  local l0
  self = self._graph
  l0 = self[197]
  self.TakedownTutorial = l0.Target
  l0 = self[194]
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
  l0:Add()
end
function export:f_197_Out()
  local l0
  self = self._graph
  l0 = self[197]
  self.TakedownTutorial = l0.Target
end
function export:f_197_Removed()
  local l0
  self = self._graph
  l0 = self[197]
  self.TakedownTutorial = l0.Target
end
function export:f_238_Ended()
  local l0
  self = self._graph
  l0 = self[96]
  l0:In()
end
function export:f_121_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective022",
    item = "Objective",
    id = "688739"
  }
  l0:ShowNewObjective()
end
function export:f_93_Out()
  local l0
  self = self._graph
  l0 = self[68]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective021",
    item = "Sub-Objective",
    id = "688738"
  }
  l0.IncrementalObjectiveTotalSub1 = 1
  l0:IncrementObjective()
end
function export:f_457_Enabled()
  local l0
  self = self._graph
  l0 = self[348]
  l0:Input(1)
end
function export:f_476_Out()
  local l0
  self = self._graph
  self:en_546()
  l0 = self[546]
  l0:HideNotification()
end
function export:f_208_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_22_Finished()
  local l0
  self = self._graph
  l0 = self[109]
  l0.SoundId = "soundbinary/1866421549.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_58_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[58]
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self[36]
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0:Add()
end
function export:f_653_Out_0()
  local l0
  self = self._graph
  l0 = self[118]
  l0:In()
end
function export:f_653_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_571_Deactivated
  l0:Deactivate()
end
function export:f_189_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[189]
  self.kmcList = l0.UserIDList
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_160_Out_0
  l0.Out[1] = self.f_160_Out_1
  l0:In()
end
function export:f_342_Out_0()
  local l0
  self = self._graph
  l0 = self[238]
  l0:Off()
end
function export:f_342_Out_1()
  local l0
  self = self._graph
  l0 = self[77]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_242_Out()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Disable()
end
function export:f_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_198_Out_0
  l0.Out[1] = self.f_198_Out_1
  l0.Out[2] = self.f_198_Out_2
  l0:In()
end
function export:f_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372069104140478"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = self[119]
  l0.Affiliation = "UZulu"
  l0:ForceVanish()
end
function export:f_452_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_563_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_41_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoMoveState"
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_87_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_633_Changed()
  local l0
  self = self._graph
  l0 = self[129]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective018",
    item = "Sub-Objective",
    id = "603843"
  }
  l0:ShowNewObjective()
end
function export:f_166_Added()
  local l0
  self = self._graph
  l0 = self[166]
  self.AccessDoorDisable = l0.Target
  l0 = self[167]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_166_Out()
  local l0
  self = self._graph
  l0 = self[166]
  self.AccessDoorDisable = l0.Target
end
function export:f_166_Removed()
  local l0
  self = self._graph
  l0 = self[166]
  self.AccessDoorDisable = l0.Target
end
function export:f_33_Out_0()
  local l0
  self = self._graph
  l0 = self[313]
  l0:Input(1)
end
function export:f_33_Out_1()
  local l0
  self = self._graph
  l0 = self[135]
  l0.SoundId = "soundbinary/1040363428.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_27_Out_0()
  local l0
  self = self._graph
  l0 = self[422]
  l0.TargetEntity = self.EnemyGameplay_01
  l0:AddTagEntity()
end
function export:f_27_Out_1()
  local l0
  self = self._graph
  l0 = self[25]
  l0.SoundId = "soundbinary/3538516433.bnk"
  l0:Play()
end
function export:f_640_Enabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Entity = "9223372068507759626"
  l0:Enable()
end
function export:f_593_Enabled()
  local l0
  self = self._graph
  l0 = self[157]
  l0.MapPoint = "9223372047335524055"
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Show()
end
function export:f_416_Popped()
  local l0
  self = self._graph
  l0 = self[234]
  l0.MapPoint = "9223372061240119421"
  l0:Hide()
end
function export:f_60_Finished()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SoundId = "soundbinary/166028691.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_578_Disabled()
  local l0
  self = self._graph
  l0 = self[80]
  l0.CLO[0] = "9223372047874975198"
  l0.CLO[1] = "9223372047874975197"
  l0.CLO[2] = "9223372047874975200"
  l0.CLO[3] = "9223372047874975199"
  l0.CLO[4] = "9223372047874975201"
  l0.CLO[5] = "9223372064215696431"
  l0.CLO[6] = "9223372064215696432"
  l0.CLO[7] = "9223372047874975203"
  l0:Activate()
end
function export:f_518_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_150_Out_0
  l0.Out[1] = self.f_150_Out_1
  l0.Out[2] = self.f_150_Out_2
  l0:In()
end
function export:f_588_HackSuccess()
  local l0
  self = self._graph
  self:en_513()
  l0 = self[513]
  l0:HideNotification()
end
function export:f_356_DisplayRequested()
  local l0
  self = self._graph
  self:en_377()
  l0 = self[377]
  l0:Enable()
end
function export:f_356_NotificationHidden()
  local l0
  self = self._graph
  self:en_377()
  l0 = self[377]
  l0:Disable()
end
function export:f_604_Disabled()
  local l0
  self = self._graph
  l0 = self[85]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_257_Out()
  local l0
  self = self._graph
  l0 = self[243]
  l0.MoveableEntity = "9223372063874878362"
  l0:Enable()
end
function export:f_624_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[624]
  self.Enemy_Tutorial_Exterior_03 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.Enemy_Tutorial_Exterior_03
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_623_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_309_PostOut()
  local l0
  self = self._graph
  l0 = self[102]
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
  l0:ShowNewObjective()
end
function export:f_6_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientShutdown"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_268_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Add()
end
function export:f_87_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  l0.TrackingEvent = "EraseYourFootprints"
  l0._graph = self
  l0.Out = self.f_121_Out
  l0:In()
end
function export:f_501_Out()
  local l0
  self = self._graph
  l0 = self[502]
  l0:Input(0)
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_376_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_260_Locked()
  local l0
  self = self._graph
  l0 = self[518]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_31_Shown()
  local l0
  self = self._graph
  self:en_417()
  l0 = self[417]
  l0:Start()
end
function export:f_623_Removed()
  local l0
  self = self._graph
  l0 = self[622]
  l0.Input = self.EnemyExterior
  l0.Data[0] = self.EnemyTutorial_Exterior_01
  l0.Data[1] = self.EnemyTutorial_Exterior_02
  l0.Data[2] = self.Enemy_Tutorial_Exterior_03
  l0:Add()
end
function export:f_398_Added()
  local l0
  self = self._graph
  self:en_396()
  l0 = self[396]
  l0:Display()
end
function export:f_406_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_371_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[14]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_571_Deactivated()
  local l0
  self = self._graph
  l0 = self[474]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_326_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[140]
  l0:In()
end
function export:f_149_Out_0()
  local l0
  self = self._graph
  self:en_148()
  l0 = self[148]
  l0:Disable()
end
function export:f_149_Out_1()
  local l0
  self = self._graph
  l0 = self[270]
  l0:In()
end
function export:f_587_VanishSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_149_Out_0
  l0.Out[1] = self.f_149_Out_1
  l0:In()
end
function export:f_544_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_550_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_13_CoverEntered()
  local l0
  self = self._graph
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
  l0.CoverToCoverAllowedSet = self.f_638_CoverToCoverAllowedSet
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:SetCoverToCoverAllowed()
end
function export:f_407_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[465]
  l0:In()
end
function export:f_171_Added()
  local l0
  self = self._graph
  l0 = self[171]
  self.AccessDoorDisable = l0.Target
  l0 = self[172]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_171_Out()
  local l0
  self = self._graph
  l0 = self[171]
  self.AccessDoorDisable = l0.Target
end
function export:f_171_Removed()
  local l0
  self = self._graph
  l0 = self[171]
  self.AccessDoorDisable = l0.Target
end
function export:f_113_Started()
  local l0
  self = self._graph
  l0 = self[335]
  l0:Input(0)
end
function export:f_129_Out()
  local l0
  self = self._graph
  l0 = self[534]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_175_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_510_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = self[338]
  l0:Input(1)
end
function export:f_349_Shown()
  local l0
  self = self._graph
  l0 = self[337]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective018",
    item = "Sub-Objective",
    id = "603843"
  }
  l0:ShowNewObjective()
end
function export:f_54_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_137_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_52_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[52]
  self.EnemyGameplay_01 = l0.UserID[0]
  self.EnemyGameplay_02 = l0.UserID[1]
  self.EnemyGameplay_03 = l0.UserID[2]
  self.EnemyGameplay_04 = l0.UserID[3]
  self.EnemyGameplay_05 = l0.UserID[4]
  self.EnemyGameplay_09 = l0.UserID[5]
  self.EnemyGameplay_10 = l0.UserID[6]
  self.EnemyGameplay_07 = l0.UserID[7]
  l0 = self[224]
  l0.Affiliation = "UZulu"
  l0:SetInWander()
end
function export:f_180_Out()
  local l0
  self = self._graph
  self:en_297()
  l0 = self[297]
  l0:Enable()
end
function export:f_504_Out()
  local l0
  self = self._graph
  l0 = self[503]
  l0.Checkpoint = "CheckPoint_10"
  l0:In()
end
function export:f_324_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_305_Out_0
  l0.Out[1] = self.f_305_Out_1
  l0:In()
end
function export:f_193_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_635_Changed
  l0:Change()
end
function export:f_282_Enabled()
  local l0
  self = self._graph
  self:en_57()
  l0 = self[57]
  l0:Enable()
end
function export:f_128_Restored()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_653_Out_0
  l0.Out[1] = self.f_653_Out_1
  l0:In()
end
function export:f_584_Disabled()
  local l0
  self = self._graph
  self:en_585()
  l0 = self[585]
  l0:Display()
end
function export:f_584_Enter()
  local l0
  self = self._graph
  self:en_89()
  l0 = self[89]
  l0:HideNotification()
end
function export:f_449_Deactivated()
  local l0
  self = self._graph
  l0 = self[314]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_312_Finished()
  local l0
  self = self._graph
  l0 = self[409]
  l0.SoundId = "soundbinary/482010863.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_288_Disabled()
  local l0
  self = self._graph
  l0 = self[49]
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0:Activate()
end
function export:f_580_Disabled()
  local l0
  self = self._graph
  self:en_560()
  l0 = self[560]
  l0:Enable()
end
function export:f_465_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_294_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_596_Enabled()
  local l0
  self = self._graph
  l0 = self[131]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:ForceHack()
end
function export:f_421_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[549]
  l0.SurvivalGuideItemDB = "Items.9223372053993007694"
  l0:Display()
end
function export:f_421_NotificationHidden()
  local l0
  self = self._graph
  l0 = self[83]
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
  l0:Display()
end
function export:f_164_Added()
  local l0
  self = self._graph
  l0 = self[164]
  self.AccessDoorDisable = l0.Target
  l0 = self[165]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_164_Out()
  local l0
  self = self._graph
  l0 = self[164]
  self.AccessDoorDisable = l0.Target
end
function export:f_164_Removed()
  local l0
  self = self._graph
  l0 = self[164]
  self.AccessDoorDisable = l0.Target
end
function export:f_192_Out()
  local l0
  self = self._graph
  l0 = self[554]
  l0.HackableEntity = self.PlayerEntity
  l0:ResetProfile()
end
function export:f_101_InstallFinished()
  local l0
  self = self._graph
  l0 = self[501]
  l0.Checkpoint = "CheckPoint_11"
  l0:In()
end
function export:f_106_UntargetedSearchSet()
  local l0
  self = self._graph
  l0 = self[34]
  l0.SoundId = "soundbinary/3538516433.bnk"
  l0:Play()
end
function export:f_590_Disabled()
  local l0
  self = self._graph
  l0 = self[475]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_253_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[254]
  l0:Input(1)
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_76_DisplayRequested()
  local l0
  self = self._graph
  self:en_395()
  l0 = self[395]
  l0:Start()
end
function export:f_76_NotificationHidden()
  local l0
  self = self._graph
  self:en_395()
  l0 = self[395]
  l0:Stop()
end
function export:f_210_Finished()
  local l0
  self = self._graph
  l0 = self[156]
  l0.SoundId = "soundbinary/1566440503.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_440_Disabled()
  local l0
  self = self._graph
  l0 = self[476]
  l0:In(1)
end
function export:f_440_Enabled()
  local l0
  self = self._graph
  l0 = self[222]
  l0:Enable()
end
function export:f_440_InfoDisplayed()
  local l0
  self = self._graph
  self:en_440()
  l0 = self[440]
  l0:Disable()
end
function export:f_632_Changed()
  local l0
  self = self._graph
  l0 = self[536]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_614_AiAccessEnabled()
  local l0
  self = self._graph
  l0 = self[615]
  l0.Entity = "9223372059224539309"
  l0:EnableAiAccess()
end
function export:f_402_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_523_Removed()
  local l0
  self = self._graph
  l0 = self[624]
  l0.CLO = "9223372059407954395"
  l0:Activate()
end
function export:f_226_Disabled()
  local l0
  self = self._graph
  l0 = self[476]
  l0:In(0)
end
function export:f_226_Enabled()
  local l0
  self = self._graph
  self:en_440()
  l0 = self[440]
  l0:Enable()
end
function export:f_226_InfoDisplayed()
  local l0
  self = self._graph
  self:en_226()
  l0 = self[226]
  l0:Disable()
end
function export:f_201_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_386_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_201_Enter()
  local l0
  self = self._graph
  self:en_379()
  l0 = self[379]
  l0:HideNotification()
end
function export:f_46_Hidden()
  local l0
  self = self._graph
  l0 = self[333]
  l0:Input(1)
end
function export:f_611_Removed()
  local l0
  self = self._graph
  l0 = self[389]
  l0.CLO = "9223372057212037718"
  l0:Activate()
end
function export:f_185_AllLoaded()
  local l0
  self = self._graph
  l0 = self[334]
  l0.HackableEntityList = self.CourtYard_World_Entities
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_550_Locked()
  local l0
  self = self._graph
  l0 = self[164]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_463_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Checkpoint = "CheckPoint_Intro"
  l0:In()
end
function export:f_155_Added()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_6_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Add()
end
function export:f_424_Locked()
  local l0
  self = self._graph
  l0 = self[403]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_136_HackForced()
  local l0
  self = self._graph
  l0 = self[577]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_581_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_416_Popped
  l0:Pop()
end
function export:f_581_SPOut__GotoCover_()
  local l0
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
  l0:EnterCover()
end
function export:f_581_SPOut__Teleport_()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_582_Out
  l0:In()
end
function export:f_581_Started()
  local l0
  self = self._graph
  l0 = self[609]
  l0.CLO = "9223372059407954395"
  l0:Activate()
end
function export:f_484_EnabledCallers()
  local l0
  self = self._graph
  l0 = self[508]
  l0.Position = "9223372069340157573"
  l0.Affiliation = "UZulu"
  l0.SearchOverrideParamTimeout = -1
  l0:SetInUntargetedSearch()
end
function export:f_484_Registered()
  local l0
  self = self._graph
  self:en_484()
  l0 = self[484]
  l0:EnableCallers()
end
function export:f_244_Enabled()
  local l0
  self = self._graph
  l0 = self[246]
  l0:Input(0)
end
function export:f_244_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[245]
  l0:Input(1)
end
function export:f_115_Enabled()
  local l0
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
  l0.CoverToCoverAllowedReset = self.f_522_CoverToCoverAllowedReset
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.WeaponPickupAllowed = DummyFunction
  l0.WeaponPickupPrevented = DummyFunction
  l0.Out = DummyFunction
  l0:ResetCoverToCoverAllowed()
end
function export:f_89_DisplayRequested()
  local l0
  self = self._graph
  self:en_584()
  l0 = self[584]
  l0:Enable()
end
function export:f_89_NotificationHidden()
  local l0
  self = self._graph
  self:en_584()
  l0 = self[584]
  l0:Disable()
end
function export:f_598_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[600]
  l0.Entity = "9223372059224539309"
  l0:DisableAiAccess()
end
function export:f_613_AiAccessEnabled()
  local l0
  self = self._graph
  l0 = self[393]
  l0:MainAdmiration()
end
function export:f_191_Interacted()
  local l0
  self = self._graph
  self:en_191()
  l0 = self[191]
  l0:Stop()
end
function export:f_191_Stopped()
  local l0
  self = self._graph
  l0 = self[414]
  l0.Entity = "9223372068507759626"
  l0:Disable()
end
function export:f_528_Started()
  local l0
  self = self._graph
  l0 = self[532]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_636_Changed()
  local l0
  self = self._graph
  l0 = self[166]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_61_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[61]
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self[15]
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0:Add()
end
function export:f_84_Added()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:Display()
end
function export:f_204_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_278_Finished()
  local l0
  self = self._graph
  l0 = self[296]
  l0.SoundId = "soundbinary/862412337.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_464_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_514_Popped
  l0:Pop()
end
function export:f_464_Started()
  local l0
  self = self._graph
  l0 = self[41]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_589_Enabled()
  local l0
  self = self._graph
  self:en_472()
  l0 = self[472]
  l0:Start()
end
function export:f_554_ProfileReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = DummyFunction
  l0.IntensitySet = DummyFunction
  l0.Unlocked = self.f_553_Unlocked
  l0:Unlock()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective019",
    item = "Sub-Objective",
    id = "603844"
  }
  l0.IncrementalObjectiveTotalSub2 = 1
  l0:IncrementObjective()
end
function export:f_153_Started()
  local l0
  self = self._graph
  l0 = self[207]
  l0:Input(1)
end
function export:f_116_Out_0()
  local l0
  self = self._graph
  l0 = self[93]
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
  l0:UpdateObjective()
end
function export:f_116_Out_1()
  local l0
  self = self._graph
  self:en_9()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBlackout()
end
function export:f_116_Out_2()
  local l0
  self = self._graph
  l0 = self[209]
  l0.Seconds = 2
  l0:Start()
end
function export:f_116_Out_3()
  local l0
  self = self._graph
  l0 = self[566]
  l0.SoundId = "soundbinary/1791754925.bnk"
  l0:Play()
end
function export:f_599_VanishSet()
  local l0
  self = self._graph
  l0 = self[524]
  l0.SceneEntity = "9223372054424489846"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_ServerTowerClimb_CIN/s01_servertowerclimb_cin.seq"
  l0:Start()
end
function export:f_188_Disabled()
  local l0
  self = self._graph
  l0 = self[154]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_515_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_517_Out
  l0:In()
end
function export:f_365_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_142_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[463]
  l0:Input(0)
end
function export:f_36_Added()
  local l0
  self = self._graph
  l0 = self[36]
  self.TakedownTutorial = l0.Target
  l0 = self[537]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[36]
  self.TakedownTutorial = l0.Target
end
function export:f_36_Removed()
  local l0
  self = self._graph
  l0 = self[36]
  self.TakedownTutorial = l0.Target
end
function export:f_143_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_597_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_615_AiAccessEnabled()
  local l0
  self = self._graph
  l0 = self[613]
  l0.Entity = "9223372059224539295"
  l0:EnableAiAccess()
end
function export:f_135_Finished()
  local l0
  self = self._graph
  l0 = self[134]
  l0.SoundId = "soundbinary/532228594.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_348_Out()
  local l0
  self = self._graph
  l0 = self[324]
  l0.Checkpoint = "CheckPoint_7"
  l0:In()
end
function export:f_446_Added()
  local l0
  self = self._graph
  l0 = self[446]
  self.EnemyExterior = l0.Target
end
function export:f_446_Out()
  local l0
  self = self._graph
  l0 = self[446]
  self.EnemyExterior = l0.Target
end
function export:f_446_Removed()
  local l0
  self = self._graph
  l0 = self[446]
  self.EnemyExterior = l0.Target
end
function export:f_15_Added()
  local l0
  self = self._graph
  l0 = self[15]
  self.TakedownTutorial = l0.Target
  l0 = self[63]
  l0:Condition(1)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[15]
  self.TakedownTutorial = l0.Target
end
function export:f_15_Removed()
  local l0
  self = self._graph
  l0 = self[15]
  self.TakedownTutorial = l0.Target
end
function export:f_156_Finished()
  local l0
  self = self._graph
  l0 = self[94]
  l0.SoundId = "soundbinary/341451500.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_500_Deactivated()
  local l0
  self = self._graph
  l0 = self[402]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_603_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[606]
  l0.Entity = "9223372059224539309"
  l0:DisableAiAccess()
end
function export:f_527_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_174_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_382_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_399_DBNO()
  local l0
  self = self._graph
  self:en_399()
  l0 = self[399]
  l0:Disable()
end
function export:f_399_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_1"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_70_Popped
  l0:Pop()
end
function export:f_177_Disabled()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Input = self.CameraAccessCode
  l0.Data[0] = "9223372064006955537"
  l0.Data[1] = "9223372064006959194"
  l0.Data[2] = "9223372064006959196"
  l0.Data[3] = "9223372064006959198"
  l0.Data[4] = "9223372064006959200"
  l0.Data[5] = "9223372064149220607"
  l0:Add()
end
function export:f_142_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_596_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_477_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[477]
  self.EnemyTutorial_Exterior_02 = l0.UserID
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = self.EnemyTutorial_Exterior_01
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "Explosive"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_521_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_456_Enabled()
  local l0
  self = self._graph
  l0 = self[457]
  l0.HackableEntity = "9223372052040779139"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_92_TimeElapsed()
  local l0
  self = self._graph
  self:en_585()
  l0 = self[585]
  l0:HideNotification()
end
function export:f_212_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_498_Out_0
  l0.Out[1] = self.f_498_Out_1
  l0:In()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  self:en_496()
  l0 = self[496]
  l0:HideNotification()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[199]
  l0.Entity = "9223372058903936058"
  l0:Enable()
end
function export:f_545_DisplayRequested()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Enable()
end
function export:f_545_NotificationHidden()
  local l0
  self = self._graph
  l0 = self[59]
  l0.SurvivalGuideItemDB = "Items.9223372053993039382"
  l0:Display()
end
function export:f_474_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_328_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[173]
  l0:In()
end
function export:f_382_OverrideActivated()
  local l0
  self = self._graph
  l0 = self[145]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_555_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[383]
  l0:Input(1)
end
function export:f_372_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_27_Out_0
  l0.Out[1] = self.f_27_Out_1
  l0:In()
end
function export:f_245_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372052040779138"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_230_MovedForward
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
function export:f_546_NotificationHidden()
  local l0
  self = self._graph
  l0 = self[75]
  l0.SurvivalGuideItemDB = "Items.9223372053993007713"
  l0:Display()
end
function export:f_176_Added()
  local l0
  self = self._graph
  l0 = self[176]
  self.JunctionBoxes = l0.Target
  l0 = self[177]
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_176_Out()
  local l0
  self = self._graph
  l0 = self[176]
  self.JunctionBoxes = l0.Target
end
function export:f_176_Removed()
  local l0
  self = self._graph
  l0 = self[176]
  self.JunctionBoxes = l0.Target
end
function export:f_24_Disabled()
  local l0
  self = self._graph
  self:en_513()
  l0 = self[513]
  l0:Display()
end
function export:f_24_InteractionFinished()
  local l0
  self = self._graph
  self:en_547()
  l0 = self[547]
  l0:HideNotification()
end
function export:f_81_HackForced()
  local l0
  self = self._graph
  l0 = self[575]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableProfiling()
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[627]
  l0:In()
end
function export:f_47_Out_1()
  local l0
  self = self._graph
  l0 = self[103]
  l0:In()
end
function export:f_323_PostOut()
  local l0
  self = self._graph
  l0 = self[128]
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
  l0:Restore()
end
function export:f_167_Disabled()
  local l0
  self = self._graph
  l0 = self[212]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_379_NotificationHidden()
  local l0
  self = self._graph
  self:en_201()
  l0 = self[201]
  l0:Disable()
end
function export:f_51_Out_0()
  local l0
  self = self._graph
  l0 = self[221]
  l0.List = self.kmcList
  l0:Start()
end
function export:f_51_Out_1()
  local l0
  self = self._graph
  l0 = self[470]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_285_Out()
  local l0
  self = self._graph
  l0 = self[123]
  l0.UserList = self.S01M010_AiList
  l0:UnspawnUser()
end
function export:f_277_Enabled()
  local l0
  self = self._graph
  l0 = self[456]
  l0.HackableEntity = "9223372052040779140"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_318_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_116_Out_0
  l0.Out[1] = self.f_116_Out_1
  l0.Out[2] = self.f_116_Out_2
  l0.Out[3] = self.f_116_Out_3
  l0:In()
end
function export:f_294_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_175_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_493_ReinforcingStopped()
  local l0
  self = self._graph
  l0 = self[285]
  l0:Input(1)
end
function export:f_516_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[516]
  self.EnemyTutorial_Exterior_01 = l0.UserID
  l0 = self[477]
  l0.CLO = "9223372057212037717"
  l0:Activate()
end
function export:f_548_Locked()
  local l0
  self = self._graph
  l0 = self[183]
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
  l0:Add()
end
function export:f_376_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_91_Out_0
  l0.Out[1] = self.f_91_Out_1
  l0:In()
end
function export:f_66_Disabled()
  local l0
  self = self._graph
  l0 = self[288]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_575_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[38]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_427_Deactivated()
  local l0
  self = self._graph
  l0 = self[468]
  l0.SoundId = "soundbinary/81442961.bnk"
  l0:Play()
end
function export:f_391_TimeElapsed()
  local l0
  self = self._graph
  self:en_392()
  l0 = self[392]
  l0:HideNotification()
end
function export:f_251_Locked()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Condition(1)
end
function export:f_57_Disabled()
  local l0
  self = self._graph
  l0 = self[580]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_57_HackSuccess()
  local l0
  self = self._graph
  self:en_219()
  l0 = self[219]
  l0:HideNotification()
end
function export:f_371_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_143_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_231_Out_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SoundId = "soundbinary/1249263752.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_231_Out_1()
  local l0
  self = self._graph
  l0 = self[225]
  l0.Input = self.MainRoom_Doors
  l0.Data[0] = "9223372063874921820"
  l0.Data[1] = "9223372052040779138"
  l0.Data[2] = "9223372052040779117"
  l0.Data[3] = "9223372063874878362"
  l0.Data[4] = "9223372063874878374"
  l0:Add()
end
function export:f_542_Removed()
  local l0
  self = self._graph
  l0 = self[446]
  l0.Input = self.EnemyExterior
  l0.Data[0] = self.EnemyTutorial_Exterior_01
  l0.Data[1] = self.EnemyTutorial_Exterior_02
  l0.Data[2] = self.Enemy_Tutorial_Exterior_03
  l0:Add()
end
function export:f_97_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_54_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_110_Added()
  local l0
  self = self._graph
  l0 = self[110]
  self.AccessDoorDisable = l0.Target
  l0 = self[111]
  l0.HackableEntityList = self.AccessDoorDisable
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_110_Out()
  local l0
  self = self._graph
  l0 = self[110]
  self.AccessDoorDisable = l0.Target
end
function export:f_110_Removed()
  local l0
  self = self._graph
  l0 = self[110]
  self.AccessDoorDisable = l0.Target
end
function export:f_553_Unlocked()
  local l0
  self = self._graph
  l0 = self[151]
  l0.HackableEntity = self.EnemyGameplay_01
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_207_Out()
  local l0
  self = self._graph
  l0 = self[211]
  l0.Checkpoint = "CheckPoint_8"
  l0:In()
end
function export:f_165_Disabled()
  local l0
  self = self._graph
  l0 = self[323]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_138_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_595_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_415_NotificationHidden()
  local l0
  self = self._graph
  self:en_496()
  l0 = self[496]
  l0:Display()
end
function export:f_118_Started()
  local l0
  self = self._graph
  l0 = self[348]
  l0:Input(0)
end
function export:f_225_Added()
  local l0
  self = self._graph
  l0 = self[225]
  self.MainRoom_Doors = l0.Target
  l0 = self[245]
  l0:Input(0)
end
function export:f_225_Out()
  local l0
  self = self._graph
  l0 = self[225]
  self.MainRoom_Doors = l0.Target
end
function export:f_225_Removed()
  local l0
  self = self._graph
  l0 = self[225]
  self.MainRoom_Doors = l0.Target
end
function export:f_184_Out()
  local l0
  self = self._graph
  l0 = self[275]
  l0:In()
end
function export:f_265_Out_0()
  local l0
  self = self._graph
  l0 = self[581]
  l0.SceneEntity = "9223372068441348233"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S01/S01_M010_CoverTuto/s01_m010_covertuto.seq"
  l0:Start()
end
function export:f_265_Out_1()
  local l0
  self = self._graph
  l0 = self[264]
  l0:Deactivate()
end
function export:f_217_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[502]
  l0:Input(1)
end
function export:f_628_Changed()
  local l0
  self = self._graph
  l0 = self[214]
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
  l0:Activate()
end
function export:f_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_354_Popped
  l0:Pop()
end
function export:f_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_369_Out
  l0:In()
end
function export:f_88_Hacked()
  local l0
  self = self._graph
  self:en_396()
  l0 = self[396]
  l0:HideNotification()
end
function export:f_88_Stopped()
  local l0
  self = self._graph
  l0 = self[169]
  l0.NPC = self.EnemyGameplay_01
  l0.Patrol = "9223372047720865811"
  l0:Assign()
end
function export:f_445_DisplayRequested()
  local l0
  self = self._graph
  self:en_419()
  l0 = self[419]
  l0:Enable()
end
function export:f_445_NotificationHidden()
  local l0
  self = self._graph
  self:en_419()
  l0 = self[419]
  l0:Disable()
end
function export:f_248_Enabled()
  local l0
  self = self._graph
  l0 = self[252]
  l0:Input(0)
end
function export:f_248_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[249]
  l0:Input(1)
end
function export:f_44_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[44]
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self[197]
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0:Add()
end
function export:f_450_Disabled()
  local l0
  self = self._graph
  l0 = self[603]
  l0.Entity = "9223372059224539270"
  l0:DisableAiAccess()
end
function export:f_497_Locked()
  local l0
  self = self._graph
  l0 = self[178]
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
  l0:Add()
end
function export:f_292_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_269_Out
  l0:In()
end
function export:f_123_UnspawnedUser()
  local l0
  self = self._graph
  self:en_297()
  l0 = self[297]
  l0:Disable()
end
function export:f_634_Changed()
  local l0
  self = self._graph
  l0 = self[17]
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0:Activate()
end
function export:f_59_DisplayRequested()
  local l0
  self = self._graph
  self:en_547()
  l0 = self[547]
  l0:Display()
end
function export:f_70_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_0"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoMoveState"
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_586_Popped
  l0:Pop()
end
function export:f_139_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_384_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_18_Shown()
  local l0
  self = self._graph
  l0 = self[555]
  l0.SurvivalGuideItemDB = "Items.9223372053993007726"
  l0:Display()
end
function export:f_243_Enabled()
  local l0
  self = self._graph
  l0 = self[254]
  l0:Input(0)
end
function export:f_243_OnBkwMovementStarted()
  local l0
  self = self._graph
  l0 = self[252]
  l0:Input(1)
end
function export:f_190_EndOfList()
  local l0
  self = self._graph
  l0 = self[190]
  self.kmcData = l0.Data
end
function export:f_190_ForEach()
  local l0
  self = self._graph
  l0 = self[190]
  self.kmcData = l0.Data
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.kmcData
  l0._graph = self
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
  l0:DisableForPlayer()
end
function export:f_190_GotNext()
  local l0
  self = self._graph
  l0 = self[190]
  self.kmcData = l0.Data
end
function export:f_190_Started()
  local l0
  self = self._graph
  l0 = self[190]
  self.kmcData = l0.Data
end
function export:f_190_Stopped()
  local l0
  self = self._graph
  l0 = self[190]
  self.kmcData = l0.Data
end
function export:f_466_Changed()
  local l0
  self = self._graph
  l0 = self[473]
  l0.HackableEntity = self.PlayerEntity
  l0.OasisProfilerInfo = {
    section = "PROFILER_SPECIFIC.PEOPLE.WD2_FP.WD2_CHARACTERS.Marcus_Holloway_Prewipe",
    item = "",
    id = "4294990513"
  }
  l0:AssignProfile()
end
function export:f_375_Disabled()
  local l0
  self = self._graph
  l0 = self[447]
  l0.SurvivalGuideItemDB = "Items.9223372053993007714"
  l0:Display()
end
function export:f_375_Enabled()
  local l0
  self = self._graph
  self:en_415()
  l0 = self[415]
  l0:Display()
end
function export:f_375_InfoDisplayed()
  local l0
  self = self._graph
  self:en_375()
  l0 = self[375]
  l0:Disable()
end
function export:f_308_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[95]
  l0:In()
end
function export:f_387_Disabled()
  local l0
  self = self._graph
  self:en_375()
  l0 = self[375]
  l0:Enable()
end
function export:f_387_Enabled()
  local l0
  self = self._graph
  self:en_45()
  l0 = self[45]
  l0:Start()
end
function export:f_387_Enter()
  local l0
  self = self._graph
  self:en_387()
  l0 = self[387]
  l0:Disable()
end
function export:f_95_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372048122729925"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_365_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_160_Out_0()
  local l0
  self = self._graph
  l0 = self[190]
  l0.List = self.kmcList
  l0:Start()
end
function export:f_160_Out_1()
  local l0
  self = self._graph
  l0 = self[516]
  l0.CLO = "9223372057212037718"
  l0:Activate()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.EnemyGameplay_01 = l0.UserID[0]
  self.EnemyGameplay_02 = l0.UserID[1]
  self.EnemyGameplay_03 = l0.UserID[2]
  self.EnemyGameplay_04 = l0.UserID[3]
  self.EnemyGameplay_05 = l0.UserID[4]
  self.EnemyGameplay_09 = l0.UserID[5]
  self.EnemyGameplay_10 = l0.UserID[6]
  self.EnemyGameplay_07 = l0.UserID[7]
  l0 = self[181]
  l0.Input = self.S01M010_AiList
  l0.Data[0] = self.EnemyGameplay_01
  l0.Data[1] = self.EnemyGameplay_02
  l0.Data[2] = self.EnemyGameplay_03
  l0.Data[3] = self.EnemyGameplay_04
  l0.Data[4] = self.EnemyGameplay_05
  l0.Data[5] = self.EnemyGameplay_07
  l0.Data[6] = self.EnemyGameplay_09
  l0.Data[7] = self.EnemyGameplay_10
  l0:Add()
end
function export:f_597_Enabled()
  local l0
  self = self._graph
  l0 = self[81]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:ForceHack()
end
function export:f_531_Out_0()
  local l0
  self = self._graph
  l0 = self[184]
  l0.SoundId = "soundbinary/3980445112.bnk"
  l0:Play()
end
function export:f_531_Out_1()
  local l0
  self = self._graph
  l0 = self[535]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_107_Disabled()
  local l0
  self = self._graph
  l0 = self[614]
  l0.Entity = "9223372059224539270"
  l0:EnableAiAccess()
end
function export:f_134_Finished()
  local l0
  self = self._graph
  l0 = self[53]
  l0.SoundId = "soundbinary/488045842.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_159_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_483_Out_0
  l0.Out[1] = self.f_483_Out_1
  l0:In()
end
function export:f_132_HackForced()
  local l0
  self = self._graph
  l0 = self[576]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableProfiling()
end
function export:f_508_UntargetedSearchSet()
  local l0
  self = self._graph
  l0 = self[227]
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_509_AllSpawned()
  local l0
  self = self._graph
  self:en_509()
  l0 = self[509]
  l0:AddScriptedAgents()
end
function export:f_509_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_370()
  l0 = self[370]
  l0:Register()
end
function export:f_216_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[504]
  l0:Input(1)
end
function export:f_507_Disabled()
  local l0
  self = self._graph
  self:en_545()
  l0 = self[545]
  l0:HideNotification()
end
function export:f_507_Enabled()
  local l0
  self = self._graph
  self:en_545()
  l0 = self[545]
  l0:Display()
end
function export:f_507_InfoDisplayed()
  local l0
  self = self._graph
  self:en_507()
  l0 = self[507]
  l0:Disable()
end
function export:f_310_Out()
  local l0
  self = self._graph
  self:en_117()
  l0 = self[117]
  l0:Enable()
end
function export:f_503_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0:Enable()
end
function export:f_414_Disabled()
  local l0
  self = self._graph
  l0 = self[196]
  l0.Entity = "9223372058903936058"
  l0:Disable()
end
function export:f_374_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_374_HackSuccess()
  local l0
  self = self._graph
  self:en_374()
  l0 = self[374]
  l0:Disable()
end
function export:f_390_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[23]
  l0.SoundId = "soundbinary/3677950031.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_162_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_651_Out_0
  l0.Out[1] = self.f_651_Out_1
  l0:In()
end
function export:f_478_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_124_AllSpawned()
  local l0
  self = self._graph
  self:en_124()
  l0 = self[124]
  l0:AddScriptedAgents()
end
function export:f_124_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_484()
  l0 = self[484]
  l0:Register()
end
function export:f_163_EndOfList()
  local l0
  self = self._graph
  l0 = self[163]
  self.kmcData = l0.Data
end
function export:f_163_ForEach()
  local l0
  self = self._graph
  l0 = self[163]
  self.kmcData = l0.Data
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.kmcData
  l0._graph = self
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
  l0:DisableForPlayer()
end
function export:f_163_GotNext()
  local l0
  self = self._graph
  l0 = self[163]
  self.kmcData = l0.Data
end
function export:f_163_Started()
  local l0
  self = self._graph
  l0 = self[163]
  self.kmcData = l0.Data
end
function export:f_163_Stopped()
  local l0
  self = self._graph
  l0 = self[163]
  self.kmcData = l0.Data
end
function export:f_82_Stopped()
  local l0
  self = self._graph
  l0 = self[233]
  l0.HackableEntity = "9223372052137878771"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_82_TimeElapsed()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Stop()
end
function export:f_417_Stopped()
  local l0
  self = self._graph
  l0 = self[559]
  l0.SurvivalGuideItemDB = "Items.9223372053993007708"
  l0:Display()
end
function export:f_417_TimeElapsed()
  local l0
  self = self._graph
  self:en_417()
  l0 = self[417]
  l0:Stop()
end
function export:f_147_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = nil
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_591_Disabled
  l0:Disable()
end
function export:f_263_Out()
  local l0
  self = self._graph
  l0 = self[244]
  l0.MoveableEntity = "9223372052040779138"
  l0:Enable()
end
function export:f_183_Added()
  local l0
  self = self._graph
  l0 = self[183]
  self.JunctionBoxes = l0.Target
  l0 = self[188]
  l0.HackableEntityList = self.JunctionBoxes
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_183_Out()
  local l0
  self = self._graph
  l0 = self[183]
  self.JunctionBoxes = l0.Target
end
function export:f_183_Removed()
  local l0
  self = self._graph
  l0 = self[183]
  self.JunctionBoxes = l0.Target
end
function export:f_419_Disabled()
  local l0
  self = self._graph
  self:en_239()
  l0 = self[239]
  l0:Enable()
end
function export:f_419_Enabled()
  local l0
  self = self._graph
  self:en_266()
  l0 = self[266]
  l0:Enable()
end
function export:f_419_Enter()
  local l0
  self = self._graph
  self:en_445()
  l0 = self[445]
  l0:HideNotification()
end
function export:f_377_Disabled()
  local l0
  self = self._graph
  self:en_379()
  l0 = self[379]
  l0:Display()
end
function export:f_377_Enabled()
  local l0
  self = self._graph
  l0 = self[552]
  l0.SurvivalGuideItemDB = "Items.9223372053993007725"
  l0:Display()
end
function export:f_377_Enter()
  local l0
  self = self._graph
  self:en_356()
  l0 = self[356]
  l0:HideNotification()
end
function export:f_230_MovedForward()
  local l0
  self = self._graph
  l0 = self[263]
  l0:In(0)
end
function export:f_227_Enabled()
  local l0
  self = self._graph
  l0 = self[122]
  l0.HackableEntity = "9223372054409466354"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_102_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_648_Out_0
  l0.Out[1] = self.f_648_Out_1
  l0:In()
end
function export:f_122_Enabled()
  local l0
  self = self._graph
  l0 = self[115]
  l0.HackableEntity = "9223372054409466352"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_366_AllLoaded()
  local l0
  self = self._graph
  l0 = self[289]
  l0.HackableEntityList = self.CourtYard_World_Entities
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_151_Disabled()
  local l0
  self = self._graph
  l0 = self[112]
  l0.HackableEntity = "9223372054409466354"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_71_BlackoutStopped()
  local l0
  self = self._graph
  l0 = self[565]
  l0.SoundId = "soundbinary/2962986814.bnk"
  l0:Play()
end
function export:f_354_Popped()
  local l0
  self = self._graph
  l0 = self[349]
  l0.MapPoint = "9223372061240119421"
  l0:Show()
end
function export:f_645_Out_0()
  local l0
  self = self._graph
  l0 = self[313]
  l0:Input(0)
end
function export:f_645_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_500_Deactivated
  l0:Deactivate()
end
function export:f_202_VanishSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372066236583618"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_471_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_67_Started()
  local l0
  self = self._graph
  l0 = self[176]
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
  l0:Add()
end
function export:f_241_MovedForward()
  local l0
  self = self._graph
  l0 = self[257]
  l0:In(0)
end
function export:f_266_Disabled()
  local l0
  self = self._graph
  self:en_507()
  l0 = self[507]
  l0:Enable()
end
function export:f_266_Enabled()
  local l0
  self = self._graph
  self:en_569()
  l0 = self[569]
  l0:Start()
end
function export:f_266_Enter()
  local l0
  self = self._graph
  self:en_266()
  l0 = self[266]
  l0:Disable()
end
function export:f_127_Added()
  local l0
  self = self._graph
  l0 = self[127]
  self.TakedownTutorial = l0.Target
  l0 = self[321]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_127_Out()
  local l0
  self = self._graph
  l0 = self[127]
  self.TakedownTutorial = l0.Target
end
function export:f_127_Removed()
  local l0
  self = self._graph
  l0 = self[127]
  self.TakedownTutorial = l0.Target
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S01M010_Main"
  l0:Load()
end
function export:f_38_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_634_Changed
  l0:Change()
end
function export:f_396_DisplayRequested()
  local l0
  self = self._graph
  self:en_88()
  l0 = self[88]
  l0:Start()
end
function export:f_396_NotificationHidden()
  local l0
  self = self._graph
  self:en_88()
  l0 = self[88]
  l0:Stop()
end
function export:f_559_DisplayRequested()
  local l0
  self = self._graph
  self:en_82()
  l0 = self[82]
  l0:Start()
end
function export:f_341_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[174]
  l0:In()
end
function export:f_569_Reached()
  local l0
  self = self._graph
  self:en_569()
  l0 = self[569]
  l0:Stop()
end
function export:f_569_Stopped()
  local l0
  self = self._graph
  l0 = self[448]
  l0.UserList = self.EnemyExterior
  l0:UnspawnUser()
end
function export:f_168_Out_0()
  local l0
  self = self._graph
  l0 = self[163]
  l0.List = self.kmcList
  l0:Start()
end
function export:f_168_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_466_Changed
  l0:Change()
end
function export:f_150_Out_0()
  local l0
  self = self._graph
  l0 = self[383]
  l0:Input(0)
end
function export:f_150_Out_1()
  local l0
  self = self._graph
  l0 = self[228]
  l0:Input(0)
end
function export:f_150_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_526_Deactivated
  l0:Deactivate()
end
function export:f_240_MovedForward()
  local l0
  self = self._graph
  l0 = self[256]
  l0:In(0)
end
function export:f_565_Out()
  local l0
  self = self._graph
  l0 = self[529]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_369_Out()
  local l0
  self = self._graph
  l0 = self[228]
  l0:Input(1)
end
function export:f_325_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_326_Out
  l0:In()
end
function export:f_90_Out_0()
  local l0
  self = self._graph
  self:en_561()
  l0 = self[561]
  l0:Start()
end
function export:f_90_Out_1()
  local l0
  self = self._graph
  self:en_89()
  l0 = self[89]
  l0:Display()
end
function export:f_90_Out_2()
  local l0
  self = self._graph
  l0 = self[539]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_362_Out()
  local l0
  self = self._graph
  self:en_445()
  l0 = self[445]
  l0:Display()
end
function export:f_144_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySoundController.lua")]
  l0.MuteAllSounds = nil
  l0.MuteAllPilotEntities = nil
  l0.MuteAllPatrolEntities = nil
  l0.MuteAllDispatchEntities = 1
  l0.MuteAllOperatorEntities = nil
  l0.MuteAllBoatEntities = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_592_Enabled
  l0.Disabled = DummyFunction
  l0:Enable()
end
function export:f_270_Out()
  local l0
  self = self._graph
  l0 = self[604]
  l0.HackableEntity = "9223372058315932621"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_246_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372063874921820"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_240_MovedForward
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
function export:f_561_Reached()
  local l0
  self = self._graph
  self:en_561()
  l0 = self[561]
  l0:Stop()
end
function export:f_561_Stopped()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective023",
    item = "Objective",
    id = "688740"
  }
  l0:UpdateObjective()
end
function export:f_547_NotificationHidden()
  local l0
  self = self._graph
  self:en_24()
  l0 = self[24]
  l0:Disable()
end
function export:f_179_Out()
  local l0
  self = self._graph
  l0 = self[599]
  l0.Affiliation = "UZulu"
  l0:ForceVanish()
end
function export:f_395_Hacked()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:HideNotification()
end
function export:f_395_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_55_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_335_Out()
  local l0
  self = self._graph
  l0 = self[318]
  l0.Checkpoint = "CheckPoint_6"
  l0:In()
end
function export:f_334_Disabled()
  local l0
  self = self._graph
  l0 = self[450]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_502_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SpawnPoint = "9223372047207301297"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.MountInstallPackage = 1
  l0:In()
end
function export:f_220_Shown()
  local l0
  self = self._graph
  self:en_226()
  l0 = self[226]
  l0:Enable()
end
function export:f_473_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_424_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_413_Shown()
  local l0
  self = self._graph
  l0 = self[363]
  l0.LMALayerName = "SF_09_ctOS_Data_Center_LMA"
  l0:Unload()
end
function export:f_315_Disabled()
  local l0
  self = self._graph
  l0 = self[598]
  l0.Entity = "9223372059224539270"
  l0:DisableAiAccess()
end
function export:f_381_OverrideActivated()
  local l0
  self = self._graph
  l0 = self[136]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:ForceHack()
end
function export:f_21_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_0"
  l0.ActionMapName = nil
  l0.ActionMapPriority = "DominoMoveState"
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_583_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_141_HackForced()
  local l0
  self = self._graph
  l0 = self[578]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_586_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientTrigger"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_155_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Add()
end
function export:f_73_Finished()
  local l0
  self = self._graph
  l0 = self[210]
  l0.SoundId = "soundbinary/2161710103.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_492_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_17_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[17]
  self.EnemyTutorial_08 = l0.UserID[0]
  self.EnemyTutorial_02 = l0.UserID[1]
  self.EnemyTutorial_04 = l0.UserID[2]
  self.EnemyTutorial_03 = l0.UserID[3]
  self.EnemyTutorial_05 = l0.UserID[4]
  self.EnemyTutorial_07 = l0.UserID[5]
  self.EnemyTutorial_10 = l0.UserID[6]
  l0 = self[127]
  l0.Input = self.TakedownTutorial
  l0.Data[0] = self.EnemyTutorial_08
  l0.Data[1] = self.EnemyTutorial_02
  l0.Data[2] = self.EnemyTutorial_04
  l0.Data[3] = self.EnemyTutorial_03
  l0.Data[4] = self.EnemyTutorial_05
  l0.Data[5] = self.EnemyTutorial_10
  l0.Data[6] = self.EnemyTutorial_07
  l0:Add()
end
function export:f_86_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_64_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_363_Unloaded()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Succeed()
end
function export:f_222_Disabled()
  local l0
  self = self._graph
  l0 = self[476]
  l0:In(2)
end
function export:f_222_Enabled()
  local l0
  self = self._graph
  self:en_546()
  l0 = self[546]
  l0:Display()
end
function export:f_222_OnNetworkSurfingActivated()
  local l0
  self = self._graph
  l0 = self[222]
  l0:Disable()
end
function export:f_367_Added()
  local l0
  self = self._graph
  l0 = self[367]
  self.CourtYard_World_Entities = l0.Target
  l0 = self[366]
  l0.AutoDisable = 1
  l0.EntityList = self.CourtYard_World_Entities
  l0:Enable()
end
function export:f_367_Out()
  local l0
  self = self._graph
  l0 = self[367]
  self.CourtYard_World_Entities = l0.Target
end
function export:f_367_Removed()
  local l0
  self = self._graph
  l0 = self[367]
  self.CourtYard_World_Entities = l0.Target
end
function export:f_568_Deactivated()
  local l0
  self = self._graph
  l0 = self[492]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_393_Out()
  local l0
  self = self._graph
  l0 = self[63]
  l0:Condition(0)
end
function export:f_393_Started()
  local l0
  self = self._graph
  l0 = self[61]
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0:Activate()
end
function export:f_601_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[302]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:DisableHack()
end
function export:f_539_Out()
  local l0
  self = self._graph
  self:en_327()
  l0 = self[327]
  l0:Enable()
end
function export:f_72_Finished()
  local l0
  self = self._graph
  l0 = self[65]
  l0.SoundId = "soundbinary/1870534600.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_562_Reached()
  local l0
  self = self._graph
  self:en_562()
  l0 = self[562]
  l0:Stop()
end
function export:f_562_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_342_Out_0
  l0.Out[1] = self.f_342_Out_1
  l0:In()
end
function export:f_158_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[158]
  self.kmcList = l0.UserIDList
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_168_Out_0
  l0.Out[1] = self.f_168_Out_1
  l0:In()
end
function export:f_211_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_90_Out_0
  l0.Out[1] = self.f_90_Out_1
  l0.Out[2] = self.f_90_Out_2
  l0:In()
end
function export:f_594_AllSpawned()
  local l0
  self = self._graph
  self:en_594()
  l0 = self[594]
  l0:AddScriptedAgents()
end
function export:f_594_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_495()
  l0 = self[495]
  l0:Register()
end
function export:f_607_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[610]
  l0.Entity = "9223372059224539309"
  l0:DisableAiAccess()
end
function export:f_470_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_251_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_83_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[557]
  l0.SurvivalGuideItemDB = "Items.9223372053993007696"
  l0:Display()
end
function export:f_600_AiAccessDisabled()
  local l0
  self = self._graph
  l0 = self[601]
  l0.Entity = "9223372059224539295"
  l0:DisableAiAccess()
end
function export:f_218_Deactivated()
  local l0
  self = self._graph
  l0 = self[527]
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0:Play()
end
function export:f_556_Disabled()
  local l0
  self = self._graph
  self:en_574()
  l0 = self[574]
  l0:Disable()
end
function export:f_556_Enabled()
  local l0
  self = self._graph
  self:en_574()
  l0 = self[574]
  l0:Enable()
end
function export:f_583_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_31_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_319_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 3
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_405_Out
  l0:SetTimeOfDay()
end
function export:f_255_Out()
  local l0
  self = self._graph
  l0 = self[248]
  l0.MoveableEntity = "9223372052040779117"
  l0:Enable()
end
function export:f_235_MovedForward()
  local l0
  self = self._graph
  l0 = self[262]
  l0:In(0)
end
function export:f_254_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = "9223372063874878374"
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0.Moved = DummyFunction
  l0.MovedForward = self.f_235_MovedForward
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
function export:f_30_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ChangeGraphicKitModel.lua")]
  l0.Entity = nil
  l0.Model = "W2CH_MOD_nar_ava.avatar_gamestart"
  l0.Collection = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Failed = DummyFunction
  l0.Changed = self.f_631_Changed
  l0:Change()
end
function export:f_651_Out_0()
  local l0
  self = self._graph
  l0 = self[113]
  l0:In()
end
function export:f_651_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_427_Deactivated
  l0:Deactivate()
end
function export:f_172_Disabled()
  local l0
  self = self._graph
  l0 = self[343]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_608_Disabled()
  local l0
  self = self._graph
  l0 = self[44]
  l0.CLO[0] = "9223372053351348513"
  l0.CLO[1] = "9223372047720865802"
  l0.CLO[2] = "9223372052051418543"
  l0.CLO[3] = "9223372047874816101"
  l0.CLO[4] = "9223372052051487526"
  l0.CLO[5] = "9223372052051487523"
  l0.CLO[6] = "9223372063924226406"
  l0:Activate()
end
function export:f_475_PreOut()
  local l0
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
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_179_Out
  l0:CleanZone()
end
function export:f_286_Finished()
  local l0
  self = self._graph
  l0 = self[312]
  l0.SoundId = "soundbinary/2105815314.bnk"
  l0.UseFacial = 0
  l0:Start()
end
function export:f_448_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[587]
  l0.Affiliation = "UZulu"
  l0:ForceVanish()
end
function export:f_9_BlackoutStarted()
  local l0
  self = self._graph
  self:en_9()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0:StartBackup()
end
function export:f_483_Out_0()
  local l0
  self = self._graph
  l0 = self[338]
  l0:Input(0)
end
function export:f_483_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_449_Deactivated
  l0:Deactivate()
end
function export:f_574_Disabled()
  local l0
  self = self._graph
  l0 = self[114]
  l0.ObjectiveSub3 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives",
    item = "Sub-Objective",
    id = "698199"
  }
  l0.IncrementalObjectiveTotalSub3 = 1
  l0:IncrementObjective()
end
function export:f_574_Enabled()
  local l0
  self = self._graph
  self:en_374()
  l0 = self[374]
  l0:Enable()
end
function export:f_403_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_397_Out_0
  l0.Out[1] = self.f_397_Out_1
  l0:In()
end
function export:f_39_Finished()
  local l0
  self = self._graph
  l0 = self[32]
  l0.SoundId = "soundbinary/2045998479.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[277]
  l0.HackableEntity = "9223372052040779138"
  l0.ProfileLinkedToHack = 1
  l0:EnableHack()
end
function export:f_327_CombatState()
  local l0
  self = self._graph
  self:en_327()
  l0 = self[327]
  l0:Disable()
end
function export:f_327_Disabled()
  local l0
  self = self._graph
  l0 = self[259]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_532_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_79_Out_0
  l0.Out[1] = self.f_79_Out_1
  l0:In()
end
function export:f_269_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[97]
  l0:In()
end
function export:f_536_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_290_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_320_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_319_Out
  l0:In()
end
function export:f_384_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_452_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_537_ProfileAssigned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PlayerBlurPostFxController.lua")]
  l0.Intensity = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Locked = self.f_497_Locked
  l0.IntensitySet = DummyFunction
  l0.Unlocked = DummyFunction
  l0:Lock()
end
function export:f_111_Disabled()
  local l0
  self = self._graph
  l0 = self[287]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_510_Enabled()
  local l0
  self = self._graph
  l0 = self[418]
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
  l0:Add()
end
function export:f_133_Disabled()
  local l0
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
  l0.MaxSpeedSet = DummyFunction
  l0.MaxSpeedReset = DummyFunction
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = self.f_205_CoverEntered
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
  l0:EnterCover()
end
function export:f_233_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = "9223372052137878771"
  l0.HackableEntityList = nil
  l0.HackCategoryType[0] = "IngredientArm"
  l0.HackCategoryType[1] = "IngredientTrigger"
  l0.HackCategoryType[2] = "IngredientShutdown"
  l0.HackCategoryType[3] = "IngredientAttract"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = self.f_69_Removed
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Remove()
end
function export:f_592_Enabled()
  local l0
  self = self._graph
  l0 = self[132]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:ForceHack()
end
function export:f_314_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669151"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_145_Disabled()
  local l0
  self = self._graph
  l0 = self[141]
  l0.HackableEntity = "9223372052040779329"
  l0.ProfileLinkedToHack = 1
  l0:ForceHack()
end
function export:f_638_CoverToCoverAllowedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_612_Hidden
  l0:Hide()
end
function export:f_256_Out()
  local l0
  self = self._graph
  l0 = self[247]
  l0.MoveableEntity = "9223372063874921820"
  l0:Enable()
end
function export:f_514_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "Tutorial_Lure_1"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_21_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_290_Locked()
  local l0
  self = self._graph
  l0 = self[110]
  l0.Input = self.AccessDoorDisable
  l0.Data[0] = "9223372063954160037"
  l0.Data[1] = "9223372063954160039"
  l0.Data[2] = "9223372063954160031"
  l0:Add()
end
function export:f_78_Added()
  local l0
  self = self._graph
  l0 = self[78]
  self.S01M010_AiList = l0.Target
  self:en_124()
  l0 = self[124]
  l0:Start()
end
function export:f_78_Out()
  local l0
  self = self._graph
  l0 = self[78]
  self.S01M010_AiList = l0.Target
end
function export:f_78_Removed()
  local l0
  self = self._graph
  l0 = self[78]
  self.S01M010_AiList = l0.Target
end
function export:f_195_Out()
  local l0
  self = self._graph
  l0 = self[573]
  l0:In()
end
function export:f_397_Out_0()
  local l0
  self = self._graph
  l0 = self[463]
  l0:Input(1)
end
function export:f_397_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = nil
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_218_Deactivated
  l0:Deactivate()
end
function export:f_386_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_11_Hidden
  l0:Hide()
end
function export:f_305_Out_0()
  local l0
  self = self._graph
  self:en_387()
  l0 = self[387]
  l0:Enable()
end
function export:f_305_Out_1()
  local l0
  self = self._graph
  l0 = self[469]
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0:Play()
end
function export:f_16_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.PlayerEntity
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = self.f_413_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0:Show()
end
function export:f_237_Out()
  local l0
  self = self._graph
  l0 = self[203]
  l0.Seconds = 1
  l0:Start()
end
function export:en_585()
  local l0
  l0 = self[585]
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
function export:en_560()
  local l0
  l0 = self[560]
  l0.Trigger = "9223372066281048285"
end
function export:en_513()
  local l0
  l0 = self[513]
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
function export:en_472()
  local l0
  l0 = self[472]
  l0.Entity = "9223372066236583618"
  l0.IsManagingInteraction = 1
end
function export:en_643()
  local l0
  l0 = self[643]
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
function export:en_297()
  local l0
  l0 = self[297]
  l0.Affiliation = "UZulu"
  l0.CheckNow = 1
end
function export:en_370()
  local l0
  l0 = self[370]
  l0.EntityList = self.S01M010_AiList
  l0.Mission = "MissionList.9223372047207302094"
end
function export:en_495()
  local l0
  l0 = self[495]
  l0.EntityList = self.S01M010_AiList
  l0.Mission = "MissionList.9223372047207302094"
end
function export:en_392()
  local l0
  l0 = self[392]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackLink",
    item = "Description",
    id = "340997"
  }
  l0.Duration = -1
end
function export:en_219()
  local l0
  l0 = self[219]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M010.Objectives.Objective020",
    item = "Objective",
    id = "634444"
  }
  l0.Duration = -1
end
function export:en_239()
  local l0
  l0 = self[239]
  l0.PawnList = self.EnemyExterior
end
function export:en_45()
  local l0
  l0 = self[45]
  l0.Entity = "9223372061671495694"
  l0.IsManagingInteraction = 1
end
function export:en_117()
  local l0
  l0 = self[117]
  l0.Trigger = "9223372064379350647"
end
function export:en_588()
  local l0
  l0 = self[588]
  l0.HackableEntity = "9223372058618458050"
end
function export:en_356()
  local l0
  l0 = self[356]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_BasicMovement",
    item = "Description",
    id = "340102"
  }
  l0.Duration = -1
end
function export:en_148()
  local l0
  l0 = self[148]
  l0.MissionArea = "9223372058315934977"
  l0.MissionLayer = "S01M010_Main"
  l0.HardFail = 1
  l0.InstantFailOnExit = 1
end
function export:en_584()
  local l0
  l0 = self[584]
  l0.Trigger = "9223372059241667221"
end
function export:en_421()
  local l0
  l0 = self[421]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Melee",
    item = "Description",
    id = "459188"
  }
  l0.Duration = -1
end
function export:en_76()
  local l0
  l0 = self[76]
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
function export:en_440()
  local l0
  l0 = self[440]
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372062574079781"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:en_226()
  local l0
  l0 = self[226]
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372062574079779"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:en_201()
  local l0
  l0 = self[201]
  l0.Trigger = "9223372056499467195"
end
function export:en_484()
  local l0
  l0 = self[484]
  l0.EntityList = self.S01M010_AiList
  l0.Mission = "MissionList.9223372047207302094"
end
function export:en_89()
  local l0
  l0 = self[89]
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
function export:en_191()
  local l0
  l0 = self[191]
  l0.Entity = "9223372058903936058"
  l0.IsManagingInteraction = 1
end
function export:en_399()
  local l0
  l0 = self[399]
  l0.Pawn = self.EnemyGameplay_01
end
function export:en_545()
  local l0
  l0 = self[545]
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
function export:en_546()
  local l0
  l0 = self[546]
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
function export:en_24()
  local l0
  l0 = self[24]
  l0.InteractionScriptEntity = "9223372061951647701"
end
function export:en_379()
  local l0
  l0 = self[379]
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
function export:en_57()
  local l0
  l0 = self[57]
  l0.HackableEntity = "9223372052040779329"
end
function export:en_415()
  local l0
  l0 = self[415]
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
function export:en_88()
  local l0
  l0 = self[88]
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
function export:en_445()
  local l0
  l0 = self[445]
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
function export:en_375()
  local l0
  l0 = self[375]
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372061671495694"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:en_387()
  local l0
  l0 = self[387]
  l0.Trigger = "9223372055563998902"
end
function export:en_509()
  local l0
  l0 = self[509]
  l0.PGTMissionArea = "9223372069423440676"
  l0.AgentList = self.S01M010_AiList
end
function export:en_507()
  local l0
  l0 = self[507]
  l0.ProfilerInfoType = "ObjectInfo"
  l0.ProfilableEntity = "9223372058618458050"
  l0.CheckNow = 1
  l0.DelayBeforeSendingEvent = 0
end
function export:en_374()
  local l0
  l0 = self[374]
  l0.HackableEntity = "9223372058315931033"
end
function export:en_124()
  local l0
  l0 = self[124]
  l0.PGTMissionArea = "9223372069423440676"
  l0.AgentList = self.S01M010_AiList
end
function export:en_82()
  local l0
  l0 = self[82]
  l0.Seconds = 0.5
end
function export:en_417()
  local l0
  l0 = self[417]
  l0.Seconds = 2
end
function export:en_419()
  local l0
  l0 = self[419]
  l0.Trigger = "9223372058578000221"
  l0.CheckNow = 1
end
function export:en_377()
  local l0
  l0 = self[377]
  l0.Trigger = "9223372057212037709"
end
function export:en_266()
  local l0
  l0 = self[266]
  l0.Trigger = "9223372059407782551"
end
function export:en_396()
  local l0
  l0 = self[396]
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
function export:en_569()
  local l0
  l0 = self[569]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372058618284267"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_561()
  local l0
  l0 = self[561]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372055563998908"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_547()
  local l0
  l0 = self[547]
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
function export:en_395()
  local l0
  l0 = self[395]
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
function export:en_496()
  local l0
  l0 = self[496]
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
function export:en_562()
  local l0
  l0 = self[562]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372055563998910"
  l0.AutoGPS = 0
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_594()
  local l0
  l0 = self[594]
  l0.PGTMissionArea = "9223372069423440676"
  l0.AgentList = self.S01M010_AiList
end
function export:en_556()
  local l0
  l0 = self[556]
  l0.Entity = "9223372060332184897"
end
function export:en_9()
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
  l0.BlackoutStarted = self.f_9_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:en_574()
  local l0
  l0 = self[574]
  l0.Entity = "9223372067252589513"
end
function export:en_327()
  local l0
  l0 = self[327]
  l0.NPCList = self.S01M010_AiList
end
function export:Out()
end
_compilerVersion = 4
