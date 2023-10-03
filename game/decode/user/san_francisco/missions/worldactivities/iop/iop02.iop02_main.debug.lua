export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPPropController.lua")
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2458074632.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1195330400.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2715016382.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/927032701.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2498410075.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/669646554.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3554648600.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/556598564.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/869409895.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3791698850.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3274853835.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "IOP02_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main"
  self.PlayerEntity = nil
  self.Cameras = {}
  self.MainCharacter = nil
  self.Neighbor = nil
  self.GamerGap_Boy = "9223372045865402524"
  self.GamerGap_Girl = nil
  self.GamerGap_Camera = "9223372049768290530"
  self.VacuumHacks = 0
  self.NPCs = {}
  self.GameGate_MainLayer = "M02_GamerGap_Main"
  self.RoboVacuumAnimatedHackableWithSound = "9223372049768290519"
  self.DisabledVacuum = 0
  self.GamerGap_Man = nil
  self.box_CLOController_14 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_14
  l0._graph = self
  l0._name = "box_CLOController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|17515876"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_14_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_IOPMonitor_27 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_27
  l0._graph = self
  l0._name = "box_IOPMonitor_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|43563814"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_27_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_IOPPropMonitor_19 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_19
  l0._graph = self
  l0._name = "box_IOPPropMonitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|57472168"
  l0.Out = self.f_box_IOPPropMonitor_19_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_19_PropSpawned
  self.box_Timer_v2_13 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_13
  l0._graph = self
  l0._name = "box_Timer_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|69657110"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_13_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_95 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_95
  l0._graph = self
  l0._name = "box_Timer_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|162205735"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_95_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPPropMonitor_52 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_52
  l0._graph = self
  l0._name = "box_IOPPropMonitor_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|207405152"
  l0.Out = self.f_box_IOPPropMonitor_52_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_52_PropSpawned
  self.box_PlaySound_v2_116 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_116
  l0._graph = self
  l0._name = "box_PlaySound_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|224825671"
  l0.Out = self.f_box_PlaySound_v2_116_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_87 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_87
  l0._graph = self
  l0._name = "box_PlaySound_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|282651093"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_87_Started
  l0.Finished = DummyFunction
  self.box_Timer_v2_71 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_71
  l0._graph = self
  l0._name = "box_Timer_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|289676157"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_71_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_IOPMonitor_28 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_28
  l0._graph = self
  l0._name = "box_IOPMonitor_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|295554644"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_28_EventOccurred
  l0.Out = DummyFunction
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|301147858"
  l0.Out = self.f_box_PlaySound_v2_62_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_70 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_70
  l0._graph = self
  l0._name = "box_AI_IOPController_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|369501875"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_31 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_31
  l0._graph = self
  l0._name = "box_PlaySound_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|373890676"
  l0.Out = self.f_box_PlaySound_v2_31_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPMonitor_35 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_35
  l0._graph = self
  l0._name = "box_IOPMonitor_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|384470725"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_35_EventOccurred
  l0.Out = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|393796604"
  l0.Out = self.f_box_PlaySound_v2_18_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_6 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_6
  l0._graph = self
  l0._name = "box_Hackable_Monitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|479953101"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_6_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Controller_94 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_94
  l0._graph = self
  l0._name = "box_Hackable_Controller_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|494562741"
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
  self.box_Hackable_Controller_21 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_21
  l0._graph = self
  l0._name = "box_Hackable_Controller_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|494860775"
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
  self.box_PlaySound_v2_32 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_32
  l0._graph = self
  l0._name = "box_PlaySound_v2_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|528000961"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_97 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_97
  l0._graph = self
  l0._name = "box_CLOController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|580703481"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_97_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_IOPMonitor_26 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_26
  l0._graph = self
  l0._name = "box_IOPMonitor_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|613340698"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_26_EventOccurred
  l0.Out = DummyFunction
  self.box_PlaySound_v2_46 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_46
  l0._graph = self
  l0._name = "box_PlaySound_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|631217733"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Controller_88 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_88
  l0._graph = self
  l0._name = "box_Hackable_Controller_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|648577196"
  l0.Enabled = self.f_box_Hackable_Controller_88_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|662668277"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_99 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_99
  l0._graph = self
  l0._name = "box_Timer_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|676218564"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_99_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_29 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_29
  l0._graph = self
  l0._name = "box_PlaySound_v2_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|743122785"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|763468410"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_Hackable_Controller_67 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_67
  l0._graph = self
  l0._name = "box_Hackable_Controller_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|781935054"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_Hackable_Controller_67_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|815529384"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlaySound_v2_25_Finished
  self.box_AI_IOPController_60 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_60
  l0._graph = self
  l0._name = "box_AI_IOPController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|827581028"
  l0.Out = self.f_box_AI_IOPController_60_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Hackable_Controller_98 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_98
  l0._graph = self
  l0._name = "box_Hackable_Controller_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|875790977"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_Hackable_Controller_98_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_64 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_64
  l0._graph = self
  l0._name = "box_AI_IOPController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|876555485"
  l0.Out = self.f_box_AI_IOPController_64_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_77 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_77
  l0._graph = self
  l0._name = "box_PlaySound_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|886007498"
  l0.Out = self.f_box_PlaySound_v2_77_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_42 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_42
  l0._graph = self
  l0._name = "box_MissionLayer_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|908291385"
  l0.Loaded = self.f_box_MissionLayer_v2_42_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PlaySound_v2_108 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_108
  l0._graph = self
  l0._name = "box_PlaySound_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|962432408"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_108_Started
  l0.Finished = DummyFunction
  self.box_CLOController_40 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_40
  l0._graph = self
  l0._name = "box_CLOController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|970488650"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_40_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Controller_37 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_37
  l0._graph = self
  l0._name = "box_Hackable_Controller_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|979067302"
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
  self.box_AI_IOPController_113 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_113
  l0._graph = self
  l0._name = "box_AI_IOPController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1038782870"
  l0.Out = self.f_box_AI_IOPController_113_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_7 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_7
  l0._graph = self
  l0._name = "box_AI_IOPController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1041598279"
  l0.Out = self.f_box_AI_IOPController_7_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_101 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_101
  l0._graph = self
  l0._name = "box_AI_IOPController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1053998462"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_53 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_53
  l0._graph = self
  l0._name = "box_CLOController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1099071955"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_53_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Controller_93 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_93
  l0._graph = self
  l0._name = "box_Hackable_Controller_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1125116404"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_93_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_Hackable_Controller_93_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_75 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_75
  l0._graph = self
  l0._name = "box_MissionLayer_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1129365235"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_75_Unloaded
  l0.Reseted = DummyFunction
  self.box_AI_IOPController_117 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_117
  l0._graph = self
  l0._name = "box_AI_IOPController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1131449125"
  l0.Out = self.f_box_AI_IOPController_117_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_105 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_105
  l0._graph = self
  l0._name = "box_PlaySound_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1133190169"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_69 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_69
  l0._graph = self
  l0._name = "box_PlaySound_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1162136390"
  l0.Out = self.f_box_PlaySound_v2_69_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Controller_76 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_76
  l0._graph = self
  l0._name = "box_Hackable_Controller_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1214953913"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_Hackable_Controller_76_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_2 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_2
  l0._graph = self
  l0._name = "box_PlaySound_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1215096442"
  l0.Out = self.f_box_PlaySound_v2_2_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_106 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_106
  l0._graph = self
  l0._name = "box_Hackable_Monitor_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1228858829"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_106_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_65 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_65
  l0._graph = self
  l0._name = "box_MultipleOR_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1257207456"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_65_Out
  self.box_IOPMonitor_51 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_51
  l0._graph = self
  l0._name = "box_IOPMonitor_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1272301548"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_51_EventOccurred
  l0.Out = DummyFunction
  self.box_AI_IOP_Prop_Controller_90 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_90
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1342133118"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_90_Out
  self.box_Hackable_Controller_121 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_121
  l0._graph = self
  l0._name = "box_Hackable_Controller_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1369878183"
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
  self.box_CinematicPrep_122 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_122
  l0._graph = self
  l0._name = "box_CinematicPrep_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1371928777"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_122_PostOut
  self.box_Timer_v2_61 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_61
  l0._graph = self
  l0._name = "box_Timer_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1373591234"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_61_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_96 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_96
  l0._graph = self
  l0._name = "box_SetBoolean_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1376038564"
  l0.Out = self.f_box_SetBoolean_v2_96_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_96_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_96_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_96_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_96_SetFromBool
  self.box_Hackable_Controller_34 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_34
  l0._graph = self
  l0._name = "box_Hackable_Controller_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1411545681"
  l0.Enabled = self.f_box_Hackable_Controller_34_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOP_Prop_Controller_4 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_4
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1437493501"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_4_Out
  self.box_PlaySound_v2_47 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_47
  l0._graph = self
  l0._name = "box_PlaySound_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1444746934"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Security_Camera_Monitor_9 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_9
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1449194189"
  l0.Enabled = self.f_box_Security_Camera_Monitor_9_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_9_OnStartAccessCamera
  l0.OnEndAccessCamera = self.f_box_Security_Camera_Monitor_9_OnEndAccessCamera
  l0.OnStartExitCamera = self.f_box_Security_Camera_Monitor_9_OnStartExitCamera
  l0.OnEndExitCamera = self.f_box_Security_Camera_Monitor_9_OnEndExitCamera
  l0.OnEndExitAll = DummyFunction
  self.box_Timer_v2_118 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_118
  l0._graph = self
  l0._name = "box_Timer_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1455820173"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_118_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Controller_41 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_41
  l0._graph = self
  l0._name = "box_Hackable_Controller_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1460704653"
  l0.Enabled = self.f_box_Hackable_Controller_41_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_82 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_82
  l0._graph = self
  l0._name = "box_Timer_v2_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1462234966"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_82_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_59 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_59
  l0._graph = self
  l0._name = "box_AI_IOPController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1469727905"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_59_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOP_Prop_Controller_86 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_86
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1471579280"
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_107 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_107
  l0._graph = self
  l0._name = "box_SetBoolean_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1525760629"
  l0.Out = self.f_box_SetBoolean_v2_107_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_107_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_107_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_107_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_107_SetFromBool
  self.box_Hackable_Controller_112 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_112
  l0._graph = self
  l0._name = "box_Hackable_Controller_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1545191737"
  l0.Enabled = self.f_box_Hackable_Controller_112_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionController_v4_126 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_126
  l0._graph = self
  l0._name = "box_MissionController_v4_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1561660645"
  self.box_Hackable_Monitor_55 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_55
  l0._graph = self
  l0._name = "box_Hackable_Monitor_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1562214493"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_55_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_IOPMonitor_56 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_56
  l0._graph = self
  l0._name = "box_IOPMonitor_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1564471429"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = self.f_box_IOPMonitor_56_DeactivateHackables
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_44 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_44
  l0._graph = self
  l0._name = "box_PlaySound_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1567314543"
  l0.Out = self.f_box_PlaySound_v2_44_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_74 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_74
  l0._graph = self
  l0._name = "box_Timer_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1598843823"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_74_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_100 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_100
  l0._graph = self
  l0._name = "box_Multiple_AND_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1606595571"
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_box_Multiple_AND_100_Out
  self.box_Hackable_Controller_103 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_103
  l0._graph = self
  l0._name = "box_Hackable_Controller_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1607239178"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Controller_103_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_11 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_11
  l0._graph = self
  l0._name = "box_AI_IOPController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1611148859"
  l0.Out = self.f_box_AI_IOPController_11_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_39 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_39
  l0._graph = self
  l0._name = "box_CLOController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1619222304"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_39_OnUserInPlace
  self.box_PlaySound_v2_16 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_16
  l0._graph = self
  l0._name = "box_PlaySound_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1711110414"
  l0.Out = self.f_box_PlaySound_v2_16_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_43 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_43
  l0._graph = self
  l0._name = "box_ListWriter_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1721753978"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_43_Added
  l0.Removed = self.f_box_ListWriter_43_Removed
  l0.Out = self.f_box_ListWriter_43_Out
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1750432664"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_IOPMonitor_91 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_91
  l0._graph = self
  l0._name = "box_IOPMonitor_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1772265737"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = DummyFunction
  l0.EventOccurred = self.f_box_IOPMonitor_91_EventOccurred
  l0.Out = DummyFunction
  self.box_Timer_v2_83 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_83
  l0._graph = self
  l0._name = "box_Timer_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1808112723"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_83_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_15 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_15
  l0._graph = self
  l0._name = "box_Multiple_AND_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1843051088"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_15_Out
  self.box_PlaySound_v2_33 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_33
  l0._graph = self
  l0._name = "box_PlaySound_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1864589595"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Controller_24 = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self.box_Hackable_Controller_24
  l0._graph = self
  l0._name = "box_Hackable_Controller_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1866524067"
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
  self.box_AI_IOPController_8 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_8
  l0._graph = self
  l0._name = "box_AI_IOPController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1897019675"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_8_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_5 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_5
  l0._graph = self
  l0._name = "box_PlaySound_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1946028897"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_45 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_45
  l0._graph = self
  l0._name = "box_AI_IOPController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1975176871"
  l0.Out = self.f_box_AI_IOPController_45_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_Hackable_Monitor_111 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_111
  l0._graph = self
  l0._name = "box_Hackable_Monitor_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1982023424"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_111_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_RewardController_v3_72 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_72
  l0._graph = self
  l0._name = "box_RewardController_v3_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2030483297"
  l0.Out = self.f_box_RewardController_v3_72_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_AI_IOP_Prop_Controller_58 = cbox:CreateBox("domino/System/IOPPropController.lua")
  l0 = self.box_AI_IOP_Prop_Controller_58
  l0._graph = self
  l0._name = "box_AI_IOP_Prop_Controller_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2052037107"
  l0.Out = self.f_box_AI_IOP_Prop_Controller_58_Out
  self.box_Timer_v2_104 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_104
  l0._graph = self
  l0._name = "box_Timer_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2079908319"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_104_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_63 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_63
  l0._graph = self
  l0._name = "box_Timer_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2129439802"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_63_TimeElapsed
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
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_42
  l0.LayerName = "IOP02_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1463173184", "1463173184", "IOP02_Main", "In", "box_MissionLayer_v2_42.Load", self, l0)
  l0:Load()
end
function export:f_box_CLOController_14_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_53
  l0.CLO = "9223372049768290535"
  l0 = self.box_CLOController_14
  l1 = self.box_CLOController_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1620615125", "1620615125", "IOP02_Main", "box_CLOController_14.UnspawnedUser", "box_CLOController_53.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_IOPMonitor_27_IOPComplete()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.DisconnectedText = {
    section = "HACKING.Interface Messages",
    item = "HackingFailed",
    id = "5906"
  }
  l0._graph = self
  l0._name = "box_SecurityCamController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1580392692"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = self.f_box_SecurityCamController_80_DisconnectedAnimationPlayed
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_IOPMonitor_27
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|167320154", "167320154", "IOP02_Main", "box_IOPMonitor_27.IOPComplete", "box_SecurityCamController_80.PlayDisconnectedAnimation", l0, l1)
  l1:PlayDisconnectedAnimation()
end
function export:f_box_IOPPropMonitor_19_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.GamerGap_Man
  l0.Collisionable = 0
  l0._graph = self
  l0._name = "box_CollisionController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1623461372"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_box_CollisionController_20_Out
  l0 = self.box_IOPPropMonitor_19
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1351294780", "1351294780", "IOP02_Main", "box_IOPPropMonitor_19.Out", "box_CollisionController_20.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_IOPPropMonitor_19_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_19
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372049768290537"
  l1.BoneName = nil
  l1.BoneNameStr = "tablet_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_66"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|507943650"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_IOPPropMonitor_19
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1359129583", "1359129583", "IOP02_Main", "box_IOPPropMonitor_19.PropSpawned", "box_Bind_v2_66.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_Timer_v2_13_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_60
  l0.ChatLineNum = 5
  l0 = self.box_Timer_v2_13
  l1 = self.box_AI_IOPController_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|59081575", "59081575", "IOP02_Main", "box_Timer_v2_13.TimeElapsed", "box_AI_IOPController_60.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_Timer_v2_95_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_45
  l0.IopID = "GamerGap"
  l0.IopEvent = "GamerGap.Controller"
  l0 = self.box_Timer_v2_95
  l1 = self.box_AI_IOPController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|957746905", "957746905", "IOP02_Main", "box_Timer_v2_95.TimeElapsed", "box_AI_IOPController_45.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_IOPPropMonitor_52_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_19
  l0.PropName = "smartpad_01"
  l0 = self.box_IOPPropMonitor_52
  l1 = self.box_IOPPropMonitor_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1727416118", "1727416118", "IOP02_Main", "box_IOPPropMonitor_52.Out", "box_IOPPropMonitor_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_IOPPropMonitor_52_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_52
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372049768290539"
  l1.BoneName = nil
  l1.BoneNameStr = "iop_ap_controller_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_120"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1027708360"
  l1.Bound = DummyFunction
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_IOPPropMonitor_52
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1911057378", "1911057378", "IOP02_Main", "box_IOPPropMonitor_52.PropSpawned", "box_Bind_v2_120.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_PlaySound_v2_116_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_82
  l0.Seconds = 0.75
  l0 = self.box_PlaySound_v2_116
  l1 = self.box_Timer_v2_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|745801070", "745801070", "IOP02_Main", "box_PlaySound_v2_116.Out", "box_Timer_v2_82.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_87_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1361379188"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_119_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_119_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_119_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_119_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_119_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_119_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_119_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_119_Out_7
  l0 = self.box_PlaySound_v2_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1620216528", "1620216528", "IOP02_Main", "box_PlaySound_v2_87.Started", "box_Ordered_Output_119.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_71_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_11
  l0.ChatLineNum = 0
  l0 = self.box_Timer_v2_71
  l1 = self.box_AI_IOPController_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1095989031", "1095989031", "IOP02_Main", "box_Timer_v2_71.TimeElapsed", "box_AI_IOPController_11.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_IOPMonitor_28_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_44
  l0.Entity = "9223372049768290532"
  l0.SoundId = "soundbinary/3554648600.bnk"
  l0 = self.box_IOPMonitor_28
  l1 = self.box_PlaySound_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|491266661", "491266661", "IOP02_Main", "box_IOPMonitor_28.EventOccurred", "box_PlaySound_v2_44.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOP_Prop_Controller_58
  l0.StateIndex = 4
  l0.PropEntity = self.RoboVacuumAnimatedHackableWithSound
  l0 = self.box_PlaySound_v2_62
  l1 = self.box_AI_IOP_Prop_Controller_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|246307539", "246307539", "IOP02_Main", "box_PlaySound_v2_62.Out", "box_AI_IOP_Prop_Controller_58.SetStateIndex", l0, l1)
  l1:SetStateIndex()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_63
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1709428809", "1709428809", "IOP02_Main", "box_Ordered_Output_23.Out", "box_Timer_v2_63.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_23_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_29
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/556598564.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1370556473", "1370556473", "IOP02_Main", "box_Ordered_Output_23.Out", "box_PlaySound_v2_29.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_31_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1449822711"
  l0.Out = self.f_box_SetInteger_v2_78_Out
  l0 = self.box_PlaySound_v2_31
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|907071011", "907071011", "IOP02_Main", "box_PlaySound_v2_31.Out", "box_SetInteger_v2_78.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_IOPMonitor_35_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_62
  l0.Entity = "9223372049768290519"
  l0.SoundId = "soundbinary/3791698850.bnk"
  l0 = self.box_IOPMonitor_35
  l1 = self.box_PlaySound_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1128439344", "1128439344", "IOP02_Main", "box_IOPMonitor_35.EventOccurred", "box_PlaySound_v2_62.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOP_Prop_Controller_90
  l0.StateIndex = 1
  l0.PropEntity = self.RoboVacuumAnimatedHackableWithSound
  l0 = self.box_PlaySound_v2_18
  l1 = self.box_AI_IOP_Prop_Controller_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|564415364", "564415364", "IOP02_Main", "box_PlaySound_v2_18.Out", "box_AI_IOP_Prop_Controller_90.SetStateIndex", l0, l1)
  l1:SetStateIndex()
end
function export:f_box_Ordered_Output_36_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_99
  l0.Seconds = 5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1431219481", "1431219481", "IOP02_Main", "box_Ordered_Output_36.Out", "box_Timer_v2_99.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_36_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_1
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/2715016382.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1910135890", "1910135890", "IOP02_Main", "box_Ordered_Output_36.Out", "box_PlaySound_v2_1.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_6_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_116
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/3274853835.bnk"
  l0 = self.box_Hackable_Monitor_6
  l1 = self.box_PlaySound_v2_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|159570577", "159570577", "IOP02_Main", "box_Hackable_Monitor_6.HackSuccess", "box_PlaySound_v2_116.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_109_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_111()
  l0 = self.box_Hackable_Monitor_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1340848089", "1340848089", "IOP02_Main", "box_Ordered_Output_109.Out", "box_Hackable_Monitor_111.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_109_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_112()
  l0 = self.box_Hackable_Controller_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|571966756", "571966756", "IOP02_Main", "box_Ordered_Output_109.Out", "box_Hackable_Controller_112.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_109_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_112()
  l0 = self.box_Hackable_Controller_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1052813007", "1052813007", "IOP02_Main", "box_Ordered_Output_109.Out", "box_Hackable_Controller_112.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_109_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_46
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/869409895.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1905421273", "1905421273", "IOP02_Main", "box_Ordered_Output_109.Out", "box_PlaySound_v2_46.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_50_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_118
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|775154737", "775154737", "IOP02_Main", "box_Ordered_Output_50.Out", "box_Timer_v2_118.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_50_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_47
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/2715016382.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|381847072", "381847072", "IOP02_Main", "box_Ordered_Output_50.Out", "box_PlaySound_v2_47.Play", clone, l0)
  l0:Play()
end
function export:f_box_CLOController_97_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_40
  l0.CLO = "9223372049768290522"
  l0 = self.box_CLOController_97
  l1 = self.box_CLOController_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2052193530", "2052193530", "IOP02_Main", "box_CLOController_97.UnspawnedUser", "box_CLOController_40.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_IOPMonitor_26_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2005300219"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_79_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_79_Out_1
  l0 = self.box_IOPMonitor_26
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2062256983", "2062256983", "IOP02_Main", "box_IOPMonitor_26.EventOccurred", "box_Ordered_Output_79.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Controller_88_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_100()
  l0 = self.box_Hackable_Controller_88
  l1 = self.box_Multiple_AND_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|903954809", "903954809", "IOP02_Main", "box_Hackable_Controller_88.Enabled", "box_Multiple_AND_100.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_99_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_64
  l0.ChatLineNum = 3
  l0 = self.box_Timer_v2_99
  l1 = self.box_AI_IOPController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1537280113", "1537280113", "IOP02_Main", "box_Timer_v2_99.TimeElapsed", "box_AI_IOPController_64.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_94
  l0.HackableEntity = "9223372049768290537"
  l0 = self.box_MultipleOR_84
  l1 = self.box_Hackable_Controller_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1504338853", "1504338853", "IOP02_Main", "box_MultipleOR_84.Out", "box_Hackable_Controller_94.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Controller_67_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_69
  l0.Entity = "9223372049768290521"
  l0.SoundId = "soundbinary/3791698850.bnk"
  l0 = self.box_Hackable_Controller_67
  l1 = self.box_PlaySound_v2_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1839218825", "1839218825", "IOP02_Main", "box_Hackable_Controller_67.ProfilingDisabled", "box_PlaySound_v2_69.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_25_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_16
  l0.Entity = "9223372049768290532"
  l0.SoundId = "soundbinary/927032701.bnk"
  l0 = self.box_PlaySound_v2_25
  l1 = self.box_PlaySound_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1409368600", "1409368600", "IOP02_Main", "box_PlaySound_v2_25.Finished", "box_PlaySound_v2_16.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_60_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1710868613"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_68_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_68_Out_1
  l0 = self.box_AI_IOPController_60
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2096778998", "2096778998", "IOP02_Main", "box_AI_IOPController_60.Out", "box_Ordered_Output_68.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_128_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1092152158"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = DummyFunction
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_85_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|83663539", "83663539", "IOP02_Main", "box_Ordered_Output_128.Out", "box_Ordered_Output_85.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_128_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049768290524"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1603089312"
  l0.Started = self.f_box_ParticleFXController_v2_48_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1664139809", "1664139809", "IOP02_Main", "box_Ordered_Output_128.Out", "box_ParticleFXController_v2_48.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Controller_98_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Controller_98()
  l0 = self.box_Hackable_Controller_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1670748498", "1670748498", "IOP02_Main", "box_Hackable_Controller_98.ProfilingDisabled", "box_Hackable_Controller_98.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_AI_IOPController_64_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|343379040"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_AI_IOPController_64
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1080033898", "1080033898", "IOP02_Main", "box_AI_IOPController_64.Out", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_77_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_95
  l0.Seconds = 0.3
  l0 = self.box_PlaySound_v2_77
  l1 = self.box_Timer_v2_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|567035672", "567035672", "IOP02_Main", "box_PlaySound_v2_77.Out", "box_Timer_v2_95.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Integers_v2_89_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1366640727", "1366640727", "IOP02_Main", "box_Compare_Integers_v2_89.A_eq_B", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MissionLayer_v2_42_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1708812762"
  l0.Out = self.f_box_Get_Player_ID_57_Out
  l0 = self.box_MissionLayer_v2_42
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|238122788", "238122788", "IOP02_Main", "box_MissionLayer_v2_42.Loaded", "box_Get_Player_ID_57.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_73_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_73()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|286504711", "286504711", "IOP02_Main", "box_SecurityCamController_73.CanExitSet", "box_SecurityCamController_73.ForceUserOutOfCamera", clone, l0)
  l0:ForceUserOutOfCamera()
end
function export:f_box_SecurityCamController_73_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1753246179"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1670697310", "1670697310", "IOP02_Main", "box_SecurityCamController_73.UserForcedOutOfCamera", "box_Ordered_Output_30.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_108_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_31
  l0.Entity = "9223372049768290519"
  l0.SoundId = "soundbinary/2498410075.bnk"
  l0 = self.box_PlaySound_v2_108
  l1 = self.box_PlaySound_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1936414725", "1936414725", "IOP02_Main", "box_PlaySound_v2_108.Started", "box_PlaySound_v2_31.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_40_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_CLOController_40
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1588343765", "1588343765", "IOP02_Main", "box_CLOController_40.Deactivated", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_AI_IOPController_113_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|574949673"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_50_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_50_Out_1
  l0 = self.box_AI_IOPController_113
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|610403004", "610403004", "IOP02_Main", "box_AI_IOPController_113.Out", "box_Ordered_Output_50.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_105
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/2715016382.bnk"
  l0 = self.box_AI_IOPController_7
  l1 = self.box_PlaySound_v2_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1540778013", "1540778013", "IOP02_Main", "box_AI_IOPController_7.Out", "box_PlaySound_v2_105.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_85_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1271678558", "1271678558", "IOP02_Main", "box_Ordered_Output_85.Out", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_85_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_98()
  l0 = self.box_Hackable_Controller_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|929445170", "929445170", "IOP02_Main", "box_Ordered_Output_85.Out", "box_Hackable_Controller_98.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_CLOController_53_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_CLOController_53
  l1 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1397218102", "1397218102", "IOP02_Main", "box_CLOController_53.Deactivated", "box_Multiple_AND_15.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Hackable_Controller_93_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_28
  l0.MonitoredEvent = "GamerGap.Controller"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_Hackable_Controller_93
  l1 = self.box_IOPMonitor_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1456126724", "1456126724", "IOP02_Main", "box_Hackable_Controller_93.Disabled", "box_IOPMonitor_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hackable_Controller_93_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Controller_93()
  l0 = self.box_Hackable_Controller_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|272765971", "272765971", "IOP02_Main", "box_Hackable_Controller_93.ProfilingDisabled", "box_Hackable_Controller_93.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_114_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_121
  l0.HackableEntity = "9223372049768290537"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2112969609", "2112969609", "IOP02_Main", "box_Ordered_Output_114.Out", "box_Hackable_Controller_121.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_114_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_RewardController_v3_72
  l0.ItemDB = "Items.9223372045507420458"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1644308857", "1644308857", "IOP02_Main", "box_Ordered_Output_114.Out", "box_RewardController_v3_72.ExecuteRewards", clone, l0)
  l0:ExecuteRewards()
end
function export:f_box_MissionLayer_v2_75_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_75
  l1 = self.box_MissionController_v4_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1236235517", "1236235517", "IOP02_Main", "box_MissionLayer_v2_75.Unloaded", "box_MissionController_v4_126.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_AI_IOPController_117_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1607005095"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_110_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_110_Out_1
  l0 = self.box_AI_IOPController_117
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|863865829", "863865829", "IOP02_Main", "box_AI_IOPController_117.Out", "box_Ordered_Output_110.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_125_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = "9223372049768290522"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1923836324", "1923836324", "IOP02_Main", "box_CollisionController_125.CollisionsDisabled", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PlaySound_v2_69_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOP_Prop_Controller_86
  l0.StateIndex = 5
  l0.PropEntity = self.RoboVacuumAnimatedHackableWithSound
  l0 = self.box_PlaySound_v2_69
  l1 = self.box_AI_IOP_Prop_Controller_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|346741247", "346741247", "IOP02_Main", "box_PlaySound_v2_69.Out", "box_AI_IOP_Prop_Controller_86.SetStateIndex", l0, l1)
  l1:SetStateIndex()
end
function export:f_box_Hackable_Controller_76_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_Hackable_Controller_76()
  l0 = self.box_Hackable_Controller_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|484104762", "484104762", "IOP02_Main", "box_Hackable_Controller_76.ProfilingEnabled", "box_Hackable_Controller_76.EnableHack", l0, l0)
  l0:EnableHack()
end
function export:f_box_PlaySound_v2_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_73()
  l0 = self.box_PlaySound_v2_2
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1471264523", "1471264523", "IOP02_Main", "box_PlaySound_v2_2.Out", "box_SecurityCamController_73.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_CollisionController_54_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_39
  l0.CLO = "9223372049768290535"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|283322115", "283322115", "IOP02_Main", "box_CollisionController_54.CollisionsDisabled", "box_CLOController_39.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Hackable_Monitor_106_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_103
  l0.HackableEntity = self.RoboVacuumAnimatedHackableWithSound
  l0 = self.box_Hackable_Monitor_106
  l1 = self.box_Hackable_Controller_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1691393586", "1691393586", "IOP02_Main", "box_Hackable_Monitor_106.HackSuccess", "box_Hackable_Controller_103.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_106
  l0.HackableEntity = self.RoboVacuumAnimatedHackableWithSound
  l0.AutoDisable = 1
  l0 = self.box_MultipleOR_65
  l1 = self.box_Hackable_Monitor_106
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|293674718", "293674718", "IOP02_Main", "box_MultipleOR_65.Out", "box_Hackable_Monitor_106.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_IOPMonitor_51_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|855249720"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_128_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_128_Out_1
  l0 = self.box_IOPMonitor_51
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|860148811", "860148811", "IOP02_Main", "box_IOPMonitor_51.EventOccurred", "box_Ordered_Output_128.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_115_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|506592452", "506592452", "IOP02_Main", "box_Ordered_Output_115.Out", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_115_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_5
  l0.Entity = "9223372049768290521"
  l0.SoundId = "soundbinary/3791698850.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|71873614", "71873614", "IOP02_Main", "box_Ordered_Output_115.Out", "box_PlaySound_v2_5.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOP_Prop_Controller_90_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPMonitor_26
  l0.MonitoredEvent = "GamerGap.Vacuum"
  l0.AutoDisableOnEventOccurred = 1
  l0 = self.box_AI_IOP_Prop_Controller_90
  l1 = self.box_IOPMonitor_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|74482522", "74482522", "IOP02_Main", "box_AI_IOP_Prop_Controller_90.Out", "box_IOPMonitor_26.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_119_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_111()
  l0 = self.box_Hackable_Monitor_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|680812493", "680812493", "IOP02_Main", "box_Ordered_Output_119.Out", "box_Hackable_Monitor_111.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_91
  l0.MonitoredEvent = "GamerGap.Tablet"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|204789967", "204789967", "IOP02_Main", "box_Ordered_Output_119.Out", "box_IOPMonitor_91.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_55
  l0.HackableEntity = "9223372049768290539"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1451220325", "1451220325", "IOP02_Main", "box_Ordered_Output_119.Out", "box_Hackable_Monitor_55.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_65()
  l0 = self.box_MultipleOR_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|768250375", "768250375", "IOP02_Main", "box_Ordered_Output_119.Out", "box_MultipleOR_65.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_119_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_35
  l0.MonitoredEvent = "GamerGap.VacuumDone"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|647177397", "647177397", "IOP02_Main", "box_Ordered_Output_119.Out", "box_IOPMonitor_35.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_27
  l0.AutoDisableOnIOPComplete = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1408715002", "1408715002", "IOP02_Main", "box_Ordered_Output_119.Out", "box_IOPMonitor_27.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_56
  l0.AutoDisableOnDeactivateHackables = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|432981792", "432981792", "IOP02_Main", "box_Ordered_Output_119.Out", "box_IOPMonitor_56.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_IOPMonitor_51
  l0.MonitoredEvent = "GamerGap.BreakUrn"
  l0.AutoDisableOnEventOccurred = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1704705662", "1704705662", "IOP02_Main", "box_Ordered_Output_119.Out", "box_IOPMonitor_51.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CinematicPrep_122_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_9
  l0.CameraEntity = self.GamerGap_Camera
  l0 = self.box_CinematicPrep_122
  l1 = self.box_Security_Camera_Monitor_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|329674691", "329674691", "IOP02_Main", "box_CinematicPrep_122.PostOut", "box_Security_Camera_Monitor_9.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_61_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_12()
  l0 = self.box_Timer_v2_61
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1660267053", "1660267053", "IOP02_Main", "box_Timer_v2_61.TimeElapsed", "box_SecurityCamController_12.SetCanExit", l0, l1)
  l1:SetCanExit()
end
function export:f_box_SetBoolean_v2_96_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_96
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_96_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_96
  self.DisabledVacuum = l0.Target
  l0 = self.box_AI_IOP_Prop_Controller_4
  l0.StateIndex = 0
  l0.PropEntity = self.RoboVacuumAnimatedHackableWithSound
  l0 = self.box_SetBoolean_v2_96
  l1 = self.box_AI_IOP_Prop_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1714485580", "1714485580", "IOP02_Main", "box_SetBoolean_v2_96.SetFalse", "box_AI_IOP_Prop_Controller_4.SetStateIndex", l0, l1)
  l1:SetStateIndex()
end
function export:f_box_SetBoolean_v2_96_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_96
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_96_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_96
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_96_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_96
  self.DisabledVacuum = l0.Target
end
function export:f_box_Hackable_Controller_34_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1293227463"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_115_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_115_Out_1
  l0 = self.box_Hackable_Controller_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1232318345", "1232318345", "IOP02_Main", "box_Hackable_Controller_34.Enabled", "box_Ordered_Output_115.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_124_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372049768290513"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1145426473"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_125_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2018925949", "2018925949", "IOP02_Main", "box_CollisionController_124.CollisionsDisabled", "box_CollisionController_125.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Compare_Boolean_v2_38_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_34
  l0.HackableEntity = self.RoboVacuumAnimatedHackableWithSound
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1916442116", "1916442116", "IOP02_Main", "box_Compare_Boolean_v2_38.A_is_False", "box_Hackable_Controller_34.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_AI_IOP_Prop_Controller_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_100()
  l0 = self.box_AI_IOP_Prop_Controller_4
  l1 = self.box_Multiple_AND_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2083054951", "2083054951", "IOP02_Main", "box_AI_IOP_Prop_Controller_4.Out", "box_Multiple_AND_100.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Security_Camera_Monitor_9_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_87
  l0.Entity = "9223372049768290532"
  l0.SoundId = "soundbinary/2458074632.bnk"
  l0 = self.box_Security_Camera_Monitor_9
  l1 = self.box_PlaySound_v2_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1871424070", "1871424070", "IOP02_Main", "box_Security_Camera_Monitor_9.Enabled", "box_PlaySound_v2_87.Play", l0, l1)
  l1:Play()
end
function export:f_box_Security_Camera_Monitor_9_OnEndAccessCamera()
  local l0
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_9
  self.GamerGap_Camera = l0.Camera
end
function export:f_box_Security_Camera_Monitor_9_OnEndExitCamera()
  local l0
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_9
  self.GamerGap_Camera = l0.Camera
end
function export:f_box_Security_Camera_Monitor_9_OnStartAccessCamera()
  local l0
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_9
  self.GamerGap_Camera = l0.Camera
end
function export:f_box_Security_Camera_Monitor_9_OnStartExitCamera()
  local l0
  self = self._graph
  l0 = self.box_Security_Camera_Monitor_9
  self.GamerGap_Camera = l0.Camera
end
function export:f_box_SetInteger_v2_78_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.VacuumHacks = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372049768290517"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1979102556"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_123_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1588833978", "1588833978", "IOP02_Main", "box_SetInteger_v2_78.Out", "box_CollisionController_123.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Timer_v2_118_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_117
  l0.ChatLineNum = 7
  l0 = self.box_Timer_v2_118
  l1 = self.box_AI_IOPController_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|571054309", "571054309", "IOP02_Main", "box_Timer_v2_118.TimeElapsed", "box_AI_IOPController_117.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_Hackable_Controller_41_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_100()
  l0 = self.box_Hackable_Controller_41
  l1 = self.box_Multiple_AND_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1848877288", "1848877288", "IOP02_Main", "box_Hackable_Controller_41.Enabled", "box_Multiple_AND_100.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Timer_v2_82_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_101
  l0.IopID = "GamerGap"
  l0.IopEvent = "GamerGap.Tablet"
  l0 = self.box_Timer_v2_82
  l1 = self.box_AI_IOPController_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|500128902", "500128902", "IOP02_Main", "box_Timer_v2_82.TimeElapsed", "box_AI_IOPController_101.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_AI_IOPController_59_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_104
  l0.Seconds = 0.5
  l0 = self.box_AI_IOPController_59
  l1 = self.box_Timer_v2_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1923817001", "1923817001", "IOP02_Main", "box_AI_IOPController_59.SendEventCompleted", "box_Timer_v2_104.Start", l0, l1)
  l1:Start()
end
function export:f_box_SetBoolean_v2_107_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_107_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.DisabledVacuum = l0.Target
end
function export:f_box_SetBoolean_v2_107_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_107
  self.DisabledVacuum = l0.Target
end
function export:f_box_Hackable_Controller_112_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_6
  l0.HackableEntity = "9223372049768290537"
  l0.AutoDisable = 1
  l0 = self.box_Hackable_Controller_112
  l1 = self.box_Hackable_Monitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1737981513", "1737981513", "IOP02_Main", "box_Hackable_Controller_112.Enabled", "box_Hackable_Monitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_102_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_88
  l0.HackableEntity = "9223372049768290537"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1321564425", "1321564425", "IOP02_Main", "box_Ordered_Output_102.Out", "box_Hackable_Controller_88.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_102_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Controller_41
  l0.HackableEntity = "9223372049768290539"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1227832958", "1227832958", "IOP02_Main", "box_Ordered_Output_102.Out", "box_Hackable_Controller_41.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_102_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1781181320", "1781181320", "IOP02_Main", "box_Ordered_Output_102.Out", "box_SetBoolean_v2_96.False", clone, l0)
  l0:False()
end
function export:f_box_Hackable_Monitor_55_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_77
  l0.Entity = "9223372049768290532"
  l0.SoundId = "soundbinary/1195330400.bnk"
  l0 = self.box_Hackable_Monitor_55
  l1 = self.box_PlaySound_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|275581981", "275581981", "IOP02_Main", "box_Hackable_Monitor_55.HackSuccess", "box_PlaySound_v2_77.Play", l0, l1)
  l1:Play()
end
function export:f_box_IOPMonitor_56_DeactivateHackables()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1731149214"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_10_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_10_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_10_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_10_Out_6
  l0 = self.box_IOPMonitor_56
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|62640913", "62640913", "IOP02_Main", "box_IOPMonitor_56.DeactivateHackables", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_44_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_76()
  l0 = self.box_PlaySound_v2_44
  l1 = self.box_Hackable_Controller_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1709175013", "1709175013", "IOP02_Main", "box_PlaySound_v2_44.Out", "box_Hackable_Controller_76.EnableProfiling", l0, l1)
  l1:EnableProfiling()
end
function export:f_box_SecurityCamController_80_DisconnectedAnimationPlayed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_25
  l0.SoundId = "soundbinary/669646554.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1941889836", "1941889836", "IOP02_Main", "box_SecurityCamController_80.DisconnectedAnimationPlayed", "box_PlaySound_v2_25.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_74_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372049768290524"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2020802965"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_74
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1892107918", "1892107918", "IOP02_Main", "box_Timer_v2_74.TimeElapsed", "box_ParticleFXController_v2_127.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_ParticleFXController_v2_48_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1460576409", "1460576409", "IOP02_Main", "box_ParticleFXController_v2_48.Started", "box_Timer_v2_74.Start", clone, l0)
  l0:Start()
end
function export:f_box_Multiple_AND_100_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_100
  l1 = self.box_Timer_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1907803047", "1907803047", "IOP02_Main", "box_Multiple_AND_100.Out", "box_Timer_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_110_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_71
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1494284011", "1494284011", "IOP02_Main", "box_Ordered_Output_110.Out", "box_Timer_v2_71.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_110_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_33
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/556598564.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1595084495", "1595084495", "IOP02_Main", "box_Ordered_Output_110.Out", "box_PlaySound_v2_33.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Controller_103_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_18
  l0.Entity = "9223372049768290521"
  l0.SoundId = "soundbinary/2498410075.bnk"
  l0 = self.box_Hackable_Controller_103
  l1 = self.box_PlaySound_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1206537314", "1206537314", "IOP02_Main", "box_Hackable_Controller_103.Disabled", "box_PlaySound_v2_18.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|461000773"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_36_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_36_Out_1
  l0 = self.box_AI_IOPController_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1662826287", "1662826287", "IOP02_Main", "box_AI_IOPController_11.Out", "box_Ordered_Output_36.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_39_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_39
  self.GamerGap_Man = l0.UserID
  l0 = self.box_IOPPropMonitor_52
  l0.PropName = "iop_ap_controller_01"
  l0 = self.box_CLOController_39
  l1 = self.box_IOPPropMonitor_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1867305225", "1867305225", "IOP02_Main", "box_CLOController_39.OnUserInPlace", "box_IOPPropMonitor_52.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CollisionController_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_43
  l0.Input = self.NPCs
  l0.Data[0] = self.GamerGap_Man
  l0.Data[1] = self.GamerGap_Girl
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|84485174", "84485174", "IOP02_Main", "box_CollisionController_20.Out", "box_ListWriter_43.Add", clone, l0)
  l0:Add()
end
function export:f_box_SecurityCamController_12_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_12()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1212780", "1212780", "IOP02_Main", "box_SecurityCamController_12.CanExitSet", "box_SecurityCamController_12.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_SecurityCamController_12_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_122
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1449507579", "1449507579", "IOP02_Main", "box_SecurityCamController_12.EnterForced", "box_CinematicPrep_122.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Get_Player_ID_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_108
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1606904596", "1606904596", "IOP02_Main", "box_Get_Player_ID_57.Out", "box_PlaySound_v2_108.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_68_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_113
  l0.ChatLineNum = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1845116407", "1845116407", "IOP02_Main", "box_Ordered_Output_68.Out", "box_AI_IOPController_113.TriggerChatLine", clone, l0)
  l0:TriggerChatLine()
end
function export:f_box_Ordered_Output_68_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_32
  l0.Entity = "9223372049768290537"
  l0.SoundId = "soundbinary/556598564.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|904249063", "904249063", "IOP02_Main", "box_Ordered_Output_68.Out", "box_PlaySound_v2_32.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_16_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_2
  l0.Entity = "9223372049768290521"
  l0.SoundId = "soundbinary/3791698850.bnk"
  l0 = self.box_PlaySound_v2_16
  l1 = self.box_PlaySound_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|890308334", "890308334", "IOP02_Main", "box_PlaySound_v2_16.Out", "box_PlaySound_v2_2.Play", l0, l1)
  l1:Play()
end
function export:f_box_ListWriter_43_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_43
  self.NPCs = l0.Target
  l0 = self.box_AI_IOPController_8
  l0.IopID = "GamerGap"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.NPCs
  l0.IopRoleList = {
    "GamerGap.Husband",
    "GamerGap.Wife"
  }
  l0.OffscreenDialogPoint = "9223372049768290534"
  l0 = self.box_ListWriter_43
  l1 = self.box_AI_IOPController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|478701466", "478701466", "IOP02_Main", "box_ListWriter_43.Added", "box_AI_IOPController_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_43_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_43
  self.NPCs = l0.Target
end
function export:f_box_ListWriter_43_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_43
  self.NPCs = l0.Target
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_24()
  l0 = self.box_Hackable_Controller_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1196828660", "1196828660", "IOP02_Main", "box_Ordered_Output_10.Out", "box_Hackable_Controller_24.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_24()
  l0 = self.box_Hackable_Controller_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1249688133", "1249688133", "IOP02_Main", "box_Ordered_Output_10.Out", "box_Hackable_Controller_24.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_21()
  l0 = self.box_Hackable_Controller_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|964467466", "964467466", "IOP02_Main", "box_Ordered_Output_10.Out", "box_Hackable_Controller_21.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_10_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_21()
  l0 = self.box_Hackable_Controller_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|370364295", "370364295", "IOP02_Main", "box_Ordered_Output_10.Out", "box_Hackable_Controller_21.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_10_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_37()
  l0 = self.box_Hackable_Controller_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|845114360", "845114360", "IOP02_Main", "box_Ordered_Output_10.Out", "box_Hackable_Controller_37.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_10_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Controller_37()
  l0 = self.box_Hackable_Controller_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1888283191", "1888283191", "IOP02_Main", "box_Ordered_Output_10.Out", "box_Hackable_Controller_37.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Ordered_Output_10_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1116307896", "1116307896", "IOP02_Main", "box_Ordered_Output_10.Out", "box_SetBoolean_v2_107.True", clone, l0)
  l0:True()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.GamerGap_Girl = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.GamerGap_Girl
  l0.Collisionable = 0
  l0._graph = self
  l0._name = "box_CollisionController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1226869978"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_54_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_3
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|93983430", "93983430", "IOP02_Main", "box_CLOController_3.OnUserInPlace", "box_CollisionController_54.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_97
  l0.User = self.GamerGap_Girl
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|4099674", "4099674", "IOP02_Main", "box_Ordered_Output_30.Out", "box_CLOController_97.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_14
  l0.User = self.GamerGap_Man
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1978369608", "1978369608", "IOP02_Main", "box_Ordered_Output_30.Out", "box_CLOController_14.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_IOPMonitor_91_EventOccurred()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|481717174"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_109_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_109_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_109_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_109_Out_3
  l0 = self.box_IOPMonitor_91
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|718218304", "718218304", "IOP02_Main", "box_IOPMonitor_91.EventOccurred", "box_Ordered_Output_109.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_83_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_59
  l0.IopID = "GamerGap"
  l0.IopEvent = "GamerGap.Vacuum"
  l0 = self.box_Timer_v2_83
  l1 = self.box_AI_IOPController_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|13732944", "13732944", "IOP02_Main", "box_Timer_v2_83.TimeElapsed", "box_AI_IOPController_59.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Multiple_AND_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2097652122"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_81_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_81_Out_1
  l0 = self.box_Multiple_AND_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1143220938", "1143220938", "IOP02_Main", "box_Multiple_AND_15.Out", "box_Ordered_Output_81.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_8_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1552186573"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_102_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_102_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_102_Out_2
  l0 = self.box_AI_IOPController_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1936314992", "1936314992", "IOP02_Main", "box_AI_IOPController_8.StartCompleted", "box_Ordered_Output_102.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_45_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Controller_93()
  l0 = self.box_AI_IOPController_45
  l1 = self.box_Hackable_Controller_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|356165004", "356165004", "IOP02_Main", "box_AI_IOPController_45.Out", "box_Hackable_Controller_93.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_CollisionController_123_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372049768290515"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1421972860"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_124_CollisionsDisabled
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|280599910", "280599910", "IOP02_Main", "box_CollisionController_123.CollisionsDisabled", "box_CollisionController_124.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_Hackable_Monitor_111_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1129123555"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_114_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_114_Out_1
  l0 = self.box_Hackable_Monitor_111
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|190128821", "190128821", "IOP02_Main", "box_Hackable_Monitor_111.HackSuccess", "box_Ordered_Output_114.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_79_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_83
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|513494467", "513494467", "IOP02_Main", "box_Ordered_Output_79.Out", "box_Timer_v2_83.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_79_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.VacuumHacks
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|2140200211"
  l0.Out = self.f_box_Integer_Arithmetics_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|823260356", "823260356", "IOP02_Main", "box_Ordered_Output_79.Out", "box_Integer_Arithmetics_17.Add", clone, l0)
  l0:Add()
end
function export:f_box_RewardController_v3_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_13
  l0.Seconds = 0
  l0 = self.box_RewardController_v3_72
  l1 = self.box_Timer_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1602751626", "1602751626", "IOP02_Main", "box_RewardController_v3_72.Out", "box_Timer_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOP_Prop_Controller_58_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisabledVacuum
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1432337676"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_AI_IOP_Prop_Controller_58
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|484181541", "484181541", "IOP02_Main", "box_AI_IOP_Prop_Controller_58.Out", "box_Compare_Boolean_v2_38.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_104_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Controller_67
  l0.HackableEntity = self.RoboVacuumAnimatedHackableWithSound
  l0 = self.box_Timer_v2_104
  l1 = self.box_Hackable_Controller_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1133114806", "1133114806", "IOP02_Main", "box_Timer_v2_104.TimeElapsed", "box_Hackable_Controller_67.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_Ordered_Output_81_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1020812369", "1020812369", "IOP02_Main", "box_Ordered_Output_81.Out", "box_AI_IOPController_70.HideChat", clone, l0)
  l0:HideChat()
end
function export:f_box_Ordered_Output_81_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_75
  l0.LayerName = self.GameGate_MainLayer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|260609449", "260609449", "IOP02_Main", "box_Ordered_Output_81.Out", "box_MissionLayer_v2_75.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Timer_v2_63_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_7
  l0.ChatLineNum = 4
  l0 = self.box_Timer_v2_63
  l1 = self.box_AI_IOPController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1696811237", "1696811237", "IOP02_Main", "box_Timer_v2_63.TimeElapsed", "box_AI_IOPController_7.TriggerChatLine", l0, l1)
  l1:TriggerChatLine()
end
function export:f_box_Integer_Arithmetics_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.VacuumHacks = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.VacuumHacks
  l0.B = 3
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|899712446"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_89_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|902042432", "902042432", "IOP02_Main", "box_Integer_Arithmetics_17.Out", "box_Compare_Integers_v2_89.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_Hackable_Controller_21()
  local l0
  l0 = self.box_Hackable_Controller_21
  l0.HackableEntity = "9223372049768290539"
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_Hackable_Controller_98()
  local l0
  l0 = self.box_Hackable_Controller_98
  l0.HackableEntity = self.RoboVacuumAnimatedHackableWithSound
end
function export:OnEnter_box_SecurityCamController_73()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.GamerGap_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 1
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|949693809"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_73_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_73_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Hackable_Controller_37()
  local l0
  l0 = self.box_Hackable_Controller_37
  l0.HackableEntity = self.RoboVacuumAnimatedHackableWithSound
end
function export:OnEnter_box_Hackable_Controller_93()
  local l0
  l0 = self.box_Hackable_Controller_93
  l0.HackableEntity = "9223372049768290539"
end
function export:OnEnter_box_Hackable_Controller_76()
  local l0
  l0 = self.box_Hackable_Controller_76
  l0.HackableEntity = "9223372049768290539"
end
function export:OnEnter_box_MultipleOR_65()
end
function export:OnEnter_box_Hackable_Controller_112()
  local l0
  l0 = self.box_Hackable_Controller_112
  l0.HackableEntity = "9223372049768290537"
  l0.OasisHackingText = {
    section = "MISSIONS.WORLD MISSIONS.IOP.GAMER_GAP.OBJECTS.Hackables",
    item = "Tablet_Vibrate",
    id = "336590"
  }
end
function export:OnEnter_box_Multiple_AND_100()
  local l0
  l0 = self.box_Multiple_AND_100
  l0.AutoReset = 1
end
function export:OnEnter_box_SecurityCamController_12()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = self.GamerGap_Camera
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldactivities\\IOP\\iop02.domino|@IOP02_Main|1653739186"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_12_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_12_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Multiple_AND_15()
end
function export:OnEnter_box_Hackable_Controller_24()
  local l0
  l0 = self.box_Hackable_Controller_24
  l0.HackableEntity = "9223372049768290537"
end
function export:OnEnter_box_Hackable_Monitor_111()
  local l0
  l0 = self.box_Hackable_Monitor_111
  l0.HackableEntity = "9223372049768290537"
  l0.AutoDisable = 1
end
_compilerVersion = 4
