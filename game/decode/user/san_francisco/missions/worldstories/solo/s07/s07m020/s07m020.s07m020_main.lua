export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M020/s07_m020_cin_dusannvite.S07_M020_CIN_DusanNvite_Main.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/TimeLapse.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/2249826340.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2231477107.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1889681517.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2196104692.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.TMobile = nil
  self.TBone = nil
  self.PlayerVehicle = nil
  self.Chaser01 = nil
  self.CarChaser01 = nil
  self.Antenna02 = "9223372046786702760"
  self.Antenna01 = "9223372046786702768"
  self.Antenna03 = "9223372046786702764"
  self.UndercoverTarget = nil
  self.InteractionBox02 = "9223372047406049660"
  self.OutsideBackDoor01 = "9223372046786835364"
  self.InteractionBox03 = "9223372047406053522"
  self.Elevator = "9223372047406087435"
  self.OutsideBackDoor02 = "9223372046786835366"
  self.OutsideBackDoor03 = "9223372046786835362"
  self.CEO_Computer = "9223372047406207005"
  self.OutsideFrontDoor01 = "9223372046786834686"
  self.OutsideFrontDoor02 = "9223372046786835360"
  self.InteractionBox01 = "9223372047406053525"
  self.S07M020_Main = "S07M020_Main"
  self.SecurityDoor01 = "9223372051981891709"
  self.SecurityDoor02 = "9223372051981891725"
  self.GarageDoor = "9223372047406086581"
  self.ElevatorLock = "9223372047406215970"
  self.ObjectiveElevator = 0
  self.LockBoxElevatorStatus = 0
  self.Fire_Alarm01 = "9223372049285179019"
  self.Fire_Alarm02 = "9223372049285182251"
  self.MissionMarker_BlackOut_Box = "9223372046518047695"
  self.Elevator_LockBox = "9223372047928093476"
  self.MissionZone = "9223372046518075764"
  self.PGTMissionArea = "9223372046518049337"
  self.BackupGenerator = "9223372048566466859"
  self.Marker_Alarm02 = "9223372046518047693"
  self.Marker_Alarm01 = "9223372046518047664"
  self.OutsideDoor01 = "9223372047741173056"
  self.OutsideDoor02 = "9223372049667294718"
  self.OutsideDoor03 = "9223372049667294730"
  self.OutsideDoor04 = "9223372047741172016"
  self.OutsideDoor05 = "9223372049667294742"
  self.OutsideDoor06 = "9223372049667294754"
  self.OutsideDoor07 = "9223372049667294766"
  self.Trigger_BuildingProximity = "9223372049956963280"
  self.VR_ExitNode_114 = "9223372050293726402"
  self.Cam01 = "9223372050997960950"
  self.Cam02 = "9223372050997960952"
  self.Cam03 = "9223372050997960954"
  self.Cam04 = "9223372050997959998"
  self.Cam05 = "9223372050997960956"
  self.Cam06 = "9223372050997960948"
  self.Cam07 = "9223372050370125496"
  self.CameraList = {}
  self.LockElevator = "9223372047928093476"
  self.Cop01 = nil
  self.Cop02 = nil
  self.Cop03 = nil
  self.Cop04 = nil
  self.Cop05 = nil
  self.Cop06 = nil
  self.CopList = {}
  self.Cop07 = nil
  self.Cop08 = nil
  self.CopCar02 = nil
  self.CopCar03 = nil
  self.CopCar04 = nil
  self.CopCar06 = nil
  self.CopCar05 = nil
  self.CopCar07 = nil
  self.CopCar08 = nil
  self.CopCar09 = nil
  self.CopCar10 = nil
  self.CopCar11 = nil
  self.CopCar12 = nil
  self.Hour = 0
  self[51] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_51_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_51_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[118] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[118]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_118_Out
  l0.ResetOut = DummyFunction
  self[27] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_27_Added
  l0.Removed = self.f_27_Removed
  l0.Out = self.f_27_Out
  self[46] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[46]
  l0._graph = self
  l0.Out = self.f_46_Out
  l0.MessageCompleted = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[20]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_10_OnUserInPlace
  self[47] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[47]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_47_OnUserInPlace
  self[65] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = self.f_65_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[69] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_69_OnUserInPlace
  self[52] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_52_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_52_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[18] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_18_Escaped
  l0.LeftArea = DummyFunction
  self[44] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_44_OnUserInPlace
  self[36] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Loaded = self.f_36_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[38]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_38_Unloaded
  l0.Reseted = DummyFunction
  self[80] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[80]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_80_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_80_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Loaded = self.f_14_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[62] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[62]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_62_Out
  self[91] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[91]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_91_OnUserInPlace
  self[136] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[136]
  l0._graph = self
  l0.Out = self.f_136_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[87] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[87]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_87_OnUserInPlace
  self[122] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M020/s07_m020_cin_dusannvite.S07_M020_CIN_DusanNvite_Main.lua")
  l0 = self[122]
  l0._graph = self
  l0.Out = self.f_122_Out
  self[53] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[53]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_53_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_53_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[76] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_76_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_76_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self[99] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[99]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_99_OnUserInPlace
  self[49] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_49_OnUserInPlace
  self[123] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[123]
  l0._graph = self
  l0.Enabled = self.f_123_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[93] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[93]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_93_OnUserInPlace
  self[79] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[79]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_79_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_79_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[21] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[21]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_21_Interacted
  self[75] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[75]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_75_OnUserInPlace
  self[33] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = self.f_33_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  self[45] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[45]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_45_OnUserInPlace
  self[94] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[94]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_94_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_94_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[125] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[125]
  l0._graph = self
  l0.PreOut = self.f_125_PreOut
  l0.PostOut = DummyFunction
  self[67] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[67]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_67_PostOut
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[25] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_25_Out
  l0.ResetOut = DummyFunction
  self[96] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[96]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_96_OnUserInPlace
  self[48] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_48_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_48_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[110] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_110_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[66] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = self.f_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[54] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_54_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_54_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[97] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[97]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_97_OnUserInPlace
  self[107] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[107]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_107_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_107_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[50] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_50_OnUserInPlace
  self[17] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[34] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[34]
  l0._graph = self
  l0.Loaded = self.f_34_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[60] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[60]
  l0._graph = self
  l0.PreOut = self.f_60_PreOut
  l0.PostOut = DummyFunction
  self[55] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_55_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_55_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[16] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_16_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[137] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[137]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_137_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[28] = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_28_Enabled
  l0.Disabled = self.f_28_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_28_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self[30] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_5_PostOut
  self[86] = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self[86]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_86_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_86_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[12] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_12_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_12_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[39] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_39_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_39_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[41] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_41_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_41_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_43_Out
  self[134] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[134]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[40] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[40]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_40_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[82] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[82]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_82_Out
  l0.ResetOut = DummyFunction
  self[105] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[105]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_105_OnUserInPlace
  self[61] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_61_TeleportDone
  self[81] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[81]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_81_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_81_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[92] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_92_Leave
  l0.Use = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Loaded = self.f_37_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[56] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[56]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_56_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_56_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[101] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[101]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_101_OnUserInPlace
  self[68] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[117] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[117]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_117_Out
  self[26] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[26]
  l0._graph = self
  self[103] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[103]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_103_OnUserInPlace
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[89] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[89]
  l0._graph = self
  l0.Started = self.f_89_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_89_Skipped
  l0.Finished = self.f_89_Finished
  self[11] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[11]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_119_Out
  l0:IncrementTimeOfDay()
end
function export:CheckPoint_1()
  local l0
  l0 = self[36]
  l0.LayerName = self.S07M020_Main
  l0:Load()
end
function export:In()
  local l0
  l0 = self[4]
  l0.LMALayerName = "SF_08_Invite_LMA"
  l0:Load()
end
function export:f_51_Disabled()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:DisableProfiling()
end
function export:f_51_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:DisableHack()
end
function export:f_118_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_27_Added()
  local l0
  self = self._graph
  l0 = self[27]
  self.CopList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_98_Out_0
  l0.Out[1] = self.f_98_Out_1
  l0:In()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[27]
  self.CopList = l0.Target
end
function export:f_27_Removed()
  local l0
  self = self._graph
  l0 = self[27]
  self.CopList = l0.Target
end
function export:f_46_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = self.f_78_MinHeatSet
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:SetMinHeat()
end
function export:f_20_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[46]
  l0:ShowMissionComplete()
end
function export:f_83_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916838"
  l0:StartCommunication()
end
function export:f_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372067078638501"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_133_Activated()
  local l0
  self = self._graph
  l0 = self[134]
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0:Play()
end
function export:f_10_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[10]
  self.Cop04 = l0.UserID
  l0 = self[45]
  l0.CLO = "9223372059654946102"
  l0:Activate()
end
function export:f_47_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[47]
  self.Cop06 = l0.UserID
  l0 = self[27]
  l0.Input = self.CopList
  l0.Data[0] = self.Cop01
  l0.Data[1] = self.Cop02
  l0.Data[2] = self.Cop03
  l0.Data[3] = self.Cop04
  l0.Data[4] = self.Cop05
  l0.Data[5] = self.Cop06
  l0:Add()
end
function export:f_65_Out()
  local l0
  self = self._graph
  l0 = self[66]
  l0.SoundId = "soundbinary/2249826340.bnk"
  l0:Play()
end
function export:f_69_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[69]
  self.CopCar02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.CopCar02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = nil
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_95_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_95_Out_1()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:Disable()
end
function export:f_52_Disabled()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:DisableProfiling()
end
function export:f_52_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:DisableHack()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Enable()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_135_Out_0
  l0.Out[1] = self.f_135_Out_1
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_77_MinHeatSet()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_18_Escaped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0.Out[2] = self.f_24_Out_2
  l0.Out[3] = self.f_24_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0:In()
end
function export:f_44_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[44]
  self.Cop03 = l0.UserID
  l0 = self[10]
  l0.CLO = "9223372059654946103"
  l0:Activate()
end
function export:f_70_Out_0()
  local l0
  self = self._graph
  l0 = self[50]
  l0.CLO = "9223372059926448036"
  l0:Activate()
end
function export:f_70_Out_1()
  local l0
  self = self._graph
  l0 = self[69]
  l0.CLO = "9223372067221644832"
  l0:Activate()
end
function export:f_70_Out_2()
  local l0
  self = self._graph
  l0 = self[75]
  l0.CLO = "9223372067221644834"
  l0:Activate()
end
function export:f_70_Out_3()
  local l0
  self = self._graph
  l0 = self[87]
  l0.CLO = "9223372067221644833"
  l0:Activate()
end
function export:f_70_Out_4()
  local l0
  self = self._graph
  l0 = self[91]
  l0.CLO = "9223372067221644837"
  l0:Activate()
end
function export:f_70_Out_5()
  local l0
  self = self._graph
  l0 = self[96]
  l0.CLO = "9223372067221644835"
  l0:Activate()
end
function export:f_70_Out_6()
  local l0
  self = self._graph
  l0 = self[93]
  l0.CLO = "9223372067221644836"
  l0:Activate()
end
function export:f_70_Out_7()
  local l0
  self = self._graph
  l0 = self[97]
  l0.CLO = "9223372067290823244"
  l0:Activate()
end
function export:f_70_Out_8()
  local l0
  self = self._graph
  l0 = self[99]
  l0.CLO = "9223372067290823243"
  l0:Activate()
end
function export:f_70_Out_9()
  local l0
  self = self._graph
  l0 = self[101]
  l0.CLO = "9223372067290823245"
  l0:Activate()
end
function export:f_70_Out_10()
  local l0
  self = self._graph
  l0 = self[103]
  l0.CLO = "9223372067290823246"
  l0:Activate()
end
function export:f_70_Out_11()
  local l0
  self = self._graph
  l0 = self[105]
  l0.CLO = "9223372067290823418"
  l0:Activate()
end
function export:f_36_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_128_Out
  l0:SetTimeOfDay()
end
function export:f_38_Unloaded()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Succeed()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.LayerName = self.S07M020_Main
  l0:Load()
end
function export:f_120_Locked()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_80_Disabled()
  local l0
  self = self._graph
  l0 = self[68]
  l0.Seconds = 3
  l0:Start()
end
function export:f_80_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:DisableHack()
end
function export:f_14_Loaded()
  local l0
  self = self._graph
  l0 = self[34]
  l0.LayerName = "S07M020_LivingCity"
  l0:Load()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = self[110]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_91_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[91]
  self.CopCar05 = l0.UserID
end
function export:f_84_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = self[86]
  l0:Enable()
end
function export:f_136_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669157"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_133_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_87_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[87]
  self.CopCar04 = l0.UserID
end
function export:f_122_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Input(0)
end
function export:f_73_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = 50
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = self.f_77_MinHeatSet
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:SetMinHeat()
end
function export:f_53_Disabled()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:DisableProfiling()
end
function export:f_53_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_53()
  l0 = self[53]
  l0:DisableHack()
end
function export:f_76_Disabled()
  local l0
  self = self._graph
  self:en_80()
  l0 = self[80]
  l0:DisableProfiling()
end
function export:f_76_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:DisableHack()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0:In(0)
end
function export:f_99_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[99]
  self.CopCar09 = l0.UserID
end
function export:f_49_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[49]
  self.Cop02 = l0.UserID
  l0 = self[44]
  l0.CLO = "9223372059654946100"
  l0:Activate()
end
function export:f_123_Enabled()
  local l0
  self = self._graph
  self:en_94()
  l0 = self[94]
  l0:DisableProfiling()
end
function export:f_93_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[93]
  self.CopCar07 = l0.UserID
end
function export:f_79_Disabled()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:DisableProfiling()
end
function export:f_79_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_79()
  l0 = self[79]
  l0:DisableHack()
end
function export:f_113_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_111_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_113_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Hour
  l0.B = 4
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_114_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_114_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_21_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_116_Locked()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(0)
end
function export:f_75_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[75]
  self.CopCar03 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.CopCar03
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = nil
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = DummyFunction
  l0:SetLightsAndSiren()
end
function export:f_33_Enabled()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Input(1)
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_129_Unlocked
  l0.Out = DummyFunction
  l0:Unlock()
end
function export:f_45_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[45]
  self.Cop05 = l0.UserID
  l0 = self[47]
  l0.CLO = "9223372059654946105"
  l0:Activate()
end
function export:f_94_Disabled()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:DisableProfiling()
end
function export:f_94_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_94()
  l0 = self[94]
  l0:DisableHack()
end
function export:f_125_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0.Out = self.f_124_Out
  l0:SetTimeOfDay()
end
function export:f_98_Out_0()
  local l0
  self = self._graph
  l0 = self[137]
  l0:Start()
end
function export:f_98_Out_1()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916839"
  l0:StartCommunication()
end
function export:f_67_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_100_Out_0
  l0.Out[1] = self.f_100_Out_1
  l0:In()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_96_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[96]
  self.CopCar06 = l0.UserID
end
function export:f_126_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_127_Out
  l0:In()
end
function export:f_100_Out_0()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372053055842126"
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
  l0:Start()
end
function export:f_100_Out_1()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:Enable()
end
function export:f_78_MinHeatSet()
  local l0
  self = self._graph
  l0 = self[38]
  l0.LayerName = self.S07M020_Main
  l0:Unload()
end
function export:f_48_Disabled()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:DisableProfiling()
end
function export:f_48_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:DisableHack()
end
function export:f_110_TimeElapsed()
  local l0
  self = self._graph
  self:en_23()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:StartChase()
end
function export:f_124_Out()
  local l0
  self = self._graph
  l0 = self[122]
  l0.PlayerEntityTeleport = self.PlayerEntity
  l0:In()
end
function export:f_66_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669157"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0:Deactivate()
end
function export:f_54_Disabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = self[52]
  l0:DisableProfiling()
end
function export:f_54_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_54()
  l0 = self[54]
  l0:DisableHack()
end
function export:f_97_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[97]
  self.CopCar08 = l0.UserID
end
function export:f_107_Disabled()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:DisableProfiling()
end
function export:f_107_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:DisableHack()
end
function export:f_50_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[50]
  self.Cop01 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_58_Out_0
  l0.Out[1] = self.f_58_Out_1
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  self:en_123()
  l0 = self[123]
  l0:Enable()
end
function export:f_34_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_132_Out_0()
  local l0
  self = self._graph
  self:en_131()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0:Stop()
end
function export:f_132_Out_1()
  local l0
  self = self._graph
  self:en_115()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0:Stop()
end
function export:f_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  self.Hour = l0.Hour
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Hour
  l0.B = 22
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_113_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_113_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_60_PreOut()
  local l0
  self = self._graph
  l0 = self[61]
  l0.SpawnPoint = "9223372047576087905"
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_74_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154182"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_73_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_120_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_55_Disabled()
  local l0
  self = self._graph
  self:en_51()
  l0 = self[51]
  l0:DisableProfiling()
end
function export:f_55_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:DisableHack()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_121_Unlocked
  l0.Out = DummyFunction
  l0:Unlock()
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060375525250"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_84_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_16_Disabled()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:DisableProfiling()
end
function export:f_16_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:DisableHack()
end
function export:f_137_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[89]
  l0.SceneEntity = "9223372056242375738"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/s07_camerachase.seq"
  l0:Start()
end
function export:f_23_ChaseStarted()
  local l0
  self = self._graph
  self:en_23()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:AddScripted()
end
function export:f_23_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_23()
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_23_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = self[67]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Entity = "9223372069404343098"
  l0.SoundId = "soundbinary/2231477107.bnk"
  l0:Play()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916836"
  l0:StartCommunication()
end
function export:f_28_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_83_Out_0
  l0.Out[1] = self.f_83_Out_1
  l0:In()
end
function export:f_28_Enabled()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Entity = "9223372054257154181"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0:Start()
end
function export:f_28_InteractionFinished()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Disable()
end
function export:f_5_PostOut()
  local l0
  self = self._graph
  l0 = self[40]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347117"
  l0:StartCommunication()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372060220744768"
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
  l0.Out = self.f_63_Out
  l0:In()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_129_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  l0._graph = self
  l0.Out = self.f_112_Out
  l0:GetTimeOfDay()
end
function export:f_88_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372060375525254"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_86_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  l0 = self[86]
  l0:Disable()
end
function export:f_86_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372060375525252"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_88_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067290823427"
  l0.NPC = nil
  l0._graph = self
  l0.Out = self.f_108_Out
  l0:Disable()
end
function export:f_12_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[125]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_12_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_126_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[60]
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_39_Disabled()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:DisableProfiling()
end
function export:f_39_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_39()
  l0 = self[39]
  l0:DisableHack()
end
function export:f_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067290823427"
  l0.NPC = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_128_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0.LayerName = "S07M020_LivingCity"
  l0:Load()
end
function export:f_41_Disabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:DisableProfiling()
end
function export:f_41_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:DisableHack()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  self:en_54()
  l0 = self[54]
  l0:DisableProfiling()
end
function export:f_130_A_ge_B()
  local l0
  self = self._graph
  self:en_115()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0:Start()
end
function export:f_130_A_lt_B()
  local l0
  self = self._graph
  self:en_131()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0:Start()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  self:en_123()
  l0 = self[123]
  l0:Disable()
end
function export:f_114_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Hour
  l0.B = 14
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_130_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_130_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_114_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_116_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  l0:Lock()
end
function export:f_40_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M020.Objectives.Objective050",
    item = "Objective",
    id = "354580"
  }
  l0:ShowNewObjective()
end
function export:f_82_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:In()
end
function export:f_105_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[105]
  self.CopCar12 = l0.UserID
end
function export:f_58_Out_0()
  local l0
  self = self._graph
  l0 = self[49]
  l0.CLO = "9223372066990260105"
  l0:Activate()
end
function export:f_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Cop01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = nil
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0.Out = self.f_57_Out
  l0:SetLightsAndSiren()
end
function export:f_61_TeleportDone()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_81_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154181"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_74_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_81_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_81()
  l0 = self[81]
  l0:DisableHack()
end
function export:f_121_Unlocked()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_92_Leave()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_95_Out_0
  l0.Out[1] = self.f_95_Out_1
  l0:In()
end
function export:f_37_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0:In()
end
function export:f_56_Disabled()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:DisableProfiling()
end
function export:f_56_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_56()
  l0 = self[56]
  l0:DisableHack()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 12}
  l0.Out[0] = self.f_70_Out_0
  l0.Out[1] = self.f_70_Out_1
  l0.Out[2] = self.f_70_Out_2
  l0.Out[3] = self.f_70_Out_3
  l0.Out[4] = self.f_70_Out_4
  l0.Out[5] = self.f_70_Out_5
  l0.Out[6] = self.f_70_Out_6
  l0.Out[7] = self.f_70_Out_7
  l0.Out[8] = self.f_70_Out_8
  l0.Out[9] = self.f_70_Out_9
  l0.Out[10] = self.f_70_Out_10
  l0.Out[11] = self.f_70_Out_11
  l0:In()
end
function export:f_101_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[101]
  self.CopCar10 = l0.UserID
end
function export:f_68_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_117_Out()
  local l0
  self = self._graph
  l0 = self[118]
  l0:In(0)
end
function export:f_135_Out_0()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:ShowNewObjective()
end
function export:f_135_Out_1()
  local l0
  self = self._graph
  l0 = self[136]
  l0.Entity = "9223372064220175531"
  l0.SoundId = "soundbinary/1889681517.bnk"
  l0:Play()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Condition(1)
end
function export:f_103_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[103]
  self.CopCar11 = l0.UserID
end
function export:f_131_Started()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(1)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154182"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_127_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_132_Out_0
  l0.Out[1] = self.f_132_Out_1
  l0:In()
end
function export:f_111_Locked()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(3)
end
function export:f_115_Started()
  local l0
  self = self._graph
  l0 = self[117]
  l0:Input(2)
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056336799670"
  l0:StartCommunication()
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:HideObjective()
end
function export:f_24_Out_2()
  local l0
  self = self._graph
  l0 = self[7]
  l0.LMALayerName = "SF_08_Invite_LMA"
  l0:Unload()
end
function export:f_24_Out_3()
  local l0
  self = self._graph
  l0 = self[65]
  l0.SoundId = "soundbinary/2196104692.bnk"
  l0:Play()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_89_Finished()
  local l0
  self = self._graph
  l0 = self[82]
  l0:In(1)
end
function export:f_89_Skipped()
  local l0
  self = self._graph
  l0 = self[82]
  l0:In(0)
end
function export:f_89_Started()
  local l0
  self = self._graph
  l0 = self[62]
  l0:Condition(0)
end
function export:en_51()
  local l0
  l0 = self[51]
  l0.HackableEntity = "9223372066839438090"
end
function export:en_52()
  local l0
  l0 = self[52]
  l0.HackableEntity = "9223372066839438143"
end
function export:en_80()
  local l0
  l0 = self[80]
  l0.HackableEntity = "9223372065633816359"
end
function export:en_53()
  local l0
  l0 = self[53]
  l0.HackableEntity = "9223372066839438082"
end
function export:en_76()
  local l0
  l0 = self[76]
  l0.HackableEntity = "9223372065273275097"
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M020.Objectives.Objective020",
    item = "Objective",
    id = "481771"
  }
  l0.HasObjectiveMarker = 0
end
function export:en_123()
  local l0
  l0 = self[123]
  l0.MissionArea = self.MissionZone
  l0.MissionLayer = self.S07M020_Main
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_79()
  local l0
  l0 = self[79]
  l0.HackableEntity = "9223372065273275097"
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.MissionArea = self.MissionZone
  l0.MissionLayer = self.S07M020_Main
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_94()
  local l0
  l0 = self[94]
  l0.HackableEntity = "9223372066839438141"
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.HackableEntity = "9223372066839438090"
end
function export:en_54()
  local l0
  l0 = self[54]
  l0.HackableEntity = "9223372066839438141"
end
function export:en_107()
  local l0
  l0 = self[107]
  l0.HackableEntity = "9223372066839438143"
end
function export:en_55()
  local l0
  l0 = self[55]
  l0.HackableEntity = "9223372066839438088"
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.HackableEntity = "9223372066839438135"
end
function export:en_23()
  local l0
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = 50
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372059716897966"
  l0.AgentList = self.CopList
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_23_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_23_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_23_ScriptedAgentsAdopted
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.InteractionScriptEntity = "9223372064837249984"
end
function export:en_39()
  local l0
  l0 = self[39]
  l0.HackableEntity = "9223372066839438088"
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.HackableEntity = "9223372066839438082"
end
function export:en_81()
  local l0
  l0 = self[81]
  l0.HackableEntity = "9223372065633816359"
end
function export:en_92()
  local l0
  l0 = self[92]
  l0.Trigger = "9223372073093685794"
end
function export:en_56()
  local l0
  l0 = self[56]
  l0.HackableEntity = "9223372066839438135"
end
function export:en_131()
  local l0
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0.Hour = 23
  l0.Minutes = 0
  l0.Duration = 420
  l0._graph = self
  l0.Started = self.f_131_Started
  l0.Stopped = DummyFunction
  l0.Out = DummyFunction
end
function export:en_115()
  local l0
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0.Hour = 23
  l0.Minutes = 0
  l0.Duration = 240
  l0._graph = self
  l0.Started = self.f_115_Started
  l0.Stopped = DummyFunction
  l0.Out = DummyFunction
end
_compilerVersion = 4
