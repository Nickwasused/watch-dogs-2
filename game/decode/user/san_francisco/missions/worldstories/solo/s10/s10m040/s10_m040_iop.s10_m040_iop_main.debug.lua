export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1226381302.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1763248425.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S10_M040_IOP_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.Fed = nil
  self.NPCRoles = {
    "SpotTheFeds.Fbi",
    "SpotTheFeds.Fbi2",
    "SpotTheFeds.Wrench",
    "SpotTheFeds.Dushan"
  }
  self.Characters = {}
  self.Dusan = nil
  self.Camera = "9223372047710387277"
  self.Wrench = nil
  self.SpotTheFedsCameras = {}
  self.Officer = nil
  self.SecurityCam = 0
  self.CameraIn = nil
  self.CameraNoBlend = {}
  self.MaskBlinks = 0
  self.box_Security_Camera_Monitor_33 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_33
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|3555210"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_33_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_125 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_125
  l0._graph = self
  l0._name = "box_Timer_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|9256993"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_125_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_16 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|26993515"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_76 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_76
  l0._graph = self
  l0._name = "box_Timer_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|45714558"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_76_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_110 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_110
  l0._graph = self
  l0._name = "box_CinematicPrep_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|82838520"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_110_PostOut
  self.box_HackableController_v2_61 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_61
  l0._graph = self
  l0._name = "box_HackableController_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|117519524"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_61_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_8 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_8
  l0._graph = self
  l0._name = "box_CLOController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|119994318"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_8_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_22 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_22
  l0._graph = self
  l0._name = "box_CLOController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|120822332"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_22_OnUserInPlace
  self.box_MultipleOR_105 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_105
  l0._graph = self
  l0._name = "box_MultipleOR_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|121552907"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_105_Out
  self.box_ListWriter_39 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_39
  l0._graph = self
  l0._name = "box_ListWriter_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|122168799"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_39_Added
  l0.Removed = self.f_box_ListWriter_39_Removed
  l0.Out = self.f_box_ListWriter_39_Out
  self.box_Timer_v2_74 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_74
  l0._graph = self
  l0._name = "box_Timer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|156552337"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_49 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_49
  l0._graph = self
  l0._name = "box_ListWriter_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|159337067"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_49_Added
  l0.Removed = self.f_box_ListWriter_49_Removed
  l0.Out = self.f_box_ListWriter_49_Out
  self.box_Timer_v2_139 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_139
  l0._graph = self
  l0._name = "box_Timer_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|161604219"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_139_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_78 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_78
  l0._graph = self
  l0._name = "box_Timer_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|193059673"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_78_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_31 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_31
  l0._graph = self
  l0._name = "box_CLOController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|194860197"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_31_OnUserInPlace
  self.box_Timer_v2_64 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_64
  l0._graph = self
  l0._name = "box_Timer_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|212913966"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_64_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RewardController_v3_66 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_66
  l0._graph = self
  l0._name = "box_RewardController_v3_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|214984473"
  l0.Out = self.f_box_RewardController_v3_66_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_59 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_59
  l0._graph = self
  l0._name = "box_Timer_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|221865116"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_59_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_104 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_104
  l0._graph = self
  l0._name = "box_Timer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|288086388"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_80 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_80
  l0._graph = self
  l0._name = "box_HackableController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|289018280"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_80_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_46 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_46
  l0._graph = self
  l0._name = "box_HackableController_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|347314893"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_46_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_65 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_65
  l0._graph = self
  l0._name = "box_AI_IOPController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|350760148"
  l0.Out = self.f_box_AI_IOPController_65_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_IOPMonitor_51 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_51
  l0._graph = self
  l0._name = "box_IOPMonitor_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|440105163"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_51_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|454083033"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_17_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_71 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_71
  l0._graph = self
  l0._name = "box_HackableController_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|493904462"
  l0.Enabled = self.f_box_HackableController_v2_71_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_71_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_9 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_9
  l0._graph = self
  l0._name = "box_HackableController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|537736294"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_79 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_79
  l0._graph = self
  l0._name = "box_Timer_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|545106037"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_115 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_115
  l0._graph = self
  l0._name = "box_Timer_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|609666995"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_115_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_42 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_42
  l0._graph = self
  l0._name = "box_IOPMonitor_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|615775603"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = self.f_box_IOPMonitor_42_ActivateHackables
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_87 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_87
  l0._graph = self
  l0._name = "box_HackableController_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|630327575"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_53 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_53
  l0._graph = self
  l0._name = "box_HackableController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|653234627"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_53_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_53_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_6 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_6
  l0._graph = self
  l0._name = "box_CLOController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|661471159"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_6_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_82 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_82
  l0._graph = self
  l0._name = "box_AI_IOPController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|692190400"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_MultipleOR_97 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_97
  l0._graph = self
  l0._name = "box_MultipleOR_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|698454025"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_97_Out
  self.box_HackableController_v2_50 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_50
  l0._graph = self
  l0._name = "box_HackableController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|703674956"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_50_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_27 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_27
  l0._graph = self
  l0._name = "box_AI_IOPController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|706476181"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_112 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_112
  l0._graph = self
  l0._name = "box_Timer_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|724823302"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_112_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_36 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_36
  l0._graph = self
  l0._name = "box_CLOController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|733395540"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_36_OnUserInPlace
  self.box_AI_IOPController_126 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_126
  l0._graph = self
  l0._name = "box_AI_IOPController_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|740214611"
  l0.Out = self.f_box_AI_IOPController_126_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|810411640"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_18_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Security_Camera_Monitor_124 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_124
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|822060066"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Security_Camera_Monitor_124_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_124_OnEndAccessCamera
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_103 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_103
  l0._graph = self
  l0._name = "box_Timer_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|828590075"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_103_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPPropMonitor_99 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_99
  l0._graph = self
  l0._name = "box_IOPPropMonitor_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|842932655"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_99_PropSpawned
  self.box_IOPMonitor_40 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_40
  l0._graph = self
  l0._name = "box_IOPMonitor_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|849698696"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_box_IOPMonitor_40_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|850065852"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_55 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_55
  l0._graph = self
  l0._name = "box_Hackable_Monitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|861221047"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_55_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_55_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AI_IOPController_132 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_132
  l0._graph = self
  l0._name = "box_AI_IOPController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|870439916"
  l0.Out = self.f_box_AI_IOPController_132_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_23 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_23
  l0._graph = self
  l0._name = "box_AI_IOPController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|921730199"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_69 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_69
  l0._graph = self
  l0._name = "box_AI_IOPController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|945126355"
  l0.Out = self.f_box_AI_IOPController_69_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_35 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_35
  l0._graph = self
  l0._name = "box_PlaySound_v2_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|975429322"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_35_Started
  l0.Finished = DummyFunction
  self.box_Multiple_AND_10 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_10
  l0._graph = self
  l0._name = "box_Multiple_AND_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1017870422"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_10_Out
  self.box_CLOController_20 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_20
  l0._graph = self
  l0._name = "box_CLOController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1021272183"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_20_OnUserInPlace
  self.box_RewardController_v3_128 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_128
  l0._graph = self
  l0._name = "box_RewardController_v3_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1059187873"
  l0.Out = self.f_box_RewardController_v3_128_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_HackableController_v2_117 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_117
  l0._graph = self
  l0._name = "box_HackableController_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1062952181"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_117_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_85 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_85
  l0._graph = self
  l0._name = "box_HackableController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1112026504"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_84 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_84
  l0._graph = self
  l0._name = "box_Timer_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1123948187"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_84_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_70 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_70
  l0._graph = self
  l0._name = "box_IOPMonitor_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1152337766"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_70_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_44 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_44
  l0._graph = self
  l0._name = "box_HackableController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1183172842"
  l0.Enabled = self.f_box_HackableController_v2_44_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_44_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1193566840"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_14_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_131 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_131
  l0._graph = self
  l0._name = "box_AI_IOPController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1200479097"
  l0.Out = self.f_box_AI_IOPController_131_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_38 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_38
  l0._graph = self
  l0._name = "box_AI_IOPController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1207904008"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_118 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_118
  l0._graph = self
  l0._name = "box_SetBoolean_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1233699962"
  l0.Out = self.f_box_SetBoolean_v2_118_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_118_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_118_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_118_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_118_SetFromBool
  self.box_RewardController_v3_130 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_130
  l0._graph = self
  l0._name = "box_RewardController_v3_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1258333344"
  l0.Out = self.f_box_RewardController_v3_130_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Hackable_Monitor_43 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_43
  l0._graph = self
  l0._name = "box_Hackable_Monitor_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1263459479"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_43_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_43_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_RewardController_v3_129 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_129
  l0._graph = self
  l0._name = "box_RewardController_v3_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1269009423"
  l0.Out = self.f_box_RewardController_v3_129_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1278376404"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_RewardController_v3_77 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_77
  l0._graph = self
  l0._name = "box_RewardController_v3_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1303280247"
  l0.Out = self.f_box_RewardController_v3_77_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_IOPMonitor_113 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_113
  l0._graph = self
  l0._name = "box_IOPMonitor_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1314576858"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_113_EventOccurred
  l0.Out = DummyFunction
  self.box_Timer_v2_127 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_127
  l0._graph = self
  l0._name = "box_Timer_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1318411325"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_127_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_109 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_109
  l0._graph = self
  l0._name = "box_SetBoolean_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1322500443"
  l0.Out = self.f_box_SetBoolean_v2_109_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_109_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_109_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_109_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_109_SetFromBool
  self.box_MultipleOR_81 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_81
  l0._graph = self
  l0._name = "box_MultipleOR_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1351979481"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_81_Out
  self.box_ListWriter_21 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_21
  l0._graph = self
  l0._name = "box_ListWriter_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1361461841"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_21_Added
  l0.Removed = self.f_box_ListWriter_21_Removed
  l0.Out = self.f_box_ListWriter_21_Out
  self.box_AI_IOPController_135 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_135
  l0._graph = self
  l0._name = "box_AI_IOPController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1413380610"
  l0.Out = self.f_box_AI_IOPController_135_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_41 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_41
  l0._graph = self
  l0._name = "box_AI_IOPController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1415054286"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_83 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_83
  l0._graph = self
  l0._name = "box_Timer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1421525929"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_83_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_67 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_67
  l0._graph = self
  l0._name = "box_Timer_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1448146099"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPPropMonitor_92 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_92
  l0._graph = self
  l0._name = "box_IOPPropMonitor_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1491009173"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_92_PropSpawned
  self.box_PlaySound_v2_142 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_142
  l0._graph = self
  l0._name = "box_PlaySound_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1495608925"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_56 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_56
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1546123253"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_56_Completed
  self.box_Timer_v2_145 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_145
  l0._graph = self
  l0._name = "box_Timer_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1560217502"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_145_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_37 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_37
  l0._graph = self
  l0._name = "box_AI_IOPController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1562819497"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_37_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_143 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_143
  l0._graph = self
  l0._name = "box_PlaySound_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1565830601"
  l0.Out = self.f_box_PlaySound_v2_143_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_RewardController_v3_62 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_62
  l0._graph = self
  l0._name = "box_RewardController_v3_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1575822870"
  l0.Out = self.f_box_RewardController_v3_62_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_SetBoolean_v2_111 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_111
  l0._graph = self
  l0._name = "box_SetBoolean_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1641057902"
  l0.Out = self.f_box_SetBoolean_v2_111_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_111_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_111_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_111_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_111_SetFromBool
  self.box_AI_IOPController_32 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_32
  l0._graph = self
  l0._name = "box_AI_IOPController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1678555223"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_151 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_151
  l0._graph = self
  l0._name = "box_Timer_v2_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1679227612"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_151_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1747698625"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_15_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_63 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_63
  l0._graph = self
  l0._name = "box_AI_IOPController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1763079026"
  l0.Out = self.f_box_AI_IOPController_63_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Timer_v2_133 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_133
  l0._graph = self
  l0._name = "box_Timer_v2_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1817869560"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_133_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_7 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_7
  l0._graph = self
  l0._name = "box_AI_IOPController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1844413930"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_7_IOPKickOutComplete
  self.box_CLOController_54 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_54
  l0._graph = self
  l0._name = "box_CLOController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1908336360"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_54_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Security_Camera_Monitor_5 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_5
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1913202115"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_5_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_52 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_52
  l0._graph = self
  l0._name = "box_Timer_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1928000494"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_52_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_144 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_144
  l0._graph = self
  l0._name = "box_MultipleOR_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1977112226"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_144_Out
  self.box_Security_Camera_Monitor_2 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_2
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2049083441"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_2_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2062878543"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_11_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_RewardController_v3_73 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_73
  l0._graph = self
  l0._name = "box_RewardController_v3_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2067681804"
  l0.Out = self.f_box_RewardController_v3_73_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_75 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_75
  l0._graph = self
  l0._name = "box_Timer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2085352022"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_75_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_45 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_45
  l0._graph = self
  l0._name = "box_IOPMonitor_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2102369360"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_45_EventOccurred
  l0.Out = DummyFunction
  self.box_HackableController_v2_47 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_47
  l0._graph = self
  l0._name = "box_HackableController_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2119744246"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_96 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_96
  l0._graph = self
  l0._name = "box_CinematicPrep_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2123865984"
  l0.PreOut = self.f_box_CinematicPrep_96_PreOut
  l0.PostOut = DummyFunction
  self.box_AI_IOPController_68 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_68
  l0._graph = self
  l0._name = "box_AI_IOPController_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2139772319"
  l0.Out = self.f_box_AI_IOPController_68_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|899645302"
  l0.Out = self.f_box_Get_Player_ID_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1090687395", "1090687395", "S10_M040_IOP_Main", "In", "box_Get_Player_ID_30.In", self, l0)
  l0:In()
end
function export:f_box_Security_Camera_Monitor_33_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_23
  l0.IopID = "SpotTheFeds"
  l0.IopEvent = "SpotTheFeds.Camera1"
  l0 = self.box_Security_Camera_Monitor_33
  l1 = self.box_AI_IOPController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1496243144", "1496243144", "S10_M040_IOP_Main", "box_Security_Camera_Monitor_33.OnStartAccessCamera", "box_AI_IOPController_23.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_125_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_129
  l0.ItemDB = "Items.9223372060273983685"
  l0 = self.box_Timer_v2_125
  l1 = self.box_RewardController_v3_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|395960955", "395960955", "S10_M040_IOP_Main", "box_Timer_v2_125.TimeElapsed", "box_RewardController_v3_129.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_48()
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1530833359", "1530833359", "S10_M040_IOP_Main", "box_Ordered_Output_29.Out", "box_SecurityCamController_48.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1781274523"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_152_Out_0
  l0.Out[1] = DummyFunction
  l0.Out[2] = self.f_box_Ordered_Output_152_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1381944537", "1381944537", "S10_M040_IOP_Main", "box_Ordered_Output_29.Out", "box_Ordered_Output_152.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_16_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_128
  l0.ItemDB = "Items.9223372060273983688"
  l0 = self.box_Timer_v2_16
  l1 = self.box_RewardController_v3_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1255086426", "1255086426", "S10_M040_IOP_Main", "box_Timer_v2_16.TimeElapsed", "box_RewardController_v3_128.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_27
  l0.IopID = "SpotTheFeds"
  l0.IopEvent = "SpotTheFeds.Camera2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|131396031", "131396031", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_AI_IOPController_27.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_42
  l0.AutoDisableOnActivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1830589935", "1830589935", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_IOPMonitor_42.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_34_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|379796980"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_28_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_28_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_28_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|377257925", "377257925", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_Ordered_Output_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_34_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_40
  l0.AutoDisableOnDeactivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|534049441", "534049441", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_IOPMonitor_40.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_34_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_45
  l0.MonitoredEvent = "SpotTheFeds.LockCamera"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|791913687", "791913687", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_IOPMonitor_45.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_34_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|154787970", "154787970", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_IOPMonitor_51.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_34_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1145925811", "1145925811", "S10_M040_IOP_Main", "box_Ordered_Output_34.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_76_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_66
  l0.ItemDB = "Items.9223372060273983683"
  l0 = self.box_Timer_v2_76
  l1 = self.box_RewardController_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1543898025", "1543898025", "S10_M040_IOP_Main", "box_Timer_v2_76.TimeElapsed", "box_RewardController_v3_66.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_CinematicPrep_110_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|37560490"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_34_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_34_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_34_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_34_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_34_Out_6
  l0 = self.box_CinematicPrep_110
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1057348644", "1057348644", "S10_M040_IOP_Main", "box_CinematicPrep_110.PostOut", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_48_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_50
  l0.HackableEntityList = self.CameraNoBlend
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1765625138", "1765625138", "S10_M040_IOP_Main", "box_SecurityCamController_48.CanExitSet", "box_HackableController_v2_50.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_SecurityCamController_48_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_48()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1087279339", "1087279339", "S10_M040_IOP_Main", "box_SecurityCamController_48.EnterForced", "box_SecurityCamController_48.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Bind_v2_146_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Fed
  l0.Child = "9223372048615885152"
  l0.BoneName = "LeftHand"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1996121962"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = self.f_box_Bind_v2_58_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|403548415", "403548415", "S10_M040_IOP_Main", "box_Bind_v2_146.Out", "box_Bind_v2_58.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_HackableController_v2_61_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1627835281"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_88_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_88_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_88_Out_2
  l0 = self.box_HackableController_v2_61
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|963104972", "963104972", "S10_M040_IOP_Main", "box_HackableController_v2_61.Disabled", "box_Ordered_Output_88.In", l0, l1)
  l1:In()
end
function export:f_box_Bind_v2_93_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1349499315"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_134_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_134_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1269932415", "1269932415", "S10_M040_IOP_Main", "box_Bind_v2_93.Bound", "box_Ordered_Output_134.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_8_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_14
  l0.CLO = "9223372047710387286"
  l0 = self.box_CLOController_8
  l1 = self.box_CLOController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|93704023", "93704023", "S10_M040_IOP_Main", "box_CLOController_8.UnspawnedUser", "box_CLOController_14.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_22_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_22
  self.Dusan = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Dusan
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|978442869"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_25_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_22
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|216285417", "216285417", "S10_M040_IOP_Main", "box_CLOController_22.OnUserInPlace", "box_CollisionController_25.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_MultipleOR_105_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_105
  l1 = self.box_Timer_v2_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|143605313", "143605313", "S10_M040_IOP_Main", "box_MultipleOR_105.Out", "box_Timer_v2_103.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_39_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_39
  self.SpotTheFedsCameras = l0.Target
end
function export:f_box_ListWriter_39_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_39
  self.SpotTheFedsCameras = l0.Target
  l0 = self.box_ListWriter_49
  l0.Input = self.CameraNoBlend
  l0.Data[0] = "9223372059909285675"
  l0.Data[1] = "9223372059909285677"
  l0.Data[2] = "9223372059909285679"
  l0 = self.box_ListWriter_39
  l1 = self.box_ListWriter_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|268608558", "268608558", "S10_M040_IOP_Main", "box_ListWriter_39.Out", "box_ListWriter_49.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_39_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_39
  self.SpotTheFedsCameras = l0.Target
end
function export:f_box_Bind_v2_1_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372062861964084"
  l0.Child = "9223372062861964086"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1878204905"
  l0.Bound = self.f_box_Bind_v2_3_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|170091841", "170091841", "S10_M040_IOP_Main", "box_Bind_v2_1.Bound", "box_Bind_v2_3.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Timer_v2_74_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_65
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_74
  l1 = self.box_AI_IOPController_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1307263090", "1307263090", "S10_M040_IOP_Main", "box_Timer_v2_74.TimeElapsed", "box_AI_IOPController_65.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_ListWriter_49_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_49
  self.CameraNoBlend = l0.Target
  self:OnEnter_box_HackableController_v2_53()
  l1 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1891095900", "1891095900", "S10_M040_IOP_Main", "box_ListWriter_49.Added", "box_HackableController_v2_53.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_ListWriter_49_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.CameraNoBlend = l0.Target
end
function export:f_box_ListWriter_49_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.CameraNoBlend = l0.Target
end
function export:f_box_Timer_v2_139_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964088"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1858498399"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_137_Out
  l0 = self.box_Timer_v2_139
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1275137164", "1275137164", "S10_M040_IOP_Main", "box_Timer_v2_139.TimeElapsed", "box_VisibilityController_v2_137.Show", l0, l1)
  l1:Show()
end
function export:f_box_Timer_v2_78_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_73
  l0.ItemDB = "Items.9223372060273983687"
  l0 = self.box_Timer_v2_78
  l1 = self.box_RewardController_v3_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|767451993", "767451993", "S10_M040_IOP_Main", "box_Timer_v2_78.TimeElapsed", "box_RewardController_v3_73.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_CLOController_31_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  self.Fed = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Fed
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1699334327"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_4_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_31
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1913325251", "1913325251", "S10_M040_IOP_Main", "box_CLOController_31.OnUserInPlace", "box_CollisionController_4.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Timer_v2_64_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_130
  l0.ItemDB = "Items.9223372060273983686"
  l0 = self.box_Timer_v2_64
  l1 = self.box_RewardController_v3_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1097906011", "1097906011", "S10_M040_IOP_Main", "box_Timer_v2_64.TimeElapsed", "box_RewardController_v3_130.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_VisibilityController_v2_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964086"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1873621475"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_107_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|584312795", "584312795", "S10_M040_IOP_Main", "box_VisibilityController_v2_106.Out", "box_VisibilityController_v2_107.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_RewardController_v3_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_75
  l0.Seconds = 0.5
  l0 = self.box_RewardController_v3_66
  l1 = self.box_Timer_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1584753040", "1584753040", "S10_M040_IOP_Main", "box_RewardController_v3_66.Out", "box_Timer_v2_75.Start", l0, l1)
  l1:Start()
end
function export:f_box_VisibilityController_v2_136_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964084"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1157559404"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_138_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|412471760", "412471760", "S10_M040_IOP_Main", "box_VisibilityController_v2_136.Out", "box_VisibilityController_v2_138.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Timer_v2_59_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_22
  l0.CLO = "9223372047710387284"
  l0 = self.box_Timer_v2_59
  l1 = self.box_CLOController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1176976037", "1176976037", "S10_M040_IOP_Main", "box_Timer_v2_59.TimeElapsed", "box_CLOController_22.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CollisionController_26_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Officer
  l0.Child = "9223372069049902062"
  l0.BoneName = "Hips"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1725330043"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = self.f_box_Bind_v2_148_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|40852579", "40852579", "S10_M040_IOP_Main", "box_CollisionController_26.CollisionsDisabled", "box_Bind_v2_148.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Timer_v2_104_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964088"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|214799441"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_106_Out
  l0 = self.box_Timer_v2_104
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|538859701", "538859701", "S10_M040_IOP_Main", "box_Timer_v2_104.TimeElapsed", "box_VisibilityController_v2_106.Show", l0, l1)
  l1:Show()
end
function export:f_box_HackableController_v2_80_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_80()
  l0 = self.box_HackableController_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|227562863", "227562863", "S10_M040_IOP_Main", "box_HackableController_v2_80.Disabled", "box_HackableController_v2_80.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_Compare_Boolean_v2_108_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1473989895", "1473989895", "S10_M040_IOP_Main", "box_Compare_Boolean_v2_108.A_is_True", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_46_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1687377949", "1687377949", "S10_M040_IOP_Main", "box_HackableController_v2_46.ProfilingDisabled", "box_HackableController_v2_46.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_AI_IOPController_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_76
  l0.Seconds = 5
  l0 = self.box_AI_IOPController_65
  l1 = self.box_Timer_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1263449555", "1263449555", "S10_M040_IOP_Main", "box_AI_IOPController_65.Out", "box_Timer_v2_76.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_28_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_2
  l0.CameraEntity = "9223372047710387277"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2011203774", "2011203774", "S10_M040_IOP_Main", "box_Ordered_Output_28.Out", "box_Security_Camera_Monitor_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_28_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_33
  l0.CameraEntity = "9223372047710387275"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1777975857", "1777975857", "S10_M040_IOP_Main", "box_Ordered_Output_28.Out", "box_Security_Camera_Monitor_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_28_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Security_Camera_Monitor_5
  l0.CameraEntity = "9223372047710387279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1492711335", "1492711335", "S10_M040_IOP_Main", "box_Ordered_Output_28.Out", "box_Security_Camera_Monitor_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_IOPMonitor_51_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_51
  l1 = self.box_SetBoolean_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|635470932", "635470932", "S10_M040_IOP_Main", "box_IOPMonitor_51.IOPComplete", "box_SetBoolean_v2_109.False", l0, l1)
  l1:False()
end
function export:f_box_CLOController_17_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_54
  l0.CLO = "9223372047710387287"
  l0 = self.box_CLOController_17
  l1 = self.box_CLOController_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2141146131", "2141146131", "S10_M040_IOP_Main", "box_CLOController_17.UnspawnedUser", "box_CLOController_54.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_HackableController_v2_71_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1866344116"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_114_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_114_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_114_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_HackableController_v2_71
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|912087611", "912087611", "S10_M040_IOP_Main", "box_HackableController_v2_71.Enabled", "box_Ordered_Output_114.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_71_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_71()
  l0 = self.box_HackableController_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1369295871", "1369295871", "S10_M040_IOP_Main", "box_HackableController_v2_71.ProfilingEnabled", "box_HackableController_v2_71.EnableHack", l0, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_86_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|917160001", "917160001", "S10_M040_IOP_Main", "box_Ordered_Output_86.Out", "box_MultipleOR_81.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_86_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|660828160", "660828160", "S10_M040_IOP_Main", "box_Ordered_Output_86.Out", "box_MultipleOR_97.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_86_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_144()
  l0 = self.box_MultipleOR_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1352319132", "1352319132", "S10_M040_IOP_Main", "box_Ordered_Output_86.Out", "box_MultipleOR_144.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_VisibilityController_v2_102_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1497984899", "1497984899", "S10_M040_IOP_Main", "box_VisibilityController_v2_102.Out", "box_Timer_v2_104.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_79_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_131
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_79
  l1 = self.box_AI_IOPController_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1069462323", "1069462323", "S10_M040_IOP_Main", "box_Timer_v2_79.TimeElapsed", "box_AI_IOPController_131.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_VisibilityController_v2_140_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_105()
  l0 = self.box_MultipleOR_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|540708944", "540708944", "S10_M040_IOP_Main", "box_VisibilityController_v2_140.Out", "box_MultipleOR_105.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_115_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_113
  l0.MonitoredEvent = "SpotTheFeds.PhoneToggle"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_Timer_v2_115
  l1 = self.box_IOPMonitor_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|243054985", "243054985", "S10_M040_IOP_Main", "box_Timer_v2_115.TimeElapsed", "box_IOPMonitor_113.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_IOPMonitor_42_ActivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_44()
  l0 = self.box_IOPMonitor_42
  l1 = self.box_HackableController_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1950798781", "1950798781", "S10_M040_IOP_Main", "box_IOPMonitor_42.ActivateHackables", "box_HackableController_v2_44.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_Ordered_Output_122_Out_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_99
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372048615885152"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1._name = "box_Bind_v2_98"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2089369299"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|690558858", "690558858", "S10_M040_IOP_Main", "box_Ordered_Output_122.Out", "box_Bind_v2_98.Bind", clone, l1)
  l1:Bind()
end
function export:f_box_HackableController_v2_53_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_9
  l0.HackableEntity = "9223372048615885152"
  l0 = self.box_HackableController_v2_53
  l1 = self.box_HackableController_v2_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1613965331", "1613965331", "S10_M040_IOP_Main", "box_HackableController_v2_53.Disabled", "box_HackableController_v2_9.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_53_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_53()
  l0 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1077628548", "1077628548", "S10_M040_IOP_Main", "box_HackableController_v2_53.ProfilingDisabled", "box_HackableController_v2_53.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_CLOController_6_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  l0.CLO = "9223372047710387284"
  l0 = self.box_CLOController_6
  l1 = self.box_CLOController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1944919233", "1944919233", "S10_M040_IOP_Main", "box_CLOController_6.UnspawnedUser", "box_CLOController_15.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MultipleOR_97_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_87
  l0.HackableEntity = self.Fed
  l0 = self.box_MultipleOR_97
  l1 = self.box_HackableController_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2030954979", "2030954979", "S10_M040_IOP_Main", "box_MultipleOR_97.Out", "box_HackableController_v2_87.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_HackableController_v2_50_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_124()
  l0 = self.box_HackableController_v2_50
  l1 = self.box_Security_Camera_Monitor_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2014094242", "2014094242", "S10_M040_IOP_Main", "box_HackableController_v2_50.Disabled", "box_Security_Camera_Monitor_124.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_112_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_63
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_112
  l1 = self.box_AI_IOPController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1559466071", "1559466071", "S10_M040_IOP_Main", "box_Timer_v2_112.TimeElapsed", "box_AI_IOPController_63.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_CLOController_36_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_36
  self.Wrench = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|882295357"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_91_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_91_Out_3
  l0 = self.box_CLOController_36
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1597654546", "1597654546", "S10_M040_IOP_Main", "box_CLOController_36.OnUserInPlace", "box_Ordered_Output_91.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_126_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_64
  l0.Seconds = 5
  l0 = self.box_AI_IOPController_126
  l1 = self.box_Timer_v2_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1738371494", "1738371494", "S10_M040_IOP_Main", "box_AI_IOPController_126.Out", "box_Timer_v2_64.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_18_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  l0.CLO = "9223372047710387285"
  l0 = self.box_CLOController_18
  l1 = self.box_CLOController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2048983099", "2048983099", "S10_M040_IOP_Main", "box_CLOController_18.UnspawnedUser", "box_CLOController_11.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Security_Camera_Monitor_124_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_151
  l0.Seconds = 0.5
  l0 = self.box_Security_Camera_Monitor_124
  l1 = self.box_Timer_v2_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|176471786", "176471786", "S10_M040_IOP_Main", "box_Security_Camera_Monitor_124.Disabled", "box_Timer_v2_151.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_124_OnEndAccessCamera()
  local l0
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_124()
  l0 = self.box_Security_Camera_Monitor_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|120802575", "120802575", "S10_M040_IOP_Main", "box_Security_Camera_Monitor_124.OnEndAccessCamera", "box_Security_Camera_Monitor_124.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_103_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964088"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1279782188"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_101_Out
  l0 = self.box_Timer_v2_103
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1048932725", "1048932725", "S10_M040_IOP_Main", "box_Timer_v2_103.TimeElapsed", "box_VisibilityController_v2_101.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_IOPPropMonitor_99_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|622774712"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_122_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_IOPPropMonitor_99
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1577289920", "1577289920", "S10_M040_IOP_Main", "box_IOPPropMonitor_99.PropSpawned", "box_Ordered_Output_122.In", l0, l1)
  l1:In()
end
function export:f_box_IOPMonitor_40_DeactivateHackables()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_46()
  l0 = self.box_IOPMonitor_40
  l1 = self.box_HackableController_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1871181912", "1871181912", "S10_M040_IOP_Main", "box_IOPMonitor_40.DeactivateHackables", "box_HackableController_v2_46.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l1 = self.box_AI_IOPController_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2051297317", "2051297317", "S10_M040_IOP_Main", "box_Timer_v2_72.TimeElapsed", "box_AI_IOPController_135.HideChat", l0, l1)
  l1:HideChat()
end
function export:f_box_Hackable_Monitor_55_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_DistanceBasedProgressBarController_v2_56
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "HackingCellPhone",
    id = "111151"
  }
  l0.TotalTime = 2
  l0 = self.box_Hackable_Monitor_55
  l1 = self.box_DistanceBasedProgressBarController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1927501330", "1927501330", "S10_M040_IOP_Main", "box_Hackable_Monitor_55.Disabled", "box_DistanceBasedProgressBarController_v2_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_55_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_55()
  l0 = self.box_Hackable_Monitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2087467605", "2087467605", "S10_M040_IOP_Main", "box_Hackable_Monitor_55.HackSuccess", "box_Hackable_Monitor_55.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_AI_IOPController_132_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_72
  l0.Seconds = 5
  l0 = self.box_AI_IOPController_132
  l1 = self.box_Timer_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|960411119", "960411119", "S10_M040_IOP_Main", "box_AI_IOPController_132.Out", "box_Timer_v2_72.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Wrench
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1438801833"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_24_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1301451394", "1301451394", "S10_M040_IOP_Main", "box_Ordered_Output_91.Out", "box_CollisionController_24.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_92
  l0.PropName = "iop_ap_wrenchmask_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1916996186", "1916996186", "S10_M040_IOP_Main", "box_Ordered_Output_91.Out", "box_IOPPropMonitor_92.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_99
  l0.PropName = "cell_phone_01"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|542738556", "542738556", "S10_M040_IOP_Main", "box_Ordered_Output_91.Out", "box_IOPPropMonitor_99.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_91_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372069951849063"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2054969233"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1456423365", "1456423365", "S10_M040_IOP_Main", "box_Ordered_Output_91.Out", "box_CollisionController_149.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Get_Player_ID_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_35
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1151448487", "1151448487", "S10_M040_IOP_Main", "box_Get_Player_ID_30.Out", "box_PlaySound_v2_35.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_95_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_41
  l0.IopID = "SpotTheFeds"
  l0.IopEvent = "SpotTheFeds.WrenchMask"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1327181205", "1327181205", "S10_M040_IOP_Main", "box_Ordered_Output_95.Out", "box_AI_IOPController_41.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_Ordered_Output_95_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_80()
  l0 = self.box_HackableController_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2032724802", "2032724802", "S10_M040_IOP_Main", "box_Ordered_Output_95.Out", "box_HackableController_v2_80.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_95_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964086"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|216353589"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_136_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1379177764", "1379177764", "S10_M040_IOP_Main", "box_Ordered_Output_95.Out", "box_VisibilityController_v2_136.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_95_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|153287488", "153287488", "S10_M040_IOP_Main", "box_Ordered_Output_95.Out", "box_SetBoolean_v2_118.True", clone, l0)
  l0:True()
end
function export:f_box_AI_IOPController_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_16
  l0.Seconds = 5
  l0 = self.box_AI_IOPController_69
  l1 = self.box_Timer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1741305377", "1741305377", "S10_M040_IOP_Main", "box_AI_IOPController_69.Out", "box_Timer_v2_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_35_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1982393912"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0 = self.box_PlaySound_v2_35
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1250280407", "1250280407", "S10_M040_IOP_Main", "box_PlaySound_v2_35.Started", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_25_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Dusan
  l0.Child = "9223372069049902060"
  l0.BoneName = "Hips"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1974669209"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = self.f_box_Bind_v2_147_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1000768767", "1000768767", "S10_M040_IOP_Main", "box_CollisionController_25.CollisionsDisabled", "box_Bind_v2_147.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Multiple_AND_10_Out()
  local l0
  self = self._graph
  l0 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|845621898", "845621898", "S10_M040_IOP_Main", "box_Multiple_AND_10.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_CLOController_20_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_20
  self.Officer = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Officer
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|280296982"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_26_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_20
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1525611583", "1525611583", "S10_M040_IOP_Main", "box_CLOController_20.OnUserInPlace", "box_CollisionController_26.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_RewardController_v3_128_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_67
  l0.Seconds = 0.2
  l0 = self.box_RewardController_v3_128
  l1 = self.box_Timer_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|449998594", "449998594", "S10_M040_IOP_Main", "box_RewardController_v3_128.Out", "box_Timer_v2_67.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_117_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|498003964"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_86_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_86_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_86_Out_2
  l0 = self.box_HackableController_v2_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|222946112", "222946112", "S10_M040_IOP_Main", "box_HackableController_v2_117.Disabled", "box_Ordered_Output_86.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_116_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|640178096", "640178096", "S10_M040_IOP_Main", "box_VisibilityController_v2_116.Out", "box_SetBoolean_v2_111.False", clone, l0)
  l0:False()
end
function export:f_box_Timer_v2_84_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1403582439"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_90_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_Timer_v2_84
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|534451367", "534451367", "S10_M040_IOP_Main", "box_Timer_v2_84.TimeElapsed", "box_Show_Or_Hide_All_UI_90.Show", l0, l1)
  l1:Show()
end
function export:f_box_IOPMonitor_70_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048615885152"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1784155319"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_119_Out
  l0 = self.box_IOPMonitor_70
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|90224121", "90224121", "S10_M040_IOP_Main", "box_IOPMonitor_70.EventOccurred", "box_VisibilityController_v2_119.Show", l0, l1)
  l1:Show()
end
function export:f_box_VisibilityController_v2_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_139
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1456218171", "1456218171", "S10_M040_IOP_Main", "box_VisibilityController_v2_138.Out", "box_Timer_v2_139.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_44_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_43()
  l0 = self.box_HackableController_v2_44
  l1 = self.box_Hackable_Monitor_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|789015195", "789015195", "S10_M040_IOP_Main", "box_HackableController_v2_44.Enabled", "box_Hackable_Monitor_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_44_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_44()
  l0 = self.box_HackableController_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|909350684", "909350684", "S10_M040_IOP_Main", "box_HackableController_v2_44.ProfilingEnabled", "box_HackableController_v2_44.EnableHack", l0, l0)
  l0:EnableHack()
end
function export:f_box_CLOController_14_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_CLOController_14
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2095210362", "2095210362", "S10_M040_IOP_Main", "box_CLOController_14.Deactivated", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_AI_IOPController_131_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_78
  l0.Seconds = 5
  l0 = self.box_AI_IOPController_131
  l1 = self.box_Timer_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|660350170", "660350170", "S10_M040_IOP_Main", "box_AI_IOPController_131.Out", "box_Timer_v2_78.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_118_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_118
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_118_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_118
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_118_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_118
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_118_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_118
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_118_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_118
  self.MaskBlinks = l0.Target
end
function export:f_box_RewardController_v3_130_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_79
  l0.Seconds = 0.2
  l0 = self.box_RewardController_v3_130
  l1 = self.box_Timer_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1955393360", "1955393360", "S10_M040_IOP_Main", "box_RewardController_v3_130.Out", "box_Timer_v2_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_43_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|908025168"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_95_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_95_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_95_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_95_Out_3
  l0 = self.box_Hackable_Monitor_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1761028223", "1761028223", "S10_M040_IOP_Main", "box_Hackable_Monitor_43.Disabled", "box_Ordered_Output_95.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_43_HackSuccess()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_43()
  l0 = self.box_Hackable_Monitor_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1712449945", "1712449945", "S10_M040_IOP_Main", "box_Hackable_Monitor_43.HackSuccess", "box_Hackable_Monitor_43.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_141_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964084"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|601478557"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_140_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2082930053", "2082930053", "S10_M040_IOP_Main", "box_VisibilityController_v2_141.Out", "box_VisibilityController_v2_140.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_RewardController_v3_129_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_127
  l0.Seconds = 0.5
  l0 = self.box_RewardController_v3_129
  l1 = self.box_Timer_v2_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1140022327", "1140022327", "S10_M040_IOP_Main", "box_RewardController_v3_129.Out", "box_Timer_v2_127.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_31
  l0.CLO = "9223372047710387286"
  l0 = self.box_Timer_v2_57
  l1 = self.box_CLOController_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|30906722", "30906722", "S10_M040_IOP_Main", "box_Timer_v2_57.TimeElapsed", "box_CLOController_31.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_VisibilityController_v2_101_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964086"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|527235997"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_102_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|709626194", "709626194", "S10_M040_IOP_Main", "box_VisibilityController_v2_101.Out", "box_VisibilityController_v2_102.Show", clone, l0)
  l0:Show()
end
function export:f_box_RewardController_v3_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_112
  l0.Seconds = 0.5
  l0 = self.box_RewardController_v3_77
  l1 = self.box_Timer_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|870762896", "870762896", "S10_M040_IOP_Main", "box_RewardController_v3_77.Out", "box_Timer_v2_112.Start", l0, l1)
  l1:Start()
end
function export:f_box_IOPMonitor_113_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_117
  l0.HackableEntity = "9223372048615885152"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_IOPMonitor_113
  l1 = self.box_HackableController_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1565082908", "1565082908", "S10_M040_IOP_Main", "box_IOPMonitor_113.EventOccurred", "box_HackableController_v2_117.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Timer_v2_127_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_126
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_127
  l1 = self.box_AI_IOPController_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|717111974", "717111974", "S10_M040_IOP_Main", "box_Timer_v2_127.TimeElapsed", "box_AI_IOPController_126.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_SetBoolean_v2_109_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MaskBlinks = l0.Target
  l0 = self.box_AI_IOPController_7
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_SetBoolean_v2_109
  l1 = self.box_AI_IOPController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|990808572", "990808572", "S10_M040_IOP_Main", "box_SetBoolean_v2_109.Out", "box_AI_IOPController_7.TriggerIOPDisconnectScreenAndKickOut", l0, l1)
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_SetBoolean_v2_109_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_109_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_109_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_109
  self.MaskBlinks = l0.Target
end
function export:f_box_Ordered_Output_134_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964086"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1643669590"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|254022922", "254022922", "S10_M040_IOP_Main", "box_Ordered_Output_134.Out", "box_VisibilityController_v2_94.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_134_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964088"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1111582352"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_116_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|197295458", "197295458", "S10_M040_IOP_Main", "box_Ordered_Output_134.Out", "box_VisibilityController_v2_116.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_MultipleOR_81_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_70
  l0.MonitoredEvent = "SpotTheFeds.PhoneToggle"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_MultipleOR_81
  l1 = self.box_IOPMonitor_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1023444938", "1023444938", "S10_M040_IOP_Main", "box_MultipleOR_81.Out", "box_IOPMonitor_70.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_21_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Characters = l0.Target
  l0 = self.box_AI_IOPController_37
  l0.IopID = "SpotTheFeds"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  l0 = self.box_ListWriter_21
  l1 = self.box_AI_IOPController_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|474786858", "474786858", "S10_M040_IOP_Main", "box_ListWriter_21.Added", "box_AI_IOPController_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_21_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Characters = l0.Target
end
function export:f_box_ListWriter_21_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Characters = l0.Target
end
function export:f_box_Show_Or_Hide_All_UI_90_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1956215609"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_13_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_13_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|451815437", "451815437", "S10_M040_IOP_Main", "box_Show_Or_Hide_All_UI_90.Shown", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_AI_IOPController_135_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_77
  l0.ItemDB = "Items.9223372060273983684"
  l0 = self.box_AI_IOPController_135
  l1 = self.box_RewardController_v3_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1597744868", "1597744868", "S10_M040_IOP_Main", "box_AI_IOPController_135.Out", "box_RewardController_v3_77.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Timer_v2_83_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l1 = self.box_AI_IOPController_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|189181591", "189181591", "S10_M040_IOP_Main", "box_Timer_v2_83.TimeElapsed", "box_AI_IOPController_82.HideChat", l0, l1)
  l1:HideChat()
end
function export:f_box_CollisionController_24_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_57
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|408575414", "408575414", "S10_M040_IOP_Main", "box_CollisionController_24.CollisionsDisabled", "box_Timer_v2_57.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_67_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_68
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_67
  l1 = self.box_AI_IOPController_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|531368854", "531368854", "S10_M040_IOP_Main", "box_Timer_v2_67.TimeElapsed", "box_AI_IOPController_68.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_IOPPropMonitor_92_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1633902426"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_60_Out_2
  l0 = self.box_IOPPropMonitor_92
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|815723240", "815723240", "S10_M040_IOP_Main", "box_IOPPropMonitor_92.PropSpawned", "box_Ordered_Output_60.In", l0, l1)
  l1:In()
end
function export:f_box_DistanceBasedProgressBarController_v2_56_Completed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_61
  l0.HackableEntity = "9223372048615885152"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_DistanceBasedProgressBarController_v2_56
  l1 = self.box_HackableController_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|269305239", "269305239", "S10_M040_IOP_Main", "box_DistanceBasedProgressBarController_v2_56.Completed", "box_HackableController_v2_61.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Timer_v2_145_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048615885152"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2144587305"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_145
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|524417557", "524417557", "S10_M040_IOP_Main", "box_Timer_v2_145.TimeElapsed", "box_VisibilityController_v2_123.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_AI_IOPController_37_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_52
  l0.Seconds = 0.3
  l0 = self.box_AI_IOPController_37
  l1 = self.box_Timer_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1008562973", "1008562973", "S10_M040_IOP_Main", "box_AI_IOPController_37.StartCompleted", "box_Timer_v2_52.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_143_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_143
  l1 = self.box_Timer_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|616856960", "616856960", "S10_M040_IOP_Main", "box_PlaySound_v2_143.Out", "box_Timer_v2_84.Start", l0, l1)
  l1:Start()
end
function export:f_box_RewardController_v3_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_74
  l0.Seconds = 0.5
  l0 = self.box_RewardController_v3_62
  l1 = self.box_Timer_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1527541703", "1527541703", "S10_M040_IOP_Main", "box_RewardController_v3_62.Out", "box_Timer_v2_74.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_88_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_62
  l0.ItemDB = "Items.9223372053475136954"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1021407490", "1021407490", "S10_M040_IOP_Main", "box_Ordered_Output_88.Out", "box_RewardController_v3_62.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_Ordered_Output_88_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_97()
  l0 = self.box_MultipleOR_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|337820001", "337820001", "S10_M040_IOP_Main", "box_Ordered_Output_88.Out", "box_MultipleOR_97.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_88_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_144()
  l0 = self.box_MultipleOR_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|504849194", "504849194", "S10_M040_IOP_Main", "box_Ordered_Output_88.Out", "box_MultipleOR_144.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_92
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372062861964084"
  l1.BoneName = nil
  l1.BoneNameStr = "iop_ap_wrenchmask_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_1"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|128148186"
  l1.Bound = self.f_box_Bind_v2_1_Bound
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|676102744", "676102744", "S10_M040_IOP_Main", "box_Ordered_Output_60.Out", "box_Bind_v2_1.Bind", clone, l1)
  l1:Bind()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_92
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372047710387281"
  l1.BoneName = nil
  l1.BoneNameStr = "iop_ap_wrenchmask_01"
  l1.RemoveOffset = 1
  l1._graph = self
  l1._name = "box_Bind_v2_100"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|849132258"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1904088496", "1904088496", "S10_M040_IOP_Main", "box_Ordered_Output_60.Out", "box_Bind_v2_100.Bind", clone, l1)
  l1:Bind()
end
function export:f_box_Ordered_Output_60_Out_2()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPPropMonitor_92
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l1.Entity = l0.PropEntity
  l1.EntityList = nil
  l1.Visible = nil
  l1.AffectChildren = 0
  l1.EntitiesList = nil
  l1._graph = self
  l1._name = "box_VisibilityController_v2_12"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2023343748"
  l1.IsSet = DummyFunction
  l1.Shown = DummyFunction
  l1.Hidden = DummyFunction
  l1.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|641439069", "641439069", "S10_M040_IOP_Main", "box_Ordered_Output_60.Out", "box_VisibilityController_v2_12.Hide", clone, l1)
  l1:Hide()
end
function export:f_box_SetBoolean_v2_111_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_111_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_111_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_111_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.MaskBlinks = l0.Target
end
function export:f_box_SetBoolean_v2_111_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_111
  self.MaskBlinks = l0.Target
end
function export:f_box_Timer_v2_151_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_110
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_151
  l1 = self.box_CinematicPrep_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1510894463", "1510894463", "S10_M040_IOP_Main", "box_Timer_v2_151.TimeElapsed", "box_CinematicPrep_110.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_CollisionController_4_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = self.Fed
  l0.Child = "9223372069049902058"
  l0.BoneName = "Hips"
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|100034985"
  l0.Bound = DummyFunction
  l0.UnBound = DummyFunction
  l0.Out = self.f_box_Bind_v2_146_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1935446407", "1935446407", "S10_M040_IOP_Main", "box_CollisionController_4.CollisionsDisabled", "box_Bind_v2_146.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Bind_v2_148_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_21
  l0.Input = self.Characters
  l0.Data[0] = self.Fed
  l0.Data[1] = self.Officer
  l0.Data[2] = self.Wrench
  l0.Data[3] = self.Dusan
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|597643839", "597643839", "S10_M040_IOP_Main", "box_Bind_v2_148.Out", "box_ListWriter_21.Add", clone, l0)
  l0:Add()
end
function export:f_box_CLOController_15_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_CLOController_15
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|732904216", "732904216", "S10_M040_IOP_Main", "box_CLOController_15.Deactivated", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_AI_IOPController_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_125
  l0.Seconds = 5
  l0 = self.box_AI_IOPController_63
  l1 = self.box_Timer_v2_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1711626166", "1711626166", "S10_M040_IOP_Main", "box_AI_IOPController_63.Out", "box_Timer_v2_125.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_152_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_142
  l0.SoundId = "soundbinary/1763248425.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1594002769", "1594002769", "S10_M040_IOP_Main", "box_Ordered_Output_152.Out", "box_PlaySound_v2_142.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_152_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372071866948458"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1167352820"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1727404980", "1727404980", "S10_M040_IOP_Main", "box_Ordered_Output_152.Out", "box_MissionMusicController_150.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_VisibilityController_v2_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_71()
  l0 = self.box_HackableController_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2054401763", "2054401763", "S10_M040_IOP_Main", "box_VisibilityController_v2_119.Out", "box_HackableController_v2_71.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Timer_v2_133_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_69
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_133
  l1 = self.box_AI_IOPController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|814408528", "814408528", "S10_M040_IOP_Main", "box_Timer_v2_133.TimeElapsed", "box_AI_IOPController_69.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_AI_IOPController_7_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2085102997"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_89_Hidden
  l0 = self.box_AI_IOPController_7
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1774028327", "1774028327", "S10_M040_IOP_Main", "box_AI_IOPController_7.IOPKickOutComplete", "box_Show_Or_Hide_All_UI_89.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_VisibilityController_v2_137_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372062861964086"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = 0
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1263627688"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_141_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|343317445", "343317445", "S10_M040_IOP_Main", "box_VisibilityController_v2_137.Out", "box_VisibilityController_v2_141.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_114_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_55()
  l0 = self.box_Hackable_Monitor_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|908544434", "908544434", "S10_M040_IOP_Main", "box_Ordered_Output_114.Out", "box_Hackable_Monitor_55.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_114_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_115
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1616044955", "1616044955", "S10_M040_IOP_Main", "box_Ordered_Output_114.Out", "box_Timer_v2_115.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_114_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_85
  l0.HackableEntity = self.Fed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1228370063", "1228370063", "S10_M040_IOP_Main", "box_Ordered_Output_114.Out", "box_HackableController_v2_85.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_VisibilityController_v2_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.MaskBlinks
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|318969605"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_108_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|856554997", "856554997", "S10_M040_IOP_Main", "box_VisibilityController_v2_107.Out", "box_Compare_Boolean_v2_108.In", clone, l0)
  l0:In()
end
function export:f_box_Bind_v2_3_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372062861964084"
  l0.Child = "9223372062861964088"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|118398219"
  l0.Bound = self.f_box_Bind_v2_93_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1929423416", "1929423416", "S10_M040_IOP_Main", "box_Bind_v2_3.Bound", "box_Bind_v2_93.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_CLOController_54_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_CLOController_54
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|95843042", "95843042", "S10_M040_IOP_Main", "box_CLOController_54.Deactivated", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_Security_Camera_Monitor_5_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_32
  l0.IopID = "SpotTheFeds"
  l0.IopEvent = "SpotTheFeds.Camera3"
  l0 = self.box_Security_Camera_Monitor_5
  l1 = self.box_AI_IOPController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1992341191", "1992341191", "S10_M040_IOP_Main", "box_Security_Camera_Monitor_5.OnStartAccessCamera", "box_AI_IOPController_32.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_52_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_96
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_52
  l1 = self.box_CinematicPrep_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1550989288", "1550989288", "S10_M040_IOP_Main", "box_Timer_v2_52.TimeElapsed", "box_CinematicPrep_96.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_18
  l0.User = self.Wrench
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|889689410", "889689410", "S10_M040_IOP_Main", "box_Ordered_Output_13.Out", "box_CLOController_18.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_8
  l0.User = self.Fed
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|941945742", "941945742", "S10_M040_IOP_Main", "box_Ordered_Output_13.Out", "box_CLOController_8.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_6
  l0.User = self.Dusan
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1681763722", "1681763722", "S10_M040_IOP_Main", "box_Ordered_Output_13.Out", "box_CLOController_6.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_13_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_17
  l0.User = self.Officer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1357494590", "1357494590", "S10_M040_IOP_Main", "box_Ordered_Output_13.Out", "box_CLOController_17.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Bind_v2_147_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_20
  l0.CLO = "9223372047710387287"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|307182849", "307182849", "S10_M040_IOP_Main", "box_Bind_v2_147.Out", "box_CLOController_20.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_144_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_145
  l0.Seconds = 0.5
  l0 = self.box_MultipleOR_144
  l1 = self.box_Timer_v2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2011508638", "2011508638", "S10_M040_IOP_Main", "box_MultipleOR_144.Out", "box_Timer_v2_145.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_39
  l0.Input = self.SpotTheFedsCameras
  l0.Data[0] = "9223372047710387277"
  l0.Data[1] = "9223372047710387275"
  l0.Data[2] = "9223372047710387279"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1533068501", "1533068501", "S10_M040_IOP_Main", "box_Ordered_Output_19.Out", "box_ListWriter_39.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_36
  l0.CLO = "9223372047710387285"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|234113045", "234113045", "S10_M040_IOP_Main", "box_Ordered_Output_19.Out", "box_CLOController_36.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Bind_v2_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_59
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|482599129", "482599129", "S10_M040_IOP_Main", "box_Bind_v2_58.Out", "box_Timer_v2_59.Start", clone, l0)
  l0:Start()
end
function export:f_box_Security_Camera_Monitor_2_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_38
  l0.IopID = "SpotTheFeds"
  l0.IopEvent = "SpotTheFeds.Camera2"
  l0 = self.box_Security_Camera_Monitor_2
  l1 = self.box_AI_IOPController_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1112541772", "1112541772", "S10_M040_IOP_Main", "box_Security_Camera_Monitor_2.OnStartAccessCamera", "box_AI_IOPController_38.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_CLOController_11_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_10()
  l0 = self.box_CLOController_11
  l1 = self.box_Multiple_AND_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|417006050", "417006050", "S10_M040_IOP_Main", "box_CLOController_11.Deactivated", "box_Multiple_AND_10.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_RewardController_v3_73_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_133
  l0.Seconds = 0.2
  l0 = self.box_RewardController_v3_73
  l1 = self.box_Timer_v2_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2142809564", "2142809564", "S10_M040_IOP_Main", "box_RewardController_v3_73.Out", "box_Timer_v2_133.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_154_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_143
  l0.SoundId = "soundbinary/1226381302.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1534225463", "1534225463", "S10_M040_IOP_Main", "box_Ordered_Output_154.Out", "box_PlaySound_v2_143.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_154_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372071866948458"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = 5
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1977829058"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2041932122", "2041932122", "S10_M040_IOP_Main", "box_Ordered_Output_154.Out", "box_MissionMusicController_153.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Show_Or_Hide_All_UI_89_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|2072869108"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_154_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_154_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|903865592", "903865592", "S10_M040_IOP_Main", "box_Show_Or_Hide_All_UI_89.Hidden", "box_Ordered_Output_154.In", clone, l0)
  l0:In()
end
function export:f_box_Timer_v2_75_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_132
  l0.ChatLineNum = 1
  l0 = self.box_Timer_v2_75
  l1 = self.box_AI_IOPController_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1002787323", "1002787323", "S10_M040_IOP_Main", "box_Timer_v2_75.TimeElapsed", "box_AI_IOPController_132.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_IOPMonitor_45_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_47
  l0.HackableEntityList = self.SpotTheFedsCameras
  l0 = self.box_IOPMonitor_45
  l1 = self.box_HackableController_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|1658467698", "1658467698", "S10_M040_IOP_Main", "box_IOPMonitor_45.EventOccurred", "box_HackableController_v2_47.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CinematicPrep_96_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|17257774"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0 = self.box_CinematicPrep_96
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|816396135", "816396135", "S10_M040_IOP_Main", "box_CinematicPrep_96.PreOut", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_68_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_83
  l0.Seconds = 3
  l0 = self.box_AI_IOPController_68
  l1 = self.box_Timer_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|848103834", "848103834", "S10_M040_IOP_Main", "box_AI_IOPController_68.Out", "box_Timer_v2_83.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_SecurityCamController_48()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372047710387277"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\s10\\S10M040\\S10_M040_IOP.domino|@S10_M040_IOP_Main|96641466"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_48_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_48_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_MultipleOR_105()
end
function export:OnEnter_box_HackableController_v2_80()
  local l0
  l0 = self.box_HackableController_v2_80
  l0.HackableEntity = "9223372047710387281"
end
function export:OnEnter_box_HackableController_v2_46()
  local l0
  l0 = self.box_HackableController_v2_46
  l0.HackableEntity = "9223372047710387281"
end
function export:OnEnter_box_HackableController_v2_71()
  local l0
  l0 = self.box_HackableController_v2_71
  l0.HackableEntity = "9223372048615885152"
end
function export:OnEnter_box_HackableController_v2_53()
  local l0
  l0 = self.box_HackableController_v2_53
  l0.HackableEntity = "9223372047710387281"
end
function export:OnEnter_box_MultipleOR_97()
end
function export:OnEnter_box_Security_Camera_Monitor_124()
  local l0
  l0 = self.box_Security_Camera_Monitor_124
  l0.CameraEntity = "9223372047710387277"
end
function export:OnEnter_box_Hackable_Monitor_55()
  local l0
  l0 = self.box_Hackable_Monitor_55
  l0.HackableEntity = "9223372048615885152"
end
function export:OnEnter_box_Multiple_AND_10()
end
function export:OnEnter_box_HackableController_v2_44()
  local l0
  l0 = self.box_HackableController_v2_44
  l0.HackableEntity = "9223372047710387281"
end
function export:OnEnter_box_Hackable_Monitor_43()
  local l0
  l0 = self.box_Hackable_Monitor_43
  l0.HackableEntity = "9223372047710387281"
end
function export:OnEnter_box_MultipleOR_81()
end
function export:OnEnter_box_MultipleOR_144()
end
function export:Out()
end
_compilerVersion = 4
