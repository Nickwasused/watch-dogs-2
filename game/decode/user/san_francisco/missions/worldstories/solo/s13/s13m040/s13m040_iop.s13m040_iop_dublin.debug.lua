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
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IOPPropMonitor.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/3036195927.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3877280754.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3855211162.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1133574819.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3297307015.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2229907720.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1868746992.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3124046932.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/772214752.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S13M040_IOP_Dublin"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.PasswordStolen = 0
  self.CamerasHTP1 = {}
  self.Characters = {}
  self.NPCRoles = {
    "HackThePlanet1.Engineer",
    "HackThePlanet1.Supervisor"
  }
  self.Supervisor = nil
  self.Engineer = nil
  self.Test = ""
  self.Staff1 = nil
  self.HTP3Cameras = {}
  self.Emir = nil
  self.Tech2 = nil
  self.Tech1 = nil
  self.ComputerHackFail = 0
  self.Hackables = {}
  self.Prop = nil
  self.box_CLOController_77 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_77
  l0._graph = self
  l0._name = "box_CLOController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|31426088"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_77_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_ListWriter_49 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_49
  l0._graph = self
  l0._name = "box_ListWriter_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|141136555"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_49_Added
  l0.Removed = self.f_box_ListWriter_49_Removed
  l0.Out = self.f_box_ListWriter_49_Out
  self.box_RewardController_v3_70 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_70
  l0._graph = self
  l0._name = "box_RewardController_v3_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|166416167"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_SetBoolean_v2_10 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_10
  l0._graph = self
  l0._name = "box_SetBoolean_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|195223605"
  l0.Out = self.f_box_SetBoolean_v2_10_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_10_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_10_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_10_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_10_SetFromBool
  self.box_AI_IOPController_25 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_25
  l0._graph = self
  l0._name = "box_AI_IOPController_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|196757860"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_25_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_85 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_85
  l0._graph = self
  l0._name = "box_HackableController_v2_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|255991175"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_85_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_2 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_2
  l0._graph = self
  l0._name = "box_PlaySound_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|259596625"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_2_Started
  l0.Finished = DummyFunction
  self.box_CinematicPrep_56 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_56
  l0._graph = self
  l0._name = "box_CinematicPrep_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|282985810"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_56_PostOut
  self.box_ListWriter_15 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_15
  l0._graph = self
  l0._name = "box_ListWriter_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|295930711"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_15_Added
  l0.Removed = self.f_box_ListWriter_15_Removed
  l0.Out = self.f_box_ListWriter_15_Out
  self.box_SetBoolean_v2_8 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|340813441"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
  self.box_MissionMessageController_v3_65 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_65
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|355741567"
  l0.Out = self.f_box_MissionMessageController_v3_65_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_71 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_71
  l0._graph = self
  l0._name = "box_PlaySound_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|382253298"
  l0.Out = self.f_box_PlaySound_v2_71_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_51 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_51
  l0._graph = self
  l0._name = "box_Timer_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|394034375"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_51_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_62 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_62
  l0._graph = self
  l0._name = "box_AI_IOPController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|553994975"
  l0.Out = self.f_box_AI_IOPController_62_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_54 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_54
  l0._graph = self
  l0._name = "box_HackableController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|601637292"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_54_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_58 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_58
  l0._graph = self
  l0._name = "box_AI_IOPController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|602838888"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_58_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_AI_IOPController_9 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_9
  l0._graph = self
  l0._name = "box_AI_IOPController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|674517081"
  l0.Out = self.f_box_AI_IOPController_9_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_9_IOPKickOutComplete
  self.box_RewardController_v3_82 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_82
  l0._graph = self
  l0._name = "box_RewardController_v3_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|687294846"
  l0.Out = self.f_box_RewardController_v3_82_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Hackable_Monitor_22 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_22
  l0._graph = self
  l0._name = "box_Hackable_Monitor_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|787848507"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_22_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_59 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_59
  l0._graph = self
  l0._name = "box_Hackable_Monitor_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|795322747"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_59_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Hackable_Monitor_60 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_60
  l0._graph = self
  l0._name = "box_Hackable_Monitor_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|883331383"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_60_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_76 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_76
  l0._graph = self
  l0._name = "box_CLOController_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|896956228"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_76_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Monitor_20 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_20
  l0._graph = self
  l0._name = "box_Hackable_Monitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|908693989"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_20_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_27 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_27
  l0._graph = self
  l0._name = "box_Timer_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|940420096"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_7 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_7
  l0._graph = self
  l0._name = "box_PlaySound_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|943659255"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_69 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_69
  l0._graph = self
  l0._name = "box_AI_IOPController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|950510221"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_84 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_84
  l0._graph = self
  l0._name = "box_HackableController_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|962155020"
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
  self.box_Timer_v2_23 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_23
  l0._graph = self
  l0._name = "box_Timer_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|970615867"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_23_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_31 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_31
  l0._graph = self
  l0._name = "box_PlaySound_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|979503003"
  l0.Out = self.f_box_PlaySound_v2_31_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_IOPPropMonitor_53 = cbox:CreateBox("domino/System/IOPPropMonitor.lua")
  l0 = self.box_IOPPropMonitor_53
  l0._graph = self
  l0._name = "box_IOPPropMonitor_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1020668724"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropSpawned = self.f_box_IOPPropMonitor_53_PropSpawned
  self.box_HackableController_v2_44 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_44
  l0._graph = self
  l0._name = "box_HackableController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1061873832"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_44_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_75 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_75
  l0._graph = self
  l0._name = "box_CLOController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1167039504"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_75_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1187093506"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_12 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_12
  l0._graph = self
  l0._name = "box_HackableController_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1211689341"
  l0.Enabled = self.f_box_HackableController_v2_12_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_ListWriter_21 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_21
  l0._graph = self
  l0._name = "box_ListWriter_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1254032176"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_21_Added
  l0.Removed = self.f_box_ListWriter_21_Removed
  l0.Out = self.f_box_ListWriter_21_Out
  self.box_PhoneCommunicationMonitor_57 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_57
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1261510362"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PhoneCommunicationMonitor_57_Disabled
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_57_OnCommunicationFinished
  self.box_Timer_v2_79 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_79
  l0._graph = self
  l0._name = "box_Timer_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1263476145"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_79_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_34 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_34
  l0._graph = self
  l0._name = "box_HackableController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1354416340"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_34_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_78 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_78
  l0._graph = self
  l0._name = "box_AI_IOPController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1355966466"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = self.f_box_AI_IOPController_78_EndForced
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_72 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_72
  l0._graph = self
  l0._name = "box_PlaySound_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1369861254"
  l0.Out = self.f_box_PlaySound_v2_72_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_66 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_66
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1408026479"
  l0.Out = self.f_box_MissionMessageController_v3_66_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_83 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_83
  l0._graph = self
  l0._name = "box_HackableController_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1455057371"
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
  self.box_AI_IOPController_5 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_5
  l0._graph = self
  l0._name = "box_AI_IOPController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1478979012"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_5_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_48 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_48
  l0._graph = self
  l0._name = "box_PlaySound_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1496271510"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_38 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_38
  l0._graph = self
  l0._name = "box_PlaySound_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1548119191"
  l0.Out = self.f_box_PlaySound_v2_38_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_81 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_81
  l0._graph = self
  l0._name = "box_Timer_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1554531438"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_81_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_74 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_74
  l0._graph = self
  l0._name = "box_CLOController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1631895271"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_74_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_16 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_16
  l0._graph = self
  l0._name = "box_CLOController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1641001254"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_16_OnUserInPlace
  self.box_PlaySound_v2_19 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_19
  l0._graph = self
  l0._name = "box_PlaySound_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1709940904"
  l0.Out = self.f_box_PlaySound_v2_19_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_24 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_24
  l0._graph = self
  l0._name = "box_Hackable_Monitor_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1763204286"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_24_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CLOController_3 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1772001432"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_PlaySound_v2_61 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_61
  l0._graph = self
  l0._name = "box_PlaySound_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1782376892"
  l0.Out = self.f_box_PlaySound_v2_61_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Multiple_AND_55 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_55
  l0._graph = self
  l0._name = "box_Multiple_AND_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1835693248"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_55_Out
  self.box_HackableController_v2_50 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_50
  l0._graph = self
  l0._name = "box_HackableController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1841111232"
  l0.Enabled = self.f_box_HackableController_v2_50_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_RewardController_v3_63 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_63
  l0._graph = self
  l0._name = "box_RewardController_v3_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1883035895"
  l0.Out = self.f_box_RewardController_v3_63_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Timer_v2_67 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_67
  l0._graph = self
  l0._name = "box_Timer_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1934284566"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_67_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2062030693"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_17_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_46 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_46
  l0._graph = self
  l0._name = "box_PlaySound_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2079281704"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Multiple_AND_80 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_80
  l0._graph = self
  l0._name = "box_Multiple_AND_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2112684440"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = DummyFunction
  self.box_PlaySound_v2_4 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_4
  l0._graph = self
  l0._name = "box_PlaySound_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2128903319"
  l0.Out = self.f_box_PlaySound_v2_4_Out
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
function export:In()
  local l0
  DrawTextToScreen("Comment: Starting DublinIOP", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Get Player ID')-- Comment: Starting DublinIOP")
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|660568553"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|85435733", "85435733", "S13M040_IOP_Dublin", "In", "box_Get_Player_ID_6.In", self, l0)
  l0:In()
end
function export:f_box_CLOController_77_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_80()
  l0 = self.box_CLOController_77
  l1 = self.box_Multiple_AND_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1658641804", "1658641804", "S13M040_IOP_Dublin", "box_CLOController_77.Deactivated", "box_Multiple_AND_80.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_ListWriter_49_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.Hackables = l0.Target
end
function export:f_box_ListWriter_49_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.Hackables = l0.Target
end
function export:f_box_ListWriter_49_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_49
  self.Hackables = l0.Target
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_20
  l0.HackableEntity = "9223372047710334649"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|416489016", "416489016", "S13M040_IOP_Dublin", "box_Ordered_Output_11.Out", "box_Hackable_Monitor_20.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_22
  l0.HackableEntity = "9223372047710334655"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1222761848", "1222761848", "S13M040_IOP_Dublin", "box_Ordered_Output_11.Out", "box_Hackable_Monitor_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_24
  l0.HackableEntity = "9223372047710334653"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1183452012", "1183452012", "S13M040_IOP_Dublin", "box_Ordered_Output_11.Out", "box_Hackable_Monitor_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_59
  l0.HackableEntity = "9223372056074991414"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1499529031", "1499529031", "S13M040_IOP_Dublin", "box_Ordered_Output_11.Out", "box_Hackable_Monitor_59.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_11_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_60
  l0.HackableEntity = "9223372056074991416"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|715958409", "715958409", "S13M040_IOP_Dublin", "box_Ordered_Output_11.Out", "box_Hackable_Monitor_60.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetBoolean_v2_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.PasswordStolen = l0.Target
  l0 = self.box_HackableController_v2_34
  l0.HackableEntity = "9223372047710334653"
  l0 = self.box_SetBoolean_v2_10
  l1 = self.box_HackableController_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|100726001", "100726001", "S13M040_IOP_Dublin", "box_SetBoolean_v2_10.Out", "box_HackableController_v2_34.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_SetBoolean_v2_10_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.PasswordStolen = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.PasswordStolen = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.PasswordStolen = l0.Target
end
function export:f_box_SetBoolean_v2_10_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self.PasswordStolen = l0.Target
end
function export:f_box_AI_IOPController_25_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_23
  l0.Seconds = 24
  l0 = self.box_AI_IOPController_25
  l1 = self.box_Timer_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|873720648", "873720648", "S13M040_IOP_Dublin", "box_AI_IOPController_25.SendEventCompleted", "box_Timer_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_62
  l0.ChatLineNum = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|647956575", "647956575", "S13M040_IOP_Dublin", "box_Ordered_Output_14.Out", "box_AI_IOPController_62.TriggerChatLine", clone, l0)
  l0:TriggerChatLine()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_7
  l0.SoundId = "soundbinary/3855211162.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|834210737", "834210737", "S13M040_IOP_Dublin", "box_Ordered_Output_14.Out", "box_PlaySound_v2_7.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_30_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPPropMonitor_53()
  l0 = self.box_IOPPropMonitor_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2006271715", "2006271715", "S13M040_IOP_Dublin", "box_Ordered_Output_30.Out", "box_IOPPropMonitor_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Engineer
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|686705358"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_box_CollisionController_32_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|346830154", "346830154", "S13M040_IOP_Dublin", "box_Ordered_Output_30.Out", "box_CollisionController_32.DisableCollisions", clone, l0)
  l0:DisableCollisions()
end
function export:f_box_HackableController_v2_85_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_9
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_HackableController_v2_85
  l1 = self.box_AI_IOPController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|531212046", "531212046", "S13M040_IOP_Dublin", "box_HackableController_v2_85.Disabled", "box_AI_IOPController_9.TriggerIOPDisconnectScreenAndKickOut", l0, l1)
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_PlaySound_v2_2_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1581677937"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0.Out[2] = DummyFunction
  l0.Out[3] = self.f_box_Ordered_Output_13_Out_3
  l0 = self.box_PlaySound_v2_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|507630835", "507630835", "S13M040_IOP_Dublin", "box_PlaySound_v2_2.Started", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_56_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_65
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective020",
    item = "Objective",
    id = "560730"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_CinematicPrep_56
  l1 = self.box_MissionMessageController_v3_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|563108876", "563108876", "S13M040_IOP_Dublin", "box_CinematicPrep_56.PostOut", "box_MissionMessageController_v3_65.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_ListWriter_15_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_15
  self.CamerasHTP1 = l0.Target
end
function export:f_box_ListWriter_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_15
  self.CamerasHTP1 = l0.Target
  l0 = self.box_ListWriter_49
  l0.Input = self.Hackables
  l0.Data[0] = "9223372047710334649"
  l0.Data[1] = "9223372056074991414"
  l0.Data[2] = "9223372056074991416"
  l0 = self.box_ListWriter_15
  l1 = self.box_ListWriter_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|603846868", "603846868", "S13M040_IOP_Dublin", "box_ListWriter_15.Out", "box_ListWriter_49.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_15_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_15
  self.CamerasHTP1 = l0.Target
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.PasswordStolen = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.PasswordStolen = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.PasswordStolen = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.PasswordStolen = l0.Target
  l0 = self.box_RewardController_v3_70
  l0.ItemDB = "Items.9223372055848075278"
  l0 = self.box_SetBoolean_v2_8
  l1 = self.box_RewardController_v3_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|768891799", "768891799", "S13M040_IOP_Dublin", "box_SetBoolean_v2_8.SetTrue", "box_RewardController_v3_70.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.PasswordStolen = l0.Target
end
function export:f_box_MissionMessageController_v3_65_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PhoneCommunicationMonitor_57()
  l0 = self.box_MissionMessageController_v3_65
  l1 = self.box_PhoneCommunicationMonitor_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|486607076", "486607076", "S13M040_IOP_Dublin", "box_MissionMessageController_v3_65.Out", "box_PhoneCommunicationMonitor_57.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySound_v2_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_72
  l0.Entity = "9223372060518248888"
  l0.SoundId = "soundbinary/3877280754.bnk"
  l0 = self.box_PlaySound_v2_71
  l1 = self.box_PlaySound_v2_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1281942751", "1281942751", "S13M040_IOP_Dublin", "box_PlaySound_v2_71.Out", "box_PlaySound_v2_72.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_51_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_1()
  l0 = self.box_Timer_v2_51
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|300793993", "300793993", "S13M040_IOP_Dublin", "box_Timer_v2_51.TimeElapsed", "box_SecurityCamController_1.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_AI_IOPController_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_68
  l0.Seconds = 9
  l0 = self.box_AI_IOPController_62
  l1 = self.box_Timer_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1575597375", "1575597375", "S13M040_IOP_Dublin", "box_AI_IOPController_62.Out", "box_Timer_v2_68.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_54_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053490873270"
  l0 = self.box_HackableController_v2_54
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|830910784", "830910784", "S13M040_IOP_Dublin", "box_HackableController_v2_54.Disabled", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_AI_IOPController_58_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_50
  l0.HackableEntityList = self.Hackables
  l0 = self.box_AI_IOPController_58
  l1 = self.box_HackableController_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|327556945", "327556945", "S13M040_IOP_Dublin", "box_AI_IOPController_58.SendEventCompleted", "box_HackableController_v2_50.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_2
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1393263361", "1393263361", "S13M040_IOP_Dublin", "box_Get_Player_ID_6.Out", "box_PlaySound_v2_2.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_9_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_78
  l0.IopID = "HackThePlanet1"
  l0 = self.box_AI_IOPController_9
  l1 = self.box_AI_IOPController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2064962777", "2064962777", "S13M040_IOP_Dublin", "box_AI_IOPController_9.IOPKickOutComplete", "box_AI_IOPController_78.ForceEnd", l0, l1)
  l1:ForceEnd()
end
function export:f_box_AI_IOPController_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_38
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/3124046932.bnk"
  l0 = self.box_AI_IOPController_9
  l1 = self.box_PlaySound_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1052079693", "1052079693", "S13M040_IOP_Dublin", "box_AI_IOPController_9.Out", "box_PlaySound_v2_38.Play", l0, l1)
  l1:Play()
end
function export:f_box_CollisionController_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_55()
  l0 = self.box_Multiple_AND_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1535291468", "1535291468", "S13M040_IOP_Dublin", "box_CollisionController_32.Out", "box_Multiple_AND_55.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_RewardController_v3_82_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_83
  l0.HackableEntity = "9223372056074991416"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_RewardController_v3_82
  l1 = self.box_HackableController_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1235238448", "1235238448", "S13M040_IOP_Dublin", "box_RewardController_v3_82.Out", "box_HackableController_v2_83.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CollisionController_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_55()
  l0 = self.box_Multiple_AND_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1471148169", "1471148169", "S13M040_IOP_Dublin", "box_CollisionController_33.Out", "box_Multiple_AND_55.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Hackable_Monitor_22_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_54
  l0.HackableEntity = "9223372047710334655"
  l0 = self.box_Hackable_Monitor_22
  l1 = self.box_HackableController_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|466909565", "466909565", "S13M040_IOP_Dublin", "box_Hackable_Monitor_22.HackSuccess", "box_HackableController_v2_54.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Hackable_Monitor_59_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_63
  l0.ItemDB = "Items.9223372059263899072"
  l0 = self.box_Hackable_Monitor_59
  l1 = self.box_RewardController_v3_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1254826421", "1254826421", "S13M040_IOP_Dublin", "box_Hackable_Monitor_59.HackSuccess", "box_RewardController_v3_63.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_Bind_v2_52_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_IOPPropMonitor_53()
  l0 = self.box_IOPPropMonitor_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|356603356", "356603356", "S13M040_IOP_Dublin", "box_Bind_v2_52.Bound", "box_IOPPropMonitor_53.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Hackable_Monitor_60_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_4
  l0.SoundId = "soundbinary/3855211162.bnk"
  l0 = self.box_Hackable_Monitor_60
  l1 = self.box_PlaySound_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|368028540", "368028540", "S13M040_IOP_Dublin", "box_Hackable_Monitor_60.HackSuccess", "box_PlaySound_v2_4.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_76_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_77
  l0.CLO = "9223372047710334656"
  l0 = self.box_CLOController_76
  l1 = self.box_CLOController_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|336714993", "336714993", "S13M040_IOP_Dublin", "box_CLOController_76.UnspawnedUser", "box_CLOController_77.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_73_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_74
  l0.User = self.Engineer
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|201113245", "201113245", "S13M040_IOP_Dublin", "box_Ordered_Output_73.Out", "box_CLOController_74.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_73_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_76
  l0.User = self.Supervisor
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|270598218", "270598218", "S13M040_IOP_Dublin", "box_Ordered_Output_73.Out", "box_CLOController_76.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Hackable_Monitor_20_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_31
  l0.Entity = "9223372048824442512"
  l0.SoundId = "soundbinary/3036195927.bnk"
  l0 = self.box_Hackable_Monitor_20
  l1 = self.box_PlaySound_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1802574958", "1802574958", "S13M040_IOP_Dublin", "box_Hackable_Monitor_20.HackSuccess", "box_PlaySound_v2_31.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_27_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_81
  l0.Seconds = 0.5
  l0 = self.box_Timer_v2_27
  l1 = self.box_Timer_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|670013634", "670013634", "S13M040_IOP_Dublin", "box_Timer_v2_27.TimeElapsed", "box_Timer_v2_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_23_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1172108214"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_35_Out_2
  l0 = self.box_Timer_v2_23
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1636096668", "1636096668", "S13M040_IOP_Dublin", "box_Timer_v2_23.TimeElapsed", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_31_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_25
  l0.IopID = "HackThePlanet1"
  l0.IopEvent = "HackThePlanet1.Hack1"
  l0 = self.box_PlaySound_v2_31
  l1 = self.box_AI_IOPController_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1403633467", "1403633467", "S13M040_IOP_Dublin", "box_PlaySound_v2_31.Out", "box_AI_IOPController_25.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_IOPPropMonitor_53_PropSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_IOPPropMonitor_53
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l1.Parent = l0.PropEntity
  l1.Child = "9223372047710334653"
  l1.BoneName = nil
  l1.BoneNameStr = "cell_phone_01"
  l1.RemoveOffset = nil
  l1._graph = self
  l1._name = "box_Bind_v2_52"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|807548721"
  l1.Bound = self.f_box_Bind_v2_52_Bound
  l1.UnBound = DummyFunction
  l1.Out = DummyFunction
  l0 = self.box_IOPPropMonitor_53
  l1 = Boxes[PathID("domino/System/Bind_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1325315642", "1325315642", "S13M040_IOP_Dublin", "box_IOPPropMonitor_53.PropSpawned", "box_Bind_v2_52.Bind", l0, l1)
  l1:Bind()
end
function export:f_box_HackableController_v2_44_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_44
  l1 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|652499858", "652499858", "S13M040_IOP_Dublin", "box_HackableController_v2_44.Disabled", "box_SetBoolean_v2_8.True", l0, l1)
  l1:True()
end
function export:f_box_CLOController_75_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_80()
  l0 = self.box_CLOController_75
  l1 = self.box_Multiple_AND_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1570643112", "1570643112", "S13M040_IOP_Dublin", "box_CLOController_75.Deactivated", "box_Multiple_AND_80.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_12()
  l0 = self.box_HackableController_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|913532264", "913532264", "S13M040_IOP_Dublin", "box_Ordered_Output_35.Out", "box_HackableController_v2_12.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_12()
  l0 = self.box_HackableController_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1553254488", "1553254488", "S13M040_IOP_Dublin", "box_Ordered_Output_35.Out", "box_HackableController_v2_12.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_Ordered_Output_35_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_46
  l0.Entity = "9223372048824442512"
  l0.SoundId = "soundbinary/1868746992.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|42533648", "42533648", "S13M040_IOP_Dublin", "box_Ordered_Output_35.Out", "box_PlaySound_v2_46.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_69
  l0.ChatLineNum = 0
  l0 = self.box_Timer_v2_68
  l1 = self.box_AI_IOPController_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|689498013", "689498013", "S13M040_IOP_Dublin", "box_Timer_v2_68.TimeElapsed", "box_AI_IOPController_69.HideChat", l0, l1)
  l1:HideChat()
end
function export:f_box_HackableController_v2_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_84
  l0.HackableEntity = self.Engineer
  l0 = self.box_HackableController_v2_12
  l1 = self.box_HackableController_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1017556968", "1017556968", "S13M040_IOP_Dublin", "box_HackableController_v2_12.Enabled", "box_HackableController_v2_84.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_ListWriter_21_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_21
  self.Characters = l0.Target
  l0 = self.box_AI_IOPController_5
  l0.IopID = "HackThePlanet1"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.Characters
  l0.IopRoleList = self.NPCRoles
  l0 = self.box_ListWriter_21
  l1 = self.box_AI_IOPController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|96848347", "96848347", "S13M040_IOP_Dublin", "box_ListWriter_21.Added", "box_AI_IOPController_5.Start", l0, l1)
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
function export:f_box_PhoneCommunicationMonitor_57_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_58
  l0.IopID = "HackThePlanet1"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationMonitor_57
  l1 = self.box_AI_IOPController_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1903991887", "1903991887", "S13M040_IOP_Dublin", "box_PhoneCommunicationMonitor_57.Disabled", "box_AI_IOPController_58.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PhoneCommunicationMonitor_57_OnCommunicationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_PhoneCommunicationMonitor_57()
  l0 = self.box_PhoneCommunicationMonitor_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1548654247", "1548654247", "S13M040_IOP_Dublin", "box_PhoneCommunicationMonitor_57.OnCommunicationFinished", "box_PhoneCommunicationMonitor_57.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_79_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_56
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_79
  l1 = self.box_CinematicPrep_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1300159782", "1300159782", "S13M040_IOP_Dublin", "box_Timer_v2_79.TimeElapsed", "box_CinematicPrep_56.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_HackableController_v2_34_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_19
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/1133574819.bnk"
  l0 = self.box_HackableController_v2_34
  l1 = self.box_PlaySound_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2034007316", "2034007316", "S13M040_IOP_Dublin", "box_HackableController_v2_34.ProfilingDisabled", "box_PlaySound_v2_19.Play", l0, l1)
  l1:Play()
end
function export:f_box_AI_IOPController_78_EndForced()
  local l0
  self = self._graph
  l0 = self.box_AI_IOPController_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1063216546", "1063216546", "S13M040_IOP_Dublin", "box_AI_IOPController_78.EndForced", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySound_v2_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|906208105"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_73_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_73_Out_1
  l0 = self.box_PlaySound_v2_72
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1276701061", "1276701061", "S13M040_IOP_Dublin", "box_PlaySound_v2_72.Out", "box_Ordered_Output_73.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_66_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_27
  l0.Seconds = 2.5
  l0 = self.box_MissionMessageController_v3_66
  l1 = self.box_Timer_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|844089238", "844089238", "S13M040_IOP_Dublin", "box_MissionMessageController_v3_66.Out", "box_Timer_v2_27.Start", l0, l1)
  l1:Start()
end
function export:f_box_AI_IOPController_5_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_51
  l0.Seconds = 0.5
  l0 = self.box_AI_IOPController_5
  l1 = self.box_Timer_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1614989568", "1614989568", "S13M040_IOP_Dublin", "box_AI_IOPController_5.StartCompleted", "box_Timer_v2_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_71
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/2229907720.bnk"
  l0 = self.box_PlaySound_v2_38
  l1 = self.box_PlaySound_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|2099310121", "2099310121", "S13M040_IOP_Dublin", "box_PlaySound_v2_38.Out", "box_PlaySound_v2_71.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_81_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_85
  l0.HackableEntityList = self.CamerasHTP1
  l0 = self.box_Timer_v2_81
  l1 = self.box_HackableController_v2_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1470864113", "1470864113", "S13M040_IOP_Dublin", "box_Timer_v2_81.TimeElapsed", "box_HackableController_v2_85.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1975662665"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1953331613", "1953331613", "S13M040_IOP_Dublin", "box_Ordered_Output_13.Out", "box_Ordered_Output_18.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1830712670", "1830712670", "S13M040_IOP_Dublin", "box_Ordered_Output_13.Out", "box_SetBoolean_v2_10.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_13_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_15
  l0.Input = self.CamerasHTP1
  l0.Data[0] = "9223372047710334661"
  l0.Data[1] = "9223372047710334659"
  l0.Data[2] = "9223372047710334651"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|257357515", "257357515", "S13M040_IOP_Dublin", "box_Ordered_Output_13.Out", "box_ListWriter_15.Add", clone, l0)
  l0:Add()
end
function export:f_box_CLOController_74_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_75
  l0.CLO = "9223372047710334657"
  l0 = self.box_CLOController_74
  l1 = self.box_CLOController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|914272488", "914272488", "S13M040_IOP_Dublin", "box_CLOController_74.UnspawnedUser", "box_CLOController_75.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_CLOController_16_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_16
  self.Engineer = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|252798782"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_30_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_30_Out_1
  l0 = self.box_CLOController_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|899737598", "899737598", "S13M040_IOP_Dublin", "box_CLOController_16.OnUserInPlace", "box_Ordered_Output_30.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_1_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_79
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1574589663", "1574589663", "S13M040_IOP_Dublin", "box_SecurityCamController_1.CanExitSet", "box_Timer_v2_79.Start", clone, l0)
  l0:Start()
end
function export:f_box_SecurityCamController_1_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_1()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1272661792", "1272661792", "S13M040_IOP_Dublin", "box_SecurityCamController_1.EnterForced", "box_SecurityCamController_1.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_PlaySound_v2_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_61
  l0.Entity = "9223372060092560189"
  l0.SoundId = "soundbinary/772214752.bnk"
  l0 = self.box_PlaySound_v2_19
  l1 = self.box_PlaySound_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1432538984", "1432538984", "S13M040_IOP_Dublin", "box_PlaySound_v2_19.Out", "box_PlaySound_v2_61.Play", l0, l1)
  l1:Play()
end
function export:f_box_Hackable_Monitor_24_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_44
  l0.HackableEntity = "9223372047710334653"
  l0 = self.box_Hackable_Monitor_24
  l1 = self.box_HackableController_v2_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|947500230", "947500230", "S13M040_IOP_Dublin", "box_Hackable_Monitor_24.HackSuccess", "box_HackableController_v2_44.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  self.Supervisor = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Supervisor
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|720834507"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = DummyFunction
  l0.Out = self.f_box_CollisionController_33_Out
  l0 = self.box_CLOController_3
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|405925959", "405925959", "S13M040_IOP_Dublin", "box_CLOController_3.OnUserInPlace", "box_CollisionController_33.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_PlaySound_v2_61_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_48
  l0.Entity = "9223372060518248888"
  l0.SoundId = "soundbinary/3297307015.bnk"
  l0 = self.box_PlaySound_v2_61
  l1 = self.box_PlaySound_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|923584587", "923584587", "S13M040_IOP_Dublin", "box_PlaySound_v2_61.Out", "box_PlaySound_v2_48.Play", l0, l1)
  l1:Play()
end
function export:f_box_Multiple_AND_55_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_21
  l0.Input = self.Characters
  l0.Data[0] = self.Engineer
  l0.Data[1] = self.Supervisor
  l0 = self.box_Multiple_AND_55
  l1 = self.box_ListWriter_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|348190097", "348190097", "S13M040_IOP_Dublin", "box_Multiple_AND_55.Out", "box_ListWriter_21.Add", l0, l1)
  l1:Add()
end
function export:f_box_HackableController_v2_50_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|172777906"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_11_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_11_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_11_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_11_Out_4
  l0 = self.box_HackableController_v2_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|860660799", "860660799", "S13M040_IOP_Dublin", "box_HackableController_v2_50.Enabled", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_RewardController_v3_63_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_67
  l0.Seconds = 1
  l0 = self.box_RewardController_v3_63
  l1 = self.box_Timer_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1891738968", "1891738968", "S13M040_IOP_Dublin", "box_RewardController_v3_63.Out", "box_Timer_v2_67.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_67_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|228800538"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_Timer_v2_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|904398409", "904398409", "S13M040_IOP_Dublin", "box_Timer_v2_67.TimeElapsed", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_16
  l0.CLO = "9223372047710334657"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|865828206", "865828206", "S13M040_IOP_Dublin", "box_Ordered_Output_18.Out", "box_CLOController_16.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_3
  l0.CLO = "9223372047710334656"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|643101787", "643101787", "S13M040_IOP_Dublin", "box_Ordered_Output_18.Out", "box_CLOController_3.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_PhoneCommunicationController_17_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_66
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective020",
    item = "Objective",
    id = "560730"
  }
  l0 = self.box_PhoneCommunicationController_17
  l1 = self.box_MissionMessageController_v3_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1017449461", "1017449461", "S13M040_IOP_Dublin", "box_PhoneCommunicationController_17.OnCommunicationFinished", "box_MissionMessageController_v3_66.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_PlaySound_v2_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_82
  l0.ItemDB = "Items.9223372059251142461"
  l0 = self.box_PlaySound_v2_4
  l1 = self.box_RewardController_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1074184988", "1074184988", "S13M040_IOP_Dublin", "box_PlaySound_v2_4.Out", "box_RewardController_v3_82.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:OnEnter_box_IOPPropMonitor_53()
  local l0
  l0 = self.box_IOPPropMonitor_53
  l0.PropName = "cell_phone_01"
end
function export:OnEnter_box_HackableController_v2_12()
  local l0
  l0 = self.box_HackableController_v2_12
  l0.HackableEntity = "9223372047710334653"
end
function export:OnEnter_box_PhoneCommunicationMonitor_57()
  local l0
  l0 = self.box_PhoneCommunicationMonitor_57
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406437033"
end
function export:OnEnter_box_SecurityCamController_1()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372047710334661"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dublin|1651246065"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_1_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_1_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_Multiple_AND_55()
end
function export:OnEnter_box_Multiple_AND_80()
end
function export:Out()
end
_compilerVersion = 4
