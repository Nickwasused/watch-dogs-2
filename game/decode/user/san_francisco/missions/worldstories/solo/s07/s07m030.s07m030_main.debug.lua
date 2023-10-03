export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CameraLockController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/ClothController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/EnvironmentWeatherOverride.lua")
  cbox:RegisterBox("domino/System/FlyingDroneController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/InventoryController_v2.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LoadingScreenMonitor_v2.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProfilingPathController_v2.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_burningmantickets.S07_M030_CIN_BurningManTickets_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_tbonereturns.S07_M030_CIN_TBoneReturns_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_trippingballs.S07_M030_CIN_TrippingBalls_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_triptonowhere.S07_M030_CIN_TripToNowhere_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_wrongintentions.S07_M030_CIN_WrongIntentions_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07_M030_CIN_YouAreNotAlone.S07_M030_CIN_YouAreNotAlone_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_scr_groupphoto.S07_M030_SCR_GroupPhoto_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07m030_scr.S07M030_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:RegisterBox("domino/System/VrNodeController.lua")
  cbox:LoadResource("soundbinary/891127827.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3515709216.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3408347468.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/482322816.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4042177055.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2365305794.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/494507144.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2333490629.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3396338087.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1392305097.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2276254617.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3721807818.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/121608939.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3598191770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3759489967.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2442459009.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3134798594.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3546806334.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1627164960.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2955106561.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2094074987.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4046994236.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1218943957.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2381049263.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3907040449.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2358322768.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4084034057.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3588065081.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1257937362.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1584707327.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1498302511.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S07M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main"
  self.PlayerEntity = nil
  self.TBone = nil
  self.TMobile = nil
  self.CarChaser01 = nil
  self.Antenna02 = "9223372046786702760"
  self.Antenna01 = "9223372046786702768"
  self.Antenna03 = "9223372046786702764"
  self.PlayerVehicle = nil
  self.UndercoverTarget = nil
  self.Chaser01 = nil
  self.SearchZone = 0
  self.HackableMainSculpture = "9223372047406088547"
  self.RCToy = nil
  self.Window01 = 0
  self.Window02 = 0
  self.Window03 = 0
  self.Window04 = 0
  self.ObjectivePuzzle03 = 0
  self.CivTest = nil
  self.SmallAlice = nil
  self.Tobias = nil
  self.BigAlice = nil
  self.BigAliceHacked = 0
  self.TobiasHacked = 0
  self.SmallAliceHacked = 0
  self.ObjectivePuzzleProfiling = 0
  self.ObjectiveInteractSculpture = 0
  self.ObjectivePuzzleTimedHack = 0
  self.Chaser02 = nil
  self.CarChaser02 = nil
  self.Chaser03 = nil
  self.CarChaser03 = nil
  self.FinalAmbusher01 = nil
  self.FinalAmbusher02 = nil
  self.FinalAmbusher03 = nil
  self.FinalAmbusher04 = nil
  self.FinalAmbusher05 = nil
  self.Wrench = nil
  self.Sitara = nil
  self.Horatio = nil
  self.Josh = nil
  self.StandAloneLoader = "9223372047131482396"
  self.S07M030_ProximityTrigger_Reinforcement01 = "9223372049140496749"
  self.Chaser04 = nil
  self.Chaser05 = nil
  self.CarChaser04 = nil
  self.CarChaser05 = nil
  self.Thunderdome = "9223372049820597218"
  self.DedSec = {}
  self.CLO_Wrench = "9223372046684730980"
  self.MissionMarker_DedSec = "9223372048566415000"
  self.MissionMarker_Sitara = "9223372048453230375"
  self.MissionMarker_Thunderdome = "9223372048566369837"
  self.MissionMarker_Smoker = "9223372046684706809"
  self.CLO_Smoker = "9223372046786710716"
  self.Smoker = nil
  self.ChaserList01 = {}
  self.MissionTarget_Horatio01 = "9223372049957015052"
  self.MissionTarget_Wrench01 = "9223372049957015050"
  self.MissionTarget_Josh01 = "9223372049957015055"
  self.MissionTarget_Sitara01 = "9223372048453230375"
  self.TriggerPicture = "9223372049957179064"
  self.Drone = "9223372050025129056"
  self.VR_Access = "9223372050293726387"
  self.Ambusher01List = {}
  self.Chaser06 = nil
  self.CarChaser06 = nil
  self.Ambusher02List = {}
  self.PGTMissionArea = "9223372050586716446"
  self.JoshTalkerClue = nil
  self.WrenchTalkerClue = nil
  self.SitaraTalkerClue = nil
  self.HoratioTalkerClue = nil
  self.TMobile_Checkpoint = nil
  self.FinalAmbusher06 = nil
  self.FinalAmbusher07 = nil
  self.FinalAmbusher08 = nil
  self.TBone_FinalAmbush = nil
  self.FelonyState = 0
  self.FinalAmbusherCar01 = nil
  self.FinalAmbusherCar02 = nil
  self.Test = nil
  self.Chaser07 = nil
  self.ReinforcementCallerList = {}
  self.Chaser08 = nil
  self.Chaser09 = nil
  self.BikerChaser01 = nil
  self.ReinforcementWaveNumber = 0
  self.TBoneConvoy = 0
  self.ReinforcementList = {}
  self.ReinforcementInt = 0
  self.Nuke = nil
  self.ToyCarJosh = nil
  self.BikerChaser02 = nil
  self.Guitar01 = "9223372056574882544"
  self.Guitar02 = "9223372056574882542"
  self.Saxophone01 = "9223372056574882546"
  self.Saxophone02 = "9223372056574882548"
  self.Saxophone03 = "9223372056574882550"
  self.AmbushZone = "9223372057206516996"
  self.FinalAmbusherList = {}
  self.ScriptedChaser01 = nil
  self.ScriptedChaser02 = nil
  self.ScriptedCar01 = nil
  self.ScriptedCar02 = nil
  self.PuzzleDone = 0
  self.Bike01 = nil
  self.Bike02 = nil
  self.Bike03 = nil
  self.Biker01 = nil
  self.Biker02 = nil
  self.Biker03 = nil
  self.Biker04 = nil
  self.Bride = nil
  self.BrideMaid = nil
  self.IS_Checkpoint0 = 0
  self._9223372064329591639 = nil
  self.SearchArea = "9223372064364380006"
  self.IsCheckpoint01 = 0
  self.PlayerLife = 0
  self.Prime8_01 = nil
  self.Prime8_02 = nil
  self.Prime8_03 = nil
  self.SpinningNode = 0
  self.WinFight = 0
  self.Chaser10 = nil
  self.CarChaser10 = nil
  self.Chaser11 = nil
  self.Ambusher03List = {}
  self.CarChaser12 = nil
  self.CarChaser11 = nil
  self.Chaser12 = nil
  self.Chaser13 = nil
  self.Chaser14 = nil
  self.Chaser15 = nil
  self.AmbusherList04List = {}
  self.Ambusher05List = {}
  self.FrontDoor = "9223372053484938575"
  self.BackDoor = "9223372051887121919"
  self.box_MissionLayer_v2_71 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_71
  l0._graph = self
  l0._name = "box_MissionLayer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|16321857"
  l0.Loaded = self.f_box_MissionLayer_v2_71_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlayDialog_v2_23 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_23
  l0._graph = self
  l0._name = "box_PlayDialog_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|17953115"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|19701151"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S07_M030_CIN_WrongIntentions_Main_22 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_wrongintentions.S07_M030_CIN_WrongIntentions_Main.debug.lua")
  l0 = self.box_S07_M030_CIN_WrongIntentions_Main_22
  l0._graph = self
  l0._name = "box_S07_M030_CIN_WrongIntentions_Main_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|35095162"
  l0.Out = self.f_box_S07_M030_CIN_WrongIntentions_Main_22_Out
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|40314507"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_45 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_45
  l0._graph = self
  l0._name = "box_Hackable_Monitor_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|52885496"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_45_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_231 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_231
  l0._graph = self
  l0._name = "box_CLOController_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|61609682"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_231_OnUserInPlace
  self.box_CLOController_135 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_135
  l0._graph = self
  l0._name = "box_CLOController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|101465733"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_135_OnUserInPlace
  self.box_MissionMessageController_v3_479 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_479
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_479"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|113400625"
  l0.Out = self.f_box_MissionMessageController_v3_479_Out
  l0.MessageCompleted = DummyFunction
  self.box_Interact_Gameplay_4 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_4
  l0._graph = self
  l0._name = "box_Interact_Gameplay_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|140556049"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_4_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_4_Interacted
  self.box_Camera_Lock_Controller_520 = cbox:CreateBox("domino/System/CameraLockController.lua")
  l0 = self.box_Camera_Lock_Controller_520
  l0._graph = self
  l0._name = "box_Camera_Lock_Controller_520"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|144163927"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Camera_Lock_Controller_520_Stopped
  l0.Finished = self.f_box_Camera_Lock_Controller_520_Finished
  l0.Out = DummyFunction
  self.box_HackableController_v2_470 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_470
  l0._graph = self
  l0._name = "box_HackableController_v2_470"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|154763874"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_470_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_519 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_519
  l0._graph = self
  l0._name = "box_CLOController_519"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|156602624"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_519_OnUserInPlace
  self.box_MultipleOR_558 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_558
  l0._graph = self
  l0._name = "box_MultipleOR_558"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|157814383"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_558_Out
  self.box_CLOController_388 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_388
  l0._graph = self
  l0._name = "box_CLOController_388"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|202266470"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_388_OnUserInPlace
  self.box_CLOController_9 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|241771137"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_CLOController_134 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_134
  l0._graph = self
  l0._name = "box_CLOController_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|249317073"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_134_OnUserInPlace
  self.box_Hackable_Monitor_279 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_279
  l0._graph = self
  l0._name = "box_Hackable_Monitor_279"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|270633964"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_279_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_279_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_408 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_408
  l0._graph = self
  l0._name = "box_CLOController_408"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|272902757"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_133 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_133
  l0._graph = self
  l0._name = "box_CLOController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|279365549"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_133_OnUserInPlace
  self.box_PlayDialog_v2_255 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_255
  l0._graph = self
  l0._name = "box_PlayDialog_v2_255"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|282228411"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_195 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_195
  l0._graph = self
  l0._name = "box_CLOController_195"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|286994951"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_212 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_212
  l0._graph = self
  l0._name = "box_CLOController_212"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|287480974"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_125 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_125
  l0._graph = self
  l0._name = "box_CLOController_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|295366030"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_125_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_125_OnUserInPlace
  self.box_Network_Surfing_Controller_316 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_316
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_316"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|318608824"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_316_Deactivated
  self.box_PlaySound_v2_313 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_313
  l0._graph = self
  l0._name = "box_PlaySound_v2_313"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|332860280"
  l0.Out = self.f_box_PlaySound_v2_313_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_126 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_126
  l0._graph = self
  l0._name = "box_CLOController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|334273596"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_126_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_126_OnUserInPlace
  self.box_PlayDialog_v2_191 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_191
  l0._graph = self
  l0._name = "box_PlayDialog_v2_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|337234928"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_146 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_146
  l0._graph = self
  l0._name = "box_CLOController_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|347700891"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_146_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_146_OnUserInPlace
  self.box_RandomOutput_v2_291 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_291
  l0._graph = self
  l0._name = "box_RandomOutput_v2_291"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|353864975"
  l0._DynamicAnchors = {Probability = 4, Output = 4}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_291_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_291_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_291_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_291_Output_3
  self.box_CinematicPrep_84 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_84
  l0._graph = self
  l0._name = "box_CinematicPrep_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|374637860"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_84_PostOut
  self.box_OnceOnly_v3_304 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_304
  l0._graph = self
  l0._name = "box_OnceOnly_v3_304"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|375732817"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_304_Out
  l0.ResetOut = DummyFunction
  self.box_S07M030_SCR_Main_280 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07m030_scr.S07M030_SCR_Main.debug.lua")
  l0 = self.box_S07M030_SCR_Main_280
  l0._graph = self
  l0._name = "box_S07M030_SCR_Main_280"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|376035779"
  l0.Out_Annotations = DummyFunction
  l0.Out_Wedding = DummyFunction
  l0.Out_Thunderdome = DummyFunction
  l0.SCR_Cryptobelisk_Out = DummyFunction
  l0.AmbianceVid_Out = DummyFunction
  l0.DedSecClueLoopStopOut = DummyFunction
  self.box_PlayDialog_v2_190 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_190
  l0._graph = self
  l0._name = "box_PlayDialog_v2_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|378185232"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_190_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|385706303"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
  self.box_Perk_Controller_298 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_298
  l0._graph = self
  l0._name = "box_Perk_Controller_298"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|403727057"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = self.f_box_Perk_Controller_298_PerkListRemoved
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_SetBoolean_v2_595 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_595
  l0._graph = self
  l0._name = "box_SetBoolean_v2_595"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|437900623"
  l0.Out = self.f_box_SetBoolean_v2_595_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_595_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_595_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_595_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_595_SetFromBool
  self.box_PlaySound_v2_607 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_607
  l0._graph = self
  l0._name = "box_PlaySound_v2_607"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|470574353"
  l0.Out = self.f_box_PlaySound_v2_607_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_InteractionScriptMonitor_v2_59 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_59
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|478006769"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_59_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_59_InteractionStarted
  l0.InteractionFailed = self.f_box_InteractionScriptMonitor_v2_59_InteractionFailed
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_HackableController_v2_476 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_476
  l0._graph = self
  l0._name = "box_HackableController_v2_476"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|478534054"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_476_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_56 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_56
  l0._graph = self
  l0._name = "box_MissionLayer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|478618680"
  l0.Loaded = self.f_box_MissionLayer_v2_56_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_494 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_494
  l0._graph = self
  l0._name = "box_CLOController_494"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|484012471"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_457 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_457
  l0._graph = self
  l0._name = "box_Timer_v2_457"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|491450398"
  l0.Out = self.f_box_Timer_v2_457_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_457_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_InteractionScriptMonitor_v2_34 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_34
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|493206491"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_34_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_34_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = DummyFunction
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_OnceOnly_v3_308 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_308
  l0._graph = self
  l0._name = "box_OnceOnly_v3_308"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|496278678"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_308_Out
  l0.ResetOut = DummyFunction
  self.box_Hackable_Monitor_585 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_585
  l0._graph = self
  l0._name = "box_Hackable_Monitor_585"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|511554210"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_585_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_585_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_75 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_75
  l0._graph = self
  l0._name = "box_HackableController_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|545056017"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_75_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_12 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_12
  l0._graph = self
  l0._name = "box_PlaySound_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|579617595"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_293 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_293
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_293"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|602579387"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_293_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_ClothController_33 = cbox:CreateBox("domino/System/ClothController.lua")
  l0 = self.box_ClothController_33
  l0._graph = self
  l0._name = "box_ClothController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|604364683"
  l0.Equipped = self.f_box_ClothController_33_Equipped
  l0.Added = DummyFunction
  self.box_Timer_v2_295 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_295
  l0._graph = self
  l0._name = "box_Timer_v2_295"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|607004628"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_295_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_473 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_473
  l0._graph = self
  l0._name = "box_HackableController_v2_473"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|614616266"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_473_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionCheckpointReach_496 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_496
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_496"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|615638285"
  l0.Out = self.f_box_MissionCheckpointReach_496_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_LMA_Layer_Controller_601 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_601
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_601"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|618444742"
  l0.Loaded = self.f_box_LMA_Layer_Controller_601_Loaded
  l0.Unloaded = DummyFunction
  self.box_Hackable_Monitor_338 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_338
  l0._graph = self
  l0._name = "box_Hackable_Monitor_338"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|625971604"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_338_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_338_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_582 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_582
  l0._graph = self
  l0._name = "box_Timer_v2_582"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|644410605"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_582_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Interact_Gameplay_119 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_119
  l0._graph = self
  l0._name = "box_Interact_Gameplay_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|673707975"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_119_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_119_Interacted
  self.box_CLOController_196 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_196
  l0._graph = self
  l0._name = "box_CLOController_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|675674902"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlayDialog_v2_64 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_64
  l0._graph = self
  l0._name = "box_PlayDialog_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|680988843"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_ClothController_32 = cbox:CreateBox("domino/System/ClothController.lua")
  l0 = self.box_ClothController_32
  l0._graph = self
  l0._name = "box_ClothController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|683084263"
  l0.Equipped = self.f_box_ClothController_32_Equipped
  l0.Added = DummyFunction
  self.box_S07_M030_CIN_TrippingBalls_Main_16 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_trippingballs.S07_M030_CIN_TrippingBalls_Main.debug.lua")
  l0 = self.box_S07_M030_CIN_TrippingBalls_Main_16
  l0._graph = self
  l0._name = "box_S07_M030_CIN_TrippingBalls_Main_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|710262033"
  l0.Out = self.f_box_S07_M030_CIN_TrippingBalls_Main_16_Out
  self.box_PlaySound_v2_30 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_30
  l0._graph = self
  l0._name = "box_PlaySound_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|713569479"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_115 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_115
  l0._graph = self
  l0._name = "box_SetBoolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|716359636"
  l0.Out = self.f_box_SetBoolean_v2_115_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_115_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_115_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_115_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_115_SetFromBool
  self.box_LMA_Layer_Controller_602 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_602
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_602"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|729772365"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_LMA_Layer_Controller_602_Unloaded
  self.box_SetBoolean_v2_594 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_594
  l0._graph = self
  l0._name = "box_SetBoolean_v2_594"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|752785099"
  l0.Out = self.f_box_SetBoolean_v2_594_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_594_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_594_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_594_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_594_SetFromBool
  self.box_PlayDialog_v2_579 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_579
  l0._graph = self
  l0._name = "box_PlayDialog_v2_579"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|754410391"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_S07_M030_CIN_TBoneReturns_Main_8 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_tbonereturns.S07_M030_CIN_TBoneReturns_Main.debug.lua")
  l0 = self.box_S07_M030_CIN_TBoneReturns_Main_8
  l0._graph = self
  l0._name = "box_S07_M030_CIN_TBoneReturns_Main_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|754542756"
  l0.Out = self.f_box_S07_M030_CIN_TBoneReturns_Main_8_Out
  l0.TBoneReturns_Started = self.f_box_S07_M030_CIN_TBoneReturns_Main_8_TBoneReturns_Started
  self.box_CLOController_546 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_546
  l0._graph = self
  l0._name = "box_CLOController_546"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|755116488"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_546_OnUserInPlace
  self.box_CLOController_124 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_124
  l0._graph = self
  l0._name = "box_CLOController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|757203532"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_124_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_124_OnUserInPlace
  self.box_CLOController_236 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_236
  l0._graph = self
  l0._name = "box_CLOController_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|762810260"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_236_OnUserInPlace
  self.box_Multiple_AND_586 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_586
  l0._graph = self
  l0._name = "box_Multiple_AND_586"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|768050523"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_586_Out
  self.box_PlaySound_v2_462 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_462
  l0._graph = self
  l0._name = "box_PlaySound_v2_462"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|772694216"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_462_Finished
  self.box_RewardController_v3_296 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_296
  l0._graph = self
  l0._name = "box_RewardController_v3_296"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|800250157"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_296_RewardsExecuted
  self.box_PlayDialog_v2_589 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_589
  l0._graph = self
  l0._name = "box_PlayDialog_v2_589"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|803315465"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Camera_Lock_Controller_3 = cbox:CreateBox("domino/System/CameraLockController.lua")
  l0 = self.box_Camera_Lock_Controller_3
  l0._graph = self
  l0._name = "box_Camera_Lock_Controller_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|811315608"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Camera_Lock_Controller_3_Stopped
  l0.Finished = self.f_box_Camera_Lock_Controller_3_Finished
  l0.Out = DummyFunction
  self.box_HackableController_v2_53 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_53
  l0._graph = self
  l0._name = "box_HackableController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|830759384"
  l0.Enabled = self.f_box_HackableController_v2_53_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_503 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_503
  l0._graph = self
  l0._name = "box_Timer_v2_503"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|856797260"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_503_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_197 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_197
  l0._graph = self
  l0._name = "box_CLOController_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|874905521"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_S07M030_SCR_Main_19 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07m030_scr.S07M030_SCR_Main.debug.lua")
  l0 = self.box_S07M030_SCR_Main_19
  l0._graph = self
  l0._name = "box_S07M030_SCR_Main_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|877579893"
  l0.Out_Annotations = DummyFunction
  l0.Out_Wedding = DummyFunction
  l0.Out_Thunderdome = DummyFunction
  l0.SCR_Cryptobelisk_Out = DummyFunction
  l0.AmbianceVid_Out = DummyFunction
  l0.DedSecClueLoopStopOut = DummyFunction
  self.box_CLOController_7 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_7
  l0._graph = self
  l0._name = "box_CLOController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|889187134"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_7_OnUserInPlace
  self.box_PhoneCommunicationController_297 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_297
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_297"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|902574533"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_297_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Interact_Gameplay_120 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_120
  l0._graph = self
  l0._name = "box_Interact_Gameplay_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|914866896"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_120_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_120_Interacted
  self.box_Perk_Controller_310 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_310
  l0._graph = self
  l0._name = "box_Perk_Controller_310"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|939277753"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = self.f_box_Perk_Controller_310_PerkListRemoved
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self.box_PlayDialog_v2_379 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_379
  l0._graph = self
  l0._name = "box_PlayDialog_v2_379"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|960902977"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_379_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_590 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_590
  l0._graph = self
  l0._name = "box_PlayDialog_v2_590"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|991838675"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_590_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_493 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_493
  l0._graph = self
  l0._name = "box_MultipleOR_493"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1006839818"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_493_Out
  self.box_Perk_Controller_488 = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self.box_Perk_Controller_488
  l0._graph = self
  l0._name = "box_Perk_Controller_488"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1008507518"
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_box_Perk_Controller_488_PerkReseted
  self.box_CLOController_549 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_549
  l0._graph = self
  l0._name = "box_CLOController_549"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1016610554"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_549_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_549_OnUserInPlace
  self.box_MultipleOR_227 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_227
  l0._graph = self
  l0._name = "box_MultipleOR_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1021450740"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_227_Out
  self.box_Mission_End_41 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_41
  l0._graph = self
  l0._name = "box_Mission_End_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1035514104"
  self.box_SetBoolean_v2_593 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_593
  l0._graph = self
  l0._name = "box_SetBoolean_v2_593"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1039971076"
  l0.Out = self.f_box_SetBoolean_v2_593_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_593_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_593_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_593_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_593_SetFromBool
  self.box_CLOController_547 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_547
  l0._graph = self
  l0._name = "box_CLOController_547"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1043492976"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_547_OnUserInPlace
  self.box_Timer_v2_252 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_252
  l0._graph = self
  l0._name = "box_Timer_v2_252"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1063528566"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_252_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_337 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_337
  l0._graph = self
  l0._name = "box_OnceOnly_v3_337"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1064344308"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_337_Out
  l0.ResetOut = DummyFunction
  self.box_PlayDialog_v2_583 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_583
  l0._graph = self
  l0._name = "box_PlayDialog_v2_583"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1069188007"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_583_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_403 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_403
  l0._graph = self
  l0._name = "box_PlaySequence_v5_403"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1082410008"
  l0.Started = self.f_box_PlaySequence_v5_403_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_Interact_Gameplay_121 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_121
  l0._graph = self
  l0._name = "box_Interact_Gameplay_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1083991035"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Interact_Gameplay_121_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_121_Interacted
  self.box_MissionCheckpointReach_77 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_77
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1095531066"
  l0.Out = self.f_box_MissionCheckpointReach_77_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hackable_Monitor_587 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_587
  l0._graph = self
  l0._name = "box_Hackable_Monitor_587"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1097091362"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_587_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_587_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_SetBoolean_v2_162 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_162
  l0._graph = self
  l0._name = "box_SetBoolean_v2_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1123600267"
  l0.Out = self.f_box_SetBoolean_v2_162_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_162_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_162_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_162_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_162_SetFromBool
  self.box_Hackable_Monitor_588 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_588
  l0._graph = self
  l0._name = "box_Hackable_Monitor_588"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1136511776"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_588_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_588_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hack_Gameplay_127 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_127
  l0._graph = self
  l0._name = "box_Hack_Gameplay_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1149139354"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Hack_Gameplay_127_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_127_Hacked
  self.box_PlayDialog_v2_456 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_456
  l0._graph = self
  l0._name = "box_PlayDialog_v2_456"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1160321495"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_456_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_608 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_608
  l0._graph = self
  l0._name = "box_PlaySound_v2_608"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1173313267"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_136 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_136
  l0._graph = self
  l0._name = "box_CLOController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1173729021"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_136_OnUserInPlace
  self.box_Multiple_AND_51 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_51
  l0._graph = self
  l0._name = "box_Multiple_AND_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1196910876"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_51_Out
  self.box_ListWriter_13 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_13
  l0._graph = self
  l0._name = "box_ListWriter_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1213556595"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_13_Added
  l0.Removed = self.f_box_ListWriter_13_Removed
  l0.Out = self.f_box_ListWriter_13_Out
  self.box_MissionMessageController_v3_28 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_28
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1218900851"
  l0.Out = self.f_box_MissionMessageController_v3_28_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_349 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_349
  l0._graph = self
  l0._name = "box_Timer_v2_349"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1226120676"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_349_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_S07_M030_CIN_TripToNowhere_Main_42 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_triptonowhere.S07_M030_CIN_TripToNowhere_Main.debug.lua")
  l0 = self.box_S07_M030_CIN_TripToNowhere_Main_42
  l0._graph = self
  l0._name = "box_S07_M030_CIN_TripToNowhere_Main_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1227361435"
  l0.Out = self.f_box_S07_M030_CIN_TripToNowhere_Main_42_Out
  self.box_CLOController_93 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_93
  l0._graph = self
  l0._name = "box_CLOController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1235999061"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_93_OnUserInPlace
  self.box_S07_M030_SCR_GroupPhoto_Main_29 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_scr_groupphoto.S07_M030_SCR_GroupPhoto_Main.debug.lua")
  l0 = self.box_S07_M030_SCR_GroupPhoto_Main_29
  l0._graph = self
  l0._name = "box_S07_M030_SCR_GroupPhoto_Main_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1253218394"
  l0.Out = self.f_box_S07_M030_SCR_GroupPhoto_Main_29_Out
  self.box_Interact_Gameplay_128 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_128
  l0._graph = self
  l0._name = "box_Interact_Gameplay_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1288046112"
  l0.Started = self.f_box_Interact_Gameplay_128_Started
  l0.Stopped = self.f_box_Interact_Gameplay_128_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_128_Interacted
  self.box_TriggerMonitor_v2_286 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_286
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_286"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1288346525"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_286_Disabled
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_286_Leave
  l0.Use = DummyFunction
  self.box_Timer_v2_259 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_259
  l0._graph = self
  l0._name = "box_Timer_v2_259"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1290175630"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_259_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_43 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_43
  l0._graph = self
  l0._name = "box_PlaySound_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1305079534"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_477 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_477
  l0._graph = self
  l0._name = "box_HackableController_v2_477"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1310316806"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_477_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_384 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_384
  l0._graph = self
  l0._name = "box_Timer_v2_384"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1336979039"
  l0.Out = DummyFunction
  l0.Started = self.f_box_Timer_v2_384_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_384_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_533 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_533
  l0._graph = self
  l0._name = "box_PlayDialog_v2_533"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1356617069"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_533_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_463 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_463
  l0._graph = self
  l0._name = "box_Timer_v2_463"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1358252187"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_463_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_326 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_326
  l0._graph = self
  l0._name = "box_CinematicPrep_326"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1369629070"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_326_PostOut
  self.box_PlayDialog_v2_254 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_254
  l0._graph = self
  l0._name = "box_PlayDialog_v2_254"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1392514722"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_254_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Hackable_Monitor_15 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_15
  l0._graph = self
  l0._name = "box_Hackable_Monitor_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1420313438"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_15_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionLayer_v2_557 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_557
  l0._graph = self
  l0._name = "box_MissionLayer_v2_557"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1451847385"
  l0.Loaded = self.f_box_MissionLayer_v2_557_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_389 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_389
  l0._graph = self
  l0._name = "box_HackableController_v2_389"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1453385063"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_389_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_389_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_39 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_39
  l0._graph = self
  l0._name = "box_Hackable_Monitor_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1457818694"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_39_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_194 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_194
  l0._graph = self
  l0._name = "box_CLOController_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1462434974"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MultipleOR_314 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_314
  l0._graph = self
  l0._name = "box_MultipleOR_314"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1463746548"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_314_Out
  self.box_Timer_v2_65 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_65
  l0._graph = self
  l0._name = "box_Timer_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1477964666"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_65_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_46 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_46
  l0._graph = self
  l0._name = "box_PlaySound_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1479004584"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_352 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_352
  l0._graph = self
  l0._name = "box_PlayDialog_v2_352"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1500051228"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_352_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_345 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_345
  l0._graph = self
  l0._name = "box_PlayDialog_v2_345"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1509088477"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_345_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1525753737"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_Teleport_To_SpawnPoint_518 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_518
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_518"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1532685386"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_518_TeleportDone
  self.box_Hackable_Monitor_339 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_339
  l0._graph = self
  l0._name = "box_Hackable_Monitor_339"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1562498487"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_339_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_339_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionCheckpointReach_85 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_85
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1562688234"
  l0.Out = self.f_box_MissionCheckpointReach_85_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_294 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_294
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_294"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1562883260"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_294_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_S07_M030_CIN_YouAreNotAlone_Main_55 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07_M030_CIN_YouAreNotAlone.S07_M030_CIN_YouAreNotAlone_Main.debug.lua")
  l0 = self.box_S07_M030_CIN_YouAreNotAlone_Main_55
  l0._graph = self
  l0._name = "box_S07_M030_CIN_YouAreNotAlone_Main_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1594258149"
  l0.Out = self.f_box_S07_M030_CIN_YouAreNotAlone_Main_55_Out
  self.box_PlaySound_v2_500 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_500
  l0._graph = self
  l0._name = "box_PlaySound_v2_500"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1614266529"
  l0.Out = self.f_box_PlaySound_v2_500_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_237 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_237
  l0._graph = self
  l0._name = "box_Timer_v2_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1622935710"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_237_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_48 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_48
  l0._graph = self
  l0._name = "box_Hackable_Monitor_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1633176836"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_48_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlayDialog_v2_378 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_378
  l0._graph = self
  l0._name = "box_PlayDialog_v2_378"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1657222159"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_378_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Camera_Lock_Controller_545 = cbox:CreateBox("domino/System/CameraLockController.lua")
  l0 = self.box_Camera_Lock_Controller_545
  l0._graph = self
  l0._name = "box_Camera_Lock_Controller_545"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1664281292"
  l0.Started = self.f_box_Camera_Lock_Controller_545_Started
  l0.Stopped = DummyFunction
  l0.Finished = self.f_box_Camera_Lock_Controller_545_Finished
  l0.Out = DummyFunction
  self.box_S07_M030_CIN_BurningManTickets_Main_50 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/s07_m030_cin_burningmantickets.S07_M030_CIN_BurningManTickets_Main.debug.lua")
  l0 = self.box_S07_M030_CIN_BurningManTickets_Main_50
  l0._graph = self
  l0._name = "box_S07_M030_CIN_BurningManTickets_Main_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1666268665"
  l0.Out = self.f_box_S07_M030_CIN_BurningManTickets_Main_50_Out
  self.box_TimerToScreen_385 = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self.box_TimerToScreen_385
  l0._graph = self
  l0._name = "box_TimerToScreen_385"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1674960054"
  l0.Started = self.f_box_TimerToScreen_385_Started
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = self.f_box_TimerToScreen_385_Stopped
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = DummyFunction
  self.box_PlaySound_v2_336 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_336
  l0._graph = self
  l0._name = "box_PlaySound_v2_336"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1675016197"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_460 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_460
  l0._graph = self
  l0._name = "box_PlaySound_v2_460"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1683358370"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_150 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_150
  l0._graph = self
  l0._name = "box_CLOController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1685419877"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_150_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_150_OnUserInPlace
  self.box_RewardController_v3_312 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_312
  l0._graph = self
  l0._name = "box_RewardController_v3_312"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1705821117"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_312_RewardsExecuted
  self.box_Hack_Gameplay_516 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_516
  l0._graph = self
  l0._name = "box_Hack_Gameplay_516"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1715773655"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Hack_Gameplay_516_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_516_Hacked
  self.box_Hackable_Monitor_544 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_544
  l0._graph = self
  l0._name = "box_Hackable_Monitor_544"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1750603778"
  l0.Enabled = self.f_box_Hackable_Monitor_544_Enabled
  l0.Disabled = self.f_box_Hackable_Monitor_544_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_544_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_17 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_17
  l0._graph = self
  l0._name = "box_Hackable_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1754121815"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_17_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionLayer_v2_497 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_497
  l0._graph = self
  l0._name = "box_MissionLayer_v2_497"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1763409584"
  l0.Loaded = self.f_box_MissionLayer_v2_497_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_235 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_235
  l0._graph = self
  l0._name = "box_CLOController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1786495270"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_235_OnUserInPlace
  self.box_CLOController_198 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_198
  l0._graph = self
  l0._name = "box_CLOController_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1805718797"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_581 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_581
  l0._graph = self
  l0._name = "box_Timer_v2_581"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1822031925"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_581_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Loading_Screen_Monitor_v2_466 = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self.box_Loading_Screen_Monitor_v2_466
  l0._graph = self
  l0._name = "box_Loading_Screen_Monitor_v2_466"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1833246980"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Loading_Screen_Monitor_v2_466_Disabled
  l0.LoadingScreenEnded = self.f_box_Loading_Screen_Monitor_v2_466_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self.box_PlaySound_v2_464 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_464
  l0._graph = self
  l0._name = "box_PlaySound_v2_464"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1844374860"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_5 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_5
  l0._graph = self
  l0._name = "box_Hackable_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1852200908"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_5_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_122 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_122
  l0._graph = self
  l0._name = "box_CLOController_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1872425038"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_122_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_122_OnUserInPlace
  self.box_PlayDialog_v2_253 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_253
  l0._graph = self
  l0._name = "box_PlayDialog_v2_253"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1875213186"
  l0.Started = self.f_box_PlayDialog_v2_253_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_299 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_299
  l0._graph = self
  l0._name = "box_MultipleOR_299"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1880650363"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_299_Out
  self.box_Hackable_Monitor_529 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_529
  l0._graph = self
  l0._name = "box_Hackable_Monitor_529"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1904395302"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_529_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_529_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_614 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_614
  l0._graph = self
  l0._name = "box_Timer_v2_614"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1934222721"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_614_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_TriggerMonitor_v2_300 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_300
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_300"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1940742963"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_300_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_300_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_147 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_147
  l0._graph = self
  l0._name = "box_CLOController_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1941361145"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_147_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_147_OnUserInPlace
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1959397204"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_578 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_578
  l0._graph = self
  l0._name = "box_PlayDialog_v2_578"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1964732573"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_251 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_251
  l0._graph = self
  l0._name = "box_Timer_v2_251"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1965203637"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_251_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_550 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_550
  l0._graph = self
  l0._name = "box_CLOController_550"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1965426655"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_550_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_550_OnUserInPlace
  self.box_PhoneCommunicationController_292 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_292
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_292"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1968821780"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_292_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Loading_Screen_Monitor_v2_25 = cbox:CreateBox("domino/System/LoadingScreenMonitor_v2.lua")
  l0 = self.box_Loading_Screen_Monitor_v2_25
  l0._graph = self
  l0._name = "box_Loading_Screen_Monitor_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1984250765"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Loading_Screen_Monitor_v2_25_Disabled
  l0.LoadingScreenEnded = self.f_box_Loading_Screen_Monitor_v2_25_LoadingScreenEnded
  l0.LoadingScreenStarted = DummyFunction
  self.box_Timer_v2_454 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_454
  l0._graph = self
  l0._name = "box_Timer_v2_454"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1997908879"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_454_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_311 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_311
  l0._graph = self
  l0._name = "box_PlaySound_v2_311"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2009751691"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_269 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_269
  l0._graph = self
  l0._name = "box_RewardController_v3_269"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2045735598"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_269_RewardsExecuted
  self.box_MultipleOR_527 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_527
  l0._graph = self
  l0._name = "box_MultipleOR_527"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2048330468"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_527_Out
  self.box_HackableController_v2_475 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_475
  l0._graph = self
  l0._name = "box_HackableController_v2_475"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2049090439"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_475_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_47 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_47
  l0._graph = self
  l0._name = "box_Timer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2084381246"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_149 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_149
  l0._graph = self
  l0._name = "box_CLOController_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2098048472"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_149_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_149_OnUserInPlace
  self.box_MissionMessageController_v3_453 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_453
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_453"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2101648024"
  l0.Out = self.f_box_MissionMessageController_v3_453_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_548 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_548
  l0._graph = self
  l0._name = "box_CLOController_548"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2104604725"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_548_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_548_OnUserInPlace
  self.box_PlaySound_v2_606 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_606
  l0._graph = self
  l0._name = "box_PlaySound_v2_606"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2110677306"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_609 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_609
  l0._graph = self
  l0._name = "box_PlaySound_v2_609"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2116373197"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_309 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_309
  l0._graph = self
  l0._name = "box_MultipleOR_309"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2117231011"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_309_Out
  self.box_MultipleOR_247 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_247
  l0._graph = self
  l0._name = "box_MultipleOR_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2131680570"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_247_Out
  self.box_Timer_v2_364 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_364
  l0._graph = self
  l0._name = "box_Timer_v2_364"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2138903050"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_364_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = self.box_MissionLayer_v2_497
  l0.LayerName = "S07M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|855540066", "855540066", "S07M030_Main", "CheckPoint_0", "box_MissionLayer_v2_497.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_56
  l0.LayerName = "S07M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|867879079", "867879079", "S07M030_Main", "CheckPoint_1", "box_MissionLayer_v2_56.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_557
  l0.LayerName = "S07M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1075256146", "1075256146", "S07M030_Main", "CheckPoint_2", "box_MissionLayer_v2_557.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_41()
  l0 = self.box_Mission_End_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|525454602", "525454602", "S07M030_Main", "CheckPoint_3", "box_Mission_End_41.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_71
  l0.LayerName = "S07M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|360777402", "360777402", "S07M030_Main", "In", "box_MissionLayer_v2_71.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_71_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|396848277"
  l0.Out = self.f_box_Get_Player_ID_14_Out
  l0 = self.box_MissionLayer_v2_71
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1739321715", "1739321715", "S07M030_Main", "box_MissionLayer_v2_71.Loaded", "box_Get_Player_ID_14.In", l0, l1)
  l1:In()
end
function export:f_box_S07_M030_CIN_WrongIntentions_Main_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_602
  l0.LMALayerName = "OAK_05_BurningMan_LMA"
  l0 = self.box_S07_M030_CIN_WrongIntentions_Main_22
  l1 = self.box_LMA_Layer_Controller_602
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|76646028", "76646028", "S07M030_Main", "box_S07_M030_CIN_WrongIntentions_Main_22.Out", "box_LMA_Layer_Controller_602.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Vehicle_Controller_238_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_473
  l0.HackableEntity = self.Bike01
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1673647449", "1673647449", "S07M030_Main", "box_Vehicle_Controller_238.Unusable", "box_HackableController_v2_473.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Hackable_Monitor_45_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_46
  l0.SoundId = "soundbinary/1584707327.bnk"
  l0 = self.box_Hackable_Monitor_45
  l1 = self.box_PlaySound_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|901607454", "901607454", "S07M030_Main", "box_Hackable_Monitor_45.HackSuccess", "box_PlaySound_v2_46.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_231_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_231
  self.Bike01 = l0.UserID
  l0 = self.box_CLOController_235
  l0.CLO = "9223372059384608603"
  l0 = self.box_CLOController_231
  l1 = self.box_CLOController_235
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|226490010", "226490010", "S07M030_Main", "box_CLOController_231.OnUserInPlace", "box_CLOController_235.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_EnvironmentWeatherOverride_63_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1828815142"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_66_Unlocked
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1863211554", "1863211554", "S07M030_Main", "box_EnvironmentWeatherOverride_63.Stopped", "box_TimeScale_Controller_66.Unlock", clone, l0)
  l0:Unlock()
end
function export:f_box_VrNodeController_501_NodeRotated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VrNodeController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SpinningNode
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_592"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1290002974"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_592_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1095629488", "1095629488", "S07M030_Main", "box_VrNodeController_501.NodeRotated", "box_Compare_Boolean_v2_592.In", clone, l0)
  l0:In()
end
function export:f_box_InventoryController_v2_521_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Perk_Controller_310
  l0.PerkListDB = "PerksList.9223372066516437560"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2023930747", "2023930747", "S07M030_Main", "box_InventoryController_v2_521.Switched", "box_Perk_Controller_310.RemovePerk", clone, l0)
  l0:RemovePerk()
end
function export:f_box_CLOController_135_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_135
  self.SitaraTalkerClue = l0.UserID
  l0 = self.box_CLOController_136
  l0.CLO = "9223372050330162096"
  l0 = self.box_CLOController_135
  l1 = self.box_CLOController_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|736671034", "736671034", "S07M030_Main", "box_CLOController_135.OnUserInPlace", "box_CLOController_136.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMessageController_v3_479_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_544()
  l0 = self.box_MissionMessageController_v3_479
  l1 = self.box_Hackable_Monitor_544
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1936135167", "1936135167", "S07M030_Main", "box_MissionMessageController_v3_479.Out", "box_Hackable_Monitor_544.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_4_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptController_616()
  l0 = self.box_Interact_Gameplay_4
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1362317667", "1362317667", "S07M030_Main", "box_Interact_Gameplay_4.Interacted", "box_InteractionScriptController_616.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Interact_Gameplay_4_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_126
  l0.User = self.Wrench
  l0 = self.box_Interact_Gameplay_4
  l1 = self.box_CLOController_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|996799534", "996799534", "S07M030_Main", "box_Interact_Gameplay_4.Stopped", "box_CLOController_126.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Camera_Lock_Controller_520_Finished()
  local l0
  self = self._graph
  self:OnEnter_box_Camera_Lock_Controller_520()
  l0 = self.box_Camera_Lock_Controller_520
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|484881111", "484881111", "S07M030_Main", "box_Camera_Lock_Controller_520.Finished", "box_Camera_Lock_Controller_520.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Camera_Lock_Controller_520_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_330"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1445320310"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_330_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_Camera_Lock_Controller_520
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1282790227", "1282790227", "S07M030_Main", "box_Camera_Lock_Controller_520.Stopped", "box_Show_Or_Hide_All_UI_330.Show", l0, l1)
  l1:Show()
end
function export:f_box_Flying_Drone_Controller_107_Disconnected()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Camera_Lock_Controller_3()
  l0 = self.box_Camera_Lock_Controller_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|302884938", "302884938", "S07M030_Main", "box_Flying_Drone_Controller_107.Disconnected", "box_Camera_Lock_Controller_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_470_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_475
  l0.HackableEntity = self.Bike03
  l0 = self.box_HackableController_v2_470
  l1 = self.box_HackableController_v2_475
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1070127154", "1070127154", "S07M030_Main", "box_HackableController_v2_470.ProfilingDisabled", "box_HackableController_v2_475.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_CLOController_519_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_519
  self.Prime8_02 = l0.UserID
  l0 = self.box_CLOController_547
  l0.CLO = "9223372055352992434"
  l0 = self.box_CLOController_519
  l1 = self.box_CLOController_547
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|680262614", "680262614", "S07M030_Main", "box_CLOController_519.OnUserInPlace", "box_CLOController_547.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_558_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1548243959"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_49_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_49_Out_1
  l0 = self.box_MultipleOR_558
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1456166498", "1456166498", "S07M030_Main", "box_MultipleOR_558.Out", "box_Ordered_Output_49.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_264_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254130149"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1703228841"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|286296584", "286296584", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_69.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129851"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|731247293"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|281272582", "281272582", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_188.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053455002"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2079839280"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|770279696", "770279696", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_154.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254131347"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|538689023"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|497291574", "497291574", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_152.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254131349"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_320"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|664265300"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|140895681", "140895681", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_320.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757697"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1421233806"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|501942190", "501942190", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_109.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757687"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1141247931"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|864370763", "864370763", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_113.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757685"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|962056513"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|30024438", "30024438", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_116.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757699"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1514419834"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1589227909", "1589227909", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_131.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757693"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|345678325"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|553427964", "553427964", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_130.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757695"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1763654680"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|664766386", "664766386", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_123.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757732"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|362430758"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1858416100", "1858416100", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_105.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757668"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|687431705"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1688596907", "1688596907", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_110.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_264_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758925"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2017379570"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1756642", "1756642", "S07M030_Main", "box_Ordered_Output_264.Out", "box_ProfilingPathController_v2_102.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_CLOController_388_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_388
  self.ToyCarJosh = l0.UserID
  self:OnEnter_box_HackableController_v2_389()
  l1 = self.box_HackableController_v2_389
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|394719540", "394719540", "S07M030_Main", "box_CLOController_388.OnUserInPlace", "box_HackableController_v2_389.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Josh = l0.UserID
  l0 = self.box_CLOController_10
  l0.CLO = "9223372048667187329"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_9
  l1 = self.box_CLOController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2064063115", "2064063115", "S07M030_Main", "box_CLOController_9.OnUserInPlace", "box_CLOController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_134_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_134
  self.WrenchTalkerClue = l0.UserID
  l0 = self.box_CLOController_135
  l0.CLO = "9223372050330162098"
  l0 = self.box_CLOController_134
  l1 = self.box_CLOController_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1444438818", "1444438818", "S07M030_Main", "box_CLOController_134.OnUserInPlace", "box_CLOController_135.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_279_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_279
  l1 = self.box_OnceOnly_v3_304
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|577065689", "577065689", "S07M030_Main", "box_Hackable_Monitor_279.Disabled", "box_OnceOnly_v3_304.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_279_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_279()
  l0 = self.box_Hackable_Monitor_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|746189828", "746189828", "S07M030_Main", "box_Hackable_Monitor_279.HackSuccess", "box_Hackable_Monitor_279.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_133_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_133
  self.JoshTalkerClue = l0.UserID
  l0 = self.box_CLOController_134
  l0.CLO = "9223372050330162099"
  l0 = self.box_CLOController_133
  l1 = self.box_CLOController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|491663138", "491663138", "S07M030_Main", "box_CLOController_133.OnUserInPlace", "box_CLOController_134.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_TimeScale_Controller_60_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_496
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1154928424", "1154928424", "S07M030_Main", "box_TimeScale_Controller_60.Locked", "box_MissionCheckpointReach_496.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_125_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_125
  self.Horatio = l0.UserID
end
function export:f_box_CLOController_125_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_122
  l0.User = self.Sitara
  l0 = self.box_CLOController_125
  l1 = self.box_CLOController_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|48998281", "48998281", "S07M030_Main", "box_CLOController_125.UnspawnedUser", "box_CLOController_122.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Network_Surfing_Controller_316_Deactivated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_404"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2092156406"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_404_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_404_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_404_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_404_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_404_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_404_Out_5
  l0 = self.box_Network_Surfing_Controller_316
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|443726434", "443726434", "S07M030_Main", "box_Network_Surfing_Controller_316.Deactivated", "box_Ordered_Output_404.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_377_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1859368006"
  l0.Out = self.f_box_Simple_Node_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|915627509", "915627509", "S07M030_Main", "box_Simple_Node_377.Out", "box_Simple_Node_1.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_313_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_364
  l0.Seconds = 1
  l0 = self.box_PlaySound_v2_313
  l1 = self.box_Timer_v2_364
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1352867740", "1352867740", "S07M030_Main", "box_PlaySound_v2_313.Out", "box_Timer_v2_364.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_126_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_126
  self.Wrench = l0.UserID
end
function export:f_box_CLOController_126_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_124
  l0.User = self.Josh
  l0 = self.box_CLOController_126
  l1 = self.box_CLOController_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|820584462", "820584462", "S07M030_Main", "box_CLOController_126.UnspawnedUser", "box_CLOController_124.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_Ordered_Output_62_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_463
  l0.Seconds = 24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|930004462", "930004462", "S07M030_Main", "box_Ordered_Output_62.Out", "box_Timer_v2_463.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_62_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_65
  l0.Seconds = 23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1703635976", "1703635976", "S07M030_Main", "box_Ordered_Output_62.Out", "box_Timer_v2_65.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_146_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_150
  l0.CLO = "9223372050330162096"
  l0 = self.box_CLOController_146
  l1 = self.box_CLOController_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1559430132", "1559430132", "S07M030_Main", "box_CLOController_146.Deactivated", "box_CLOController_150.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_146_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_146
  self.SitaraTalkerClue = l0.UserID
end
function export:f_box_RandomOutput_v2_291_Output_0()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_297
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372059403888874"
  l0 = self.box_RandomOutput_v2_291
  l1 = self.box_PhoneCommunicationController_297
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1602449595", "1602449595", "S07M030_Main", "box_RandomOutput_v2_291.Output", "box_PhoneCommunicationController_297.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RandomOutput_v2_291_Output_1()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_292
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372059403888875"
  l0 = self.box_RandomOutput_v2_291
  l1 = self.box_PhoneCommunicationController_292
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1253144635", "1253144635", "S07M030_Main", "box_RandomOutput_v2_291.Output", "box_PhoneCommunicationController_292.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RandomOutput_v2_291_Output_2()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_293
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372059403888876"
  l0 = self.box_RandomOutput_v2_291
  l1 = self.box_PhoneCommunicationController_293
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1376597992", "1376597992", "S07M030_Main", "box_RandomOutput_v2_291.Output", "box_PhoneCommunicationController_293.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_RandomOutput_v2_291_Output_3()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_294
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372059403888877"
  l0 = self.box_RandomOutput_v2_291
  l1 = self.box_PhoneCommunicationController_294
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|914896357", "914896357", "S07M030_Main", "box_RandomOutput_v2_291.Output", "box_PhoneCommunicationController_294.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_228_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_64
  l0.Entity = "9223372066892094830"
  l0.SoundId = "soundbinary/1392305097.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2120311305", "2120311305", "S07M030_Main", "box_Ordered_Output_228.Out", "box_PlayDialog_v2_64.Start", clone, l0)
  l0:Start()
end
function export:f_box_Vehicle_Controller_234_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Bike02
  l0._graph = self
  l0._name = "box_Vehicle_Controller_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1032003580"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_226_Unusable
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1310842417", "1310842417", "S07M030_Main", "box_Vehicle_Controller_234.Unusable", "box_Vehicle_Controller_226.SetAsUnusable", clone, l0)
  l0:SetAsUnusable()
end
function export:f_box_CinematicPrep_84_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_28
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M030.Objectives.Objective010",
    item = "Objective",
    id = "343177"
  }
  l0 = self.box_CinematicPrep_84
  l1 = self.box_MissionMessageController_v3_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1315755099", "1315755099", "S07M030_Main", "box_CinematicPrep_84.PostOut", "box_MissionMessageController_v3_28.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_304_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_285"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1660970428"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_285_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_285_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_285_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_285_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_285_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_285_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_285_Out_6
  l0 = self.box_OnceOnly_v3_304
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1562170850", "1562170850", "S07M030_Main", "box_OnceOnly_v3_304.Out", "box_Ordered_Output_285.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_190_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_191
  l0.SoundId = "soundbinary/2955106561.bnk"
  l0 = self.box_PlayDialog_v2_190
  l1 = self.box_PlayDialog_v2_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1481592809", "1481592809", "S07M030_Main", "box_PlayDialog_v2_190.Finished", "box_PlayDialog_v2_191.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.Wrench = l0.UserID
  l0 = self.box_CLOController_9
  l0.CLO = "9223372048667187327"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_11
  l1 = self.box_CLOController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1881815363", "1881815363", "S07M030_Main", "box_CLOController_11.OnUserInPlace", "box_CLOController_9.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetActionMap_v2_491_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1577254279"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_86_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_86_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_86_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_86_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_86_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_86_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_86_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_86_Out_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|800172044", "800172044", "S07M030_Main", "box_SetActionMap_v2_491.Pushed", "box_Ordered_Output_86.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_493()
  l0 = self.box_MultipleOR_493
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2026180545", "2026180545", "S07M030_Main", "box_Get_Player_ID_14.Out", "box_MultipleOR_493.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Perk_Controller_298_PerkListRemoved()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_298
  l1 = self.box_SetBoolean_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|473073256", "473073256", "S07M030_Main", "box_Perk_Controller_298.PerkListRemoved", "box_SetBoolean_v2_115.False", l0, l1)
  l1:False()
end
function export:f_box_MaterialController_468_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162902"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_332"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|703169554"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_332_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1368415276", "1368415276", "S07M030_Main", "box_MaterialController_468.ByIndexSet", "box_Dynamic_Media_Controller_332.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_SetBoolean_v2_595_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_595
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_595_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_595
  self.SpinningNode = l0.Target
  self:OnEnter_box_Timer_v2_503()
  l1 = self.box_Timer_v2_503
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|447179826", "447179826", "S07M030_Main", "box_SetBoolean_v2_595.SetFalse", "box_Timer_v2_503.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_SetBoolean_v2_595_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_595
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_595_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_595
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_595_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_595
  self.SpinningNode = l0.Target
end
function export:f_box_Ordered_Output_471_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_377"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|326779788"
  l0.Out = self.f_box_Simple_Node_377_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1306582885", "1306582885", "S07M030_Main", "box_Ordered_Output_471.Out", "box_Simple_Node_377.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_471_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057010350669"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = nil
  l0.SandstormTransitionDuration = nil
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|67101635"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_EnvironmentWeatherOverride_63_Stopped
  l0.SandstormIntensitySet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1188205841", "1188205841", "S07M030_Main", "box_Ordered_Output_471.Out", "box_EnvironmentWeatherOverride_63.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_PlaySound_v2_607_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_608
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/121608939.bnk"
  l0 = self.box_PlaySound_v2_607
  l1 = self.box_PlaySound_v2_608
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|795688219", "795688219", "S07M030_Main", "box_PlaySound_v2_607.Out", "box_PlaySound_v2_608.Play", l0, l1)
  l1:Play()
end
function export:f_box_InteractionScriptMonitor_v2_59_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|345957298"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_62_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_62_Out_1
  l0 = self.box_InteractionScriptMonitor_v2_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2064019216", "2064019216", "S07M030_Main", "box_InteractionScriptMonitor_v2_59.Disabled", "box_Ordered_Output_62.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_59_InteractionFailed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_61()
  l0 = self.box_InteractionScriptMonitor_v2_59
  l1 = self.box_Timer_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2020607286", "2020607286", "S07M030_Main", "box_InteractionScriptMonitor_v2_59.InteractionFailed", "box_Timer_v2_61.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_InteractionScriptMonitor_v2_59_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_61()
  l0 = self.box_InteractionScriptMonitor_v2_59
  l1 = self.box_Timer_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1749302589", "1749302589", "S07M030_Main", "box_InteractionScriptMonitor_v2_59.InteractionStarted", "box_Timer_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_476_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_84
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_476
  l1 = self.box_CinematicPrep_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1454448575", "1454448575", "S07M030_Main", "box_HackableController_v2_476.ProfilingDisabled", "box_CinematicPrep_84.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionLayer_v2_56_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|998331889"
  l0.Out = self.f_box_Get_Player_ID_246_Out
  l0 = self.box_MissionLayer_v2_56
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|891967894", "891967894", "S07M030_Main", "box_MissionLayer_v2_56.Loaded", "box_Get_Player_ID_246.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_457_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056574882560"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_315"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|780430491"
  l0.Out = self.f_box_Trigger_Controller_315_Out
  l0.Enabled = self.f_box_Trigger_Controller_315_Enabled
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_Timer_v2_457
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|874093517", "874093517", "S07M030_Main", "box_Timer_v2_457.Out", "box_Trigger_Controller_315.SetEnabled", l0, l1)
  l1:SetEnabled()
end
function export:f_box_Timer_v2_457_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_456
  l0.SoundId = "soundbinary/3588065081.bnk"
  l0 = self.box_Timer_v2_457
  l1 = self.box_PlayDialog_v2_456
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|60703153", "60703153", "S07M030_Main", "box_Timer_v2_457.TimeElapsed", "box_PlayDialog_v2_456.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_34_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1421316925"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_InteractionScriptMonitor_v2_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1846891192", "1846891192", "S07M030_Main", "box_InteractionScriptMonitor_v2_34.Disabled", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_34_InteractionStarted()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_34()
  l0 = self.box_InteractionScriptMonitor_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1498644485", "1498644485", "S07M030_Main", "box_InteractionScriptMonitor_v2_34.InteractionStarted", "box_InteractionScriptMonitor_v2_34.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_OnceOnly_v3_308_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_290"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1122566763"
  l0._DynamicAnchors = {Out = 24}
  l0.Out[0] = self.f_box_Ordered_Output_290_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_290_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_290_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_290_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_290_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_290_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_290_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_290_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_290_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_290_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_290_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_290_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_290_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_290_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_290_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_290_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_290_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_290_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_290_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_290_Out_19
  l0.Out[20] = self.f_box_Ordered_Output_290_Out_20
  l0.Out[21] = self.f_box_Ordered_Output_290_Out_21
  l0.Out[22] = self.f_box_Ordered_Output_290_Out_22
  l0.Out[23] = self.f_box_Ordered_Output_290_Out_23
  l0 = self.box_OnceOnly_v3_308
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1006961570", "1006961570", "S07M030_Main", "box_OnceOnly_v3_308.Out", "box_Ordered_Output_290.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_245_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057414961956"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_249"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|461759604"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1740631772", "1740631772", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_249.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_245_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129855"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_250"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|94503337"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|942445735", "942445735", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_250.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_245_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057414961954"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1812000553"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|278735017", "278735017", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_244.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_245_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757681"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|704783524"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|277514379", "277514379", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_242.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_245_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757671"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1727795780"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|62342592", "62342592", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_243.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_245_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757691"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|451759441"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1880024565", "1880024565", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_240.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_245_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757675"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2100020436"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2080593019", "2080593019", "S07M030_Main", "box_Ordered_Output_245.Out", "box_ProfilingPathController_v2_248.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Hackable_Monitor_585_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_586()
  l0 = self.box_Hackable_Monitor_585
  l1 = self.box_Multiple_AND_586
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2047532848", "2047532848", "S07M030_Main", "box_Hackable_Monitor_585.Disabled", "box_Multiple_AND_586.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Hackable_Monitor_585_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_585()
  l0 = self.box_Hackable_Monitor_585
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|165321218", "165321218", "S07M030_Main", "box_Hackable_Monitor_585.HackSuccess", "box_Hackable_Monitor_585.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_514_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_513()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1721354933", "1721354933", "S07M030_Main", "box_Ordered_Output_514.Out", "box_ParticleFXController_v2_513.Start", clone, l0)
  l0:Start()
end
function export:f_box_InventoryController_v2_383_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_231
  l0.CLO = "9223372059384608585"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2018653483", "2018653483", "S07M030_Main", "box_InventoryController_v2_383.Switched", "box_CLOController_231.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_HackableController_v2_75_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_471"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|457324078"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_471_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_471_Out_1
  l0 = self.box_HackableController_v2_75
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1249627938", "1249627938", "S07M030_Main", "box_HackableController_v2_75.Disabled", "box_Ordered_Output_471.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_580_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Camera_Lock_Controller_520()
  l0 = self.box_Camera_Lock_Controller_520
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1789104391", "1789104391", "S07M030_Main", "box_Ordered_Output_580.Out", "box_Camera_Lock_Controller_520.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_580_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_581
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1542578042", "1542578042", "S07M030_Main", "box_Ordered_Output_580.Out", "box_Timer_v2_581.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_293_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_299()
  l0 = self.box_PhoneCommunicationController_293
  l1 = self.box_MultipleOR_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|455043965", "455043965", "S07M030_Main", "box_PhoneCommunicationController_293.OnCommunicationFinished", "box_MultipleOR_299.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_ClothController_33_Equipped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372053993038730"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_554"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2046808423"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_554_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_ClothController_33
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1438628536", "1438628536", "S07M030_Main", "box_ClothController_33.Equipped", "box_SmartphoneAppController_554.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_Timer_v2_295_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_300()
  l0 = self.box_Timer_v2_295
  l1 = self.box_TriggerMonitor_v2_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|60336714", "60336714", "S07M030_Main", "box_Timer_v2_295.TimeElapsed", "box_TriggerMonitor_v2_300.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_473_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_470
  l0.HackableEntity = self.Bike02
  l0 = self.box_HackableController_v2_473
  l1 = self.box_HackableController_v2_470
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|595301906", "595301906", "S07M030_Main", "box_HackableController_v2_473.ProfilingDisabled", "box_HackableController_v2_470.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_MissionCheckpointReach_496_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_269
  l0.ItemDB = "Items.9223372061930304500"
  l0 = self.box_MissionCheckpointReach_496
  l1 = self.box_RewardController_v3_269
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1663616206", "1663616206", "S07M030_Main", "box_MissionCheckpointReach_496.Out", "box_RewardController_v3_269.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_LMA_Layer_Controller_601_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_601
  l1 = self.box_S07_M030_CIN_TripToNowhere_Main_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1329120022", "1329120022", "S07M030_Main", "box_LMA_Layer_Controller_601.Loaded", "box_S07_M030_CIN_TripToNowhere_Main_42.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_338_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_338
  l1 = self.box_OnceOnly_v3_308
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1328437324", "1328437324", "S07M030_Main", "box_Hackable_Monitor_338.Disabled", "box_OnceOnly_v3_308.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_338_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_338()
  l0 = self.box_Hackable_Monitor_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|361747041", "361747041", "S07M030_Main", "box_Hackable_Monitor_338.HackSuccess", "box_Hackable_Monitor_338.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_582_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_579
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/891127827.bnk"
  l0 = self.box_Timer_v2_582
  l1 = self.box_PlayDialog_v2_579
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|323204829", "323204829", "S07M030_Main", "box_Timer_v2_582.TimeElapsed", "box_PlayDialog_v2_579.Start", l0, l1)
  l1:Start()
end
function export:f_box_ParticleFXController_v2_513_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_513()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|385204678", "385204678", "S07M030_Main", "box_ParticleFXController_v2_513.Stopped", "box_ParticleFXController_v2_513.Clean", clone, l0)
  l0:Clean()
end
function export:f_box_Interact_Gameplay_119_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_119()
  l0 = self.box_Interact_Gameplay_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1960615695", "1960615695", "S07M030_Main", "box_Interact_Gameplay_119.Interacted", "box_Interact_Gameplay_119.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_119_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_Interact_Gameplay_119
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2095076159", "2095076159", "S07M030_Main", "box_Interact_Gameplay_119.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_ClothController_32_Equipped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_383"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|538252064"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_383_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0 = self.box_ClothController_32
  l1 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1292102712", "1292102712", "S07M030_Main", "box_ClothController_32.Equipped", "box_InventoryController_v2_383.SwitchLocalPlayerInventoryToEmpty", l0, l1)
  l1:SwitchLocalPlayerInventoryToEmpty()
end
function export:f_box_Dynamic_Media_Controller_332_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162901"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1230149591"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_36_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|60680172", "60680172", "S07M030_Main", "box_Dynamic_Media_Controller_332.ChannelChanged", "box_Dynamic_Media_Controller_36.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_S07_M030_CIN_TrippingBalls_Main_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_312
  l0.ItemDB = "Items.9223372061930304501"
  l0 = self.box_S07_M030_CIN_TrippingBalls_Main_16
  l1 = self.box_RewardController_v3_312
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|525892167", "525892167", "S07M030_Main", "box_S07_M030_CIN_TrippingBalls_Main_16.Out", "box_RewardController_v3_312.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SetBoolean_v2_115_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.PuzzleDone = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.PuzzleDone = l0.Target
  l0 = self.box_MissionCheckpointReach_85
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_SetBoolean_v2_115
  l1 = self.box_MissionCheckpointReach_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|706290034", "706290034", "S07M030_Main", "box_SetBoolean_v2_115.SetFalse", "box_MissionCheckpointReach_85.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_115_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.PuzzleDone = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.PuzzleDone = l0.Target
end
function export:f_box_SetBoolean_v2_115_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self.PuzzleDone = l0.Target
end
function export:f_box_SetTimeOfDay_555_Out()
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
  l0._name = "box_TimeScale_Controller_613"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1120234721"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_613_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|411408684", "411408684", "S07M030_Main", "box_SetTimeOfDay_555.Out", "box_TimeScale_Controller_613.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_SetTimeOfDay_92_Out()
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
  l0._name = "box_TimeScale_Controller_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1284094908"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_87_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|373560520", "373560520", "S07M030_Main", "box_SetTimeOfDay_92.Out", "box_TimeScale_Controller_87.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_LMA_Layer_Controller_602_Unloaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_591"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1556113162"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_591_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  l0 = self.box_LMA_Layer_Controller_602
  l1 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1185563221", "1185563221", "S07M030_Main", "box_LMA_Layer_Controller_602.Unloaded", "box_InventoryController_v2_591.SwitchLocalPlayerInventoryToNormal", l0, l1)
  l1:SwitchLocalPlayerInventoryToNormal()
end
function export:f_box_Dynamic_Media_Controller_24_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162900"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2107477094"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|24670998", "24670998", "S07M030_Main", "box_Dynamic_Media_Controller_24.ChannelChanged", "box_Dynamic_Media_Controller_27.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_SetBoolean_v2_594_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_594
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_594_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_594
  self.SpinningNode = l0.Target
  l0 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  l0.PlayerPawn = nil
  l0._graph = self
  l0._name = "box_Flying_Drone_Controller_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|152520918"
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = self.f_box_Flying_Drone_Controller_107_Disconnected
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = DummyFunction
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = DummyFunction
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0 = self.box_SetBoolean_v2_594
  l1 = Boxes[PathID("domino/System/FlyingDroneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|519949198", "519949198", "S07M030_Main", "box_SetBoolean_v2_594.SetFalse", "box_Flying_Drone_Controller_107.Disconnect", l0, l1)
  l1:Disconnect()
end
function export:f_box_SetBoolean_v2_594_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_594
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_594_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_594
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_594_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_594
  self.SpinningNode = l0.Target
end
function export:f_box_S07_M030_CIN_TBoneReturns_Main_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_515"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2027432414"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_515_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_515_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_515_Out_2
  l0 = self.box_S07_M030_CIN_TBoneReturns_Main_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1619757237", "1619757237", "S07M030_Main", "box_S07_M030_CIN_TBoneReturns_Main_8.Out", "box_Ordered_Output_515.In", l0, l1)
  l1:In()
end
function export:f_box_S07_M030_CIN_TBoneReturns_Main_8_TBoneReturns_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_403()
  l0 = self.box_S07_M030_CIN_TBoneReturns_Main_8
  l1 = self.box_PlaySequence_v5_403
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1279880108", "1279880108", "S07M030_Main", "box_S07_M030_CIN_TBoneReturns_Main_8.TBoneReturns_Started", "box_PlaySequence_v5_403.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_546_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_546
  self.Prime8_01 = l0.UserID
  l0 = self.box_CLOController_519
  l0.CLO = "9223372055352992435"
  l0 = self.box_CLOController_546
  l1 = self.box_CLOController_519
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|416048850", "416048850", "S07M030_Main", "box_CLOController_546.OnUserInPlace", "box_CLOController_519.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_124_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_124
  self.Josh = l0.UserID
end
function export:f_box_CLOController_124_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_125
  l0.User = self.Horatio
  l0 = self.box_CLOController_124
  l1 = self.box_CLOController_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1475590531", "1475590531", "S07M030_Main", "box_CLOController_124.UnspawnedUser", "box_CLOController_125.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:f_box_SmartphoneAppController_539_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S07M030"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_491"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|386172248"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_491_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|341374079", "341374079", "S07M030_Main", "box_SmartphoneAppController_539.OverrideActivated", "box_SetActionMap_v2_491.Push", clone, l0)
  l0:Push()
end
function export:f_box_Ordered_Output_281_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_384
  l0.Seconds = 8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2016874117", "2016874117", "S07M030_Main", "box_Ordered_Output_281.Out", "box_Timer_v2_384.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_281_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1302888187"
  l0.Out = self.f_box_Simple_Node_31_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1330193666", "1330193666", "S07M030_Main", "box_Ordered_Output_281.Out", "box_Simple_Node_31.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_236_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_236
  self.Bike03 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Bike01
  l0._graph = self
  l0._name = "box_Vehicle_Controller_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|373343471"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_234_Unusable
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
  l0 = self.box_CLOController_236
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|428952308", "428952308", "S07M030_Main", "box_CLOController_236.OnUserInPlace", "box_Vehicle_Controller_234.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_Simple_Node_522_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_576"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1443510221"
  l0.Out = self.f_box_Simple_Node_576_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1955225152", "1955225152", "S07M030_Main", "box_Simple_Node_522.Out", "box_Simple_Node_576.In", clone, l0)
  l0:In()
end
function export:f_box_Multiple_AND_586_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_589
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/3134798594.bnk"
  l0 = self.box_Multiple_AND_586
  l1 = self.box_PlayDialog_v2_589
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1329499372", "1329499372", "S07M030_Main", "box_Multiple_AND_586.Out", "box_PlayDialog_v2_589.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_462_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_251
  l0.Seconds = 0.2
  l0 = self.box_PlaySound_v2_462
  l1 = self.box_Timer_v2_251
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|745039434", "745039434", "S07M030_Main", "box_PlaySound_v2_462.Finished", "box_Timer_v2_251.Start", l0, l1)
  l1:Start()
end
function export:f_box_Trigger_Controller_315_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_309()
  l0 = self.box_MultipleOR_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|953253116", "953253116", "S07M030_Main", "box_Trigger_Controller_315.Enabled", "box_MultipleOR_309.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Trigger_Controller_315_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_388
  l0.CLO = "9223372055578621449"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1179436525", "1179436525", "S07M030_Main", "box_Trigger_Controller_315.Out", "box_CLOController_388.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_RewardController_v3_296_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_459"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1159053605"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_459_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_459_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_459_Out_2
  l0 = self.box_RewardController_v3_296
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1266963589", "1266963589", "S07M030_Main", "box_RewardController_v3_296.RewardsExecuted", "box_Ordered_Output_459.In", l0, l1)
  l1:In()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_458_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062567734418"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_468"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|430240125"
  l0.ByIndexSet = self.f_box_MaterialController_468_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1339652734", "1339652734", "S07M030_Main", "box_Media_System_Custom_Broadcast_Controller_458.LoadAndPlayRequested", "box_MaterialController_468.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Camera_Lock_Controller_3_Finished()
  local l0
  self = self._graph
  self:OnEnter_box_Camera_Lock_Controller_3()
  l0 = self.box_Camera_Lock_Controller_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1930004913", "1930004913", "S07M030_Main", "box_Camera_Lock_Controller_3.Finished", "box_Camera_Lock_Controller_3.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Camera_Lock_Controller_3_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_75
  l0.HackableEntity = self.Drone
  l0 = self.box_Camera_Lock_Controller_3
  l1 = self.box_HackableController_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1079445546", "1079445546", "S07M030_Main", "box_Camera_Lock_Controller_3.Stopped", "box_HackableController_v2_75.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_53_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_326
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_53
  l1 = self.box_CinematicPrep_326
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|763231702", "763231702", "S07M030_Main", "box_HackableController_v2_53.Enabled", "box_CinematicPrep_326.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_EnvironmentWeatherOverride_97_SandstormIntensitySet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = 0
  l0._graph = self
  l0._name = "box_SetTimeOfDay_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|725393252"
  l0.Out = self.f_box_SetTimeOfDay_92_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|83837807", "83837807", "S07M030_Main", "box_EnvironmentWeatherOverride_97.SandstormIntensitySet", "box_SetTimeOfDay_92.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_EnvironmentWeatherOverride_97_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_97()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1503339124", "1503339124", "S07M030_Main", "box_EnvironmentWeatherOverride_97.Started", "box_EnvironmentWeatherOverride_97.SetSandstormIntensity", clone, l0)
  l0:SetSandstormIntensity()
end
function export:f_box_Timer_v2_503_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_527()
  l0 = self.box_Timer_v2_503
  l1 = self.box_MultipleOR_527
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|170603376", "170603376", "S07M030_Main", "box_Timer_v2_503.TimeElapsed", "box_MultipleOR_527.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_265_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_196
  l0.CLO = "9223372055648681260"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1820993062", "1820993062", "S07M030_Main", "box_Ordered_Output_265.Out", "box_CLOController_196.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_265_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_197
  l0.CLO = "9223372055648681259"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|637573413", "637573413", "S07M030_Main", "box_Ordered_Output_265.Out", "box_CLOController_197.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_265_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_212
  l0.CLO = "9223372055648681261"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|843232111", "843232111", "S07M030_Main", "box_Ordered_Output_265.Out", "box_CLOController_212.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_265_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_198
  l0.CLO = "9223372055648681263"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1604938998", "1604938998", "S07M030_Main", "box_Ordered_Output_265.Out", "box_CLOController_198.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_265_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_195
  l0.CLO = "9223372055648681262"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|465198262", "465198262", "S07M030_Main", "box_Ordered_Output_265.Out", "box_CLOController_195.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_265_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_194
  l0.CLO = "9223372055648681252"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|526216637", "526216637", "S07M030_Main", "box_Ordered_Output_265.Out", "box_CLOController_194.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_CLOController_7_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_7
  self.Sitara = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1294386452"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_222_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_CLOController_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|150472251", "150472251", "S07M030_Main", "box_CLOController_7.OnUserInPlace", "box_Ordered_Output_222.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_297_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_299()
  l0 = self.box_PhoneCommunicationController_297
  l1 = self.box_MultipleOR_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1557787491", "1557787491", "S07M030_Main", "box_PhoneCommunicationController_297.OnCommunicationFinished", "box_MultipleOR_299.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Interact_Gameplay_120_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_120()
  l0 = self.box_Interact_Gameplay_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1875524499", "1875524499", "S07M030_Main", "box_Interact_Gameplay_120.Interacted", "box_Interact_Gameplay_120.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_120_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_Interact_Gameplay_120
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1013632432", "1013632432", "S07M030_Main", "box_Interact_Gameplay_120.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_TimeScale_Controller_612_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_455()
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|356455371", "356455371", "S07M030_Main", "box_TimeScale_Controller_612.Unlocked", "box_EnvironmentWeatherOverride_455.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Perk_Controller_310_PerkListRemoved()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EnvironmentWeatherOverride_552()
  l0 = self.box_Perk_Controller_310
  l1 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1947452794", "1947452794", "S07M030_Main", "box_Perk_Controller_310.PerkListRemoved", "box_EnvironmentWeatherOverride_552.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_379_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_281"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|759406006"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_281_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_281_Out_1
  l0 = self.box_PlayDialog_v2_379
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1296438741", "1296438741", "S07M030_Main", "box_PlayDialog_v2_379.Finished", "box_Ordered_Output_281.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_590_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_47
  l0.Seconds = 3
  l0 = self.box_PlayDialog_v2_590
  l1 = self.box_Timer_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1620856379", "1620856379", "S07M030_Main", "box_PlayDialog_v2_590.Finished", "box_Timer_v2_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_246_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_97()
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|543901655", "543901655", "S07M030_Main", "box_Get_Player_ID_246.Out", "box_EnvironmentWeatherOverride_97.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_493_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_EnvironmentWeatherOverride_2()
  l0 = self.box_MultipleOR_493
  l1 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1948944235", "1948944235", "S07M030_Main", "box_MultipleOR_493.Out", "box_EnvironmentWeatherOverride_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_Perk_Controller_488_PerkReseted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372053993038730"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_541"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1259615899"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = self.f_box_SmartphoneAppController_541_OverrideCleared
  l0 = self.box_Perk_Controller_488
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1284248717", "1284248717", "S07M030_Main", "box_Perk_Controller_488.PerkReseted", "box_SmartphoneAppController_541.ClearOverride", l0, l1)
  l1:ClearOverride()
end
function export:f_box_CLOController_549_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_548
  l0.CLO = "9223372055352992435"
  l0 = self.box_CLOController_549
  l1 = self.box_CLOController_548
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1705201967", "1705201967", "S07M030_Main", "box_CLOController_549.Deactivated", "box_CLOController_548.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_549_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_549
  self.Prime8_01 = l0.UserID
end
function export:f_box_MultipleOR_227_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_460
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/4042177055.bnk"
  l0 = self.box_MultipleOR_227
  l1 = self.box_PlaySound_v2_460
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1942080390", "1942080390", "S07M030_Main", "box_MultipleOR_227.Out", "box_PlaySound_v2_460.Play", l0, l1)
  l1:Play()
end
function export:f_box_Vehicle_Controller_226_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Bike03
  l0._graph = self
  l0._name = "box_Vehicle_Controller_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|52426593"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Vehicle_Controller_238_Unusable
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|415802879", "415802879", "S07M030_Main", "box_Vehicle_Controller_226.Unusable", "box_Vehicle_Controller_238.SetAsUnusable", clone, l0)
  l0:SetAsUnusable()
end
function export:f_box_SetBoolean_v2_593_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_593
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_593_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_593
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_593_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_593
  self.SpinningNode = l0.Target
end
function export:f_box_SetBoolean_v2_593_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_593
  self.SpinningNode = l0.Target
  self:OnEnter_box_Hack_Gameplay_516()
  l1 = self.box_Hack_Gameplay_516
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1004249148", "1004249148", "S07M030_Main", "box_SetBoolean_v2_593.SetTrue", "box_Hack_Gameplay_516.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_593_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_593
  self.SpinningNode = l0.Target
end
function export:f_box_Ordered_Output_266_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129859"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|675578082"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1008246234", "1008246234", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_73.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053455006"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|310024325"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|638726728", "638726728", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_72.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053454998"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_323"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|201897101"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2066504273", "2066504273", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_323.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129853"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_322"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|645492499"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1941992663", "1941992663", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_322.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757679"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1805343661"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1641455098", "1641455098", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_103.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757677"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|513674112"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1046083989", "1046083989", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_104.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757683"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|283559136"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1661669644", "1661669644", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_106.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757689"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1640909942"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|56795391", "56795391", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_118.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757673"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|293464641"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1623089795", "1623089795", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_111.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757702"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|813694955"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1364908711", "1364908711", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_54.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757708"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2074084403"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|586231597", "586231597", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_67.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757714"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|150610544"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1654311448", "1654311448", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_70.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757718"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|790085316"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1485187309", "1485187309", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_68.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757704"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|295260140"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2072409232", "2072409232", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_100.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757706"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|275930854"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|287354158", "287354158", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_80.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757712"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1606552820"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|635600865", "635600865", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_79.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757716"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|516339776"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1697648036", "1697648036", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_76.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757720"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1877458903"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|884574510", "884574510", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_74.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757723"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|97943199"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|653698905", "653698905", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_90.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757725"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1353228269"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1554771123", "1554771123", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_89.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_20()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757727"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|618917200"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1737018875", "1737018875", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_83.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_21()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757729"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1997108621"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1209431912", "1209431912", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_82.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_22()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758921"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1626154634"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|381748729", "381748729", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_98.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_266_Out_23()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758923"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1529737756"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|198442724", "198442724", "S07M030_Main", "box_Ordered_Output_266.Out", "box_ProfilingPathController_v2_96.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_206_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptController_616()
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1140175349", "1140175349", "S07M030_Main", "box_Ordered_Output_206.Out", "box_InteractionScriptController_616.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_206_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_237
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|549046995", "549046995", "S07M030_Main", "box_Ordered_Output_206.Out", "box_Timer_v2_237.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_547_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_547
  self.Prime8_03 = l0.UserID
  l0 = self.box_Teleport_To_SpawnPoint_518
  l0.SpawnPoint = "9223372064364380516"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_CLOController_547
  l1 = self.box_Teleport_To_SpawnPoint_518
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1468938157", "1468938157", "S07M030_Main", "box_CLOController_547.OnUserInPlace", "box_Teleport_To_SpawnPoint_518.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_406_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_514"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|534502282"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_514_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1170727658", "1170727658", "S07M030_Main", "box_Simple_Node_406.Out", "box_Ordered_Output_514.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_252_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_255
  l0.SoundId = "soundbinary/2276254617.bnk"
  l0 = self.box_Timer_v2_252
  l1 = self.box_PlayDialog_v2_255
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1336623991", "1336623991", "S07M030_Main", "box_Timer_v2_252.TimeElapsed", "box_PlayDialog_v2_255.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_337_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_283"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1472120127"
  l0._DynamicAnchors = {Out = 14}
  l0.Out[0] = self.f_box_Ordered_Output_283_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_283_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_283_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_283_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_283_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_283_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_283_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_283_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_283_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_283_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_283_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_283_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_283_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_283_Out_13
  l0 = self.box_OnceOnly_v3_337
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|979656091", "979656091", "S07M030_Main", "box_OnceOnly_v3_337.Out", "box_Ordered_Output_283.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_583_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_583
  l1 = self.box_SetBoolean_v2_595
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1754284468", "1754284468", "S07M030_Main", "box_PlayDialog_v2_583.Finished", "box_SetBoolean_v2_595.False", l0, l1)
  l1:False()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_20_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062567734418"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1349376110"
  l0.ByIndexSet = self.f_box_MaterialController_21_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1065106470", "1065106470", "S07M030_Main", "box_Media_System_Custom_Broadcast_Controller_20.LoadAndPlayRequested", "box_MaterialController_21.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_PlaySequence_v5_403_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_607
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/3515709216.bnk"
  l0 = self.box_PlaySequence_v5_403
  l1 = self.box_PlaySound_v2_607
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|913910685", "913910685", "S07M030_Main", "box_PlaySequence_v5_403.Started", "box_PlaySound_v2_607.Play", l0, l1)
  l1:Play()
end
function export:f_box_Interact_Gameplay_121_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_121()
  l0 = self.box_Interact_Gameplay_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|355344402", "355344402", "S07M030_Main", "box_Interact_Gameplay_121.Interacted", "box_Interact_Gameplay_121.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_121_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_Interact_Gameplay_121
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|585509219", "585509219", "S07M030_Main", "box_Interact_Gameplay_121.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Simple_Node_272_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_273"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1317466085"
  l0.Out = self.f_box_Simple_Node_273_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|388394369", "388394369", "S07M030_Main", "box_Simple_Node_272.Out", "box_Simple_Node_273.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_133
  l0.CLO = "9223372050330162097"
  l0 = self.box_MissionCheckpointReach_77
  l1 = self.box_CLOController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1363529457", "1363529457", "S07M030_Main", "box_MissionCheckpointReach_77.Out", "box_CLOController_133.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_587_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_586()
  l0 = self.box_Hackable_Monitor_587
  l1 = self.box_Multiple_AND_586
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|396147248", "396147248", "S07M030_Main", "box_Hackable_Monitor_587.Disabled", "box_Multiple_AND_586.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Hackable_Monitor_587_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_587()
  l0 = self.box_Hackable_Monitor_587
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|27685995", "27685995", "S07M030_Main", "box_Hackable_Monitor_587.HackSuccess", "box_Hackable_Monitor_587.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_536_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_311
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/3546806334.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|795950927", "795950927", "S07M030_Main", "box_Ordered_Output_536.Out", "box_PlaySound_v2_311.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_536_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_265"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|877196726"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_265_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_265_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_265_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_265_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_265_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_265_Out_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2141196112", "2141196112", "S07M030_Main", "box_Ordered_Output_536.Out", "box_Ordered_Output_265.In", clone, l0)
  l0:In()
end
function export:f_box_TimeScale_Controller_613_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ClothController_33
  l0.ItemDB = "Items.9223372068868786132"
  l0.AddOnEquip = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|464580057", "464580057", "S07M030_Main", "box_TimeScale_Controller_613.Locked", "box_ClothController_33.Equip", clone, l0)
  l0:Equip()
end
function export:f_box_Ordered_Output_290_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129859"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|766645678"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|961200361", "961200361", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_192.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053455006"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_187"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1379045475"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1225414125", "1225414125", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_187.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053454998"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_321"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1928428977"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|823011139", "823011139", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_321.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129853"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1192264597"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|705590462", "705590462", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_148.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757679"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1348285201"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|23813801", "23813801", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_157.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757677"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|930245588"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2009264242", "2009264242", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_139.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757683"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|40838041"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1966718644", "1966718644", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_161.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757689"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1741458031"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1205348580", "1205348580", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_177.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757673"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|933704947"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1824899984", "1824899984", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_153.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757704"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1203937213"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1299379952", "1299379952", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_155.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757702"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|762298598"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1668899458", "1668899458", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_143.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757708"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|48794242"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|907529394", "907529394", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_172.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757714"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|430811731"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1569626396", "1569626396", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_163.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757718"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|208651800"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1227412369", "1227412369", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_164.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757706"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1679481268"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1297263446", "1297263446", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_137.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757712"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|165659396"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1786270560", "1786270560", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_144.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757716"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1802893802"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|853709426", "853709426", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_165.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757720"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|301713031"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2099062602", "2099062602", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_175.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757723"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|935106781"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1211113997", "1211113997", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_171.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757725"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|212822818"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|257280064", "257280064", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_168.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_20()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757727"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|872516431"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|742845156", "742845156", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_151.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_21()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757729"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|835799120"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|281143521", "281143521", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_160.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_22()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758921"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1720239727"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2041800612", "2041800612", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_156.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_290_Out_23()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758923"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1051243865"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|390415012", "390415012", "S07M030_Main", "box_Ordered_Output_290.Out", "box_ProfilingPathController_v2_176.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_SetBoolean_v2_162_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_162
  self.PuzzleDone = l0.Target
end
function export:f_box_SetBoolean_v2_162_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_162
  self.PuzzleDone = l0.Target
end
function export:f_box_SetBoolean_v2_162_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_162
  self.PuzzleDone = l0.Target
end
function export:f_box_SetBoolean_v2_162_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_162
  self.PuzzleDone = l0.Target
  self:OnEnter_box_MultipleOR_314()
  l1 = self.box_MultipleOR_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1149369902", "1149369902", "S07M030_Main", "box_SetBoolean_v2_162.SetTrue", "box_MultipleOR_314.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_162_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_162
  self.PuzzleDone = l0.Target
end
function export:f_box_Hackable_Monitor_588_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_586()
  l0 = self.box_Hackable_Monitor_588
  l1 = self.box_Multiple_AND_586
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|512509672", "512509672", "S07M030_Main", "box_Hackable_Monitor_588.Disabled", "box_Multiple_AND_586.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Hackable_Monitor_588_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_588()
  l0 = self.box_Hackable_Monitor_588
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1799586767", "1799586767", "S07M030_Main", "box_Hackable_Monitor_588.HackSuccess", "box_Hackable_Monitor_588.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Hack_Gameplay_127_Hacked()
  local l0
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_127()
  l0 = self.box_Hack_Gameplay_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|385708752", "385708752", "S07M030_Main", "box_Hack_Gameplay_127.Hacked", "box_Hack_Gameplay_127.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Hack_Gameplay_127_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_127
  l1 = self.box_SetBoolean_v2_594
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|323519580", "323519580", "S07M030_Main", "box_Hack_Gameplay_127.Stopped", "box_SetBoolean_v2_594.False", l0, l1)
  l1:False()
end
function export:f_box_Ordered_Output_459_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Loading_Screen_Monitor_v2_466()
  l0 = self.box_Loading_Screen_Monitor_v2_466
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|779796340", "779796340", "S07M030_Main", "box_Ordered_Output_459.Out", "box_Loading_Screen_Monitor_v2_466.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_459_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_247()
  l0 = self.box_MultipleOR_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1054226221", "1054226221", "S07M030_Main", "box_Ordered_Output_459.Out", "box_MultipleOR_247.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_459_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_227()
  l0 = self.box_MultipleOR_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1250318319", "1250318319", "S07M030_Main", "box_Ordered_Output_459.Out", "box_MultipleOR_227.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PlayDialog_v2_456_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_615"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1297631530"
  l0.Out = self.f_box_Simple_Node_615_Out
  l0 = self.box_PlayDialog_v2_456
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|903714041", "903714041", "S07M030_Main", "box_PlayDialog_v2_456.Finished", "box_Simple_Node_615.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_136_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_136
  self.HoratioTalkerClue = l0.UserID
  l0 = self.box_CLOController_546
  l0.CLO = "9223372050330162274"
  l0 = self.box_CLOController_136
  l1 = self.box_CLOController_546
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|472776314", "472776314", "S07M030_Main", "box_CLOController_136.OnUserInPlace", "box_CLOController_546.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Multiple_AND_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_453
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M030.Objectives.Objective020",
    item = "Objective",
    id = "511263"
  }
  l0 = self.box_Multiple_AND_51
  l1 = self.box_MissionMessageController_v3_453
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|528140943", "528140943", "S07M030_Main", "box_Multiple_AND_51.Out", "box_MissionMessageController_v3_453.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ListWriter_13_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_13
  self.DedSec = l0.Target
  l0 = self.box_HackableController_v2_476
  l0.HackableEntity = self.VR_Access
  l0 = self.box_ListWriter_13
  l1 = self.box_HackableController_v2_476
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1493880455", "1493880455", "S07M030_Main", "box_ListWriter_13.Added", "box_HackableController_v2_476.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_ListWriter_13_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.DedSec = l0.Target
end
function export:f_box_ListWriter_13_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_13
  self.DedSec = l0.Target
end
function export:f_box_MissionMessageController_v3_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_457
  l0.Seconds = 3
  l0 = self.box_MissionMessageController_v3_28
  l1 = self.box_Timer_v2_457
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|345665989", "345665989", "S07M030_Main", "box_MissionMessageController_v3_28.Out", "box_Timer_v2_457.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptController_616_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_4()
  l0 = self.box_Interact_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1373908875", "1373908875", "S07M030_Main", "box_InteractionScriptController_616.Disabled", "box_Interact_Gameplay_4.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_InteractionScriptController_616_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_4()
  l0 = self.box_Interact_Gameplay_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1055084153", "1055084153", "S07M030_Main", "box_InteractionScriptController_616.Enabled", "box_Interact_Gameplay_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_349_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_254
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/3721807818.bnk"
  l0 = self.box_Timer_v2_349
  l1 = self.box_PlayDialog_v2_254
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1405243244", "1405243244", "S07M030_Main", "box_Timer_v2_349.TimeElapsed", "box_PlayDialog_v2_254.Start", l0, l1)
  l1:Start()
end
function export:f_box_S07_M030_CIN_TripToNowhere_Main_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_247()
  l0 = self.box_S07_M030_CIN_TripToNowhere_Main_42
  l1 = self.box_MultipleOR_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1047206461", "1047206461", "S07M030_Main", "box_S07_M030_CIN_TripToNowhere_Main_42.Out", "box_MultipleOR_247.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Dynamic_Media_Controller_36_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162900"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|228168885"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|496875996", "496875996", "S07M030_Main", "box_Dynamic_Media_Controller_36.ChannelChanged", "box_Dynamic_Media_Controller_37.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_CLOController_93_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_93
  self.Drone = l0.UserID
  l0 = self.box_HackableController_v2_53
  l0.HackableEntity = self.Drone
  l0 = self.box_CLOController_93
  l1 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1463908553", "1463908553", "S07M030_Main", "box_CLOController_93.OnUserInPlace", "box_HackableController_v2_53.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Simple_Node_307_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_309()
  l0 = self.box_MultipleOR_309
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|266241034", "266241034", "S07M030_Main", "box_Simple_Node_307.Out", "box_MultipleOR_309.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_213_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129859"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|709324949"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2057992417", "2057992417", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_221.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053455006"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|372038882"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1571065606", "1571065606", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_215.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053454998"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1927827354"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2020453259", "2020453259", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_216.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129853"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1524493861"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|494669475", "494669475", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_217.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757679"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1298855059"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1285249197", "1285249197", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_220.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757677"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|441079580"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1343642304", "1343642304", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_219.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757683"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1961167095"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|378592586", "378592586", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_225.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757689"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2108802002"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|52138359", "52138359", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_239.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757673"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_210"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1591083314"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|978061650", "978061650", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_210.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757702"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|132828181"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|886756754", "886756754", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_214.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757708"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|861323893"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|48642006", "48642006", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_230.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757714"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_211"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1773180103"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|229631784", "229631784", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_211.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757718"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1318711345"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|187160683", "187160683", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_209.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757704"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1873487289"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1784125781", "1784125781", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_232.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757706"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|932543637"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|871027061", "871027061", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_224.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757712"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1047640445"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1555048289", "1555048289", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_229.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757716"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1957328137"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1997606384", "1997606384", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_233.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757720"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1021973685"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|516863504", "516863504", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_205.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757723"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|76350332"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1170458532", "1170458532", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_223.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757725"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1784902025"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1150200699", "1150200699", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_207.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_20()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757727"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_208"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1438815470"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|127891426", "127891426", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_208.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_21()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757729"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|400889739"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1844117724", "1844117724", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_203.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_22()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758921"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1161912239"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|718314435", "718314435", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_218.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_213_Out_23()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758923"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|271070900"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1062275507", "1062275507", "S07M030_Main", "box_Ordered_Output_213.Out", "box_ProfilingPathController_v2_204.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_S07_M030_SCR_GroupPhoto_Main_29_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_558()
  l0 = self.box_S07_M030_SCR_GroupPhoto_Main_29
  l1 = self.box_MultipleOR_558
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|953209135", "953209135", "S07M030_Main", "box_S07_M030_SCR_GroupPhoto_Main_29.Out", "box_MultipleOR_558.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SmartphoneAppController_541_OverrideCleared()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S07M030"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_611"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1352989761"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_box_SetActionMap_v2_611_Popped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2014702701", "2014702701", "S07M030_Main", "box_SmartphoneAppController_541.OverrideCleared", "box_SetActionMap_v2_611.Pop", clone, l0)
  l0:Pop()
end
function export:f_box_TimeScale_Controller_87_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_296
  l0.ItemDB = "Items.9223372061930304500"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1580742007", "1580742007", "S07M030_Main", "box_TimeScale_Controller_87.Locked", "box_RewardController_v3_296.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Interact_Gameplay_128_Interacted()
  local l0
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_128()
  l0 = self.box_Interact_Gameplay_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|398948253", "398948253", "S07M030_Main", "box_Interact_Gameplay_128.Interacted", "box_Interact_Gameplay_128.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Interact_Gameplay_128_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_59()
  l0 = self.box_Interact_Gameplay_128
  l1 = self.box_InteractionScriptMonitor_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1302110457", "1302110457", "S07M030_Main", "box_Interact_Gameplay_128.Started", "box_InteractionScriptMonitor_v2_59.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_128_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_51()
  l0 = self.box_Interact_Gameplay_128
  l1 = self.box_Multiple_AND_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1171639801", "1171639801", "S07M030_Main", "box_Interact_Gameplay_128.Stopped", "box_Multiple_AND_51.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_TriggerMonitor_v2_286_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PuzzleDone
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1849316137"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_145_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_TriggerMonitor_v2_286
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|728888349", "728888349", "S07M030_Main", "box_TriggerMonitor_v2_286.Disabled", "box_Compare_Boolean_v2_145.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_286_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_314()
  l0 = self.box_TriggerMonitor_v2_286
  l1 = self.box_MultipleOR_314
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1344258940", "1344258940", "S07M030_Main", "box_TriggerMonitor_v2_286.Leave", "box_MultipleOR_314.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_592_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_503()
  l0 = self.box_Timer_v2_503
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2087825582", "2087825582", "S07M030_Main", "box_Compare_Boolean_v2_592.A_is_True", "box_Timer_v2_503.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_259_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_253
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/1257937362.bnk"
  l0 = self.box_Timer_v2_259
  l1 = self.box_PlayDialog_v2_253
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1672653365", "1672653365", "S07M030_Main", "box_Timer_v2_259.TimeElapsed", "box_PlayDialog_v2_253.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_222_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1685062457"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_44_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_44_Out_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|755742807", "755742807", "S07M030_Main", "box_Ordered_Output_222.Out", "box_Ordered_Output_44.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_615_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_614
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|875083046", "875083046", "S07M030_Main", "box_Simple_Node_615.Out", "box_Timer_v2_614.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S07M030_SCR_Main_280()
  l0 = self.box_S07M030_SCR_Main_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|30179957", "30179957", "S07M030_Main", "box_Simple_Node_31.Out", "box_S07M030_SCR_Main_280.DedsecClueLoop_IN", clone, l0)
  l0:DedsecClueLoop_IN()
end
function export:f_box_HackableController_v2_477_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_93
  l0.CLO = "9223372050025129056"
  l0 = self.box_HackableController_v2_477
  l1 = self.box_CLOController_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|910574706", "910574706", "S07M030_Main", "box_HackableController_v2_477.ProfilingEnabled", "box_CLOController_93.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Simple_Node_273_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_266"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1041275229"
  l0._DynamicAnchors = {Out = 24}
  l0.Out[0] = self.f_box_Ordered_Output_266_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_266_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_266_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_266_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_266_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_266_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_266_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_266_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_266_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_266_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_266_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_266_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_266_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_266_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_266_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_266_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_266_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_266_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_266_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_266_Out_19
  l0.Out[20] = self.f_box_Ordered_Output_266_Out_20
  l0.Out[21] = self.f_box_Ordered_Output_266_Out_21
  l0.Out[22] = self.f_box_Ordered_Output_266_Out_22
  l0.Out[23] = self.f_box_Ordered_Output_266_Out_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|865875987", "865875987", "S07M030_Main", "box_Simple_Node_273.Out", "box_Ordered_Output_266.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_384_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_259
  l0.Seconds = 4
  l0 = self.box_Timer_v2_384
  l1 = self.box_Timer_v2_259
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|192508410", "192508410", "S07M030_Main", "box_Timer_v2_384.Started", "box_Timer_v2_259.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_384_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TimerToScreen_385()
  l0 = self.box_Timer_v2_384
  l1 = self.box_TimerToScreen_385
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2038770311", "2038770311", "S07M030_Main", "box_Timer_v2_384.TimeElapsed", "box_TimerToScreen_385.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MaterialController_21_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162902"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2049042607"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_26_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|561687379", "561687379", "S07M030_Main", "box_MaterialController_21.ByIndexSet", "box_Dynamic_Media_Controller_26.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_SetActionMap_v2_611_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_612"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|924339629"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_612_Unlocked
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1264169887", "1264169887", "S07M030_Main", "box_SetActionMap_v2_611.Popped", "box_TimeScale_Controller_612.Unlock", clone, l0)
  l0:Unlock()
end
function export:f_box_PlayDialog_v2_533_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_583
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/3907040449.bnk"
  l0 = self.box_PlayDialog_v2_533
  l1 = self.box_PlayDialog_v2_583
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1656943263", "1656943263", "S07M030_Main", "box_PlayDialog_v2_533.Finished", "box_PlayDialog_v2_583.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_463_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_536"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1102710289"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_536_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_536_Out_1
  l0 = self.box_Timer_v2_463
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|492264677", "492264677", "S07M030_Main", "box_Timer_v2_463.TimeElapsed", "box_Ordered_Output_536.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_326_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_580"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|600744926"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_580_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_580_Out_1
  l0 = self.box_CinematicPrep_326
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1542281833", "1542281833", "S07M030_Main", "box_CinematicPrep_326.PostOut", "box_Ordered_Output_580.In", l0, l1)
  l1:In()
end
function export:f_box_EnvironmentWeatherOverride_552_SandstormIntensitySet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_555"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|719573634"
  l0.Out = self.f_box_SetTimeOfDay_555_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1943787721", "1943787721", "S07M030_Main", "box_EnvironmentWeatherOverride_552.SandstormIntensitySet", "box_SetTimeOfDay_555.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_EnvironmentWeatherOverride_552_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_552()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|553768846", "553768846", "S07M030_Main", "box_EnvironmentWeatherOverride_552.Started", "box_EnvironmentWeatherOverride_552.SetSandstormIntensity", clone, l0)
  l0:SetSandstormIntensity()
end
function export:f_box_Simple_Node_301_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_307"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1242673282"
  l0.Out = self.f_box_Simple_Node_307_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|876061272", "876061272", "S07M030_Main", "box_Simple_Node_301.Out", "box_Simple_Node_307.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_254_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_529()
  l0 = self.box_PlayDialog_v2_254
  l1 = self.box_Hackable_Monitor_529
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1027024305", "1027024305", "S07M030_Main", "box_PlayDialog_v2_254.Finished", "box_Hackable_Monitor_529.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_267_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057414961956"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1097891113"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1614891713", "1614891713", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_241.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_267_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129855"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|746487412"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|368480284", "368480284", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_99.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_267_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057414961954"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1376254933"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|311752820", "311752820", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_129.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_267_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757681"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|118180904"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|470595620", "470595620", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_108.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_267_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757671"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|708488057"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|533355764", "533355764", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_112.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_267_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757691"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1332172082"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|790478595", "790478595", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_117.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_267_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757675"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|606060303"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1070941156", "1070941156", "S07M030_Main", "box_Ordered_Output_267.Out", "box_ProfilingPathController_v2_101.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_InteractionScriptController_617_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ClothController_32
  l0.ItemDB = "Items.9223372068868786132"
  l0.AddOnEquip = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|384997814", "384997814", "S07M030_Main", "box_InteractionScriptController_617.Disabled", "box_ClothController_32.Equip", clone, l0)
  l0:Equip()
end
function export:f_box_Hackable_Monitor_15_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/1627164960.bnk"
  l0 = self.box_Hackable_Monitor_15
  l1 = self.box_PlaySound_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|892142374", "892142374", "S07M030_Main", "box_Hackable_Monitor_15.HackSuccess", "box_PlaySound_v2_6.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_494
  l0.CLO = "9223372056242261389"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|882673280", "882673280", "S07M030_Main", "box_Ordered_Output_35.Out", "box_CLOController_494.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_408
  l0.CLO = "9223372056242261390"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1834407230", "1834407230", "S07M030_Main", "box_Ordered_Output_35.Out", "box_CLOController_408.TriggerBhv", clone, l0)
  l0:TriggerBhv()
end
function export:f_box_Simple_Node_576_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_213"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1251888905"
  l0._DynamicAnchors = {Out = 24}
  l0.Out[0] = self.f_box_Ordered_Output_213_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_213_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_213_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_213_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_213_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_213_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_213_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_213_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_213_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_213_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_213_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_213_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_213_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_213_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_213_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_213_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_213_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_213_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_213_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_213_Out_19
  l0.Out[20] = self.f_box_Ordered_Output_213_Out_20
  l0.Out[21] = self.f_box_Ordered_Output_213_Out_21
  l0.Out[22] = self.f_box_Ordered_Output_213_Out_22
  l0.Out[23] = self.f_box_Ordered_Output_213_Out_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1407004920", "1407004920", "S07M030_Main", "box_Simple_Node_576.Out", "box_Ordered_Output_213.In", clone, l0)
  l0:In()
end
function export:f_box_Show_Or_Hide_All_UI_330_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_479
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M030.Objectives.Objective050",
    item = "Objective",
    id = "511260"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1956263847", "1956263847", "S07M030_Main", "box_Show_Or_Hide_All_UI_330.Shown", "box_MissionMessageController_v3_479.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_557_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_556"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1516674772"
  l0.Out = self.f_box_Get_Player_ID_556_Out
  l0 = self.box_MissionLayer_v2_557
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|222875106", "222875106", "S07M030_Main", "box_MissionLayer_v2_557.Loaded", "box_Get_Player_ID_556.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_389_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_389()
  l0 = self.box_HackableController_v2_389
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|917974090", "917974090", "S07M030_Main", "box_HackableController_v2_389.Disabled", "box_HackableController_v2_389.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_389_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  l0.CLO = self.CLO_Wrench
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_HackableController_v2_389
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|966552368", "966552368", "S07M030_Main", "box_HackableController_v2_389.ProfilingDisabled", "box_CLOController_11.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Hackable_Monitor_39_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_43
  l0.SoundId = "soundbinary/1627164960.bnk"
  l0 = self.box_Hackable_Monitor_39
  l1 = self.box_PlaySound_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1547983083", "1547983083", "S07M030_Main", "box_Hackable_Monitor_39.HackSuccess", "box_PlaySound_v2_43.Play", l0, l1)
  l1:Play()
end
function export:f_box_MultipleOR_314_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_286()
  l0 = self.box_MultipleOR_314
  l1 = self.box_TriggerMonitor_v2_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|115113832", "115113832", "S07M030_Main", "box_MultipleOR_314.Out", "box_TriggerMonitor_v2_286.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_283_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254130149"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|699287980"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1594933631", "1594933631", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_91.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129851"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1907714151"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|414407530", "414407530", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_114.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053455002"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|566544337"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1586784445", "1586784445", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_88.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254131347"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_324"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1580720740"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|507399199", "507399199", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_324.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254131349"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_325"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|915498554"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1998818524", "1998818524", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_325.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757697"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1768355058"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|884396553", "884396553", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_174.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757687"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1643125554"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1680163029", "1680163029", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_169.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757685"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|670779589"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1204279528", "1204279528", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_170.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757699"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1725334090"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|854974568", "854974568", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_140.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757693"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1331063382"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1875534394", "1875534394", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_173.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757695"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1137749009"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|404329615", "404329615", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_138.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757732"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|196985352"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|153239464", "153239464", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_132.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757668"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1890893706"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1600046260", "1600046260", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_142.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_283_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758925"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|830665732"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1423831188", "1423831188", "S07M030_Main", "box_Ordered_Output_283.Out", "box_ProfilingPathController_v2_141.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Timer_v2_65_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_462
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/2442459009.bnk"
  l0 = self.box_Timer_v2_65
  l1 = self.box_PlaySound_v2_462
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1113834194", "1113834194", "S07M030_Main", "box_Timer_v2_65.TimeElapsed", "box_PlaySound_v2_462.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_567_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_562"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1670364004"
  l0.Out = self.f_box_Simple_Node_562_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2113167727", "2113167727", "S07M030_Main", "box_Simple_Node_567.Out", "box_Simple_Node_562.In", clone, l0)
  l0:In()
end
function export:f_box_PlayDialog_v2_352_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_378
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/3408347468.bnk"
  l0 = self.box_PlayDialog_v2_352
  l1 = self.box_PlayDialog_v2_378
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|306088978", "306088978", "S07M030_Main", "box_PlayDialog_v2_352.Finished", "box_PlayDialog_v2_378.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialog_v2_345_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_352
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/1498302511.bnk"
  l0 = self.box_PlayDialog_v2_345
  l1 = self.box_PlayDialog_v2_352
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1718499362", "1718499362", "S07M030_Main", "box_PlayDialog_v2_345.Finished", "box_PlayDialog_v2_352.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_556_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  l0.ItemDB = nil
  l0.ItemCount = nil
  l0.ReturnProjectilesToPlayer = nil
  l0.LoadoutItemListDB = nil
  l0.FullWeaponWheelMode = nil
  l0._graph = self
  l0._name = "box_InventoryController_v2_521"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|84243685"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.Switched = self.f_box_InventoryController_v2_521_Switched
  l0.UnspawnedReleasedProjectiles = DummyFunction
  l0.ItemEquipped = DummyFunction
  l0.WheelActionMapDisabled = DummyFunction
  l0.WheelActionMapEnabled = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1426931285", "1426931285", "S07M030_Main", "box_Get_Player_ID_556.Out", "box_InventoryController_v2_521.SwitchLocalPlayerInventoryToEmpty", clone, l0)
  l0:SwitchLocalPlayerInventoryToEmpty()
end
function export:f_box_Ordered_Output_559_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_567"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1496303103"
  l0.Out = self.f_box_Simple_Node_567_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1898367532", "1898367532", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Simple_Node_567.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_559_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_522"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|767475568"
  l0.Out = self.f_box_Simple_Node_522_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|696568632", "696568632", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Simple_Node_522.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_559_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|509806818"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_245_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_245_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_245_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_245_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_245_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_245_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_245_Out_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2136045503", "2136045503", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Ordered_Output_245.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_559_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_558()
  l0 = self.box_MultipleOR_558
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|428171431", "428171431", "S07M030_Main", "box_Ordered_Output_559.Out", "box_MultipleOR_558.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_559_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Loading_Screen_Monitor_v2_25()
  l0 = self.box_Loading_Screen_Monitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1024334577", "1024334577", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Loading_Screen_Monitor_v2_25.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_559_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_45
  l0.HackableEntity = "9223372068237654547"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|258747602", "258747602", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Hackable_Monitor_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_559_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_48
  l0.HackableEntity = "9223372068237654545"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|913753671", "913753671", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Hackable_Monitor_48.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_559_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_39
  l0.HackableEntity = "9223372068237654549"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1732859877", "1732859877", "S07M030_Main", "box_Ordered_Output_559.Out", "box_Hackable_Monitor_39.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.Horatio = l0.UserID
  l0 = self.box_CLOController_7
  l0.CLO = "9223372048667187325"
  l0.SpawnOutsideLoadingRing = 1
  l0 = self.box_CLOController_10
  l1 = self.box_CLOController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1281665917", "1281665917", "S07M030_Main", "box_CLOController_10.OnUserInPlace", "box_CLOController_7.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_81_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hack_Gameplay_127()
  l0 = self.box_Hack_Gameplay_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|293225998", "293225998", "S07M030_Main", "box_Ordered_Output_81.Out", "box_Hack_Gameplay_127.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_81_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_339()
  l0 = self.box_Hackable_Monitor_339
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|355897540", "355897540", "S07M030_Main", "box_Ordered_Output_81.Out", "box_Hackable_Monitor_339.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_81_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_338()
  l0 = self.box_Hackable_Monitor_338
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1182094679", "1182094679", "S07M030_Main", "box_Ordered_Output_81.Out", "box_Hackable_Monitor_338.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_81_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_279()
  l0 = self.box_Hackable_Monitor_279
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1627497942", "1627497942", "S07M030_Main", "box_Ordered_Output_81.Out", "box_Hackable_Monitor_279.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_81_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimerToScreen_385()
  l0 = self.box_TimerToScreen_385
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|99565699", "99565699", "S07M030_Main", "box_Ordered_Output_81.Out", "box_TimerToScreen_385.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_81_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_527()
  l0 = self.box_MultipleOR_527
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1728492146", "1728492146", "S07M030_Main", "box_Ordered_Output_81.Out", "box_MultipleOR_527.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_81_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_584"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1842750536"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_584_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_584_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_584_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1557251501", "1557251501", "S07M030_Main", "box_Ordered_Output_81.Out", "box_Ordered_Output_584.In", clone, l0)
  l0:In()
end
function export:f_box_Teleport_To_SpawnPoint_518_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_504"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1575495463"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_504_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_Teleport_To_SpawnPoint_518
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1035194359", "1035194359", "S07M030_Main", "box_Teleport_To_SpawnPoint_518.TeleportDone", "box_Ordered_Output_504.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_271_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_270"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1966830644"
  l0.Out = self.f_box_Simple_Node_270_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1911501174", "1911501174", "S07M030_Main", "box_Simple_Node_271.Out", "box_Simple_Node_270.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_49_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_77
  l0.Checkpoint = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1241484597", "1241484597", "S07M030_Main", "box_Ordered_Output_49.Out", "box_MissionCheckpointReach_77.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_500
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/3598191770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|926776432", "926776432", "S07M030_Main", "box_Ordered_Output_49.Out", "box_PlaySound_v2_500.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_182_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254130149"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1512474156"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1890265326", "1890265326", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_202.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129851"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|984609476"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2068895670", "2068895670", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_200.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372056053455002"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1867250715"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1089069593", "1089069593", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_183.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254131347"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|505904061"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|839997433", "839997433", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_185.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254131349"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1620297082"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1077146427", "1077146427", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_201.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757697"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1683112281"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|568154897", "568154897", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_184.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757687"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1183230453"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|154579615", "154579615", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_189.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757685"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|103006251"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|730934717", "730934717", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_180.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757699"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1254687518"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|316400889", "316400889", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_178.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757693"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1349289112"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1180152678", "1180152678", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_199.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757695"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1069266760"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1099279442", "1099279442", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_181.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757732"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1138159511"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1745855623", "1745855623", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_186.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757668"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|284159997"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|913441659", "913441659", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_179.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_Ordered_Output_182_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609758925"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|96889303"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|683264382", "683264382", "S07M030_Main", "box_Ordered_Output_182.Out", "box_ProfilingPathController_v2_57.HidePath", clone, l0)
  l0:HidePath()
end
function export:f_box_InventoryController_v2_591_Switched()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InventoryController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S07_M030_CIN_YouAreNotAlone_Main_55
  l0.PlayerVar = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|962836802", "962836802", "S07M030_Main", "box_InventoryController_v2_591.Switched", "box_S07_M030_CIN_YouAreNotAlone_Main_55.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_339_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_339
  l1 = self.box_OnceOnly_v3_337
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1069247562", "1069247562", "S07M030_Main", "box_Hackable_Monitor_339.Disabled", "box_OnceOnly_v3_337.In", l0, l1)
  l1:In(0)
end
function export:f_box_Hackable_Monitor_339_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_339()
  l0 = self.box_Hackable_Monitor_339
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1070573078", "1070573078", "S07M030_Main", "box_Hackable_Monitor_339.HackSuccess", "box_Hackable_Monitor_339.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_85_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372053993038730"
  l0._graph = self
  l0._name = "box_SmartphoneAppController_539"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|758812420"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_box_SmartphoneAppController_539_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0 = self.box_MissionCheckpointReach_85
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|471006612", "471006612", "S07M030_Main", "box_MissionCheckpointReach_85.Out", "box_SmartphoneAppController_539.ActivateOverride", l0, l1)
  l1:ActivateOverride()
end
function export:f_box_PhoneCommunicationController_294_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_299()
  l0 = self.box_PhoneCommunicationController_294
  l1 = self.box_MultipleOR_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1168844429", "1168844429", "S07M030_Main", "box_PhoneCommunicationController_294.OnCommunicationFinished", "box_MultipleOR_299.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_Ordered_Output_504_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_477
  l0.HackableEntity = self.VR_Access
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|917364210", "917364210", "S07M030_Main", "box_Ordered_Output_504.Out", "box_HackableController_v2_477.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Ordered_Output_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_13
  l0.Input = self.DedSec
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Sitara
  l0.Data[2] = self.Horatio
  l0.Data[3] = self.Josh
  l0.Data[4] = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1297542922", "1297542922", "S07M030_Main", "box_Ordered_Output_86.Out", "box_ListWriter_13.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_86_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S07M030_SCR_Main_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1989093097", "1989093097", "S07M030_Main", "box_Ordered_Output_86.Out", "box_S07M030_SCR_Main_19.Thunderdome", clone, l0)
  l0:Thunderdome()
end
function export:f_box_Ordered_Output_86_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_271"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1538036617"
  l0.Out = self.f_box_Simple_Node_271_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|714816009", "714816009", "S07M030_Main", "box_Ordered_Output_86.Out", "box_Simple_Node_271.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_86_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_272"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1093844096"
  l0.Out = self.f_box_Simple_Node_272_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1840681577", "1840681577", "S07M030_Main", "box_Ordered_Output_86.Out", "box_Simple_Node_272.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_86_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_267"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1398410995"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_267_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_267_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_267_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_267_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_267_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_267_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_267_Out_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1132913793", "1132913793", "S07M030_Main", "box_Ordered_Output_86.Out", "box_Ordered_Output_267.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_86_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_5
  l0.HackableEntity = "9223372068237654547"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1528341447", "1528341447", "S07M030_Main", "box_Ordered_Output_86.Out", "box_Hackable_Monitor_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_86_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_17
  l0.HackableEntity = "9223372068237654545"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|819515410", "819515410", "S07M030_Main", "box_Ordered_Output_86.Out", "box_Hackable_Monitor_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_86_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_15
  l0.HackableEntity = "9223372068237654549"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1982624512", "1982624512", "S07M030_Main", "box_Ordered_Output_86.Out", "box_Hackable_Monitor_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_EnvironmentWeatherOverride_2_SandstormIntensitySet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 22
  l0.Minute = 0
  l0._graph = self
  l0._name = "box_SetTimeOfDay_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1840755888"
  l0.Out = self.f_box_SetTimeOfDay_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1299294846", "1299294846", "S07M030_Main", "box_EnvironmentWeatherOverride_2.SandstormIntensitySet", "box_SetTimeOfDay_38.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_EnvironmentWeatherOverride_2_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_2()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|712072923", "712072923", "S07M030_Main", "box_EnvironmentWeatherOverride_2.Started", "box_EnvironmentWeatherOverride_2.SetSandstormIntensity", clone, l0)
  l0:SetSandstormIntensity()
end
function export:f_box_S07_M030_CIN_YouAreNotAlone_Main_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_S07_M030_CIN_YouAreNotAlone_Main_55
  l1 = self.box_Perk_Controller_488
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|87270395", "87270395", "S07M030_Main", "box_S07_M030_CIN_YouAreNotAlone_Main_55.Out", "box_Perk_Controller_488.ResetPerks", l0, l1)
  l1:ResetPerks()
end
function export:f_box_PlaySound_v2_500_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_606
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/3759489967.bnk"
  l0 = self.box_PlaySound_v2_500
  l1 = self.box_PlaySound_v2_606
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1911881593", "1911881593", "S07M030_Main", "box_PlaySound_v2_500.Out", "box_PlaySound_v2_606.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_237_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_190
  l0.SoundId = "soundbinary/4046994236.bnk"
  l0.UseFacial = 0
  l0 = self.box_Timer_v2_237
  l1 = self.box_PlayDialog_v2_190
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|369909107", "369909107", "S07M030_Main", "box_Timer_v2_237.TimeElapsed", "box_PlayDialog_v2_190.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_48_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_30
  l0.SoundId = "soundbinary/2365305794.bnk"
  l0 = self.box_Hackable_Monitor_48
  l1 = self.box_PlaySound_v2_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2027901183", "2027901183", "S07M030_Main", "box_Hackable_Monitor_48.HackSuccess", "box_PlaySound_v2_30.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlayDialog_v2_378_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_379
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/2381049263.bnk"
  l0 = self.box_PlayDialog_v2_378
  l1 = self.box_PlayDialog_v2_379
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|242270581", "242270581", "S07M030_Main", "box_PlayDialog_v2_378.Finished", "box_PlayDialog_v2_379.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_285_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057414961956"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|345695226"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1983876693", "1983876693", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_94.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_285_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057254129855"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2080770736"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2046636837", "2046636837", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_95.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_285_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372057414961954"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|230596403"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|933894882", "933894882", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_193.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_285_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757681"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|782586394"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1289306181", "1289306181", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_167.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_285_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757671"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1080786609"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|499572385", "499572385", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_166.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_285_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757691"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1831090314"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1019850727", "1019850727", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_158.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Ordered_Output_285_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372070609757675"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1978848024"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1014826725", "1014826725", "S07M030_Main", "box_Ordered_Output_285.Out", "box_ProfilingPathController_v2_159.ShowPath", clone, l0)
  l0:ShowPath()
end
function export:f_box_Camera_Lock_Controller_545_Finished()
  local l0
  self = self._graph
  self:OnEnter_box_Camera_Lock_Controller_545()
  l0 = self.box_Camera_Lock_Controller_545
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1399711296", "1399711296", "S07M030_Main", "box_Camera_Lock_Controller_545.Finished", "box_Camera_Lock_Controller_545.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Camera_Lock_Controller_545_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_582
  l0.Seconds = 2
  l0 = self.box_Camera_Lock_Controller_545
  l1 = self.box_Timer_v2_582
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1562525325", "1562525325", "S07M030_Main", "box_Camera_Lock_Controller_545.Started", "box_Timer_v2_582.Start", l0, l1)
  l1:Start()
end
function export:f_box_S07_M030_CIN_BurningManTickets_Main_50_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_461"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1851680720"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_461_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_461_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_S07_M030_CIN_BurningManTickets_Main_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|71448636", "71448636", "S07M030_Main", "box_S07_M030_CIN_BurningManTickets_Main_50.Out", "box_Ordered_Output_461.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_562_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1553150664"
  l0._DynamicAnchors = {Out = 14}
  l0.Out[0] = self.f_box_Ordered_Output_182_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_182_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_182_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_182_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_182_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_182_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_182_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_182_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_182_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_182_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_182_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_182_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_182_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_182_Out_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|909848620", "909848620", "S07M030_Main", "box_Simple_Node_562.Out", "box_Ordered_Output_182.In", clone, l0)
  l0:In()
end
function export:f_box_TimerToScreen_385_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_590
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/482322816.bnk"
  l0 = self.box_TimerToScreen_385
  l1 = self.box_PlayDialog_v2_590
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|726875094", "726875094", "S07M030_Main", "box_TimerToScreen_385.Started", "box_PlayDialog_v2_590.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimerToScreen_385_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_TimerToScreen_385
  l1 = self.box_Timer_v2_349
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|862633850", "862633850", "S07M030_Main", "box_TimerToScreen_385.Stopped", "box_Timer_v2_349.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_128()
  l0 = self.box_Interact_Gameplay_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2082219809", "2082219809", "S07M030_Main", "box_Ordered_Output_44.Out", "box_Interact_Gameplay_128.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_121()
  l0 = self.box_Interact_Gameplay_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1732914849", "1732914849", "S07M030_Main", "box_Ordered_Output_44.Out", "box_Interact_Gameplay_121.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_120()
  l0 = self.box_Interact_Gameplay_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|912750390", "912750390", "S07M030_Main", "box_Ordered_Output_44.Out", "box_Interact_Gameplay_120.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_44_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_119()
  l0 = self.box_Interact_Gameplay_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|169527941", "169527941", "S07M030_Main", "box_Ordered_Output_44.Out", "box_Interact_Gameplay_119.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_44_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_34()
  l0 = self.box_InteractionScriptMonitor_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1287914714", "1287914714", "S07M030_Main", "box_Ordered_Output_44.Out", "box_InteractionScriptMonitor_v2_34.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_150_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_549
  l0.CLO = "9223372050330162274"
  l0 = self.box_CLOController_150
  l1 = self.box_CLOController_549
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|69056486", "69056486", "S07M030_Main", "box_CLOController_150.Deactivated", "box_CLOController_549.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_150_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_150
  self.HoratioTalkerClue = l0.UserID
end
function export:f_box_RewardController_v3_312_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_312
  l1 = self.box_S07_M030_CIN_WrongIntentions_Main_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|688446352", "688446352", "S07M030_Main", "box_RewardController_v3_312.RewardsExecuted", "box_S07_M030_CIN_WrongIntentions_Main_22.In", l0, l1)
  l1:In()
end
function export:f_box_Hack_Gameplay_516_Hacked()
  local l0
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_516()
  l0 = self.box_Hack_Gameplay_516
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2096300268", "2096300268", "S07M030_Main", "box_Hack_Gameplay_516.Hacked", "box_Hack_Gameplay_516.Stop", l0, l0)
  l0:Stop()
end
function export:f_box_Hack_Gameplay_516_Stopped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1532089422"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_81_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_81_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_81_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_81_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_81_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_81_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_81_Out_6
  l0 = self.box_Hack_Gameplay_516
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|566444132", "566444132", "S07M030_Main", "box_Hack_Gameplay_516.Stopped", "box_Ordered_Output_81.In", l0, l1)
  l1:In()
end
function export:f_box_SetActionMap_v2_551_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_559"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1519444497"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_559_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_559_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_559_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_559_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_559_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_559_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_559_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_559_Out_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|569890105", "569890105", "S07M030_Main", "box_SetActionMap_v2_551.Pushed", "box_Ordered_Output_559.In", clone, l0)
  l0:In()
end
function export:f_box_Hackable_Monitor_544_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Camera_Lock_Controller_545()
  l0 = self.box_Hackable_Monitor_544
  l1 = self.box_Camera_Lock_Controller_545
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|200344652", "200344652", "S07M030_Main", "box_Hackable_Monitor_544.Disabled", "box_Camera_Lock_Controller_545.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_544_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_544
  l1 = self.box_SetBoolean_v2_593
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|969852736", "969852736", "S07M030_Main", "box_Hackable_Monitor_544.Enabled", "box_SetBoolean_v2_593.True", l0, l1)
  l1:True()
end
function export:f_box_Hackable_Monitor_544_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_544()
  l0 = self.box_Hackable_Monitor_544
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|362377858", "362377858", "S07M030_Main", "box_Hackable_Monitor_544.HackSuccess", "box_Hackable_Monitor_544.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Hackable_Monitor_17_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_12
  l0.SoundId = "soundbinary/2365305794.bnk"
  l0 = self.box_Hackable_Monitor_17
  l1 = self.box_PlaySound_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1614092024", "1614092024", "S07M030_Main", "box_Hackable_Monitor_17.HackSuccess", "box_PlaySound_v2_12.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionLayer_v2_497_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_498"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2104117449"
  l0.Out = self.f_box_Get_Player_ID_498_Out
  l0 = self.box_MissionLayer_v2_497
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|476957148", "476957148", "S07M030_Main", "box_MissionLayer_v2_497.Loaded", "box_Get_Player_ID_498.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_235_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_235
  self.Bike02 = l0.UserID
  l0 = self.box_CLOController_236
  l0.CLO = "9223372059384608604"
  l0 = self.box_CLOController_235
  l1 = self.box_CLOController_236
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1008074620", "1008074620", "S07M030_Main", "box_CLOController_235.OnUserInPlace", "box_CLOController_236.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Timer_v2_581_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_578
  l0.Entity = self.SitaraTalkerClue
  l0.SoundId = "soundbinary/2333490629.bnk"
  l0 = self.box_Timer_v2_581
  l1 = self.box_PlayDialog_v2_578
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1960675826", "1960675826", "S07M030_Main", "box_Timer_v2_581.TimeElapsed", "box_PlayDialog_v2_578.Start", l0, l1)
  l1:Start()
end
function export:f_box_TimeScale_Controller_66_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_149
  l0.CLO = "9223372050330162097"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1380237120", "1380237120", "S07M030_Main", "box_TimeScale_Controller_66.Unlocked", "box_CLOController_149.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Loading_Screen_Monitor_v2_466_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491195"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_458"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|803675705"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_458_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Loading_Screen_Monitor_v2_466
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1350668932", "1350668932", "S07M030_Main", "box_Loading_Screen_Monitor_v2_466.Disabled", "box_Media_System_Custom_Broadcast_Controller_458.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Loading_Screen_Monitor_v2_466_LoadingScreenEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_466()
  l0 = self.box_Loading_Screen_Monitor_v2_466
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|997842402", "997842402", "S07M030_Main", "box_Loading_Screen_Monitor_v2_466.LoadingScreenEnded", "box_Loading_Screen_Monitor_v2_466.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_SetTimeOfDay_38_Out()
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
  l0._name = "box_TimeScale_Controller_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|289897390"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_60_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1430675440", "1430675440", "S07M030_Main", "box_SetTimeOfDay_38.Out", "box_TimeScale_Controller_60.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_Ordered_Output_584_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_585()
  l0 = self.box_Hackable_Monitor_585
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|346777980", "346777980", "S07M030_Main", "box_Ordered_Output_584.Out", "box_Hackable_Monitor_585.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_584_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_587()
  l0 = self.box_Hackable_Monitor_587
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|177653841", "177653841", "S07M030_Main", "box_Ordered_Output_584.Out", "box_Hackable_Monitor_587.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_584_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_588()
  l0 = self.box_Hackable_Monitor_588
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|240413985", "240413985", "S07M030_Main", "box_Ordered_Output_584.Out", "box_Hackable_Monitor_588.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Compare_Boolean_v2_145_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RandomOutput_v2_291
  l0.AutoReset = 1
  l0.Probability[0] = 0.25
  l0.Probability[1] = 0.25
  l0.Probability[2] = 0.25
  l0.Probability[3] = 0.25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|643797153", "643797153", "S07M030_Main", "box_Compare_Boolean_v2_145.A_is_False", "box_RandomOutput_v2_291.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_461_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_601
  l0.LMALayerName = "OAK_05_BurningMan_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1484062295", "1484062295", "S07M030_Main", "box_Ordered_Output_461.Out", "box_LMA_Layer_Controller_601.Load", clone, l0)
  l0:Load()
end
function export:f_box_Ordered_Output_461_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_227()
  l0 = self.box_MultipleOR_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|613319027", "613319027", "S07M030_Main", "box_Ordered_Output_461.Out", "box_MultipleOR_227.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Hackable_Monitor_5_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_18
  l0.SoundId = "soundbinary/1584707327.bnk"
  l0 = self.box_Hackable_Monitor_5
  l1 = self.box_PlaySound_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|368738848", "368738848", "S07M030_Main", "box_Hackable_Monitor_5.HackSuccess", "box_PlaySound_v2_18.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1428823785", "1428823785", "S07M030_Main", "box_Simple_Node_1.Out", "box_SetBoolean_v2_162.True", clone, l0)
  l0:True()
end
function export:f_box_CLOController_122_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_122
  self.Sitara = l0.UserID
end
function export:f_box_CLOController_122_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_122
  l1 = self.box_S07_M030_SCR_GroupPhoto_Main_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|809204947", "809204947", "S07M030_Main", "box_CLOController_122.UnspawnedUser", "box_S07_M030_SCR_GroupPhoto_Main_29.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_253_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_252
  l0.Seconds = 4
  l0 = self.box_PlayDialog_v2_253
  l1 = self.box_Timer_v2_252
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|905669857", "905669857", "S07M030_Main", "box_PlayDialog_v2_253.Started", "box_Timer_v2_252.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_299_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_295
  l0.Seconds = 7
  l0 = self.box_MultipleOR_299
  l1 = self.box_Timer_v2_295
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|341857528", "341857528", "S07M030_Main", "box_MultipleOR_299.Out", "box_Timer_v2_295.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_529_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_533
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/2358322768.bnk"
  l0 = self.box_Hackable_Monitor_529
  l1 = self.box_PlayDialog_v2_533
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|231409266", "231409266", "S07M030_Main", "box_Hackable_Monitor_529.Disabled", "box_PlayDialog_v2_533.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_529_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_529()
  l0 = self.box_Hackable_Monitor_529
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|714383700", "714383700", "S07M030_Main", "box_Hackable_Monitor_529.HackSuccess", "box_Hackable_Monitor_529.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_EnvironmentWeatherOverride_455_SandstormIntensitySet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_41()
  l0 = self.box_Mission_End_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|526938176", "526938176", "S07M030_Main", "box_EnvironmentWeatherOverride_455.SandstormIntensitySet", "box_Mission_End_41.End", clone, l0)
  l0:End()
end
function export:f_box_EnvironmentWeatherOverride_455_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_EnvironmentWeatherOverride_455()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|422585230", "422585230", "S07M030_Main", "box_EnvironmentWeatherOverride_455.Stopped", "box_EnvironmentWeatherOverride_455.SetSandstormIntensity", clone, l0)
  l0:SetSandstormIntensity()
end
function export:f_box_Timer_v2_614_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|368648988"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_228_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_Timer_v2_614
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|2056617825", "2056617825", "S07M030_Main", "box_Timer_v2_614.TimeElapsed", "box_Ordered_Output_228.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_300_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_301"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1384491942"
  l0.Out = self.f_box_Simple_Node_301_Out
  l0 = self.box_TriggerMonitor_v2_300
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|500509086", "500509086", "S07M030_Main", "box_TriggerMonitor_v2_300.Disabled", "box_Simple_Node_301.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_300_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_300()
  l0 = self.box_TriggerMonitor_v2_300
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1657712313", "1657712313", "S07M030_Main", "box_TriggerMonitor_v2_300.Enter", "box_TriggerMonitor_v2_300.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_147_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_146
  l0.CLO = "9223372050330162098"
  l0 = self.box_CLOController_147
  l1 = self.box_CLOController_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|447746430", "447746430", "S07M030_Main", "box_CLOController_147.Deactivated", "box_CLOController_146.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_147_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_147
  self.WrenchTalkerClue = l0.UserID
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_59()
  l0 = self.box_Timer_v2_61
  l1 = self.box_InteractionScriptMonitor_v2_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1790190865", "1790190865", "S07M030_Main", "box_Timer_v2_61.TimeElapsed", "box_InteractionScriptMonitor_v2_59.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_251_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_313
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/2094074987.bnk"
  l0 = self.box_Timer_v2_251
  l1 = self.box_PlaySound_v2_313
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|354503593", "354503593", "S07M030_Main", "box_Timer_v2_251.TimeElapsed", "box_PlaySound_v2_313.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_550_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_550
  l1 = self.box_Network_Surfing_Controller_316
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|708822436", "708822436", "S07M030_Main", "box_CLOController_550.Deactivated", "box_Network_Surfing_Controller_316.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_550_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_550
  self.Prime8_03 = l0.UserID
end
function export:f_box_Simple_Node_270_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_264"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|160905814"
  l0._DynamicAnchors = {Out = 14}
  l0.Out[0] = self.f_box_Ordered_Output_264_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_264_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_264_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_264_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_264_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_264_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_264_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_264_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_264_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_264_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_264_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_264_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_264_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_264_Out_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1811621108", "1811621108", "S07M030_Main", "box_Simple_Node_270.Out", "box_Ordered_Output_264.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_292_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_299()
  l0 = self.box_PhoneCommunicationController_292
  l1 = self.box_MultipleOR_299
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|723441166", "723441166", "S07M030_Main", "box_PhoneCommunicationController_292.OnCommunicationFinished", "box_MultipleOR_299.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Loading_Screen_Monitor_v2_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491195"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1074759943"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_20_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Loading_Screen_Monitor_v2_25
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|605781217", "605781217", "S07M030_Main", "box_Loading_Screen_Monitor_v2_25.Disabled", "box_Media_System_Custom_Broadcast_Controller_20.LoadAndPlayCustomBroadcast", l0, l1)
  l1:LoadAndPlayCustomBroadcast()
end
function export:f_box_Loading_Screen_Monitor_v2_25_LoadingScreenEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Loading_Screen_Monitor_v2_25()
  l0 = self.box_Loading_Screen_Monitor_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1929823443", "1929823443", "S07M030_Main", "box_Loading_Screen_Monitor_v2_25.LoadingScreenEnded", "box_Loading_Screen_Monitor_v2_25.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_454_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_S07_M030_CIN_TBoneReturns_Main_8
  l0.Unspawn_Wrench = self.WrenchTalkerClue
  l0.Unspawn_Sitara = self.SitaraTalkerClue
  l0.Unspawn_Josh = self.JoshTalkerClue
  l0.Unspawn_Horatio = self.HoratioTalkerClue
  l0 = self.box_Timer_v2_454
  l1 = self.box_S07_M030_CIN_TBoneReturns_Main_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1411749914", "1411749914", "S07M030_Main", "box_Timer_v2_454.TimeElapsed", "box_S07_M030_CIN_TBoneReturns_Main_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_515_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S07_M030_CIN_TrippingBalls_Main_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1720673052", "1720673052", "S07M030_Main", "box_Ordered_Output_515.Out", "box_S07_M030_CIN_TrippingBalls_Main_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_515_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_513()
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|850879500", "850879500", "S07M030_Main", "box_Ordered_Output_515.Out", "box_ParticleFXController_v2_513.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_515_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_609
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/3396338087.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|297930389", "297930389", "S07M030_Main", "box_Ordered_Output_515.Out", "box_PlaySound_v2_609.Play", clone, l0)
  l0:Play()
end
function export:f_box_RewardController_v3_269_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_S07_M030_CIN_BurningManTickets_Main_50
  l0.PlayerVar = self.PlayerEntity
  l0.TTeleportDestination = "9223372046684705912"
  l0.Is_Checkpoint0 = self.IS_Checkpoint0
  l0 = self.box_RewardController_v3_269
  l1 = self.box_S07_M030_CIN_BurningManTickets_Main_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1742787719", "1742787719", "S07M030_Main", "box_RewardController_v3_269.RewardsExecuted", "box_S07_M030_CIN_BurningManTickets_Main_50.In", l0, l1)
  l1:In()
end
function export:f_box_SmartphoneAppController_554_OverrideActivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S07M030"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0._name = "box_SetActionMap_v2_551"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1744654011"
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_box_SetActionMap_v2_551_Pushed
  l0.Popped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|60785673", "60785673", "S07M030_Main", "box_SmartphoneAppController_554.OverrideActivated", "box_SetActionMap_v2_551.Push", clone, l0)
  l0:Push()
end
function export:f_box_MultipleOR_527_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VrNodeController.lua")]
  l0.VRNode = "9223372054319668482"
  l0.AlarmTime = nil
  l0._graph = self
  l0._name = "box_VrNodeController_501"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|72354729"
  l0.IsSetAsAlarm = DummyFunction
  l0.IsUnSetAsAlarm = DummyFunction
  l0.NodeRotated = self.f_box_VrNodeController_501_NodeRotated
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_527
  l1 = Boxes[PathID("domino/System/VrNodeController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|323287030", "323287030", "S07M030_Main", "box_MultipleOR_527.Out", "box_VrNodeController_501.RotateNode", l0, l1)
  l1:RotateNode()
end
function export:f_box_Dynamic_Media_Controller_26_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162901"
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|746731563"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_24_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|709940710", "709940710", "S07M030_Main", "box_Dynamic_Media_Controller_26.ChannelChanged", "box_Dynamic_Media_Controller_24.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_HackableController_v2_475_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Perk_Controller_298
  l0.PerkListDB = "PerksList.9223372066516437560"
  l0 = self.box_HackableController_v2_475
  l1 = self.box_Perk_Controller_298
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1285208573", "1285208573", "S07M030_Main", "box_HackableController_v2_475.ProfilingDisabled", "box_Perk_Controller_298.RemovePerk", l0, l1)
  l1:RemovePerk()
end
function export:f_box_Timer_v2_47_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_345
  l0.Entity = self.Drone
  l0.SoundId = "soundbinary/4084034057.bnk"
  l0 = self.box_Timer_v2_47
  l1 = self.box_PlayDialog_v2_345
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|592957543", "592957543", "S07M030_Main", "box_Timer_v2_47.TimeElapsed", "box_PlayDialog_v2_345.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_404_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_454
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1842966606", "1842966606", "S07M030_Main", "box_Ordered_Output_404.Out", "box_Timer_v2_454.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_404_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_406"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1055182382"
  l0.Out = self.f_box_Simple_Node_406_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|369745650", "369745650", "S07M030_Main", "box_Ordered_Output_404.Out", "box_Simple_Node_406.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_404_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_464
  l0.Entity = "9223372062503941251"
  l0.SoundId = "soundbinary/3598191770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|928062523", "928062523", "S07M030_Main", "box_Ordered_Output_404.Out", "box_PlaySound_v2_464.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_404_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PlaySequence_v5_403()
  l0 = self.box_PlaySequence_v5_403
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1992810264", "1992810264", "S07M030_Main", "box_Ordered_Output_404.Out", "box_PlaySequence_v5_403.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_404_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_23
  l0.SoundId = "soundbinary/1218943957.bnk"
  l0.UseFacial = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1316908571", "1316908571", "S07M030_Main", "box_Ordered_Output_404.Out", "box_PlayDialog_v2_23.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_404_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S07M030_SCR_Main_280()
  l0 = self.box_S07M030_SCR_Main_280
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|677030210", "677030210", "S07M030_Main", "box_Ordered_Output_404.Out", "box_S07M030_SCR_Main_280.DedsecClueLoopStop", clone, l0)
  l0:DedsecClueLoopStop()
end
function export:f_box_CLOController_149_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_147
  l0.CLO = "9223372050330162099"
  l0 = self.box_CLOController_149
  l1 = self.box_CLOController_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|729267244", "729267244", "S07M030_Main", "box_CLOController_149.Deactivated", "box_CLOController_147.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_149_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_149
  self.JoshTalkerClue = l0.UserID
end
function export:f_box_MissionMessageController_v3_453_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1041746467"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_206_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_206_Out_1
  l0 = self.box_MissionMessageController_v3_453
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1687190323", "1687190323", "S07M030_Main", "box_MissionMessageController_v3_453.Out", "box_Ordered_Output_206.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_498_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_493()
  l0 = self.box_MultipleOR_493
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1849965473", "1849965473", "S07M030_Main", "box_Get_Player_ID_498.Out", "box_MultipleOR_493.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_548_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_550
  l0.CLO = "9223372055352992434"
  l0 = self.box_CLOController_548
  l1 = self.box_CLOController_550
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1004525116", "1004525116", "S07M030_Main", "box_CLOController_548.Deactivated", "box_CLOController_550.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_548_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_548
  self.Prime8_02 = l0.UserID
end
function export:f_box_MultipleOR_309_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_286()
  l0 = self.box_MultipleOR_309
  l1 = self.box_TriggerMonitor_v2_286
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1633161508", "1633161508", "S07M030_Main", "box_MultipleOR_309.Out", "box_TriggerMonitor_v2_286.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_247_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372068237653018"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_617"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1402065009"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_617_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_247
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|723734887", "723734887", "S07M030_Main", "box_MultipleOR_247.Out", "box_InteractionScriptController_617.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_364_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_336
  l0.SoundId = "soundbinary/494507144.bnk"
  l0 = self.box_Timer_v2_364
  l1 = self.box_PlaySound_v2_336
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1287723827", "1287723827", "S07M030_Main", "box_Timer_v2_364.TimeElapsed", "box_PlaySound_v2_336.Play", l0, l1)
  l1:Play()
end
function export:OnEnter_box_Interact_Gameplay_4()
  local l0
  l0 = self.box_Interact_Gameplay_4
  l0.Entity = "9223372068237653018"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Camera_Lock_Controller_520()
  local l0
  l0 = self.box_Camera_Lock_Controller_520
  l0.Target = "9223372065622401339"
  l0.Duration = 1
end
function export:OnEnter_box_MultipleOR_558()
end
function export:OnEnter_box_Hackable_Monitor_279()
  local l0
  l0 = self.box_Hackable_Monitor_279
  l0.HackableEntity = "9223372054319668472"
end
function export:OnEnter_box_S07M030_SCR_Main_280()
  local l0
  l0 = self.box_S07M030_SCR_Main_280
  l0.Sitara_Clue = self.SitaraTalkerClue
  l0.Wrench_Clue = self.WrenchTalkerClue
  l0.Josh_Clue = self.JoshTalkerClue
  l0.Horatio_Clue = self.HoratioTalkerClue
end
function export:OnEnter_box_InteractionScriptMonitor_v2_59()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_59
  l0.InteractionScriptEntity = self.Horatio
end
function export:OnEnter_box_InteractionScriptMonitor_v2_34()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_34
  l0.InteractionScriptEntity = self.Wrench
end
function export:OnEnter_box_Hackable_Monitor_585()
  local l0
  l0 = self.box_Hackable_Monitor_585
  l0.HackableEntity = "9223372054319668468"
end
function export:OnEnter_box_Hackable_Monitor_338()
  local l0
  l0 = self.box_Hackable_Monitor_338
  l0.HackableEntity = "9223372054319668470"
end
function export:OnEnter_box_ParticleFXController_v2_513()
  local l0
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372064329591639"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_513"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|649485446"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = self.f_box_ParticleFXController_v2_513_Stopped
  l0.Cleaned = DummyFunction
end
function export:OnEnter_box_Interact_Gameplay_119()
  local l0
  l0 = self.box_Interact_Gameplay_119
  l0.Entity = self.Sitara
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Talk",
    id = "317865"
  }
  l0.IsManagingInteraction = 0
end
function export:OnEnter_box_Multiple_AND_586()
end
function export:OnEnter_box_Camera_Lock_Controller_3()
  local l0
  l0 = self.box_Camera_Lock_Controller_3
  l0.Target = "9223372065622401339"
  l0.Duration = 1
end
function export:OnEnter_box_EnvironmentWeatherOverride_97()
  local l0
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057010350669"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = 0.5
  l0.SandstormTransitionDuration = 10
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|833264111"
  l0.Started = self.f_box_EnvironmentWeatherOverride_97_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = self.f_box_EnvironmentWeatherOverride_97_SandstormIntensitySet
  l0.Out = DummyFunction
end
function export:OnEnter_box_Timer_v2_503()
end
function export:OnEnter_box_Interact_Gameplay_120()
  local l0
  l0 = self.box_Interact_Gameplay_120
  l0.Entity = self.Josh
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Talk",
    id = "317865"
  }
  l0.IsManagingInteraction = 0
end
function export:OnEnter_box_MultipleOR_493()
end
function export:OnEnter_box_MultipleOR_227()
end
function export:OnEnter_box_Mission_End_41()
  local l0
  l0 = self.box_Mission_End_41
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S07M030_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_PlaySequence_v5_403()
  local l0
  l0 = self.box_PlaySequence_v5_403
  l0.SceneEntity = "9223372049574184370"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/s07_cryptobelisk.seq"
end
function export:OnEnter_box_Interact_Gameplay_121()
  local l0
  l0 = self.box_Interact_Gameplay_121
  l0.Entity = self.Wrench
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Talk",
    id = "317865"
  }
  l0.IsManagingInteraction = 0
end
function export:OnEnter_box_Hackable_Monitor_587()
  local l0
  l0 = self.box_Hackable_Monitor_587
  l0.HackableEntity = "9223372054319668470"
end
function export:OnEnter_box_Hackable_Monitor_588()
  local l0
  l0 = self.box_Hackable_Monitor_588
  l0.HackableEntity = "9223372054319668472"
end
function export:OnEnter_box_Hack_Gameplay_127()
  local l0
  l0 = self.box_Hack_Gameplay_127
  l0.Entity = "9223372048566368719"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 0
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_Multiple_AND_51()
end
function export:OnEnter_box_InteractionScriptController_616()
  local l0
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372068237653018"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_616"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1219233865"
  l0.Enabled = self.f_box_InteractionScriptController_616_Enabled
  l0.Disabled = self.f_box_InteractionScriptController_616_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Interact_Gameplay_128()
  local l0
  l0 = self.box_Interact_Gameplay_128
  l0.Entity = self.Horatio
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Talk",
    id = "317865"
  }
  l0.IsManagingInteraction = 0
end
function export:OnEnter_box_TriggerMonitor_v2_286()
  local l0
  l0 = self.box_TriggerMonitor_v2_286
  l0.Trigger = "9223372056574882560"
  l0.CheckNow = 1
end
function export:OnEnter_box_EnvironmentWeatherOverride_552()
  local l0
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057010350669"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = 1
  l0.SandstormTransitionDuration = 10
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_552"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1377296288"
  l0.Started = self.f_box_EnvironmentWeatherOverride_552_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = self.f_box_EnvironmentWeatherOverride_552_SandstormIntensitySet
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_389()
  local l0
  l0 = self.box_HackableController_v2_389
  l0.HackableEntity = self.ToyCarJosh
end
function export:OnEnter_box_MultipleOR_314()
end
function export:OnEnter_box_Hackable_Monitor_339()
  local l0
  l0 = self.box_Hackable_Monitor_339
  l0.HackableEntity = "9223372054319668468"
end
function export:OnEnter_box_EnvironmentWeatherOverride_2()
  local l0
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057010350669"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = 0.5
  l0.SandstormTransitionDuration = 10
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1588958715"
  l0.Started = self.f_box_EnvironmentWeatherOverride_2_Started
  l0.Stopped = DummyFunction
  l0.SandstormIntensitySet = self.f_box_EnvironmentWeatherOverride_2_SandstormIntensitySet
  l0.Out = DummyFunction
end
function export:OnEnter_box_Camera_Lock_Controller_545()
  local l0
  l0 = self.box_Camera_Lock_Controller_545
  l0.Target = "9223372064453263947"
  l0.Duration = 1
end
function export:OnEnter_box_TimerToScreen_385()
  local l0
  l0 = self.box_TimerToScreen_385
  l0.Seconds = 25
end
function export:OnEnter_box_Hack_Gameplay_516()
  local l0
  l0 = self.box_Hack_Gameplay_516
  l0.Entity = self.VR_Access
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_Hackable_Monitor_544()
  local l0
  l0 = self.box_Hackable_Monitor_544
  l0.HackableEntity = self.Drone
end
function export:OnEnter_box_Loading_Screen_Monitor_v2_466()
end
function export:OnEnter_box_MultipleOR_299()
end
function export:OnEnter_box_Hackable_Monitor_529()
  local l0
  l0 = self.box_Hackable_Monitor_529
  l0.HackableEntity = "9223372054319668482"
end
function export:OnEnter_box_EnvironmentWeatherOverride_455()
  local l0
  l0 = Boxes[PathID("domino/System/EnvironmentWeatherOverride.lua")]
  l0.Preset = "WeatherPreset.9223372057010350669"
  l0.FadeIn = 0
  l0.FadeOut = 0
  l0.SandstormIntensity = 0
  l0.SandstormTransitionDuration = 1
  l0._graph = self
  l0._name = "box_EnvironmentWeatherOverride_455"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M030.domino|@S07M030_Main|1928321263"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_EnvironmentWeatherOverride_455_Stopped
  l0.SandstormIntensitySet = self.f_box_EnvironmentWeatherOverride_455_SandstormIntensitySet
  l0.Out = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_300()
  local l0
  l0 = self.box_TriggerMonitor_v2_300
  l0.Trigger = "9223372056574882560"
  l0.CheckNow = 1
end
function export:OnEnter_box_Timer_v2_61()
  local l0
  l0 = self.box_Timer_v2_61
  l0.Seconds = 3
end
function export:OnEnter_box_Loading_Screen_Monitor_v2_25()
end
function export:OnEnter_box_MultipleOR_527()
end
function export:OnEnter_box_MultipleOR_309()
end
function export:OnEnter_box_MultipleOR_247()
end
_compilerVersion = 4
