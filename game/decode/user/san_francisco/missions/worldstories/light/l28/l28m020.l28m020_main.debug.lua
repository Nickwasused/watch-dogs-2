export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/FelonySystemController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/740073622.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L28M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main"
  self.PlayerEntity = nil
  self.ProximityTrigger_01 = "9223372049691848633"
  self.L28_StoryIcon_1 = "9223372049691848574"
  self.ProximityTrigger_02 = "9223372049691848635"
  self.L28_StoryIcon_2 = "9223372049691848637"
  self.ProximityTrigger_03 = "9223372049691848639"
  self.L28_StoryIcon_3 = "9223372049691848641"
  self.ProximityTrigger_04 = "9223372049691848645"
  self.L28_StoryIcon_4 = "9223372049691848643"
  self.ProximityTrigger_05 = "9223372049691848649"
  self.L28_StoryIcon_5 = "9223372049691848647"
  self.ProximityTrigger_06 = "9223372049691848653"
  self.L28_StoryIcon_6 = "9223372049691848651"
  self.DebugAnnotationTextEntity_363 = "9223372049902396709"
  self.LookAtTrigger_0 = "9223372050093338594"
  self.L28_StoryIcon_10 = "9223372051258696219"
  self.ProximityTrigger_3543 = "9223372051258696220"
  self.L28M020_VR_AccessNode_EXT_EntranceNodeEntity_Invisible_0 = "9223372053758656264"
  self.DebugAnnotationTextEntity_361 = "9223372049902396707"
  self.L28M020_CityLifeObject_SignalRelay_1 = "9223372057223392826"
  self.Signal_Relay_Delay = 0
  self.L28M020_CityLifeObject_SignalRelay_2 = "9223372057223392827"
  self.L28M020_CityLifeObject_SignalRelay_3 = "9223372057223392828"
  self.L28M020_CityLifeObject_SignalRelay_4 = "9223372057223392829"
  self.L28M020_CityLifeObject_SignalRelay_5 = "9223372057223392830"
  self.L28M020_CityLifeObject_SignalRelay_6 = "9223372057223392831"
  self.Keypad_HackableEntity_6 = "9223372057006493043"
  self.Keypad_HackableEntity_5 = "9223372057006493041"
  self.Hinge_Hackable_Door_1 = "9223372057006493035"
  self.box_MissionLayer_v2_18 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_18
  l0._graph = self
  l0._name = "box_MissionLayer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|166021282"
  l0.Loaded = self.f_box_MissionLayer_v2_18_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_15 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_15
  l0._graph = self
  l0._name = "box_MissionLayer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|219091288"
  l0.Loaded = self.f_box_MissionLayer_v2_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|255555040"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_Moveable_Entity_Monitor_4 = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self.box_Moveable_Entity_Monitor_4
  l0._graph = self
  l0._name = "box_Moveable_Entity_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|420256040"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Moveable_Entity_Monitor_4_Disabled
  l0.OnMovementStarted = self.f_box_Moveable_Entity_Monitor_4_OnMovementStarted
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = DummyFunction
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = DummyFunction
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self.box_MissionCheckpointReach_14 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_14
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|487381947"
  l0.Out = self.f_box_MissionCheckpointReach_14_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_10 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_10
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|507778786"
  l0.Out = self.f_box_MissionCheckpointReach_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hackable_Door_Controller_43 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_43
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|551591308"
  l0.AiAccessEnabled = self.f_box_Hackable_Door_Controller_43_AiAccessEnabled
  l0.AiAccessDisabled = DummyFunction
  self.box_MissionLayer_v2_16 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_16
  l0._graph = self
  l0._name = "box_MissionLayer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|560778399"
  l0.Loaded = self.f_box_MissionLayer_v2_16_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_L28M020_RelayController_32 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  l0 = self.box_L28M020_RelayController_32
  l0._graph = self
  l0._name = "box_L28M020_RelayController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|618475668"
  l0.Out = self.f_box_L28M020_RelayController_32_Out
  self.box_L28M020_RelayController_27 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  l0 = self.box_L28M020_RelayController_27
  l0._graph = self
  l0._name = "box_L28M020_RelayController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|634469333"
  l0.Out = self.f_box_L28M020_RelayController_27_Out
  self.box_PlayDialog_v2_39 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_39
  l0._graph = self
  l0._name = "box_PlayDialog_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|682643604"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_39_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionController_v4_13 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_13
  l0._graph = self
  l0._name = "box_MissionController_v4_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|706402713"
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|743701320"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_7_PostOut
  self.box_MissionLayer_v2_12 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_12
  l0._graph = self
  l0._name = "box_MissionLayer_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|781210142"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_12_Unloaded
  l0.Reseted = DummyFunction
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|819782324"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Reward_Phone_Call_Monitor_22 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_22
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|909594997"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_22_OnPhoneCallEnded
  self.box_MultipleOR_25 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1027590641"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_RewardController_v3_21 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_21
  l0._graph = self
  l0._name = "box_RewardController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1065071796"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_21_RewardsExecuted
  self.box_Hackable_Door_Controller_41 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_41
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1180628213"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_41_AiAccessDisabled
  self.box_L28M020_RelayController_31 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  l0 = self.box_L28M020_RelayController_31
  l0._graph = self
  l0._name = "box_L28M020_RelayController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1282169030"
  l0.Out = self.f_box_L28M020_RelayController_31_Out
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1453185471"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_L28M020_RelayController_30 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  l0 = self.box_L28M020_RelayController_30
  l0._graph = self
  l0._name = "box_L28M020_RelayController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1461716982"
  l0.Out = self.f_box_L28M020_RelayController_30_Out
  self.box_RewardController_v3_50 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_50
  l0._graph = self
  l0._name = "box_RewardController_v3_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1580629945"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_box_RewardController_v3_50_RewardsExecuted
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1588084550"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1630008024"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_2_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Locate_Gameplay_26 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Locate_Gameplay_26
  l0._graph = self
  l0._name = "box_FreeRoam_Locate_Gameplay_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1638751381"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_box_FreeRoam_Locate_Gameplay_26_Located
  self.box_Hackable_Door_Controller_42 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_42
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1666883515"
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = self.f_box_Hackable_Door_Controller_42_AiAccessDisabled
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1673356060"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_L28M020_RelayController_29 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  l0 = self.box_L28M020_RelayController_29
  l0._graph = self
  l0._name = "box_L28M020_RelayController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1697303185"
  l0.Out = self.f_box_L28M020_RelayController_29_Out
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1784759603"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_1_PostOut
  self.box_L28M020_RelayController_28 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Light/L28/L28M020.L28M020_RelayController.debug.lua")
  l0 = self.box_L28M020_RelayController_28
  l0._graph = self
  l0._name = "box_L28M020_RelayController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1785340198"
  l0.Out = self.f_box_L28M020_RelayController_28_Out
  self.box_MissionLayer_v2_9 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_9
  l0._graph = self
  l0._name = "box_MissionLayer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1889056119"
  l0.Loaded = self.f_box_MissionLayer_v2_9_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1891537955"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1962723491"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_MissionMessageController_v3_6 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_6
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|2018319655"
  l0.Out = self.f_box_MissionMessageController_v3_6_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|2071428788"
  l0.Out = self.f_box_MissionCheckpointReach_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
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
  l0 = self.box_MissionLayer_v2_15
  l0.LayerName = "L28M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|796764611", "796764611", "L28M020_Main", "CheckPoint_0", "box_MissionLayer_v2_15.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_16
  l0.LayerName = "L28M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1927155186", "1927155186", "L28M020_Main", "CheckPoint_1", "box_MissionLayer_v2_16.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_18
  l0.LayerName = "L28M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1037204193", "1037204193", "L28M020_Main", "CheckPoint_2", "box_MissionLayer_v2_18.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_9
  l0.LayerName = "L28M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1367955425", "1367955425", "L28M020_Main", "In", "box_MissionLayer_v2_9.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionLayer_v2_18_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionLayer_v2_18
  l1 = self.box_CinematicPrep_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1957609982", "1957609982", "L28M020_Main", "box_MissionLayer_v2_18.Loaded", "box_CinematicPrep_8.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionLayer_v2_15_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372071858418912"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|649274001"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_45_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_15
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|652684208", "652684208", "L28M020_Main", "box_MissionLayer_v2_15.Loaded", "box_VisibilityController_v2_45.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1965842563"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_FelonySystemController_v2_38_Enabled
  l0.Disabled = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_MultipleOR_17
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|479363067", "479363067", "L28M020_Main", "box_MultipleOR_17.Out", "box_FelonySystemController_v2_38.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CollisionController_47_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372064798135287"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1124362351"
  l0.ByIndexSet = self.f_box_MaterialController_33_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|429913840", "429913840", "L28M020_Main", "box_CollisionController_47.CollisionsDisabled", "box_MaterialController_33.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Moveable_Entity_Monitor_4_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_50
  l0.ItemDB = "Items.9223372049902191269"
  l0 = self.box_Moveable_Entity_Monitor_4
  l1 = self.box_RewardController_v3_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|16926199", "16926199", "L28M020_Main", "box_Moveable_Entity_Monitor_4.Disabled", "box_RewardController_v3_50.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Moveable_Entity_Monitor_4_OnMovementStarted()
  local l0
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_4()
  l0 = self.box_Moveable_Entity_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|69686642", "69686642", "L28M020_Main", "box_Moveable_Entity_Monitor_4.OnMovementStarted", "box_Moveable_Entity_Monitor_4.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_21
  l0.ItemDB = "Items.9223372050357367273"
  l0 = self.box_MissionCheckpointReach_14
  l1 = self.box_RewardController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1993806772", "1993806772", "L28M020_Main", "box_MissionCheckpointReach_14.Out", "box_RewardController_v3_21.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_MissionCheckpointReach_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0.IncrementalObjectiveTotal = 6
  l0 = self.box_MissionCheckpointReach_10
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1308252426", "1308252426", "L28M020_Main", "box_MissionCheckpointReach_10.Out", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Hackable_Door_Controller_43_AiAccessEnabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_Hackable_Door_Controller_43
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1856579444", "1856579444", "L28M020_Main", "box_Hackable_Door_Controller_43.AiAccessEnabled", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionLayer_v2_16_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372071858418912"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1351997963"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_46_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_16
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1639166168", "1639166168", "L28M020_Main", "box_MissionLayer_v2_16.Loaded", "box_VisibilityController_v2_46.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_L28M020_RelayController_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_39
  l0.SoundId = "soundbinary/740073622.bnk"
  l0 = self.box_L28M020_RelayController_32
  l1 = self.box_PlayDialog_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1474883625", "1474883625", "L28M020_Main", "box_L28M020_RelayController_32.Out", "box_PlayDialog_v2_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_L28M020_RelayController_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_L28M020_RelayController_28
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_2
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0 = self.box_L28M020_RelayController_27
  l1 = self.box_L28M020_RelayController_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|222992499", "222992499", "L28M020_Main", "box_L28M020_RelayController_27.Out", "box_L28M020_RelayController_28.EnableMonitor", l0, l1)
  l1:EnableMonitor()
end
function export:f_box_VisibilityController_v2_45_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372071858418912"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1700510423"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_49_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1624578862", "1624578862", "L28M020_Main", "box_VisibilityController_v2_45.Hidden", "box_CollisionController_49.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_MaterialController_36_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1074018596"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_24_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1728849836", "1728849836", "L28M020_Main", "box_MaterialController_36.ByIndexSet", "box_MoveableEntityController_24.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_PlayDialog_v2_39_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_40
  l0.Seconds = 3
  l0 = self.box_PlayDialog_v2_39
  l1 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|264840307", "264840307", "L28M020_Main", "box_PlayDialog_v2_39.Finished", "box_Timer_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_7_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_CinematicPrep_7
  l1 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1236194858", "1236194858", "L28M020_Main", "box_CinematicPrep_7.PostOut", "box_MultipleOR_17.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionLayer_v2_12_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l1 = self.box_MissionController_v4_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1368499715", "1368499715", "L28M020_Main", "box_MissionLayer_v2_12.Unloaded", "box_MissionController_v4_13.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_12
  l0.LayerName = "L28M020_Main"
  l0 = self.box_Timer_v2_40
  l1 = self.box_MissionLayer_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1957713252", "1957713252", "L28M020_Main", "box_Timer_v2_40.TimeElapsed", "box_MissionLayer_v2_12.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Reward_Phone_Call_Monitor_22_OnPhoneCallEnded()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367343"
  l0 = self.box_Reward_Phone_Call_Monitor_22
  l1 = self.box_PhoneCommunicationController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|53926298", "53926298", "L28M020_Main", "box_Reward_Phone_Call_Monitor_22.OnPhoneCallEnded", "box_PhoneCommunicationController_20.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FelonySystemController_v2_37_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|194471404", "194471404", "L28M020_Main", "box_FelonySystemController_v2_37.Disabled", "box_MultipleOR_25.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_14
  l0.CheckpointList = "CheckPoint_0"
  l0 = self.box_MultipleOR_25
  l1 = self.box_MissionCheckpointReach_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1743530388", "1743530388", "L28M020_Main", "box_MultipleOR_25.Out", "box_MissionCheckpointReach_14.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_21_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Reward_Phone_Call_Monitor_22
  l0.ItemDb = "Items.9223372050357367273"
  l0 = self.box_RewardController_v3_21
  l1 = self.box_Reward_Phone_Call_Monitor_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|717081553", "717081553", "L28M020_Main", "box_RewardController_v3_21.RewardsExecuted", "box_Reward_Phone_Call_Monitor_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MoveableEntityController_24_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Door_Controller_42
  l0.Entity = "9223372057006493035"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1055898915", "1055898915", "L28M020_Main", "box_MoveableEntityController_24.MovedBackward", "box_Hackable_Door_Controller_42.DisableAiAccess", clone, l0)
  l0:DisableAiAccess()
end
function export:f_box_MaterialController_33_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1554494806", "1554494806", "L28M020_Main", "box_MaterialController_33.ByIndexSet", "box_CinematicPrep_7.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_FelonySystemController_v2_34_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1729811418", "1729811418", "L28M020_Main", "box_FelonySystemController_v2_34.Disabled", "box_CinematicPrep_1.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Hackable_Door_Controller_41_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1022214728"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_37_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_Hackable_Door_Controller_41
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1911518039", "1911518039", "L28M020_Main", "box_Hackable_Door_Controller_41.AiAccessDisabled", "box_FelonySystemController_v2_37.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VisibilityController_v2_44_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372071858418912"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1314423573"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_48_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|308523245", "308523245", "L28M020_Main", "box_VisibilityController_v2_44.Hidden", "box_CollisionController_48.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_L28M020_RelayController_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_L28M020_RelayController_32
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_6
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0 = self.box_L28M020_RelayController_31
  l1 = self.box_L28M020_RelayController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|534726288", "534726288", "L28M020_Main", "box_L28M020_RelayController_31.Out", "box_L28M020_RelayController_32.EnableMonitor", l0, l1)
  l1:EnableMonitor()
end
function export:f_box_CollisionController_48_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372064798135287"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1874556506"
  l0.ByIndexSet = self.f_box_MaterialController_35_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|872405438", "872405438", "L28M020_Main", "box_CollisionController_48.CollisionsDisabled", "box_MaterialController_35.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_VisibilityController_v2_46_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372071858418912"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|365845609"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_47_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|811248872", "811248872", "L28M020_Main", "box_VisibilityController_v2_46.Hidden", "box_CollisionController_47.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_10
  l0.CheckpointList = "CheckPoint_2"
  l0 = self.box_MultipleOR_19
  l1 = self.box_MissionCheckpointReach_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1660091623", "1660091623", "L28M020_Main", "box_MultipleOR_19.Out", "box_MissionCheckpointReach_10.In", l0, l1)
  l1:In()
end
function export:f_box_L28M020_RelayController_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_L28M020_RelayController_31
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_5
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0 = self.box_L28M020_RelayController_30
  l1 = self.box_L28M020_RelayController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1347799814", "1347799814", "L28M020_Main", "box_L28M020_RelayController_30.Out", "box_L28M020_RelayController_31.EnableMonitor", l0, l1)
  l1:EnableMonitor()
end
function export:f_box_RewardController_v3_50_RewardsExecuted()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Door_Controller_43
  l0.Entity = "9223372057006493035"
  l0 = self.box_RewardController_v3_50
  l1 = self.box_Hackable_Door_Controller_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|791419876", "791419876", "L28M020_Main", "box_RewardController_v3_50.RewardsExecuted", "box_Hackable_Door_Controller_43.EnableAiAccess", l0, l1)
  l1:EnableAiAccess()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_Locate_Gameplay_26
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079984"
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_FreeRoam_Locate_Gameplay_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|437736841", "437736841", "L28M020_Main", "box_MissionMessageController_v3_3.Out", "box_FreeRoam_Locate_Gameplay_26.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_2_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020a.Objectives.Objective010",
    item = "Objective",
    id = "550107"
  }
  l0 = self.box_PhoneCommunicationController_2
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1015629598", "1015629598", "L28M020_Main", "box_PhoneCommunicationController_2.OnCommunicationFinished", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_Locate_Gameplay_26_Located()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_FreeRoam_Locate_Gameplay_26
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|76229752", "76229752", "L28M020_Main", "box_FreeRoam_Locate_Gameplay_26.Located", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Hackable_Door_Controller_42_AiAccessDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  l0.AffectMediaSystem = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0._name = "box_FelonySystemController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1141335152"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_FelonySystemController_v2_34_Disabled
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0 = self.box_Hackable_Door_Controller_42
  l1 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1491303749", "1491303749", "L28M020_Main", "box_Hackable_Door_Controller_42.AiAccessDisabled", "box_FelonySystemController_v2_34.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PhoneCommunicationController_20_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_6
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020a.Objectives.Objective005",
    item = "Objective",
    id = "603669"
  }
  l0 = self.box_PhoneCommunicationController_20
  l1 = self.box_MissionMessageController_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|2066682218", "2066682218", "L28M020_Main", "box_PhoneCommunicationController_20.OnCommunicationFinished", "box_MissionMessageController_v3_6.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_L28M020_RelayController_29_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_L28M020_RelayController_30
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_4
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0 = self.box_L28M020_RelayController_29
  l1 = self.box_L28M020_RelayController_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|327239988", "327239988", "L28M020_Main", "box_L28M020_RelayController_29.Out", "box_L28M020_RelayController_30.EnableMonitor", l0, l1)
  l1:EnableMonitor()
end
function export:f_box_CollisionController_49_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372064798135287"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|672795203"
  l0.ByIndexSet = self.f_box_MaterialController_36_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1357239914", "1357239914", "L28M020_Main", "box_CollisionController_49.CollisionsDisabled", "box_MaterialController_36.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_CinematicPrep_1_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_CinematicPrep_1
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|462758387", "462758387", "L28M020_Main", "box_CinematicPrep_1.PostOut", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_L28M020_RelayController_28_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_L28M020_RelayController_29
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_3
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0 = self.box_L28M020_RelayController_28
  l1 = self.box_L28M020_RelayController_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1236461392", "1236461392", "L28M020_Main", "box_L28M020_RelayController_28.Out", "box_L28M020_RelayController_29.EnableMonitor", l0, l1)
  l1:EnableMonitor()
end
function export:f_box_MaterialController_35_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|2001921753"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_23_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|693317154", "693317154", "L28M020_Main", "box_MaterialController_35.ByIndexSet", "box_MoveableEntityController_23.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_MissionLayer_v2_9_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372071858418912"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1280869749"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_44_Hidden
  l0.Out = DummyFunction
  l0 = self.box_MissionLayer_v2_9
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|339101176", "339101176", "L28M020_Main", "box_MissionLayer_v2_9.Loaded", "box_VisibilityController_v2_44.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_L28M020_RelayController_27
  l0.CLO = self.L28M020_CityLifeObject_SignalRelay_1
  l0.IncrementObjective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M020b.Objectives.Objective010",
    item = "Objective",
    id = "603673"
  }
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_L28M020_RelayController_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1881469032", "1881469032", "L28M020_Main", "box_MissionMessageController_v3_5.Out", "box_L28M020_RelayController_27.EnableMonitor", l0, l1)
  l1:EnableMonitor()
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_CinematicPrep_8
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1741974496", "1741974496", "L28M020_Main", "box_CinematicPrep_8.PostOut", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_FelonySystemController_v2_38_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonySystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_11
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|3479566", "3479566", "L28M020_Main", "box_FelonySystemController_v2_38.Enabled", "box_MissionCheckpointReach_11.In", clone, l0)
  l0:In()
end
function export:f_box_MoveableEntityController_23_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Door_Controller_41
  l0.Entity = "9223372057006493035"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1197717575", "1197717575", "L28M020_Main", "box_MoveableEntityController_23.MovedBackward", "box_Hackable_Door_Controller_41.DisableAiAccess", clone, l0)
  l0:DisableAiAccess()
end
function export:f_box_MissionMessageController_v3_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Moveable_Entity_Monitor_4()
  l0 = self.box_MissionMessageController_v3_6
  l1 = self.box_Moveable_Entity_Monitor_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|1922165069", "1922165069", "L28M020_Main", "box_MissionMessageController_v3_6.Out", "box_Moveable_Entity_Monitor_4.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367344"
  l0 = self.box_MissionCheckpointReach_11
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M020.domino|@L28M020_Main|48672052", "48672052", "L28M020_Main", "box_MissionCheckpointReach_11.Out", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_Moveable_Entity_Monitor_4()
  local l0
  l0 = self.box_Moveable_Entity_Monitor_4
  l0.MoveableEntity = self.Hinge_Hackable_Door_1
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_MultipleOR_19()
end
_compilerVersion = 4
