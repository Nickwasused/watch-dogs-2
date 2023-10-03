export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AssignPatrol_v2.lua")
  cbox:RegisterBox("domino/System/BinkVideoPlayer_v3.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/DPadHackableController.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/HiddenCamera.HiddenCameraSetup.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PerkController.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RemoteControlledVehicleController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/ToyCarController.lua")
  cbox:RegisterBox("domino/System/ToyCarMonitor.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/829932899.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/641832591.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/536467250.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1170897341.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1113226022.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.RC_barge = nil
  self.Captain = nil
  self.AI_check_hacker = nil
  self.AI_Barge_list = {}
  self.Atmosphere_Main_CAM = {}
  self.Atmosphere_2nd_CAM = {}
  self.Atmosphere_3rd_CAM = {}
  self.Atmosphere_4th_CAM = {}
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
  self[89] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[89]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_89_Out
  self[105] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[105]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_105_Added
  l0.Removed = self.f_105_Removed
  l0.Out = self.f_105_Out
  self[114] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[114]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_114_OnStartAccessCamera
  l0.OnEndAccessCamera = self.f_114_OnEndAccessCamera
  l0.OnStartExitCamera = self.f_114_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[108] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[108]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_108_Added
  l0.Removed = self.f_108_Removed
  l0.Out = self.f_108_Out
  self[75] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[75]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_75_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[124] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[124]
  l0._graph = self
  l0.PerkAdded = self.f_124_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[40] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_40_Hacked
  self[3] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_3_Out
  l0.ResetOut = DummyFunction
  self[102] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[102]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_102_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_102_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[64] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[77] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[77]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_77_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_77_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Loaded = self.f_11_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[59] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[59]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.lua")
  l0 = self[38]
  l0._graph = self
  l0.out = self.f_38_out
  l0.CaptainStressing_out = self.f_38_CaptainStressing_out
  l0.SpawnCaptain_out = self.f_38_SpawnCaptain_out
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
  self[80] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[80]
  l0._graph = self
  l0.StartCommunicationOut = self.f_80_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_80_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[72] = cbox:CreateBox("domino/System/AssignPatrol_v2.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = self.f_72_Out
  l0.Assigned = self.f_72_Assigned
  l0.Unassigned = DummyFunction
  l0.SpeedSet = DummyFunction
  l0.Aborted = DummyFunction
  l0.Failed = DummyFunction
  self[107] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[107]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_107_Added
  l0.Removed = self.f_107_Removed
  l0.Out = self.f_107_Out
  self[92] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[92]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_92_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_92_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[79] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[79]
  l0._graph = self
  l0.StartCommunicationOut = self.f_79_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_79_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[31] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Activated = self.f_31_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_31_OnUserInPlace
  self[25] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[25]
  l0._graph = self
  l0.PerkAdded = self.f_25_PerkAdded
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = DummyFunction
  self[66] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[66]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_66_Hacked
  self[18] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[23]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_23_PerkReseted
  self[15] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = self.f_15_Loaded
  l0.Unloaded = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_27_Out
  self[47] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_47_Out
  self[46] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[46]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_46_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[45] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[45]
  l0._graph = self
  l0.PreOut = self.f_45_PreOut
  l0.PostOut = DummyFunction
  self[19] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[19]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[51] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[97] = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self[97]
  l0._graph = self
  l0.GotNPCList = self.f_97_GotNPCList
  self[35] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_35_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[16] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_16_TeleportDone
  self[103] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[103]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_103_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_103_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[94] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[94]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_94_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.MessageCompleted = DummyFunction
  self[123] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[123]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[106] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[106]
  l0._graph = self
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_106_Added
  l0.Removed = self.f_106_Removed
  l0.Out = self.f_106_Out
  self[125] = cbox:CreateBox("domino/System/PerkController.lua")
  l0 = self[125]
  l0._graph = self
  l0.PerkAdded = DummyFunction
  l0.PerkRemoved = DummyFunction
  l0.PerkListAdded = DummyFunction
  l0.PerkListRemoved = DummyFunction
  l0.PerkListReplaced = DummyFunction
  l0.PerkReseted = self.f_125_PerkReseted
  self[17] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Loaded = self.f_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[99] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[99]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_99_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[54] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_54_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[87] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[87]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_87_PostOut
  self[73] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[73]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_73_Out
  l0.ResetOut = self.f_73_ResetOut
  self[95] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[98] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[98]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_98_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_98_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[119] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[119]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_119_Out
  l0.ResetOut = DummyFunction
  self[101] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[101]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_101_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = self.f_101_OnStartExitCamera
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self[67] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[67]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_67_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_67_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.MessageCompleted = DummyFunction
  self[93] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.lua")
  l0 = self[93]
  l0._graph = self
  l0.out = self.f_93_out
  l0.CaptainStressing_out = DummyFunction
  l0.SpawnCaptain_out = DummyFunction
  self[58] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0.Enabled = self.f_58_Enabled
  l0.Disabled = self.f_58_Disabled
  l0.Enter = self.f_58_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[33] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_33_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_33_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[126] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[126]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_126_Started
  l0.Stopped = self.f_126_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_126_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self[37] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_37_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[32] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[32]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_32_PostOut
  self[70] = cbox:CreateBox("domino/Library/common/HiddenCamera.HiddenCameraSetup.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_10_Hacked
  self[117] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[117]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[68] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[68]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_68_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_68_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[39] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[39]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_39_Hacked
  self[53] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S16/S16M050/s16m050_scr.S16M050_SCR_Main.lua")
  l0 = self[53]
  l0._graph = self
  l0.out = DummyFunction
  l0.CaptainStressing_out = self.f_53_CaptainStressing_out
  l0.SpawnCaptain_out = DummyFunction
  self[63] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[63]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_63_TeleportDone
  self[49] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_49_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_49_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[69] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[69]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_69_OnUserInPlace
  self[61] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[61]
  l0._graph = self
  l0.Out = self.f_61_Out
  l0.MessageCompleted = DummyFunction
  self[60] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_60_Out
  l0.ResetOut = DummyFunction
  self[22] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[22]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_22_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_22_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[28]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_28_PostOut
  self[14] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_14_Out
  self[133] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[133]
  l0._graph = self
  self[85] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[85]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_85_Out
  l0.ResetOut = DummyFunction
  self[129] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[129]
  l0._graph = self
  l0.Out = self.f_129_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[62] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[62]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_62_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_62_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[21] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[55] = cbox:CreateBox("domino/System/ToyCarMonitor.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = self.f_55_Enabled
  l0.Disabled = DummyFunction
  l0.OnDetected = DummyFunction
  l0.OnHidden = DummyFunction
  l0.OnSpawned = DummyFunction
  l0.OnUnSpawned = DummyFunction
  l0.OnDestroyed = DummyFunction
  l0.IsConnected = self.f_55_IsConnected
  l0.IsDisconnected = DummyFunction
  l0.IsPickUp = DummyFunction
  l0.StunWasUsed = DummyFunction
  self[120] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[120]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[13] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[13]
  l0._graph = self
  l0.PreOut = self.f_13_PreOut
  l0.PostOut = DummyFunction
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
  l0 = self[11]
  l0.LayerName = "S16M050_Main"
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self[17]
  l0.LayerName = "S16M050_Main"
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:en_133()
  l0 = self[133]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[2]
  l0.LayerName = "S16M050_Main"
  l0:Load()
end
function export:Stop()
  local l0
  l0 = self[23]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:ResetPerks()
end
function export:f_20_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective030",
    item = "Objective",
    id = "345167"
  }
  l0:ShowNewObjective()
end
function export:f_89_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S17M010_NoMovement"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_34_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_29_CanExitSet()
  local l0
  self = self._graph
  self:en_29()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceUserOutOfCamera()
end
function export:f_29_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_116_Out_0
  l0.Out[1] = self.f_116_Out_1
  l0:In()
end
function export:f_50_UserForcedOutOfRC()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S16M05_NoSmartphone"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_56_Popped
  l0:Pop()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Entity = "9223372046675047741"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Entity = "9223372059747496663"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_105_Added()
  local l0
  self = self._graph
  l0 = self[105]
  self.Atmosphere_4th_CAM = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_112_Out_0
  l0.Out[1] = self.f_112_Out_1
  l0.Out[2] = self.f_112_Out_2
  l0.Out[3] = self.f_112_Out_3
  l0.Out[4] = self.f_112_Out_4
  l0:In()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[105]
  self.Atmosphere_4th_CAM = l0.Target
end
function export:f_105_Removed()
  local l0
  self = self._graph
  l0 = self[105]
  self.Atmosphere_4th_CAM = l0.Target
end
function export:f_114_OnEndAccessCamera()
  local l0
  self = self._graph
  l0 = self[47]
  l0:Input(1)
end
function export:f_114_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = self[47]
  l0:Input(0)
end
function export:f_114_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = self[73]
  l0:Reset()
end
function export:f_108_Added()
  local l0
  self = self._graph
  l0 = self[108]
  self.Atmosphere_Main_CAM = l0.Target
  l0 = self[107]
  l0.Input = self.Atmosphere_2nd_CAM
  l0.Data[0] = "9223372065760408681"
  l0.Data[1] = "9223372065760408683"
  l0.Data[2] = "9223372065760408687"
  l0.Data[3] = "9223372071013923793"
  l0.Data[4] = "9223372071013923801"
  l0.Data[5] = "9223372071013923799"
  l0:Add()
end
function export:f_108_Out()
  local l0
  self = self._graph
  l0 = self[108]
  self.Atmosphere_Main_CAM = l0.Target
end
function export:f_108_Removed()
  local l0
  self = self._graph
  l0 = self[108]
  self.Atmosphere_Main_CAM = l0.Target
end
function export:f_88_ByIndexSet()
  local l0
  self = self._graph
  l0 = self[119]
  l0:In(1)
end
function export:f_75_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_114()
  l0 = self[114]
  l0:Enable()
end
function export:f_7_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_91_Popped
  l0:Pop()
end
function export:f_7_EnterForced()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_124_PerkAdded()
  local l0
  self = self._graph
  l0 = self[129]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = self[15]
  l0.LMALayerName = "Barge_LMA"
  l0:Load()
end
function export:f_40_Hacked()
  local l0
  self = self._graph
  l0 = self[80]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825662"
  l0:StartCommunication()
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_126()
  l0 = self[126]
  l0:Start()
end
function export:f_102_OnStartAccessCamera()
  local l0
  self = self._graph
  self:en_110()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_102_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_110()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_90_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_127_Out_0
  l0.Out[1] = self.f_127_Out_1
  l0:In()
end
function export:f_4_Added()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Seconds = 2
  l0:Start()
end
function export:f_77_Disabled()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:DisableProfiling()
end
function export:f_77_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_62()
  l0 = self[62]
  l0:DisableHack()
end
function export:f_118_Out_0()
  local l0
  self = self._graph
  l0 = self[94]
  l0.HackableEntity = self.RC_barge
  l0:DisableHack()
end
function export:f_118_Out_1()
  local l0
  self = self._graph
  l0 = self[117]
  l0.SoundId = "soundbinary/829932899.bnk"
  l0:Play()
end
function export:f_11_Loaded()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(1)
end
function export:f_130_Out_0()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Input = self.Atmosphere_Main_CAM
  l0.Data[0] = "9223372065760408681"
  l0.Data[1] = "9223372065760408683"
  l0.Data[2] = "9223372065760408685"
  l0.Data[3] = "9223372071013923795"
  l0.Data[4] = "9223372071013923801"
  l0.Data[5] = "9223372071013923799"
  l0:Add()
end
function export:f_130_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetHidden()
end
function export:f_84_ActivatedPlayOnBinkChannel()
  local l0
  self = self._graph
  self:en_84()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_82_Out_0()
  local l0
  self = self._graph
  l0 = self[119]
  l0:In(0)
end
function export:f_82_Out_1()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Captain_In = self.Captain
  l0:In_CaptainReact()
end
function export:f_132_InstalledSet()
  local l0
  self = self._graph
  l0 = self[32]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_38_CaptainStressing_out()
  local l0
  self = self._graph
  l0 = self[38]
  self.Captain = l0.Captain_Out
end
function export:f_38_out()
  local l0
  self = self._graph
  l0 = self[38]
  self.Captain = l0.Captain_Out
end
function export:f_38_SpawnCaptain_out()
  local l0
  self = self._graph
  l0 = self[38]
  self.Captain = l0.Captain_Out
  l0 = self[97]
  l0:GetAllAlive()
end
function export:f_76_Disabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:DisableProfiling()
end
function export:f_76_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_68()
  l0 = self[68]
  l0:DisableHack()
end
function export:f_80_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Condition(1)
end
function export:f_80_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[64]
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective021",
    item = "SubObjective1",
    id = "693250"
  }
  l0:IncrementObjective()
end
function export:f_72_Assigned()
  local l0
  self = self._graph
  l0 = self[70]
  l0.NPC = self.AI_check_hacker
  l0.HiddenCamera = "9223372052441885552"
  l0:In()
end
function export:f_72_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0:SpawnCaptain()
end
function export:f_107_Added()
  local l0
  self = self._graph
  l0 = self[107]
  self.Atmosphere_2nd_CAM = l0.Target
  l0 = self[106]
  l0.Input = self.Atmosphere_3rd_CAM
  l0.Data[0] = "9223372065760408681"
  l0.Data[1] = "9223372065760408685"
  l0.Data[2] = "9223372065760408687"
  l0.Data[3] = "9223372071013923793"
  l0.Data[4] = "9223372071013923795"
  l0.Data[5] = "9223372071013923799"
  l0:Add()
end
function export:f_107_Out()
  local l0
  self = self._graph
  l0 = self[107]
  self.Atmosphere_2nd_CAM = l0.Target
end
function export:f_107_Removed()
  local l0
  self = self._graph
  l0 = self[107]
  self.Atmosphere_2nd_CAM = l0.Target
end
function export:f_92_Disabled()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:DisableProfiling()
end
function export:f_92_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[31]
  l0.CLO = "9223372047363201533"
  l0:Activate()
end
function export:f_79_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Condition(0)
end
function export:f_79_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective020",
    item = "SubObjective2",
    id = "345166"
  }
  l0:IncrementObjective()
end
function export:f_31_Activated()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Enable()
end
function export:f_31_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[31]
  self.RC_barge = l0.UserID
end
function export:f_25_PerkAdded()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Input(1)
end
function export:f_66_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_115_Out_0
  l0.Out[1] = self.f_115_Out_1
  l0.Out[2] = self.f_115_Out_2
  l0.Out[3] = self.f_115_Out_3
  l0:In()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_130_Out_0
  l0.Out[1] = self.f_130_Out_1
  l0:In()
end
function export:f_23_PerkReseted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_15_Loaded()
  local l0
  self = self._graph
  l0 = self[89]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[124]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:AddPerk()
end
function export:f_91_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S16M05_NoSmartphone"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_30_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[73]
  l0:In(0)
end
function export:f_46_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective030",
    item = "Objective",
    id = "345167"
  }
  l0.ObjectiveSub1 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective020",
    item = "SubObjective2",
    id = "345166"
  }
  l0.ObjectiveSub2 = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective021",
    item = "SubObjective1",
    id = "693250"
  }
  l0:ShowNewObjective()
end
function export:f_45_PreOut()
  local l0
  self = self._graph
  self:en_29()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_97_GotNPCList()
  local l0
  self = self._graph
  l0 = self[97]
  self.AI_Barge_list = l0.NPCList
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.AI_Barge_list
  l0.HackCategoryType[0] = nil
  l0.HackCategoryType[1] = nil
  l0.HackCategoryType[2] = nil
  l0.HackCategoryType[3] = nil
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 4}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = DummyFunction
  l0.Removed = DummyFunction
  l0.RemovedAll = self.f_96_RemovedAll
  l0.HackingDisabled = DummyFunction
  l0:RemoveAll()
end
function export:f_36_Popped()
  local l0
  self = self._graph
  l0 = self[63]
  l0.SpawnPoint = "9223372046675048218"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372059809485445"
  l0:In()
end
function export:f_35_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[61]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M050.Objectives.Objective010",
    item = "Objective",
    id = "345165"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_16_TeleportDone()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Seconds = 2
  l0:Start()
end
function export:f_116_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/RemoteControlledVehicleController.lua")]
  l0.UserEntity = nil
  l0.RCEntity = self.RC_barge
  l0.CanExit = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.UserForcedOutOfRC = self.f_50_UserForcedOutOfRC
  l0.CanExitChanged = DummyFunction
  l0:ForceUserOutOfRC()
end
function export:f_116_Out_1()
  local l0
  self = self._graph
  l0 = self[95]
  l0.SoundId = "soundbinary/1170897341.bnk"
  l0:Play()
end
function export:f_103_OnStartAccessCamera()
  local l0
  self = self._graph
  self:en_111()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_103_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_111()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_78()
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0:Start()
end
function export:f_94_Disabled()
  local l0
  self = self._graph
  l0 = self[22]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825668"
  l0:StartCommunication()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Entity = "9223372059747499289"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_121_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_121_Out_1()
  local l0
  self = self._graph
  l0 = self[120]
  l0.SoundId = "soundbinary/641832591.bnk"
  l0:Play()
end
function export:f_106_Added()
  local l0
  self = self._graph
  l0 = self[106]
  self.Atmosphere_3rd_CAM = l0.Target
  l0 = self[105]
  l0.Input = self.Atmosphere_4th_CAM
  l0.Data[0] = "9223372065760408683"
  l0.Data[1] = "9223372065760408685"
  l0.Data[2] = "9223372065760408687"
  l0.Data[3] = "9223372071013923793"
  l0.Data[4] = "9223372071013923795"
  l0.Data[5] = "9223372071013923801"
  l0:Add()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = self[106]
  self.Atmosphere_3rd_CAM = l0.Target
end
function export:f_106_Removed()
  local l0
  self = self._graph
  l0 = self[106]
  self.Atmosphere_3rd_CAM = l0.Target
end
function export:f_125_PerkReseted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_132_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_17_Loaded()
  local l0
  self = self._graph
  l0 = self[25]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:AddPerk()
end
function export:f_99_Hidden()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Seconds = 2
  l0:Start()
end
function export:f_54_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372063154542486"
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
function export:f_87_PostOut()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Start()
end
function export:f_73_Out()
  local l0
  self = self._graph
  self:en_66()
  l0 = self[66]
  l0:Start()
end
function export:f_73_ResetOut()
  local l0
  self = self._graph
  self:en_66()
  l0 = self[66]
  l0:Stop()
end
function export:f_98_OnStartAccessCamera()
  local l0
  self = self._graph
  self:en_104()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_98_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_104()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_119_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.SoundId = "soundbinary/536467250.bnk"
  l0:Play()
end
function export:f_101_OnStartAccessCamera()
  local l0
  self = self._graph
  self:en_109()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_101_OnStartExitCamera()
  local l0
  self = self._graph
  self:en_109()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_67_Disabled()
  local l0
  self = self._graph
  self:en_67()
  l0 = self[67]
  l0:DisableProfiling()
end
function export:f_67_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_76()
  l0 = self[76]
  l0:DisableHack()
end
function export:f_112_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_3rd_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_113_Hidden
  l0.Out = DummyFunction
  l0:Hide()
end
function export:f_112_Out_1()
  local l0
  self = self._graph
  l0 = self[98]
  l0.CameraEntity = "9223372065760408673"
  l0:Enable()
end
function export:f_112_Out_2()
  local l0
  self = self._graph
  l0 = self[101]
  l0.CameraEntity = "9223372065760408675"
  l0:Enable()
end
function export:f_112_Out_3()
  local l0
  self = self._graph
  l0 = self[102]
  l0.CameraEntity = "9223372065760408677"
  l0:Enable()
end
function export:f_112_Out_4()
  local l0
  self = self._graph
  l0 = self[103]
  l0.CameraEntity = "9223372065760408679"
  l0:Enable()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_93_out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S17M010_NoMovement"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_36_Popped
  l0:Pop()
end
function export:f_58_Disabled()
  local l0
  self = self._graph
  l0 = self[60]
  l0:In(0)
end
function export:f_58_Enabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0:MakeDisconnectUnavailable()
end
function export:f_58_Enter()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Disable()
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:DisableProfiling()
end
function export:f_33_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[28]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_41_Hidden
  l0:Hide()
end
function export:f_115_Out_1()
  local l0
  self = self._graph
  self:en_114()
  l0 = self[114]
  l0:Disable()
end
function export:f_115_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372063485543539"
  l0.Channel = "Bar"
  l0._graph = self
  l0.ChannelChanged = self.f_86_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_115_Out_3()
  local l0
  self = self._graph
  self:en_126()
  l0 = self[126]
  l0:Stop()
end
function export:f_96_RemovedAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DPadHackableController.lua")]
  l0.HackableEntity = nil
  l0.HackableEntityList = self.AI_Barge_list
  l0.HackCategoryType[0] = "Contextual"
  l0._graph = self
  l0._DynamicAnchors = {HackCategoryType = 1}
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Added = self.f_4_Added
  l0.Removed = DummyFunction
  l0.RemovedAll = DummyFunction
  l0.HackingDisabled = DummyFunction
  l0:Add()
end
function export:f_126_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_126_Stopped()
  local l0
  self = self._graph
  self:en_78()
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0:Stop()
end
function export:f_126_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_42_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[125]
  l0.PerkDB = "PerksSinglePlayer.9223372047059047165"
  l0:ResetPerks()
end
function export:f_37_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[87]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_32_PostOut()
  local l0
  self = self._graph
  self:en_133()
  l0 = self[133]
  l0:End()
end
function export:f_10_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_118_Out_0
  l0.Out[1] = self.f_118_Out_1
  l0:In()
end
function export:f_41_Hidden()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_83_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "S09M020_NoNethack"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_90_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_83_EnterForced()
  local l0
  self = self._graph
  self:en_83()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_68_Disabled()
  local l0
  self = self._graph
  self:en_68()
  l0 = self[68]
  l0:DisableProfiling()
end
function export:f_68_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_77()
  l0 = self[77]
  l0:DisableHack()
end
function export:f_39_Hacked()
  local l0
  self = self._graph
  l0 = self[79]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825660"
  l0:StartCommunication()
end
function export:f_53_CaptainStressing_out()
  local l0
  self = self._graph
  l0 = self[45]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_63_TeleportDone()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Input(0)
end
function export:f_52_CallBackUnavailable()
  local l0
  self = self._graph
  l0 = self[85]
  l0:In(0)
end
function export:f_52_DisconnectUnavailable()
  local l0
  self = self._graph
  self:en_52()
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0:MakeCallBackUnavailable()
end
function export:f_49_Disabled()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:DisableProfiling()
end
function export:f_49_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_67()
  l0 = self[67]
  l0:DisableHack()
end
function export:f_69_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[69]
  self.AI_check_hacker = l0.UserID
  l0 = self[72]
  l0.NPC = self.AI_check_hacker
  l0.Patrol = "9223372048044195401"
  l0:Assign()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = self[75]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825629"
  l0:StartCommunication()
end
function export:f_30_Pushed()
  local l0
  self = self._graph
  self:en_92()
  l0 = self[92]
  l0:DisableHack()
end
function export:f_43_Shown()
  local l0
  self = self._graph
  l0 = self[46]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825631"
  l0:StartCommunication()
end
function export:f_113_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_122_Out_0
  l0.Out[1] = self.f_122_Out_1
  l0:In()
end
function export:f_60_Out()
  local l0
  self = self._graph
  l0 = self[59]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825658"
  l0:StartCommunication()
end
function export:f_127_Out_0()
  local l0
  self = self._graph
  l0 = self[37]
  l0.Seconds = 1.5
  l0:Start()
end
function export:f_127_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(0)
end
function export:f_100_CanExitSet()
  local l0
  self = self._graph
  self:en_100()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceUserOutOfCamera()
end
function export:f_100_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = self[99]
  l0.MapPoint = "9223372048548780762"
  l0:Hide()
end
function export:f_22_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_82_Out_0
  l0.Out[1] = self.f_82_Out_1
  l0:In()
end
function export:f_22_OnCommunicationStarted()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Seconds = 12
  l0:Start()
end
function export:f_28_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_43_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_86_ChannelChanged()
  local l0
  self = self._graph
  self:en_84()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0:ActivatePlayOnBinkChannel()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825664"
  l0:StartCommunication()
end
function export:f_85_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825666"
  l0:StartCommunication()
end
function export:f_129_Out()
  local l0
  self = self._graph
  l0 = self[93]
  l0:In()
end
function export:f_62_Disabled()
  local l0
  self = self._graph
  self:en_62()
  l0 = self[62]
  l0:DisableProfiling()
end
function export:f_62_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:DisableHack()
end
function export:f_56_Popped()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SpawnPoint = "9223372047363236327"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0.BinkLoadingScreen = "BinkLoadingScreenDatabase.9223372068252315069"
  l0:In()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:DisableHack()
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_121_Out_0
  l0.Out[1] = self.f_121_Out_1
  l0:In()
end
function export:f_122_Out_0()
  local l0
  self = self._graph
  self:en_83()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:ForceEnter()
end
function export:f_122_Out_1()
  local l0
  self = self._graph
  l0 = self[123]
  l0.SoundId = "soundbinary/1113226022.bnk"
  l0:Play()
end
function export:f_55_Enabled()
  local l0
  self = self._graph
  l0 = self[69]
  l0.CLO = "9223372048044195403"
  l0:Activate()
end
function export:f_55_IsConnected()
  local l0
  self = self._graph
  self:en_58()
  l0 = self[58]
  l0:Enable()
end
function export:f_34_Pushed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_13_PreOut()
  local l0
  self = self._graph
  self:en_100()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0:SetCanExit()
end
function export:f_48_Disabled()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:DisableProfiling()
end
function export:f_48_ProfilingDisabled()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:DisableHack()
end
function export:en_29()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = {
    "9223372047363234965",
    "9223372047775188570",
    "9223372047775188576",
    "9223372047775189181"
  }
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_29_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_29_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_114()
  local l0
  l0 = self[114]
  l0.CameraEntity = "9223372065760408673"
  l0.CheckNow = 1
end
function export:en_7()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372052830700219"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_7_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_7_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_77()
  local l0
  l0 = self[77]
  l0.HackableEntity = "9223372047642353130"
end
function export:en_84()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372061845822504"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = self.f_84_ActivatedPlayOnBinkChannel
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
end
function export:en_76()
  local l0
  l0 = self[76]
  l0.HackableEntity = "9223372047642353122"
end
function export:en_92()
  local l0
  l0 = self[92]
  l0.HackableEntity = "9223372055142921749"
end
function export:en_109()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_2nd_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_110()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_3rd_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_104()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_Main_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_66()
  local l0
  l0 = self[66]
  l0.Entity = "9223372061059668753"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:en_111()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.Atmosphere_4th_CAM
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_67()
  local l0
  l0 = self[67]
  l0.HackableEntity = "9223372047642353121"
end
function export:en_58()
  local l0
  l0 = self[58]
  l0.Trigger = "9223372053024825656"
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.HackableEntity = "9223372049380251054"
end
function export:en_126()
  local l0
  l0 = self[126]
  l0.Seconds = 4
  l0.Loop = 1
end
function export:en_83()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372065760408677"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_83_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_83_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_68()
  local l0
  l0 = self[68]
  l0.HackableEntity = "9223372047642353129"
end
function export:en_52()
  local l0
  l0 = Boxes[PathID("domino/System/ToyCarController.lua")]
  l0.PlayerPawn = self.RC_barge
  l0.RCEntity = nil
  l0._graph = self
  l0.CalledBack = DummyFunction
  l0.Available = DummyFunction
  l0.Unavailable = DummyFunction
  l0.Connected = DummyFunction
  l0.Disconnected = DummyFunction
  l0.CallBackAvailable = DummyFunction
  l0.CallBackUnavailable = self.f_52_CallBackUnavailable
  l0.DisconnectAvailable = DummyFunction
  l0.DisconnectUnavailable = self.f_52_DisconnectUnavailable
  l0.ConnectAvailable = DummyFunction
  l0.ConnectUnavailable = DummyFunction
  l0.Destroyed = DummyFunction
  l0.DestroyedUncontrolledRC = DummyFunction
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.HackableEntity = "9223372047642353120"
end
function export:en_100()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = "9223372048548774858"
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_100_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_100_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:en_133()
  local l0
  l0 = self[133]
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S16M050_Main"
  l0.LmaLayer = "Barge_LMA"
  l0.ShowMissionComplete = 1
end
function export:en_78()
  local l0
  l0 = Boxes[PathID("domino/System/BinkVideoPlayer_v3.lua")]
  l0.BinkFileName = nil
  l0.VideoDbObject = "Videos.9223372055669078148"
  l0.ExternalSoundId = nil
  l0.OnSkipSoundId = nil
  l0.Seconds = nil
  l0.CanBeSkip = nil
  l0.NoActionMap = 1
  l0.EnableAlpha = 1
  l0.UseSubtitle = nil
  l0.PlayEmbeddedAudio = nil
  l0.PauseGame = nil
  l0.HideBlackBars = 1
  l0.OverrideSubtitle = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.TimeElapsed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
end
function export:en_62()
  local l0
  l0 = self[62]
  l0.HackableEntity = "9223372049380251052"
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.HackableEntity = "9223372047642353128"
end
_compilerVersion = 4
