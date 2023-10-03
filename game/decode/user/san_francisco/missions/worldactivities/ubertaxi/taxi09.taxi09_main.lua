export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  cbox:RegisterBox("domino/System/GameplayInteractionController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  cbox:RegisterBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  cbox:RegisterBox("domino/System/TaxiRatingController.lua")
  cbox:RegisterBox("domino/System/TaxiRidePickUpController.lua")
  cbox:RegisterBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiRideVehicleMonitor.lua")
  cbox:RegisterBox("domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
  cbox:LoadResource("soundbinary/263603219.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/638086499.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1038561728.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3884384578.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4080018232.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.PlayerVehicle = nil
  self.Mission = "MissionList.9223372046858868495"
  self.ClientCLO = "9223372046858693747"
  self.RobotAreaFound = 0
  self.RobotCLO = "9223372046858872551"
  self.Robot = nil
  self.Taxi09_SearchArea_1 = "9223372046858868494"
  self.Taxi09_SearchArea_2 = "9223372046858870247"
  self.MissionTarget_Taxi09_Icon_SearchArea_1 = "9223372046858868822"
  self.MissionTarget_Taxi09_Icon_SearchArea_2 = "9223372046858870249"
  self.MissionTarget_Taxi09_Icon_SearchArea_3 = "9223372046858870538"
  self.GIC_Users = {}
  self.Doc = nil
  self.SearchTimer = 0
  self.A2_Visible = 0
  self.A3_Visible = 0
  self.A1_Visible = 0
  self.InteractionID = 0
  self[82] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[82]
  l0._graph = self
  l0.Out = self.f_82_Out
  l0.SetTrue = self.f_82_SetTrue
  l0.SetFalse = self.f_82_SetFalse
  l0.Toggled = self.f_82_Toggled
  l0.SetFromBool = self.f_82_SetFromBool
  self[51] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Loaded = self.f_51_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[76] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = self.f_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[14] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.SetTrue = self.f_14_SetTrue
  l0.SetFalse = self.f_14_SetFalse
  l0.Toggled = self.f_14_Toggled
  l0.SetFromBool = self.f_14_SetFromBool
  self[72] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[72]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = self.f_72_RatingReset
  l0.RewardShown = DummyFunction
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_15_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
  self[66] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[30] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_30_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[193] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[193]
  l0._graph = self
  l0._DynamicAnchors = {Output = 3}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_193_Output_0
  l0.Output[1] = self.f_193_Output_1
  l0.Output[2] = self.f_193_Output_2
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[48] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = self.f_48_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_48_Closed
  self[94] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[94]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_94_AllCheckpointsDisabled
  self[79] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Out = self.f_79_Out
  l0.SetTrue = self.f_79_SetTrue
  l0.SetFalse = self.f_79_SetFalse
  l0.Toggled = self.f_79_Toggled
  l0.SetFromBool = self.f_79_SetFromBool
  self[91] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[91]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_91_Unloaded
  l0.Reseted = DummyFunction
  self[73] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_AbortMission.lua")
  l0 = self[73]
  l0._graph = self
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_29_Out
  self[23] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_23_Unloaded
  l0.Reseted = DummyFunction
  self[110] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[110]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_110_Out
  self[19] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.SetTrue = self.f_19_SetTrue
  l0.SetFalse = self.f_19_SetFalse
  l0.Toggled = self.f_19_Toggled
  l0.SetFromBool = self.f_19_SetFromBool
  self[2] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  self[46] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_46_Closed
  self[4] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = self.f_4_Paused
  l0.Resumed = DummyFunction
  self[78] = cbox:CreateBox("domino/System/TaxiRidePickUpController.lua")
  l0 = self[78]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_78_Disabled
  l0.ClientSpawned = self.f_78_ClientSpawned
  l0.ClientPickedUp = self.f_78_ClientPickedUp
  l0.ClientConversationFinised = self.f_78_ClientConversationFinised
  self[103] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[103]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_103_Out
  self[123] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  l0 = self[123]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnteredArea = self.f_123_EnteredArea
  l0.ExitedArea = self.f_123_ExitedArea
  self[27] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[175] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[175]
  l0._graph = self
  l0.Out = self.f_175_Out
  l0.SetTrue = self.f_175_SetTrue
  l0.SetFalse = self.f_175_SetFalse
  l0.Toggled = self.f_175_Toggled
  l0.SetFromBool = self.f_175_SetFromBool
  self[126] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[126]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_126_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_126_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_6_Out
  self[74] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[74]
  l0._graph = self
  l0.Started = self.f_74_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[114] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[114]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_114_Out
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[118] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[118]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_118_Out
  self[158] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  l0 = self[158]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnteredArea = self.f_158_EnteredArea
  l0.ExitedArea = self.f_158_ExitedArea
  self[92] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[92]
  l0._graph = self
  self[50] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_50_Out
  self[32] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[32]
  l0._graph = self
  self[21] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[57] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.SetTrue = self.f_57_SetTrue
  l0.SetFalse = self.f_57_SetFalse
  l0.Toggled = self.f_57_Toggled
  l0.SetFromBool = self.f_57_SetFromBool
  self[98] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[98]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_98_Out
  self[59] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[59]
  l0._graph = self
  l0.Out = self.f_59_Out
  l0.SetTrue = self.f_59_SetTrue
  l0.SetFalse = self.f_59_SetFalse
  l0.Toggled = self.f_59_Toggled
  l0.SetFromBool = self.f_59_SetFromBool
  self[88] = cbox:CreateBox("domino/System/GameplayInteractionController.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  self[81] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[135] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[135]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_135_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[75] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = self.f_75_Out
  l0.SetTrue = self.f_75_SetTrue
  l0.SetFalse = self.f_75_SetFalse
  l0.Toggled = self.f_75_Toggled
  l0.SetFromBool = self.f_75_SetFromBool
  self[52] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Out = self.f_52_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_52_Closed
  self[8] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[64] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[64]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  self[37] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_37_Closed
  self[3] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_3_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[95] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_95_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[83] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[83]
  l0._graph = self
  l0.Out = self.f_83_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_83_Closed
  self[7] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_7_Out
  l0.ResetOut = DummyFunction
  self[117] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[117]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_117_Out
  self[28] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[54] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Activated = self.f_54_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_54_OnUserInPlace
  self[55] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_55_Added
  l0.Removed = self.f_55_Removed
  l0.Out = self.f_55_Out
  self[31] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[31]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = DummyFunction
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = DummyFunction
  self[16] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_16_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_16_TalkFailed
  self[39] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_39_Closed
  self[104] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[104]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_104_Out
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_1_PostOut
  self[41] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_41_Out
  self[80] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = self.f_80_Out
  l0.SetTrue = self.f_80_SetTrue
  l0.SetFalse = self.f_80_SetFalse
  l0.Toggled = self.f_80_Toggled
  l0.SetFromBool = self.f_80_SetFromBool
  self[10] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_10_Enter
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = self.f_10_Exiting
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
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[53] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = self.f_53_Out
  l0.SetTrue = self.f_53_SetTrue
  l0.SetFalse = self.f_53_SetFalse
  l0.Toggled = self.f_53_Toggled
  l0.SetFromBool = self.f_53_SetFromBool
  self[109] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[109]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_109_EnterRadius
  l0.ExitRadius = self.f_109_ExitRadius
  self[45] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0.MessageCompleted = DummyFunction
  self[60] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0.Out = self.f_60_Out
  l0.SetTrue = self.f_60_SetTrue
  l0.SetFalse = self.f_60_SetFalse
  l0.Toggled = self.f_60_Toggled
  l0.SetFromBool = self.f_60_SetFromBool
  self[12] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.SetTrue = self.f_12_SetTrue
  l0.SetFalse = self.f_12_SetFalse
  l0.Toggled = self.f_12_Toggled
  l0.SetFromBool = self.f_12_SetFromBool
  self[143] = cbox:CreateBox("domino/Library/singleplayer/taxi/Taxi_Missions.Taxi_SearchArea.lua")
  l0 = self[143]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnteredArea = self.f_143_EnteredArea
  l0.ExitedArea = self.f_143_ExitedArea
  self[5] = cbox:CreateBox("domino/System/TaxiRatingController.lua")
  l0 = self[5]
  l0._graph = self
  l0.RatingShown = DummyFunction
  l0.RatingHidden = DummyFunction
  l0.RatingReset = DummyFunction
  l0.RewardShown = self.f_5_RewardShown
  l0.RatingAdded = DummyFunction
  l0.RatingRemoved = DummyFunction
  self[18] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_18_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[69] = cbox:CreateBox("domino/System/TaxiRideVehicleMonitor.lua")
  l0 = self[69]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ClientDeath = self.f_69_ClientDeath
  l0.VehicleUnusable = self.f_69_VehicleUnusable
  l0.ClientBailedOut = self.f_69_ClientBailedOut
  l0.PlayerAbandonedVehicle = self.f_69_PlayerAbandonedVehicle
  self[96] = cbox:CreateBox("domino/System/TaxiStrategiesController.lua")
  l0 = self[96]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_96_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[102] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[102]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_102_Out
  self[153] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[153]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_153_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_153_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[116] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[116]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_116_Out
  self[9] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_9_Out
  l0.ResetOut = DummyFunction
  self[105] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_105_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[97] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[25] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[25]
  l0._graph = self
  l0.Started = self.f_25_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_25_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_25_TalkFailed
  self[42] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_42_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[33] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.SetTrue = self.f_33_SetTrue
  l0.SetFalse = self.f_33_SetFalse
  l0.Toggled = self.f_33_Toggled
  l0.SetFromBool = self.f_33_SetFromBool
  self[22] = cbox:CreateBox("domino/Library/common/Narrative.DriveAndTalk.lua")
  l0 = self[22]
  l0._graph = self
  l0.Started = self.f_22_Started
  l0.Stopped = DummyFunction
  l0.TalkStarted = DummyFunction
  l0.TalkPaused = DummyFunction
  l0.TalkFinished = self.f_22_TalkFinished
  l0.TalkResumed = DummyFunction
  l0.TalkFailed = self.f_22_TalkFailed
  self[77] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = self.f_77_Out
  l0.MessageCompleted = DummyFunction
  self[40] = cbox:CreateBox("domino/System/TaxiRideReachDestinationMonitor.lua")
  l0 = self[40]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_40_Disabled
  l0.ReachDestination = self.f_40_ReachDestination
  l0.ClientDropOff = self.f_40_ClientDropOff
  self[24] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = self.f_24_Out
  l0.SetTrue = self.f_24_SetTrue
  l0.SetFalse = self.f_24_SetFalse
  l0.Toggled = self.f_24_Toggled
  l0.SetFromBool = self.f_24_SetFromBool
  self[90] = cbox:CreateBox("domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[90]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_90_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[205] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[205]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_205_Out
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_35_Out
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
  l0 = self[20]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[20]
  l0:Input(0)
end
function export:f_174_Out_0()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In()
end
function export:f_174_Out_1()
  local l0
  self = self._graph
  l0 = self[46]
  l0:In()
end
function export:f_174_Out_2()
  local l0
  self = self._graph
  l0 = self[39]
  l0:In()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = self[82]
  self.A1_Visible = l0.Target
end
function export:f_82_SetFalse()
  local l0
  self = self._graph
  l0 = self[82]
  self.A1_Visible = l0.Target
  l0 = self[57]
  l0:False()
end
function export:f_82_SetFromBool()
  local l0
  self = self._graph
  l0 = self[82]
  self.A1_Visible = l0.Target
end
function export:f_82_SetTrue()
  local l0
  self = self._graph
  l0 = self[82]
  self.A1_Visible = l0.Target
end
function export:f_82_Toggled()
  local l0
  self = self._graph
  l0 = self[82]
  self.A1_Visible = l0.Target
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_34_Out
  l0:In()
end
function export:f_51_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_76_Out()
  local l0
  self = self._graph
  l0 = self[75]
  l0.Bool = 0
  l0:FromBool()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[14]
  self.A3_Visible = l0.Target
end
function export:f_14_SetFalse()
  local l0
  self = self._graph
  l0 = self[14]
  self.A3_Visible = l0.Target
end
function export:f_14_SetFromBool()
  local l0
  self = self._graph
  l0 = self[14]
  self.A3_Visible = l0.Target
end
function export:f_14_SetTrue()
  local l0
  self = self._graph
  l0 = self[14]
  self.A3_Visible = l0.Target
  self:en_78()
  l0 = self[78]
  l0:Enable()
end
function export:f_14_Toggled()
  local l0
  self = self._graph
  l0 = self[14]
  self.A3_Visible = l0.Target
end
function export:f_72_RatingReset()
  local l0
  self = self._graph
  l0 = self[74]
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0:Start()
end
function export:f_15_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0.MissionName = self.Mission
  l0:ShowReward()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.LayerName = "Taxi09_Main"
  l0:Load()
end
function export:f_30_TimeElapsed()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Start()
end
function export:f_193_Output_0()
  local l0
  self = self._graph
  l0 = self[65]
  l0.SoundId = "soundbinary/638086499.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_193_Output_1()
  local l0
  self = self._graph
  l0 = self[64]
  l0.SoundId = "soundbinary/263603219.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_193_Output_2()
  local l0
  self = self._graph
  l0 = self[66]
  l0.SoundId = "soundbinary/1038561728.bnk"
  l0.Queue = 1
  l0:Start()
end
function export:f_48_Closed()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_94_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = self[91]
  l0.LayerName = "Taxi09_Main"
  l0:Unload()
end
function export:f_79_Out()
  local l0
  self = self._graph
  l0 = self[79]
  self.A3_Visible = l0.Target
end
function export:f_79_SetFalse()
  local l0
  self = self._graph
  l0 = self[79]
  self.A3_Visible = l0.Target
  self:en_126()
  l0 = self[126]
  l0:Start()
end
function export:f_79_SetFromBool()
  local l0
  self = self._graph
  l0 = self[79]
  self.A3_Visible = l0.Target
end
function export:f_79_SetTrue()
  local l0
  self = self._graph
  l0 = self[79]
  self.A3_Visible = l0.Target
end
function export:f_79_Toggled()
  local l0
  self = self._graph
  l0 = self[79]
  self.A3_Visible = l0.Target
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_112_Out
  l0:In()
end
function export:f_91_Unloaded()
  local l0
  self = self._graph
  l0 = self[92]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailRobotDestroyed",
    id = "688544"
  }
  l0:Fail()
end
function export:f_100_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_100_Out_1()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(1)
end
function export:f_100_Out_2()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Input(0)
end
function export:f_100_Out_3()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(1)
end
function export:f_58_Out_0()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Close()
end
function export:f_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_86_Out
  l0:In()
end
function export:f_58_Out_2()
  local l0
  self = self._graph
  l0 = self[102]
  l0:Input(2)
end
function export:f_38_A_is_True()
  local l0
  self = self._graph
  l0 = self[37]
  l0:In()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(0)
end
function export:f_99_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:In(0)
end
function export:f_99_Out_1()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(0)
end
function export:f_99_Out_2()
  local l0
  self = self._graph
  l0 = self[104]
  l0:Input(0)
end
function export:f_23_Unloaded()
  local l0
  self = self._graph
  l0 = self[32]
  l0:Succeed()
end
function export:f_110_Out()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Disable()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[19]
  self.A3_Visible = l0.Target
end
function export:f_19_SetFalse()
  local l0
  self = self._graph
  l0 = self[19]
  self.A3_Visible = l0.Target
  self:en_135()
  l0 = self[135]
  l0:Start()
end
function export:f_19_SetFromBool()
  local l0
  self = self._graph
  l0 = self[19]
  self.A3_Visible = l0.Target
end
function export:f_19_SetTrue()
  local l0
  self = self._graph
  l0 = self[19]
  self.A3_Visible = l0.Target
end
function export:f_19_Toggled()
  local l0
  self = self._graph
  l0 = self[19]
  self.A3_Visible = l0.Target
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[2]
  self.InteractionID = l0.interactionId
  l0 = self[16]
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372058556281612"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_46_Closed()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(0)
end
function export:f_4_Paused()
  local l0
  self = self._graph
  l0 = self[88]
  l0.InInteractionId = self.InteractionID
  l0:Stop()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.SearchTimer = l0.Target
  l0 = self[12]
  l0:True()
end
function export:f_78_ClientConversationFinised()
  local l0
  self = self._graph
  self:en_78()
  l0 = self[78]
  l0:Disable()
end
function export:f_78_ClientPickedUp()
  local l0
  self = self._graph
  l0 = self[78]
  self.PlayerVehicle = l0.Vehicle
  l0 = self[72]
  l0.MissionName = self.Mission
  l0:ResetRating()
end
function export:f_78_ClientSpawned()
  local l0
  self = self._graph
  l0 = self[78]
  self.Doc = l0.Client
  self:en_69()
  l0 = self[69]
  l0:Enable()
end
function export:f_78_Disabled()
  local l0
  self = self._graph
  l0 = self[55]
  l0.Input = self.GIC_Users
  l0.Data[0] = self.PlayerEntity
  l0.Data[1] = self.Doc
  l0:Add()
end
function export:f_103_Out()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Stop()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[1]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = self[53]
  l0:False()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(3)
end
function export:f_56_Out_2()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(3)
end
function export:f_123_EnteredArea()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0.Out[2] = self.f_56_Out_2
  l0:In()
end
function export:f_123_ExitedArea()
  local l0
  self = self._graph
  self:en_126()
  l0 = self[126]
  l0:Stop()
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149965"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_34_Out()
  local l0
  self = self._graph
  self:en_69()
  l0 = self[69]
  l0:Disable()
end
function export:f_175_Out()
  local l0
  self = self._graph
  l0 = self[175]
  self.RobotAreaFound = l0.Target
  l0 = self[102]
  l0:Input(1)
end
function export:f_175_SetFalse()
  local l0
  self = self._graph
  l0 = self[175]
  self.RobotAreaFound = l0.Target
end
function export:f_175_SetFromBool()
  local l0
  self = self._graph
  l0 = self[175]
  self.RobotAreaFound = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_93_Out_0
  l0.Out[1] = self.f_93_Out_1
  l0:In()
end
function export:f_175_SetTrue()
  local l0
  self = self._graph
  l0 = self[175]
  self.RobotAreaFound = l0.Target
end
function export:f_175_Toggled()
  local l0
  self = self._graph
  l0 = self[175]
  self.RobotAreaFound = l0.Target
end
function export:f_126_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_99_Out_0
  l0.Out[1] = self.f_99_Out_1
  l0.Out[2] = self.f_99_Out_2
  l0:In()
end
function export:f_126_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149971"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_123()
  l0 = self[123]
  l0:Disable()
end
function export:f_74_Started()
  local l0
  self = self._graph
  l0 = self[54]
  l0.CLO = "9223372047360497298"
  l0:Activate()
end
function export:f_71_A_is_True()
  local l0
  self = self._graph
  l0 = self[83]
  l0:In()
end
function export:f_114_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[205]
  l0:Input(2)
end
function export:f_118_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Start()
end
function export:f_115_Out_0()
  local l0
  self = self._graph
  l0 = self[95]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_115_Out_1()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Input(0)
end
function export:f_158_EnteredArea()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_70_Out_0
  l0.Out[1] = self.f_70_Out_1
  l0.Out[2] = self.f_70_Out_2
  l0:In()
end
function export:f_158_ExitedArea()
  local l0
  self = self._graph
  self:en_153()
  l0 = self[153]
  l0:Stop()
end
function export:f_68_A_is_True()
  local l0
  self = self._graph
  l0 = self[52]
  l0:In()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_172_Out_0
  l0.Out[1] = self.f_172_Out_1
  l0.Out[2] = self.f_172_Out_2
  l0:In()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = self[57]
  self.A2_Visible = l0.Target
end
function export:f_57_SetFalse()
  local l0
  self = self._graph
  l0 = self[57]
  self.A2_Visible = l0.Target
  self:en_153()
  l0 = self[153]
  l0:Start()
end
function export:f_57_SetFromBool()
  local l0
  self = self._graph
  l0 = self[57]
  self.A2_Visible = l0.Target
end
function export:f_57_SetTrue()
  local l0
  self = self._graph
  l0 = self[57]
  self.A2_Visible = l0.Target
end
function export:f_57_Toggled()
  local l0
  self = self._graph
  l0 = self[57]
  self.A2_Visible = l0.Target
end
function export:f_98_Out()
  local l0
  self = self._graph
  self:en_97()
  l0 = self[97]
  l0:Display()
end
function export:f_59_Out()
  local l0
  self = self._graph
  l0 = self[59]
  self.A2_Visible = l0.Target
end
function export:f_59_SetFalse()
  local l0
  self = self._graph
  l0 = self[59]
  self.A2_Visible = l0.Target
end
function export:f_59_SetFromBool()
  local l0
  self = self._graph
  l0 = self[59]
  self.A2_Visible = l0.Target
end
function export:f_59_SetTrue()
  local l0
  self = self._graph
  l0 = self[59]
  self.A2_Visible = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_58_Out_0
  l0.Out[1] = self.f_58_Out_1
  l0.Out[2] = self.f_58_Out_2
  l0:In()
end
function export:f_59_Toggled()
  local l0
  self = self._graph
  l0 = self[59]
  self.A2_Visible = l0.Target
end
function export:f_107_Out_0()
  local l0
  self = self._graph
  l0 = self[110]
  l0:Input(1)
end
function export:f_107_Out_1()
  local l0
  self = self._graph
  l0 = self[114]
  l0:Input(1)
end
function export:f_107_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_111_Out
  l0:In()
end
function export:f_135_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_100_Out_0
  l0.Out[1] = self.f_100_Out_1
  l0.Out[2] = self.f_100_Out_2
  l0.Out[3] = self.f_100_Out_3
  l0:In()
end
function export:f_135_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_44_Out_0
  l0.Out[1] = self.f_44_Out_1
  l0.Out[2] = self.f_44_Out_2
  l0:In()
end
function export:f_75_Out()
  local l0
  self = self._graph
  l0 = self[75]
  self.RobotAreaFound = l0.Target
end
function export:f_75_SetFalse()
  local l0
  self = self._graph
  l0 = self[75]
  self.RobotAreaFound = l0.Target
end
function export:f_75_SetFromBool()
  local l0
  self = self._graph
  l0 = self[75]
  self.RobotAreaFound = l0.Target
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = 10
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_47_Out
  l0:FromFloat()
end
function export:f_75_SetTrue()
  local l0
  self = self._graph
  l0 = self[75]
  self.RobotAreaFound = l0.Target
end
function export:f_75_Toggled()
  local l0
  self = self._graph
  l0 = self[75]
  self.RobotAreaFound = l0.Target
end
function export:f_52_Closed()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Close()
end
function export:f_52_Out()
  local l0
  self = self._graph
  self:en_123()
  l0 = self[123]
  l0:Enable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.A2_Visible = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.A2_Visible = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.A2_Visible = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.A2_Visible = l0.Target
  l0 = self[14]
  l0:True()
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.A2_Visible = l0.Target
end
function export:f_108_Shown()
  local l0
  self = self._graph
  l0 = self[96]
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0:Stop()
end
function export:f_37_Closed()
  local l0
  self = self._graph
  l0 = self[39]
  l0:Close()
end
function export:f_37_Out()
  local l0
  self = self._graph
  self:en_158()
  l0 = self[158]
  l0:Enable()
end
function export:f_3_Stopped()
  local l0
  self = self._graph
  l0 = self[77]
  l0:ShowMissionComplete()
end
function export:f_95_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_108_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_83_Closed()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Close()
end
function export:f_83_Out()
  local l0
  self = self._graph
  self:en_143()
  l0 = self[143]
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[205]
  l0:Input(0)
end
function export:f_87_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(1)
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Start()
end
function export:f_172_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.A1_Visible
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_68_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_172_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.A2_Visible
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_71_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_172_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.A3_Visible
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_38_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_36_A_is_False()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_54_Activated()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_54_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[54]
  self.Robot = l0.UserID
end
function export:f_55_Added()
  local l0
  self = self._graph
  l0 = self[55]
  self.GIC_Users = l0.Target
  l0 = self[2]
  l0.Users = self.GIC_Users
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[55]
  self.GIC_Users = l0.Target
end
function export:f_55_Removed()
  local l0
  self = self._graph
  l0 = self[55]
  self.GIC_Users = l0.Target
end
function export:f_16_TalkFailed()
  local l0
  self = self._graph
  l0 = self[116]
  l0:Input(1)
end
function export:f_16_TalkFinished()
  local l0
  self = self._graph
  l0 = self[116]
  l0:Input(0)
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_39_Closed()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(1)
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(0)
end
function export:f_104_Out()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Stop()
end
function export:f_84_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Input(2)
end
function export:f_1_PostOut()
  local l0
  self = self._graph
  l0 = self[76]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_41_Out()
  local l0
  self = self._graph
  self:en_158()
  l0 = self[158]
  l0:Disable()
end
function export:f_80_Out()
  local l0
  self = self._graph
  l0 = self[80]
  self.A1_Visible = l0.Target
end
function export:f_80_SetFalse()
  local l0
  self = self._graph
  l0 = self[80]
  self.A1_Visible = l0.Target
  l0 = self[19]
  l0:False()
end
function export:f_80_SetFromBool()
  local l0
  self = self._graph
  l0 = self[80]
  self.A1_Visible = l0.Target
end
function export:f_80_SetTrue()
  local l0
  self = self._graph
  l0 = self[80]
  self.A1_Visible = l0.Target
end
function export:f_80_Toggled()
  local l0
  self = self._graph
  l0 = self[80]
  self.A1_Visible = l0.Target
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[45]
  l0.Objective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF090",
    item = "Objective_Reach",
    id = "630492"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_10_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RobotAreaFound
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_36_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_10_Exiting()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RobotAreaFound
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_26_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = self[53]
  self.A2_Visible = l0.Target
end
function export:f_53_SetFalse()
  local l0
  self = self._graph
  l0 = self[53]
  self.A2_Visible = l0.Target
  l0 = self[79]
  l0:False()
end
function export:f_53_SetFromBool()
  local l0
  self = self._graph
  l0 = self[53]
  self.A2_Visible = l0.Target
end
function export:f_53_SetTrue()
  local l0
  self = self._graph
  l0 = self[53]
  self.A2_Visible = l0.Target
end
function export:f_53_Toggled()
  local l0
  self = self._graph
  l0 = self[53]
  self.A2_Visible = l0.Target
end
function export:f_109_EnterRadius()
  local l0
  self = self._graph
  self:en_90()
  l0 = self[90]
  l0:Enable()
end
function export:f_109_ExitRadius()
  local l0
  self = self._graph
  l0 = self[110]
  l0:Input(0)
end
function export:f_44_Out_0()
  local l0
  self = self._graph
  l0 = self[83]
  l0:Close()
end
function export:f_44_Out_1()
  local l0
  self = self._graph
  l0 = self[175]
  l0.Bool = 1
  l0:FromBool()
end
function export:f_44_Out_2()
  local l0
  self = self._graph
  l0 = self[81]
  l0.Entity = self.Doc
  l0.SoundId = "soundbinary/4080018232.bnk"
  l0:Start()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(0)
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[60]
  self.A1_Visible = l0.Target
end
function export:f_60_SetFalse()
  local l0
  self = self._graph
  l0 = self[60]
  self.A1_Visible = l0.Target
end
function export:f_60_SetFromBool()
  local l0
  self = self._graph
  l0 = self[60]
  self.A1_Visible = l0.Target
end
function export:f_60_SetTrue()
  local l0
  self = self._graph
  l0 = self[60]
  self.A1_Visible = l0.Target
  l0 = self[59]
  l0:True()
end
function export:f_60_Toggled()
  local l0
  self = self._graph
  l0 = self[60]
  self.A1_Visible = l0.Target
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[12]
  self.A1_Visible = l0.Target
end
function export:f_12_SetFalse()
  local l0
  self = self._graph
  l0 = self[12]
  self.A1_Visible = l0.Target
end
function export:f_12_SetFromBool()
  local l0
  self = self._graph
  l0 = self[12]
  self.A1_Visible = l0.Target
end
function export:f_12_SetTrue()
  local l0
  self = self._graph
  l0 = self[12]
  self.A1_Visible = l0.Target
  l0 = self[8]
  l0:True()
end
function export:f_12_Toggled()
  local l0
  self = self._graph
  l0 = self[12]
  self.A1_Visible = l0.Target
end
function export:f_143_EnteredArea()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_67_Out_0
  l0.Out[1] = self.f_67_Out_1
  l0.Out[2] = self.f_67_Out_2
  l0:In()
end
function export:f_143_ExitedArea()
  local l0
  self = self._graph
  self:en_135()
  l0 = self[135]
  l0:Stop()
end
function export:f_5_RewardShown()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0:Stop()
end
function export:f_18_UnspawnedUser()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SoundId = "soundbinary/3884384578.bnk"
  l0:Start()
end
function export:f_69_ClientBailedOut()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:ClientBailedOut()
end
function export:f_69_ClientDeath()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:ClientDead()
end
function export:f_69_PlayerAbandonedVehicle()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:PlayerAbandonedVehicle()
end
function export:f_69_VehicleUnusable()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:VehicleUnusable()
end
function export:f_96_Stopped()
  local l0
  self = self._graph
  l0 = self[94]
  l0:DisableAllCheckpoints()
end
function export:f_102_Out()
  local l0
  self = self._graph
  self:en_97()
  l0 = self[97]
  l0:HideNotification()
end
function export:f_153_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_101_Out_0
  l0.Out[1] = self.f_101_Out_1
  l0.Out[2] = self.f_101_Out_2
  l0:In()
end
function export:f_153_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372049052868101"
  l0.StartDelay = 0.01
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
  l0:Start()
end
function export:f_116_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 3
  l0:Start()
end
function export:f_49_Out_0()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Close()
end
function export:f_49_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_85_Out
  l0:In()
end
function export:f_49_Out_2()
  local l0
  self = self._graph
  l0 = self[102]
  l0:Input(0)
end
function export:f_67_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(3)
end
function export:f_67_Out_1()
  local l0
  self = self._graph
  l0 = self[80]
  l0:False()
end
function export:f_67_Out_2()
  local l0
  self = self._graph
  l0 = self[41]
  l0:Input(2)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[205]
  l0:Input(1)
end
function export:f_105_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[193]
  l0.AutoReset = 1
  l0:In()
end
function export:f_26_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_174_Out_0
  l0.Out[1] = self.f_174_Out_1
  l0.Out[2] = self.f_174_Out_2
  l0:In()
end
function export:f_25_Started()
  local l0
  self = self._graph
  l0 = self[33]
  l0:True()
end
function export:f_25_TalkFailed()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(1)
end
function export:f_25_TalkFinished()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(0)
end
function export:f_42_TimeElapsed()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Start()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[33]
  self.A2_Visible = l0.Target
end
function export:f_33_SetFalse()
  local l0
  self = self._graph
  l0 = self[33]
  self.A2_Visible = l0.Target
end
function export:f_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self[33]
  self.A2_Visible = l0.Target
end
function export:f_33_SetTrue()
  local l0
  self = self._graph
  l0 = self[33]
  self.A2_Visible = l0.Target
  l0 = self[24]
  l0:True()
end
function export:f_33_Toggled()
  local l0
  self = self._graph
  l0 = self[33]
  self.A2_Visible = l0.Target
end
function export:f_22_Started()
  local l0
  self = self._graph
  l0 = self[60]
  l0:True()
end
function export:f_22_TalkFailed()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Input(1)
end
function export:f_22_TalkFinished()
  local l0
  self = self._graph
  l0 = self[118]
  l0:Input(0)
end
function export:f_77_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.LayerName = "Taxi09_Main"
  l0:Unload()
end
function export:f_93_Out_0()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Enable()
end
function export:f_93_Out_1()
  local l0
  self = self._graph
  self:en_109()
  l0 = self[109]
  l0:Enable()
end
function export:f_40_ClientDropOff()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_113_Out_0
  l0.Out[1] = self.f_113_Out_1
  l0:In()
end
function export:f_40_Disabled()
  local l0
  self = self._graph
  l0 = self[18]
  l0.User = self.Robot
  l0:UnspawnUser()
end
function export:f_40_ReachDestination()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Config = "TaxiRideStrategyConfig.9223372047360432920"
  l0:Pause()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[24]
  self.A3_Visible = l0.Target
end
function export:f_24_SetFalse()
  local l0
  self = self._graph
  l0 = self[24]
  self.A3_Visible = l0.Target
end
function export:f_24_SetFromBool()
  local l0
  self = self._graph
  l0 = self[24]
  self.A3_Visible = l0.Target
end
function export:f_24_SetTrue()
  local l0
  self = self._graph
  l0 = self[24]
  self.A3_Visible = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_49_Out_0
  l0.Out[1] = self.f_49_Out_1
  l0.Out[2] = self.f_49_Out_2
  l0:In()
end
function export:f_24_Toggled()
  local l0
  self = self._graph
  l0 = self[24]
  self.A3_Visible = l0.Target
end
function export:f_70_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(2)
end
function export:f_70_Out_1()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(2)
end
function export:f_70_Out_2()
  local l0
  self = self._graph
  l0 = self[82]
  l0:False()
end
function export:f_112_Out()
  local l0
  self = self._graph
  self:en_109()
  l0 = self[109]
  l0:Disable()
end
function export:f_90_Killed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_115_Out_0
  l0.Out[1] = self.f_115_Out_1
  l0:In()
end
function export:f_205_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0.Seconds = 0.2
  l0:Start()
end
function export:f_101_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:f_101_Out_1()
  local l0
  self = self._graph
  l0 = self[98]
  l0:Input(2)
end
function export:f_101_Out_2()
  local l0
  self = self._graph
  l0 = self[103]
  l0:Input(1)
end
function export:f_35_Out()
  local l0
  self = self._graph
  self:en_143()
  l0 = self[143]
  l0:Disable()
end
function export:f_113_Out_0()
  local l0
  self = self._graph
  self:en_40()
  l0 = self[40]
  l0:Disable()
end
function export:f_113_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_107_Out_0
  l0.Out[1] = self.f_107_Out_1
  l0.Out[2] = self.f_107_Out_2
  l0:In()
end
function export:f_86_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_84_Out
  l0:In()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_87_Out
  l0:In()
end
function export:en_73()
  local l0
  l0 = self[73]
  l0.MissionName = self.Mission
  l0.LayerName = "Taxi09_Main"
  l0.StrategyConfig = "TaxiRideStrategyConfig.9223372047360432920"
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Vehicle = self.PlayerVehicle
  l0.Conversation = "ConversationSetting.9223372048760149968"
end
function export:en_78()
  local l0
  l0 = self[78]
  l0.ClientClo = "9223372046858871345"
  l0.PickUpIcon = "9223372048443843204"
  l0.Config = "TaxiRideGameplayBrick.9223372057832225800"
end
function export:en_123()
  local l0
  l0 = self[123]
  l0.SearchArea = self.Taxi09_SearchArea_1
  l0.SearchRadius = 100
  l0.MapPoint = self.MissionTarget_Taxi09_Icon_SearchArea_1
end
function export:en_126()
  local l0
  l0 = self[126]
  l0.Seconds = self.SearchTimer
end
function export:en_158()
  local l0
  l0 = self[158]
  l0.SearchArea = "9223372046858871196"
  l0.SearchRadius = 100
  l0.MapPoint = self.MissionTarget_Taxi09_Icon_SearchArea_3
end
function export:en_135()
  local l0
  l0 = self[135]
  l0.Seconds = self.SearchTimer
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149966"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_31()
  local l0
  l0 = self[31]
  l0.Pawn1 = self.Doc
  l0.Pawn2 = self.PlayerEntity
  l0.Conversation = "ConversationSetting.9223372048760149967"
  l0.StartDelay = 1
  l0.RuleConfig = "GameplayConversationSettings.9223372053468216839"
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Vehicle = self.PlayerVehicle
end
function export:en_109()
  local l0
  l0 = self[109]
  l0.Entity1 = self.Robot
  l0.Entity2 = self.PlayerEntity
  l0.Radius = 40
  l0.CheckNow = 1
end
function export:en_143()
  local l0
  l0 = self[143]
  l0.SearchArea = self.Taxi09_SearchArea_2
  l0.SearchRadius = 100
  l0.MapPoint = self.MissionTarget_Taxi09_Icon_SearchArea_2
end
function export:en_69()
  local l0
  l0 = self[69]
  l0.Client = self.Doc
  l0.Config = "TaxiRideGameplayBrick.9223372057832225800"
end
function export:en_153()
  local l0
  l0 = self[153]
  l0.Seconds = self.SearchTimer
end
function export:en_97()
  local l0
  l0 = self[97]
  l0.Notification = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "SearchForRobot",
    id = "688538"
  }
  l0.Duration = -1
end
function export:en_40()
  local l0
  l0 = self[40]
  l0.Client = self.Doc
  l0.DropOffIcon = "9223372046858872966"
  l0.LastDestination = 1
  l0.ShowGps = 1
  l0.ManageObjective = 1
  l0.CustomObjective = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives.Mission_Specific.DRSF090",
    item = "Objective_Keep_Searching",
    id = "630494"
  }
  l0.Config = "TaxiRideGameplayBrick.9223372057832225800"
end
function export:en_90()
  local l0
  l0 = self[90]
  l0.Pawn = self.Robot
end
_compilerVersion = 4
