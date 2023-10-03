export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/IOPMonitor.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/1021832914.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3941287164.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2588220429.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1486376828.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2015546268.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3243455811.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1662334353.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2036382555.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/109187882.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2215789654.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2310409825.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3433851277.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1627298849.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4082231780.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S13M040_IOP_Seoul"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul"
  self.Out = DummyFunction
  self.Green1and2 = {}
  self.Red1and2 = {}
  self.GreenLines = {}
  self.PlayerEntity = nil
  self.Worker3 = nil
  self._6Hacked = 0
  self.NumberOfPanels = 0
  self._1Hacked = 0
  self.Red3and4 = {}
  self.Green3and4 = {}
  self.Worker2 = nil
  self.Worker1 = nil
  self.CamerasHTP2 = {}
  self._5Hacked = 0
  self._3Hacked = 0
  self.RedLines = {}
  self._4Hacked = 0
  self._2Hacked = 0
  self.HackThePlanet2_Characters = {}
  self.NPCRolesHTP2 = {
    "HackThePlanet2.SeoJun",
    "HackThePlanet2.MaleTech",
    "HackThePlanet2.JiHoon",
    "HackThePlanet2.FemaleTech"
  }
  self.Worker4 = nil
  self.GoodBranchesHacked = 0
  self.FalseBranchesHacked = 0
  self.FalseBranchesHack = {}
  self.GoodBranches = {}
  self.AllLineHacks = {}
  self.AllHacks = {}
  self.RedLights = {
    "9223372057781263622",
    "9223372057781263633"
  }
  self.GoodBranchesHackInt = 0
  self.Extra1 = nil
  self.Extra2 = nil
  self.box_SetBoolean_v2_119 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_119
  l0._graph = self
  l0._name = "box_SetBoolean_v2_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|7795703"
  l0.Out = self.f_box_SetBoolean_v2_119_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_119_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_119_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_119_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_119_SetFromBool
  self.box_Hackable_Monitor_100 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_100
  l0._graph = self
  l0._name = "box_Hackable_Monitor_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|38174694"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_100_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_100_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_180 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_180
  l0._graph = self
  l0._name = "box_HackableController_v2_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|52254115"
  l0.Enabled = self.f_box_HackableController_v2_180_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_LogicGate_v2_245 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_245
  l0._graph = self
  l0._name = "box_LogicGate_v2_245"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|52451725"
  l0.Out = self.f_box_LogicGate_v2_245_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_HackableController_v2_21 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_21
  l0._graph = self
  l0._name = "box_HackableController_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|59333190"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_21_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_204 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_204
  l0._graph = self
  l0._name = "box_PlaySound_v2_204"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|82565476"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_129 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_129
  l0._graph = self
  l0._name = "box_Timer_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|101698650"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_129_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_4 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_4
  l0._graph = self
  l0._name = "box_Hackable_Monitor_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|110504226"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_4_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_4_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_242 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_242
  l0._graph = self
  l0._name = "box_PlaySound_v2_242"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|117570517"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_47 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_47
  l0._graph = self
  l0._name = "box_CLOController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|134718484"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_47_OnUserInPlace
  self.box_Hackable_Monitor_80 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_80
  l0._graph = self
  l0._name = "box_Hackable_Monitor_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|136776649"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_80_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_80_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CinematicPrep_182 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_182
  l0._graph = self
  l0._name = "box_CinematicPrep_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|137244346"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_182_PostOut
  self.box_OnceOnly_v3_5 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_5
  l0._graph = self
  l0._name = "box_OnceOnly_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|137628588"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_5_Out
  l0.ResetOut = DummyFunction
  self.box_Multiple_AND_184 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_184
  l0._graph = self
  l0._name = "box_Multiple_AND_184"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|144346078"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_184_Out
  self.box_ListWriter_128 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_128
  l0._graph = self
  l0._name = "box_ListWriter_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|165692543"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_128_Added
  l0.Removed = self.f_box_ListWriter_128_Removed
  l0.Out = self.f_box_ListWriter_128_Out
  self.box_AI_IOPController_49 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_49
  l0._graph = self
  l0._name = "box_AI_IOPController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|184193460"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_49_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_OnceOnly_v3_133 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_133
  l0._graph = self
  l0._name = "box_OnceOnly_v3_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|196360135"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_133_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_218 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_218
  l0._graph = self
  l0._name = "box_CLOController_218"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|197033448"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|200770456"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_29 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_29
  l0._graph = self
  l0._name = "box_CLOController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|215927157"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_29_OnUserInPlace
  self.box_SetBoolean_v2_48 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_48
  l0._graph = self
  l0._name = "box_SetBoolean_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|217441966"
  l0.Out = self.f_box_SetBoolean_v2_48_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_48_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_48_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_48_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_48_SetFromBool
  self.box_ListWriter_32 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_32
  l0._graph = self
  l0._name = "box_ListWriter_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|267399740"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_32_Added
  l0.Removed = self.f_box_ListWriter_32_Removed
  l0.Out = self.f_box_ListWriter_32_Out
  self.box_Hackable_Monitor_3 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_3
  l0._graph = self
  l0._name = "box_Hackable_Monitor_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|297121292"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_3_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_3_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_197 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_197
  l0._graph = self
  l0._name = "box_PlaySound_v2_197"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|298981748"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_14 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_14
  l0._graph = self
  l0._name = "box_Hackable_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|308133662"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_14_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_14_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_243 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_243
  l0._graph = self
  l0._name = "box_PlaySound_v2_243"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|312699036"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_92 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_92
  l0._graph = self
  l0._name = "box_Timer_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|313450776"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_92_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_134 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_134
  l0._graph = self
  l0._name = "box_OnceOnly_v3_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|368848493"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_134_Out
  l0.ResetOut = DummyFunction
  self.box_Timer_v2_189 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_189
  l0._graph = self
  l0._name = "box_Timer_v2_189"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|378410164"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_189_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_22 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_22
  l0._graph = self
  l0._name = "box_SetBoolean_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|392830602"
  l0.Out = self.f_box_SetBoolean_v2_22_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_22_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_22_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_22_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_22_SetFromBool
  self.box_SetBoolean_v2_83 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_83
  l0._graph = self
  l0._name = "box_SetBoolean_v2_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|401096002"
  l0.Out = self.f_box_SetBoolean_v2_83_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_83_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_83_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_83_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_83_SetFromBool
  self.box_SetBoolean_v2_89 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_89
  l0._graph = self
  l0._name = "box_SetBoolean_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|401829021"
  l0.Out = self.f_box_SetBoolean_v2_89_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_89_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_89_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_89_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_89_SetFromBool
  self.box_Hackable_Monitor_192 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_192
  l0._graph = self
  l0._name = "box_Hackable_Monitor_192"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|426949366"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_192_HackedOn
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_153 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_153
  l0._graph = self
  l0._name = "box_Timer_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|436418470"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_153_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_140 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_140
  l0._graph = self
  l0._name = "box_PlaySound_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|485826794"
  l0.Out = self.f_box_PlaySound_v2_140_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_216 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_216
  l0._graph = self
  l0._name = "box_CLOController_216"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|516106890"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_163 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_163
  l0._graph = self
  l0._name = "box_Timer_v2_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|571206161"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_163_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_143 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_143
  l0._graph = self
  l0._name = "box_PlaySound_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|596334508"
  l0.Out = self.f_box_PlaySound_v2_143_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_199 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_199
  l0._graph = self
  l0._name = "box_PlaySound_v2_199"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|611560569"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_222 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_222
  l0._graph = self
  l0._name = "box_CLOController_222"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|640302812"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_222_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Monitor_12 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_12
  l0._graph = self
  l0._name = "box_Hackable_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|651951180"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_12_HackedOn
  l0.HackedOff = self.f_box_Hackable_Monitor_12_HackedOff
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_144 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_144
  l0._graph = self
  l0._name = "box_Timer_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|669372238"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_144_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_158 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_158
  l0._graph = self
  l0._name = "box_HackableController_v2_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|673892398"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_158_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SetBoolean_v2_40 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_40
  l0._graph = self
  l0._name = "box_SetBoolean_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|707250802"
  l0.Out = self.f_box_SetBoolean_v2_40_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_40_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_40_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_40_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_40_SetFromBool
  self.box_ListWriter_16 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_16
  l0._graph = self
  l0._name = "box_ListWriter_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|734939283"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_16_Added
  l0.Removed = self.f_box_ListWriter_16_Removed
  l0.Out = self.f_box_ListWriter_16_Out
  self.box_PlaySound_v2_209 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_209
  l0._graph = self
  l0._name = "box_PlaySound_v2_209"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|736120880"
  l0.Out = self.f_box_PlaySound_v2_209_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_196 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_196
  l0._graph = self
  l0._name = "box_PlaySound_v2_196"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|744399239"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_240 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_240
  l0._graph = self
  l0._name = "box_PlaySound_v2_240"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|756335426"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_159 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_159
  l0._graph = self
  l0._name = "box_HackableController_v2_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|759957691"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_159_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_223 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_223
  l0._graph = self
  l0._name = "box_CLOController_223"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|761906620"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_223_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_135 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_135
  l0._graph = self
  l0._name = "box_PlaySound_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|779569568"
  l0.Out = self.f_box_PlaySound_v2_135_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_201 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_201
  l0._graph = self
  l0._name = "box_PlaySound_v2_201"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|813442280"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_139 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_139
  l0._graph = self
  l0._name = "box_PlaySound_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|828793108"
  l0.Out = self.f_box_PlaySound_v2_139_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_113 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_113
  l0._graph = self
  l0._name = "box_Timer_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|834053123"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_113_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_226 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_226
  l0._graph = self
  l0._name = "box_CLOController_226"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|841735815"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_226_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_110 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_110
  l0._graph = self
  l0._name = "box_HackableController_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|859457619"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_110_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_181 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_181
  l0._graph = self
  l0._name = "box_HackableController_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|875431516"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_181_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_SetBoolean_v2_70 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_70
  l0._graph = self
  l0._name = "box_SetBoolean_v2_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|885126205"
  l0.Out = self.f_box_SetBoolean_v2_70_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_70_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_70_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_70_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_70_SetFromBool
  self.box_Timer_v2_161 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_161
  l0._graph = self
  l0._name = "box_Timer_v2_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|889772798"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_161_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_26 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_26
  l0._graph = self
  l0._name = "box_CLOController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|892054456"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_26_OnUserInPlace
  self.box_AI_IOPController_132 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_132
  l0._graph = self
  l0._name = "box_AI_IOPController_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|903400769"
  l0.Out = self.f_box_AI_IOPController_132_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_SetBoolean_v2_39 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|935648942"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|937741630"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_152_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_207 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_207
  l0._graph = self
  l0._name = "box_PlaySound_v2_207"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|949562884"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_203 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_203
  l0._graph = self
  l0._name = "box_PlaySound_v2_203"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|995438331"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_66 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_66
  l0._graph = self
  l0._name = "box_Hackable_Monitor_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|998538828"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_66_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_SetBoolean_v2_115 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_115
  l0._graph = self
  l0._name = "box_SetBoolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1020749297"
  l0.Out = self.f_box_SetBoolean_v2_115_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_115_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_115_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_115_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_115_SetFromBool
  self.box_Multiple_AND_248 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_248
  l0._graph = self
  l0._name = "box_Multiple_AND_248"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1043139411"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_248_Out
  self.box_CLOController_219 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_219
  l0._graph = self
  l0._name = "box_CLOController_219"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1102694530"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_219_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_131 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_131
  l0._graph = self
  l0._name = "box_AI_IOPController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1103821876"
  l0.Out = self.f_box_AI_IOPController_131_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_141 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_141
  l0._graph = self
  l0._name = "box_CLOController_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1109169608"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_141_OnUserInPlace
  self.box_HackableController_v2_167 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_167
  l0._graph = self
  l0._name = "box_HackableController_v2_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1115510203"
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
  self.box_HackableController_v2_149 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_149
  l0._graph = self
  l0._name = "box_HackableController_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1144783580"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_149_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_109 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_109
  l0._graph = self
  l0._name = "box_Timer_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1154404532"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_109_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_136 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_136
  l0._graph = self
  l0._name = "box_AI_IOPController_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1188767290"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_136_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_241 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_241
  l0._graph = self
  l0._name = "box_PlaySound_v2_241"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1205049164"
  l0.Out = self.f_box_PlaySound_v2_241_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_57 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_57
  l0._graph = self
  l0._name = "box_Timer_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1244637287"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_57_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_SetBoolean_v2_120 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_120
  l0._graph = self
  l0._name = "box_SetBoolean_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1256858164"
  l0.Out = self.f_box_SetBoolean_v2_120_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_120_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_120_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_120_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_120_SetFromBool
  self.box_Timer_v2_122 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_122
  l0._graph = self
  l0._name = "box_Timer_v2_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1261742853"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_122_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_36 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_36
  l0._graph = self
  l0._name = "box_ListWriter_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1268853404"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_36_Added
  l0.Removed = self.f_box_ListWriter_36_Removed
  l0.Out = self.f_box_ListWriter_36_Out
  self.box_PlaySound_v2_206 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_206
  l0._graph = self
  l0._name = "box_PlaySound_v2_206"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1272348816"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_224 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_224
  l0._graph = self
  l0._name = "box_CLOController_224"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1277558728"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_174 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_174
  l0._graph = self
  l0._name = "box_HackableController_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1295657737"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_174_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_169 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_169
  l0._graph = self
  l0._name = "box_Timer_v2_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1299151475"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_169_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_190 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_190
  l0._graph = self
  l0._name = "box_Hackable_Monitor_190"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1300716105"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_190_HackedOn
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlaySound_v2_200 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_200
  l0._graph = self
  l0._name = "box_PlaySound_v2_200"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1394682355"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_67 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_67
  l0._graph = self
  l0._name = "box_SetBoolean_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1396933404"
  l0.Out = self.f_box_SetBoolean_v2_67_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_67_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_67_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_67_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_67_SetFromBool
  self.box_PlaySound_v2_205 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_205
  l0._graph = self
  l0._name = "box_PlaySound_v2_205"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1399526598"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_73 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_73
  l0._graph = self
  l0._name = "box_ListWriter_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1425478651"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_73_Added
  l0.Removed = self.f_box_ListWriter_73_Removed
  l0.Out = self.f_box_ListWriter_73_Out
  self.box_SetBoolean_v2_1 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_1
  l0._graph = self
  l0._name = "box_SetBoolean_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1435920912"
  l0.Out = self.f_box_SetBoolean_v2_1_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_1_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_1_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_1_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_1_SetFromBool
  self.box_Timer_v2_171 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_171
  l0._graph = self
  l0._name = "box_Timer_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1501222135"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_171_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_106 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_106
  l0._graph = self
  l0._name = "box_CLOController_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1526463647"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_106_OnUserInPlace
  self.box_CLOController_227 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_227
  l0._graph = self
  l0._name = "box_CLOController_227"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1538036053"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_28 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_28
  l0._graph = self
  l0._name = "box_Timer_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1538152629"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_198 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_198
  l0._graph = self
  l0._name = "box_PlaySound_v2_198"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1540620563"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_130 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_130
  l0._graph = self
  l0._name = "box_AI_IOPController_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1558436871"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_130_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_111 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_111
  l0._graph = self
  l0._name = "box_HackableController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1564252580"
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
  self.box_SetBoolean_v2_71 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_71
  l0._graph = self
  l0._name = "box_SetBoolean_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1606639133"
  l0.Out = self.f_box_SetBoolean_v2_71_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_71_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_71_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_71_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_71_SetFromBool
  self.box_HackableController_v2_43 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_43
  l0._graph = self
  l0._name = "box_HackableController_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1608857714"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_43_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_191 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_191
  l0._graph = self
  l0._name = "box_MultipleOR_191"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1612449894"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_191_Out
  self.box_Timer_v2_155 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_155
  l0._graph = self
  l0._name = "box_Timer_v2_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1616590572"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_155_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_103 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_103
  l0._graph = self
  l0._name = "box_Timer_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1626033901"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_103_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_31 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_31
  l0._graph = self
  l0._name = "box_PlaySound_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1633334668"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_31_Started
  l0.Finished = DummyFunction
  self.box_SetBoolean_v2_46 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_46
  l0._graph = self
  l0._name = "box_SetBoolean_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1682641667"
  l0.Out = self.f_box_SetBoolean_v2_46_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_46_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_46_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_46_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_46_SetFromBool
  self.box_MissionMessageController_v3_175 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_175
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1685362029"
  l0.Out = self.f_box_MissionMessageController_v3_175_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_99 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_99
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1688526936"
  l0.Out = self.f_box_MissionMessageController_v3_99_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_97 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_97
  l0._graph = self
  l0._name = "box_SetBoolean_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1699344955"
  l0.Out = self.f_box_SetBoolean_v2_97_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_97_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_97_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_97_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_97_SetFromBool
  self.box_ListWriter_30 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_30
  l0._graph = self
  l0._name = "box_ListWriter_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1737733298"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_30_Added
  l0.Removed = self.f_box_ListWriter_30_Removed
  l0.Out = self.f_box_ListWriter_30_Out
  self.box_CLOController_188 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_188
  l0._graph = self
  l0._name = "box_CLOController_188"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1762846464"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_188_OnUserInPlace
  self.box_CLOController_228 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_228
  l0._graph = self
  l0._name = "box_CLOController_228"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1781378345"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_228_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_HackableController_v2_246 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_246
  l0._graph = self
  l0._name = "box_HackableController_v2_246"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1858143223"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_246_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_19 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_19
  l0._graph = self
  l0._name = "box_Hackable_Monitor_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1867600235"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_19_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_179 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_179
  l0._graph = self
  l0._name = "box_HackableController_v2_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1914639210"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_179_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_96 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_96
  l0._graph = self
  l0._name = "box_Hackable_Monitor_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1914763423"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = self.f_box_Hackable_Monitor_96_HackedOn
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_SetBoolean_v2_10 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_10
  l0._graph = self
  l0._name = "box_SetBoolean_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1917647233"
  l0.Out = self.f_box_SetBoolean_v2_10_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_10_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_10_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_10_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_10_SetFromBool
  self.box_PlaySound_v2_142 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_142
  l0._graph = self
  l0._name = "box_PlaySound_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1932987125"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AI_IOPController_214 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_214
  l0._graph = self
  l0._name = "box_AI_IOPController_214"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1941646893"
  l0.Out = self.f_box_AI_IOPController_214_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_214_IOPKickOutComplete
  self.box_PhoneCommunicationMonitor_247 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_247
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_247"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1942097584"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PhoneCommunicationMonitor_247_Disabled
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_247_OnCommunicationFinished
  self.box_IOPMonitor_8 = cbox:CreateBox("domino/System/IOPMonitor.lua")
  l0 = self.box_IOPMonitor_8
  l0._graph = self
  l0._name = "box_IOPMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1976858625"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_IOPMonitor_8_Disabled
  l0.ActivateHackables = DummyFunction
  l0.DeactivateHackables = DummyFunction
  l0.IOPComplete = self.f_box_IOPMonitor_8_IOPComplete
  l0.EventOccurred = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySound_v2_186 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_186
  l0._graph = self
  l0._name = "box_PlaySound_v2_186"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1982570559"
  l0.Out = self.f_box_PlaySound_v2_186_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_225 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_225
  l0._graph = self
  l0._name = "box_CLOController_225"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1983300630"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_217 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_217
  l0._graph = self
  l0._name = "box_CLOController_217"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2000121259"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_202 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_202
  l0._graph = self
  l0._name = "box_PlaySound_v2_202"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2017526905"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_166 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_166
  l0._graph = self
  l0._name = "box_HackableController_v2_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2036436159"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_166_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_107 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_107
  l0._graph = self
  l0._name = "box_HackableController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2036639134"
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
  self.box_PlaySound_v2_215 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_215
  l0._graph = self
  l0._name = "box_PlaySound_v2_215"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2049342470"
  l0.Out = self.f_box_PlaySound_v2_215_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_27 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_27
  l0._graph = self
  l0._name = "box_ListWriter_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2091181667"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_27_Added
  l0.Removed = self.f_box_ListWriter_27_Removed
  l0.Out = self.f_box_ListWriter_27_Out
  self.box_SetBoolean_v2_93 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_93
  l0._graph = self
  l0._name = "box_SetBoolean_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2125748454"
  l0.Out = self.f_box_SetBoolean_v2_93_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_93_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_93_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_93_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_93_SetFromBool
  self.box_Timer_v2_121 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_121
  l0._graph = self
  l0._name = "box_Timer_v2_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2126671722"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_121_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_221 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_221
  l0._graph = self
  l0._name = "box_CLOController_221"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2133331225"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_221_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  DrawTextToScreen("Comment: Starting Seoul IOP", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Get Player ID')-- Comment: Starting Seoul IOP")
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|271124905"
  l0.Out = self.f_box_Get_Player_ID_84_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1758229848", "1758229848", "S13M040_IOP_Seoul", "In", "box_Get_Player_ID_84.In", self, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_119_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_119
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_119_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_119
  self._3Hacked = l0.Target
  self:OnEnter_box_VisibilityController_v2_64()
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|575594070", "575594070", "S13M040_IOP_Seoul", "box_SetBoolean_v2_119.SetFalse", "box_VisibilityController_v2_64.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetBoolean_v2_119_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_119
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_119_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_119
  self._3Hacked = l0.Target
  self:OnEnter_box_VisibilityController_v2_64()
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|991842611", "991842611", "S13M040_IOP_Seoul", "box_SetBoolean_v2_119.SetTrue", "box_VisibilityController_v2_64.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetBoolean_v2_119_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_119
  self._3Hacked = l0.Target
end
function export:f_box_Compare_Boolean_v2_42_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_87()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2043321043", "2043321043", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_42.A_is_False", "box_VisibilityController_v2_87.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Boolean_v2_42_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_51()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|604345232", "604345232", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_42.A_is_True", "box_VisibilityController_v2_51.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Hackable_Monitor_100_HackedOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|641470041"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_165_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_165_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_165_Out_2
  l0 = self.box_Hackable_Monitor_100
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|444378566", "444378566", "S13M040_IOP_Seoul", "box_Hackable_Monitor_100.HackedOff", "box_Ordered_Output_165.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_100_HackedOn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1941402699"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_160_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_160_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_160_Out_2
  l0 = self.box_Hackable_Monitor_100
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|565982680", "565982680", "S13M040_IOP_Seoul", "box_Hackable_Monitor_100.HackedOn", "box_Ordered_Output_160.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_180_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1470606941"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_85_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_85_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_85_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_85_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_85_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_85_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_85_Out_7
  l0 = self.box_HackableController_v2_180
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1468580673", "1468580673", "S13M040_IOP_Seoul", "box_HackableController_v2_180.Enabled", "box_Ordered_Output_85.In", l0, l1)
  l1:In()
end
function export:f_box_LogicGate_v2_245_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_244"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2019220025"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_244_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_244_Out_1
  l0 = self.box_LogicGate_v2_245
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1809680539", "1809680539", "S13M040_IOP_Seoul", "box_LogicGate_v2_245.Out", "box_Ordered_Output_244.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_21_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_28
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_21
  l1 = self.box_Timer_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1192813418", "1192813418", "S13M040_IOP_Seoul", "box_HackableController_v2_21.Disabled", "box_Timer_v2_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_112_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_152()
  l0 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|691039615", "691039615", "S13M040_IOP_Seoul", "box_Ordered_Output_112.Out", "box_HackableController_v2_152.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_112_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_119()
  l0 = self.box_SetBoolean_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1497680579", "1497680579", "S13M040_IOP_Seoul", "box_Ordered_Output_112.Out", "box_SetBoolean_v2_119.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_112_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_200
  l0.Entity = "9223372066252341749"
  l0.SoundId = "soundbinary/3941287164.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1989072739", "1989072739", "S13M040_IOP_Seoul", "box_Ordered_Output_112.Out", "box_PlaySound_v2_200.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_129_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|419134360"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_126_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_126_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_Timer_v2_129
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|309184950", "309184950", "S13M040_IOP_Seoul", "box_Timer_v2_129.TimeElapsed", "box_Ordered_Output_126.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_4_HackedOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1698177764"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_157_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_157_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_157_Out_2
  l0 = self.box_Hackable_Monitor_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|709394119", "709394119", "S13M040_IOP_Seoul", "box_Hackable_Monitor_4.HackedOff", "box_Ordered_Output_157.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_4_HackedOn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1574154183"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_151_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_151_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_151_Out_2
  l0 = self.box_Hackable_Monitor_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1583160858", "1583160858", "S13M040_IOP_Seoul", "box_Hackable_Monitor_4.HackedOn", "box_Ordered_Output_151.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_24_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_37()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1284105524", "1284105524", "S13M040_IOP_Seoul", "box_VisibilityController_v2_24.Hidden", "box_VisibilityController_v2_37.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_24_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_37()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1144792390", "1144792390", "S13M040_IOP_Seoul", "box_VisibilityController_v2_24.Shown", "box_VisibilityController_v2_37.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_124_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._5Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2025383704"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_125_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|466958044", "466958044", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_124.A_is_False", "box_Compare_Boolean_v2_125.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_47_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  self.Worker3 = l0.UserID
  self:OnEnter_box_Multiple_AND_184()
  l1 = self.box_Multiple_AND_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1336670276", "1336670276", "S13M040_IOP_Seoul", "box_CLOController_47.OnUserInPlace", "box_Multiple_AND_184.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_Hackable_Monitor_80_HackedOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1142404385"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_168_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_168_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_168_Out_2
  l0 = self.box_Hackable_Monitor_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|703832818", "703832818", "S13M040_IOP_Seoul", "box_Hackable_Monitor_80.HackedOff", "box_Ordered_Output_168.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_80_HackedOn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1485676665"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_173_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_173_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_173_Out_2
  l0 = self.box_Hackable_Monitor_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|294045591", "294045591", "S13M040_IOP_Seoul", "box_Hackable_Monitor_80.HackedOn", "box_Ordered_Output_173.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_182_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_179
  l0.HackableEntityList = self.AllLineHacks
  l0 = self.box_CinematicPrep_182
  l1 = self.box_HackableController_v2_179
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1508117810", "1508117810", "S13M040_IOP_Seoul", "box_CinematicPrep_182.PostOut", "box_HackableController_v2_179.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_OnceOnly_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_139
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/1662334353.bnk"
  l0 = self.box_OnceOnly_v3_5
  l1 = self.box_PlaySound_v2_139
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1389014444", "1389014444", "S13M040_IOP_Seoul", "box_OnceOnly_v3_5.Out", "box_PlaySound_v2_139.Play", l0, l1)
  l1:Play()
end
function export:f_box_Multiple_AND_184_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  l0.Input = self.HackThePlanet2_Characters
  l0.Data[0] = self.Worker3
  l0.Data[1] = self.Worker2
  l0.Data[2] = self.Worker1
  l0.Data[3] = self.Worker4
  l0 = self.box_Multiple_AND_184
  l1 = self.box_ListWriter_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1137065899", "1137065899", "S13M040_IOP_Seoul", "box_Multiple_AND_184.Out", "box_ListWriter_16.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_128_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_128
  self.AllLineHacks = l0.Target
end
function export:f_box_ListWriter_128_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_128
  self.AllLineHacks = l0.Target
end
function export:f_box_ListWriter_128_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_128
  self.AllLineHacks = l0.Target
end
function export:f_box_AI_IOPController_49_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_11
  l0.Seconds = 0.5
  l0 = self.box_AI_IOPController_49
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1467396431", "1467396431", "S13M040_IOP_Seoul", "box_AI_IOPController_49.StartCompleted", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_133_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_130
  l0.IopID = "HackThePlanet2"
  l0.IopEvent = "HackThePlanet2.Hack1"
  l0 = self.box_OnceOnly_v3_133
  l1 = self.box_AI_IOPController_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|786489554", "786489554", "S13M040_IOP_Seoul", "box_OnceOnly_v3_133.Out", "box_AI_IOPController_130.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_82()
  l0 = self.box_Timer_v2_11
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|873874565", "873874565", "S13M040_IOP_Seoul", "box_Timer_v2_11.TimeElapsed", "box_SecurityCamController_82.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_Compare_Integers_v2_178_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_92
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1085598414", "1085598414", "S13M040_IOP_Seoul", "box_Compare_Integers_v2_178.A_eq_B", "box_Timer_v2_92.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_29_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_29
  self.Worker2 = l0.UserID
  self:OnEnter_box_Multiple_AND_184()
  l1 = self.box_Multiple_AND_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|887301264", "887301264", "S13M040_IOP_Seoul", "box_CLOController_29.OnUserInPlace", "box_Multiple_AND_184.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_SetBoolean_v2_48_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_48_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self._6Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._5Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1089969952"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_81_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_81_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_48
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|185838888", "185838888", "S13M040_IOP_Seoul", "box_SetBoolean_v2_48.SetTrue", "box_Compare_Boolean_v2_81.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_48_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_48
  self._6Hacked = l0.Target
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1361652360"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_183_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_183_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_183_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_183_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1855633901", "1855633901", "S13M040_IOP_Seoul", "box_Ordered_Output_20.Out", "box_Ordered_Output_183.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_30
  l0.Input = self.CamerasHTP2
  l0.Data[0] = "9223372047710334665"
  l0.Data[1] = "9223372047710334667"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|227828017", "227828017", "S13M040_IOP_Seoul", "box_Ordered_Output_20.Out", "box_ListWriter_30.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_73
  l0.Input = self.RedLines
  l0.Data[0] = "9223372048973591709"
  l0.Data[1] = "9223372048973591711"
  l0.Data[2] = "9223372048973591719"
  l0.Data[3] = "9223372048973591713"
  l0.Data[4] = "9223372048973591717"
  l0.Data[5] = "9223372048973591715"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|483062985", "483062985", "S13M040_IOP_Seoul", "box_Ordered_Output_20.Out", "box_ListWriter_73.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_20_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|807109601", "807109601", "S13M040_IOP_Seoul", "box_Ordered_Output_20.Out", "box_SetBoolean_v2_22.False", clone, l0)
  l0:False()
end
function export:f_box_ListWriter_32_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_32
  self.GreenLines = l0.Target
end
function export:f_box_ListWriter_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_32
  self.GreenLines = l0.Target
  l0 = self.box_ListWriter_36
  l0.Input = self.FalseBranchesHack
  l0.Data[0] = "9223372047710334669"
  l0.Data[1] = "9223372047710334675"
  l0.Data[2] = "9223372047710334677"
  l0 = self.box_ListWriter_32
  l1 = self.box_ListWriter_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|37165701", "37165701", "S13M040_IOP_Seoul", "box_ListWriter_32.Out", "box_ListWriter_36.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_32_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_32
  self.GreenLines = l0.Target
end
function export:f_box_Get_Player_ID_84_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_31
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1352846654", "1352846654", "S13M040_IOP_Seoul", "box_Get_Player_ID_84.Out", "box_PlaySound_v2_31.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_3_HackedOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|435357401"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_150_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_150_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_150_Out_2
  l0 = self.box_Hackable_Monitor_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|232512739", "232512739", "S13M040_IOP_Seoul", "box_Hackable_Monitor_3.HackedOff", "box_Ordered_Output_150.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_3_HackedOn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|68162779"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_112_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_112_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_112_Out_2
  l0 = self.box_Hackable_Monitor_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|17935506", "17935506", "S13M040_IOP_Seoul", "box_Hackable_Monitor_3.HackedOn", "box_Ordered_Output_112.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_14_HackedOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1315488729"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_102_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_102_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_102_Out_2
  l0 = self.box_Hackable_Monitor_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1170375937", "1170375937", "S13M040_IOP_Seoul", "box_Hackable_Monitor_14.HackedOff", "box_Ordered_Output_102.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_14_HackedOn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|698451804"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_74_Out_2
  l0 = self.box_Hackable_Monitor_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|428211741", "428211741", "S13M040_IOP_Seoul", "box_Hackable_Monitor_14.HackedOn", "box_Ordered_Output_74.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_92_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_92
  l1 = self.box_OnceOnly_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1438650975", "1438650975", "S13M040_IOP_Seoul", "box_Timer_v2_92.TimeElapsed", "box_OnceOnly_v3_5.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_127_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_152()
  l0 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1556861228", "1556861228", "S13M040_IOP_Seoul", "box_Ordered_Output_127.Out", "box_HackableController_v2_152.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_127_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_152()
  l0 = self.box_HackableController_v2_152
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1568827593", "1568827593", "S13M040_IOP_Seoul", "box_Ordered_Output_127.Out", "box_HackableController_v2_152.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_OnceOnly_v3_134_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_131
  l0.IopID = "HackThePlanet2"
  l0.IopEvent = "HackThePlanet2.Hack2"
  l0 = self.box_OnceOnly_v3_134
  l1 = self.box_AI_IOPController_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1422746478", "1422746478", "S13M040_IOP_Seoul", "box_OnceOnly_v3_134.Out", "box_AI_IOPController_131.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_Timer_v2_189_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_248()
  l0 = self.box_Timer_v2_189
  l1 = self.box_Multiple_AND_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1242476525", "1242476525", "S13M040_IOP_Seoul", "box_Timer_v2_189.TimeElapsed", "box_Multiple_AND_248.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_SetBoolean_v2_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self._1Hacked = l0.Target
  l1 = self.box_SetBoolean_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|180096799", "180096799", "S13M040_IOP_Seoul", "box_SetBoolean_v2_22.Out", "box_SetBoolean_v2_89.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_22_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self._1Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_22_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self._1Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_22_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self._1Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_22_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_22
  self._1Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_83_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self._6Hacked = l0.Target
  l0 = self.box_CLOController_141
  l0.CLO = "9223372067338594710"
  l0 = self.box_SetBoolean_v2_83
  l1 = self.box_CLOController_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|570833797", "570833797", "S13M040_IOP_Seoul", "box_SetBoolean_v2_83.Out", "box_CLOController_141.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SetBoolean_v2_83_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_83_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_83_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_83_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_83
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_89_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self._4Hacked = l0.Target
  l1 = self.box_SetBoolean_v2_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|692165579", "692165579", "S13M040_IOP_Seoul", "box_SetBoolean_v2_89.Out", "box_SetBoolean_v2_70.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_89_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self._4Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self._4Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self._4Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_89_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self._4Hacked = l0.Target
end
function export:f_box_Ordered_Output_126_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._1Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1433306939"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_123_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|838290397", "838290397", "S13M040_IOP_Seoul", "box_Ordered_Output_126.Out", "box_Compare_Boolean_v2_123.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_126_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1554183389", "1554183389", "S13M040_IOP_Seoul", "box_Ordered_Output_126.Out", "box_OnceOnly_v3_133.In", clone, l0)
  l0:In(0)
end
function export:f_box_Compare_Boolean_v2_118_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._6Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1665677336"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_116_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1586523669", "1586523669", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_118.A_is_True", "box_Compare_Boolean_v2_116.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_67()
  l0 = self.box_SetBoolean_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1932343998", "1932343998", "S13M040_IOP_Seoul", "box_Ordered_Output_54.Out", "box_SetBoolean_v2_67.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_43()
  l0 = self.box_HackableController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|393558865", "393558865", "S13M040_IOP_Seoul", "box_Ordered_Output_54.Out", "box_HackableController_v2_43.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_54_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_196
  l0.Entity = "9223372066252341749"
  l0.SoundId = "soundbinary/2036382555.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1073304019", "1073304019", "S13M040_IOP_Seoul", "box_Ordered_Output_54.Out", "box_PlaySound_v2_196.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_192_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_191()
  l0 = self.box_Hackable_Monitor_192
  l1 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|414616743", "414616743", "S13M040_IOP_Seoul", "box_Hackable_Monitor_192.HackedOn", "box_MultipleOR_191.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Ordered_Output_154_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_111()
  l0 = self.box_HackableController_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1623587121", "1623587121", "S13M040_IOP_Seoul", "box_Ordered_Output_154.Out", "box_HackableController_v2_111.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_154_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_111()
  l0 = self.box_HackableController_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1154309110", "1154309110", "S13M040_IOP_Seoul", "box_Ordered_Output_154.Out", "box_HackableController_v2_111.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_150_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_119()
  l0 = self.box_SetBoolean_v2_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|723186902", "723186902", "S13M040_IOP_Seoul", "box_Ordered_Output_150.Out", "box_SetBoolean_v2_119.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_150_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_111()
  l0 = self.box_HackableController_v2_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1180046729", "1180046729", "S13M040_IOP_Seoul", "box_Ordered_Output_150.Out", "box_HackableController_v2_111.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_150_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_201
  l0.Entity = "9223372066252341749"
  l0.SoundId = "soundbinary/2036382555.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1725649965", "1725649965", "S13M040_IOP_Seoul", "box_Ordered_Output_150.Out", "box_PlaySound_v2_201.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_153_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|865124553"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_162_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_162_Out_1
  l0 = self.box_Timer_v2_153
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1263778520", "1263778520", "S13M040_IOP_Seoul", "box_Timer_v2_153.TimeElapsed", "box_Ordered_Output_162.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_86_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_91()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1281961953", "1281961953", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_86.A_is_False", "box_VisibilityController_v2_91.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_86_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_91()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1003676155", "1003676155", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_86.A_is_True", "box_VisibilityController_v2_91.Show", clone, l0)
  l0:Show()
end
function export:f_box_PlaySound_v2_140_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_175
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective040",
    item = "Objective",
    id = "560732"
  }
  l0 = self.box_PlaySound_v2_140
  l1 = self.box_MissionMessageController_v3_175
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1485240293", "1485240293", "S13M040_IOP_Seoul", "box_PlaySound_v2_140.Out", "box_MissionMessageController_v3_175.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_Integer_Arithmetics_176_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.GoodBranchesHackInt = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.GoodBranchesHackInt
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|207915501"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_178_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|685410973", "685410973", "S13M040_IOP_Seoul", "box_Integer_Arithmetics_176.Out", "box_Compare_Integers_v2_178.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_185_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_167()
  l0 = self.box_HackableController_v2_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|300975097", "300975097", "S13M040_IOP_Seoul", "box_Ordered_Output_185.Out", "box_HackableController_v2_167.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_185_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_167()
  l0 = self.box_HackableController_v2_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|288601030", "288601030", "S13M040_IOP_Seoul", "box_Ordered_Output_185.Out", "box_HackableController_v2_167.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Timer_v2_163_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|683885479"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_164_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_164_Out_1
  l0 = self.box_Timer_v2_163
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|575339849", "575339849", "S13M040_IOP_Seoul", "box_Timer_v2_163.TimeElapsed", "box_Ordered_Output_164.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_23_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_44()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|955643736", "955643736", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_23.A_is_False", "box_VisibilityController_v2_44.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Boolean_v2_23_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_62()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1223728788", "1223728788", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_23.A_is_True", "box_VisibilityController_v2_62.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PlaySound_v2_143_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_142
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/2310409825.bnk"
  l0 = self.box_PlaySound_v2_143
  l1 = self.box_PlaySound_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1571164322", "1571164322", "S13M040_IOP_Seoul", "box_PlaySound_v2_143.Out", "box_PlaySound_v2_142.Play", l0, l1)
  l1:Play()
end
function export:f_box_Compare_Boolean_v2_2_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_56()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|437858398", "437858398", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_2.A_is_False", "box_VisibilityController_v2_56.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Boolean_v2_2_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_24()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|92130849", "92130849", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_2.A_is_True", "box_VisibilityController_v2_24.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CLOController_222_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_216
  l0.CLO = "9223372067338594710"
  l0 = self.box_CLOController_222
  l1 = self.box_CLOController_216
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|660713334", "660713334", "S13M040_IOP_Seoul", "box_CLOController_222.UnspawnedUser", "box_CLOController_216.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_165_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_97()
  l0 = self.box_SetBoolean_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1982454681", "1982454681", "S13M040_IOP_Seoul", "box_Ordered_Output_165.Out", "box_SetBoolean_v2_97.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_165_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_159()
  l0 = self.box_HackableController_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1669517196", "1669517196", "S13M040_IOP_Seoul", "box_Ordered_Output_165.Out", "box_HackableController_v2_159.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_165_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_205
  l0.Entity = "9223372066252341751"
  l0.SoundId = "soundbinary/2036382555.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|970301782", "970301782", "S13M040_IOP_Seoul", "box_Ordered_Output_165.Out", "box_PlaySound_v2_205.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_12_HackedOff()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|423654155"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_54_Out_2
  l0 = self.box_Hackable_Monitor_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|881621844", "881621844", "S13M040_IOP_Seoul", "box_Hackable_Monitor_12.HackedOff", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_12_HackedOn()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2104892743"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_38_Out_2
  l0 = self.box_Hackable_Monitor_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1795229405", "1795229405", "S13M040_IOP_Seoul", "box_Hackable_Monitor_12.HackedOn", "box_Ordered_Output_38.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_144_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_140
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/1486376828.bnk"
  l0 = self.box_Timer_v2_144
  l1 = self.box_PlaySound_v2_140
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1926936122", "1926936122", "S13M040_IOP_Seoul", "box_Timer_v2_144.TimeElapsed", "box_PlaySound_v2_140.Play", l0, l1)
  l1:Play()
end
function export:f_box_Compare_Boolean_v2_53_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_87()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1290720379", "1290720379", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_53.A_is_False", "box_VisibilityController_v2_87.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_53_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_51()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|993897124", "993897124", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_53.A_is_True", "box_VisibilityController_v2_51.Show", clone, l0)
  l0:Show()
end
function export:f_box_HackableController_v2_158_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_155
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_158
  l1 = self.box_Timer_v2_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1027474896", "1027474896", "S13M040_IOP_Seoul", "box_HackableController_v2_158.Disabled", "box_Timer_v2_155.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_164_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_166()
  l0 = self.box_HackableController_v2_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1522197553", "1522197553", "S13M040_IOP_Seoul", "box_Ordered_Output_164.Out", "box_HackableController_v2_166.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_164_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_166()
  l0 = self.box_HackableController_v2_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1738335314", "1738335314", "S13M040_IOP_Seoul", "box_Ordered_Output_164.Out", "box_HackableController_v2_166.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_107()
  l0 = self.box_HackableController_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1528621073", "1528621073", "S13M040_IOP_Seoul", "box_Ordered_Output_74.Out", "box_HackableController_v2_107.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_120()
  l0 = self.box_SetBoolean_v2_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|137023232", "137023232", "S13M040_IOP_Seoul", "box_Ordered_Output_74.Out", "box_SetBoolean_v2_120.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_74_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_198
  l0.Entity = "9223372066252341749"
  l0.SoundId = "soundbinary/3941287164.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2068398518", "2068398518", "S13M040_IOP_Seoul", "box_Ordered_Output_74.Out", "box_PlaySound_v2_198.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetBoolean_v2_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self._2Hacked = l0.Target
  l1 = self.box_SetBoolean_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|342363695", "342363695", "S13M040_IOP_Seoul", "box_SetBoolean_v2_40.Out", "box_SetBoolean_v2_10.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_40_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_40_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_40_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_40
  self._2Hacked = l0.Target
end
function export:f_box_VisibilityController_v2_79_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_1()
  l0 = self.box_SetBoolean_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1091581847", "1091581847", "S13M040_IOP_Seoul", "box_VisibilityController_v2_79.Hidden", "box_SetBoolean_v2_1.False", clone, l0)
  l0:False()
end
function export:f_box_VisibilityController_v2_79_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_1()
  l0 = self.box_SetBoolean_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1324890761", "1324890761", "S13M040_IOP_Seoul", "box_VisibilityController_v2_79.Shown", "box_SetBoolean_v2_1.True", clone, l0)
  l0:True()
end
function export:f_box_ListWriter_16_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_16
  self.HackThePlanet2_Characters = l0.Target
  l0 = self.box_AI_IOPController_49
  l0.IopID = "HackThePlanet2"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.HackThePlanet2_Characters
  l0.IopRoleList = self.NPCRolesHTP2
  l0 = self.box_ListWriter_16
  l1 = self.box_AI_IOPController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|289936186", "289936186", "S13M040_IOP_Seoul", "box_ListWriter_16.Added", "box_AI_IOPController_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_16_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.HackThePlanet2_Characters = l0.Target
end
function export:f_box_ListWriter_16_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_16
  self.HackThePlanet2_Characters = l0.Target
end
function export:f_box_Ordered_Output_220_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_223
  l0.User = self.Worker1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1827585212", "1827585212", "S13M040_IOP_Seoul", "box_Ordered_Output_220.Out", "box_CLOController_223.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_220_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_228
  l0.User = self.Worker2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|76416946", "76416946", "S13M040_IOP_Seoul", "box_Ordered_Output_220.Out", "box_CLOController_228.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_220_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_219
  l0.User = self.Worker3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|437937879", "437937879", "S13M040_IOP_Seoul", "box_Ordered_Output_220.Out", "box_CLOController_219.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_220_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_226
  l0.User = self.Worker4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|295199228", "295199228", "S13M040_IOP_Seoul", "box_Ordered_Output_220.Out", "box_CLOController_226.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_220_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_222
  l0.User = self.Extra1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|439689944", "439689944", "S13M040_IOP_Seoul", "box_Ordered_Output_220.Out", "box_CLOController_222.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_220_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_221
  l0.User = self.Extra2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1407838344", "1407838344", "S13M040_IOP_Seoul", "box_Ordered_Output_220.Out", "box_CLOController_221.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_PlaySound_v2_209_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_240
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/3243455811.bnk"
  l0 = self.box_PlaySound_v2_209
  l1 = self.box_PlaySound_v2_240
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1035194409", "1035194409", "S13M040_IOP_Seoul", "box_PlaySound_v2_209.Out", "box_PlaySound_v2_240.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_159_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_161
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_159
  l1 = self.box_Timer_v2_161
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2001115973", "2001115973", "S13M040_IOP_Seoul", "box_HackableController_v2_159.Disabled", "box_Timer_v2_161.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_223_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_227
  l0.CLO = "9223372047710334682"
  l0 = self.box_CLOController_223
  l1 = self.box_CLOController_227
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1350439293", "1350439293", "S13M040_IOP_Seoul", "box_CLOController_223.UnspawnedUser", "box_CLOController_227.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_PlaySound_v2_135_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_241
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/4082231780.bnk"
  l0 = self.box_PlaySound_v2_135
  l1 = self.box_PlaySound_v2_241
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|905637199", "905637199", "S13M040_IOP_Seoul", "box_PlaySound_v2_135.Out", "box_PlaySound_v2_241.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_156_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_158()
  l0 = self.box_HackableController_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1980991692", "1980991692", "S13M040_IOP_Seoul", "box_Ordered_Output_156.Out", "box_HackableController_v2_158.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_156_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_158()
  l0 = self.box_HackableController_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1931334038", "1931334038", "S13M040_IOP_Seoul", "box_Ordered_Output_156.Out", "box_HackableController_v2_158.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_SetInteger_v2_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.NumberOfPanels = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_135
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/3433851277.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|164996005", "164996005", "S13M040_IOP_Seoul", "box_SetInteger_v2_63.Out", "box_PlaySound_v2_135.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlaySound_v2_139_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_209
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/1021832914.bnk"
  l0 = self.box_PlaySound_v2_139
  l1 = self.box_PlaySound_v2_209
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|364474069", "364474069", "S13M040_IOP_Seoul", "box_PlaySound_v2_139.Out", "box_PlaySound_v2_209.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_113_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|433903156"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_154_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_154_Out_1
  l0 = self.box_Timer_v2_113
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1295254819", "1295254819", "S13M040_IOP_Seoul", "box_Timer_v2_113.TimeElapsed", "box_Ordered_Output_154.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_226_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_217
  l0.CLO = "9223372048616035374"
  l0 = self.box_CLOController_226
  l1 = self.box_CLOController_217
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1875831277", "1875831277", "S13M040_IOP_Seoul", "box_CLOController_226.UnspawnedUser", "box_CLOController_217.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_172_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_174()
  l0 = self.box_HackableController_v2_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1686080002", "1686080002", "S13M040_IOP_Seoul", "box_Ordered_Output_172.Out", "box_HackableController_v2_174.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_172_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_174()
  l0 = self.box_HackableController_v2_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1252767608", "1252767608", "S13M040_IOP_Seoul", "box_Ordered_Output_172.Out", "box_HackableController_v2_174.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_110_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_103
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_110
  l1 = self.box_Timer_v2_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|150832477", "150832477", "S13M040_IOP_Seoul", "box_HackableController_v2_110.Disabled", "box_Timer_v2_103.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_162_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_149()
  l0 = self.box_HackableController_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2054808518", "2054808518", "S13M040_IOP_Seoul", "box_Ordered_Output_162.Out", "box_HackableController_v2_149.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_162_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_149()
  l0 = self.box_HackableController_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|342982336", "342982336", "S13M040_IOP_Seoul", "box_Ordered_Output_162.Out", "box_HackableController_v2_149.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_HackableController_v2_181_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_186
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/2588220429.bnk"
  l0 = self.box_HackableController_v2_181
  l1 = self.box_PlaySound_v2_186
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|827994103", "827994103", "S13M040_IOP_Seoul", "box_HackableController_v2_181.Disabled", "box_PlaySound_v2_186.Play", l0, l1)
  l1:Play()
end
function export:f_box_SetBoolean_v2_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_70
  self._5Hacked = l0.Target
  l1 = self.box_SetBoolean_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|566653797", "566653797", "S13M040_IOP_Seoul", "box_SetBoolean_v2_70.Out", "box_SetBoolean_v2_40.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_70_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_70
  self._5Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_70_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_70
  self._5Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_70_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_70
  self._5Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_70_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_70
  self._5Hacked = l0.Target
end
function export:f_box_Timer_v2_161_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1813716796"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_170_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_170_Out_1
  l0 = self.box_Timer_v2_161
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|656123409", "656123409", "S13M040_IOP_Seoul", "box_Timer_v2_161.TimeElapsed", "box_Ordered_Output_170.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_26_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_26
  self.Worker1 = l0.UserID
  self:OnEnter_box_Multiple_AND_184()
  l1 = self.box_Multiple_AND_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2096191097", "2096191097", "S13M040_IOP_Seoul", "box_CLOController_26.OnUserInPlace", "box_Multiple_AND_184.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_AI_IOPController_132_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_181
  l0.HackableEntityList = self.AllLineHacks
  l0 = self.box_AI_IOPController_132
  l1 = self.box_HackableController_v2_181
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|74578537", "74578537", "S13M040_IOP_Seoul", "box_AI_IOPController_132.Out", "box_HackableController_v2_181.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._3Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._4Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|470441501"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_86_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_86_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_39
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|544679963", "544679963", "S13M040_IOP_Seoul", "box_SetBoolean_v2_39.SetTrue", "box_Compare_Boolean_v2_86.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self._3Hacked = l0.Target
end
function export:f_box_HackableController_v2_152_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_122
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_152
  l1 = self.box_Timer_v2_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|121243182", "121243182", "S13M040_IOP_Seoul", "box_HackableController_v2_152.Disabled", "box_Timer_v2_122.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_66_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_66
  l1 = self.box_OnceOnly_v3_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|409277585", "409277585", "S13M040_IOP_Seoul", "box_Hackable_Monitor_66.HackSuccess", "box_OnceOnly_v3_134.In", l0, l1)
  l1:In(0)
end
function export:f_box_SetBoolean_v2_115_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self._6Hacked = l0.Target
  self:OnEnter_box_VisibilityController_v2_95()
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1844810703", "1844810703", "S13M040_IOP_Seoul", "box_SetBoolean_v2_115.SetFalse", "box_VisibilityController_v2_95.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetBoolean_v2_115_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self._6Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_115_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self._6Hacked = l0.Target
  self:OnEnter_box_VisibilityController_v2_95()
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|26417470", "26417470", "S13M040_IOP_Seoul", "box_SetBoolean_v2_115.SetTrue", "box_VisibilityController_v2_95.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetBoolean_v2_115_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_115
  self._6Hacked = l0.Target
end
function export:f_box_VisibilityController_v2_68_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_79()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|999696341", "999696341", "S13M040_IOP_Seoul", "box_VisibilityController_v2_68.Hidden", "box_VisibilityController_v2_79.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_68_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_79()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2100812170", "2100812170", "S13M040_IOP_Seoul", "box_VisibilityController_v2_68.Shown", "box_VisibilityController_v2_79.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Multiple_AND_248_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_136
  l0.IopID = "HackThePlanet2"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_Multiple_AND_248
  l1 = self.box_AI_IOPController_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|256313111", "256313111", "S13M040_IOP_Seoul", "box_Multiple_AND_248.Out", "box_AI_IOPController_136.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_VisibilityController_v2_56_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_33()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|969915023", "969915023", "S13M040_IOP_Seoul", "box_VisibilityController_v2_56.Hidden", "box_VisibilityController_v2_33.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_56_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_33()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1600473554", "1600473554", "S13M040_IOP_Seoul", "box_VisibilityController_v2_56.Shown", "box_VisibilityController_v2_33.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_81_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_50()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1857067293", "1857067293", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_81.A_is_False", "box_VisibilityController_v2_50.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_81_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_50()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|460090915", "460090915", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_81.A_is_True", "box_VisibilityController_v2_50.Show", clone, l0)
  l0:Show()
end
function export:f_box_CLOController_219_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_218
  l0.CLO = "9223372047710334680"
  l0 = self.box_CLOController_219
  l1 = self.box_CLOController_218
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|248274042", "248274042", "S13M040_IOP_Seoul", "box_CLOController_219.UnspawnedUser", "box_CLOController_218.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_AI_IOPController_131_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|990529071"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = DummyFunction
  l0.Out[1] = DummyFunction
  l0 = self.box_AI_IOPController_131
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|963588346", "963588346", "S13M040_IOP_Seoul", "box_AI_IOPController_131.Out", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_141_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_141
  self.Extra1 = l0.UserID
  l0 = self.box_CLOController_188
  l0.CLO = "9223372067338594716"
  l0 = self.box_CLOController_141
  l1 = self.box_CLOController_188
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1199543065", "1199543065", "S13M040_IOP_Seoul", "box_CLOController_141.OnUserInPlace", "box_CLOController_188.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_167_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_169
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_167
  l1 = self.box_Timer_v2_169
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2135282150", "2135282150", "S13M040_IOP_Seoul", "box_HackableController_v2_167.Disabled", "box_Timer_v2_169.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_168_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_115()
  l0 = self.box_SetBoolean_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|970835031", "970835031", "S13M040_IOP_Seoul", "box_Ordered_Output_168.Out", "box_SetBoolean_v2_115.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_168_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_167()
  l0 = self.box_HackableController_v2_167
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1499857386", "1499857386", "S13M040_IOP_Seoul", "box_Ordered_Output_168.Out", "box_HackableController_v2_167.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_168_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_207
  l0.Entity = "9223372066252341751"
  l0.SoundId = "soundbinary/2036382555.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|422183435", "422183435", "S13M040_IOP_Seoul", "box_Ordered_Output_168.Out", "box_PlaySound_v2_207.Play", clone, l0)
  l0:Play()
end
function export:f_box_HackableController_v2_149_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_153
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_149
  l1 = self.box_Timer_v2_153
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|384428292", "384428292", "S13M040_IOP_Seoul", "box_HackableController_v2_149.Disabled", "box_Timer_v2_153.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_109_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1351491434"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_108_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_108_Out_1
  l0 = self.box_Timer_v2_109
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1979357989", "1979357989", "S13M040_IOP_Seoul", "box_Timer_v2_109.TimeElapsed", "box_Ordered_Output_108.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_136_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_180
  l0.HackableEntityList = self.AllLineHacks
  l0 = self.box_AI_IOPController_136
  l1 = self.box_HackableController_v2_180
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|26796234", "26796234", "S13M040_IOP_Seoul", "box_AI_IOPController_136.SendEventCompleted", "box_HackableController_v2_180.EnableHack", l0, l1)
  l1:EnableHack()
end
function export:f_box_PlaySound_v2_241_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2016107108"
  l0.Out = self.f_box_SetInteger_v2_177_Out
  l0 = self.box_PlaySound_v2_241
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1471586323", "1471586323", "S13M040_IOP_Seoul", "box_PlaySound_v2_241.Out", "box_SetInteger_v2_177.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_VisibilityController_v2_87_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_7()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1062795126", "1062795126", "S13M040_IOP_Seoul", "box_VisibilityController_v2_87.Hidden", "box_VisibilityController_v2_7.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_87_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_7()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1340043592", "1340043592", "S13M040_IOP_Seoul", "box_VisibilityController_v2_87.Shown", "box_VisibilityController_v2_7.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_41_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_56()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|612556416", "612556416", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_41.A_is_False", "box_VisibilityController_v2_56.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_41_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_24()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1535642798", "1535642798", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_41.A_is_True", "box_VisibilityController_v2_24.Show", clone, l0)
  l0:Show()
end
function export:f_box_Timer_v2_57_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2024862806"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_75_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_75_Out_1
  l0 = self.box_Timer_v2_57
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1717642415", "1717642415", "S13M040_IOP_Seoul", "box_Timer_v2_57.TimeElapsed", "box_Ordered_Output_75.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_114_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_110()
  l0 = self.box_HackableController_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1312911585", "1312911585", "S13M040_IOP_Seoul", "box_Ordered_Output_114.Out", "box_HackableController_v2_110.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_114_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_110()
  l0 = self.box_HackableController_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1337823984", "1337823984", "S13M040_IOP_Seoul", "box_Ordered_Output_114.Out", "box_HackableController_v2_110.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_VisibilityController_v2_18_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_39()
  l0 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|273209833", "273209833", "S13M040_IOP_Seoul", "box_VisibilityController_v2_18.Hidden", "box_SetBoolean_v2_39.False", clone, l0)
  l0:False()
end
function export:f_box_VisibilityController_v2_18_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_39()
  l0 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|366032826", "366032826", "S13M040_IOP_Seoul", "box_VisibilityController_v2_18.Shown", "box_SetBoolean_v2_39.True", clone, l0)
  l0:True()
end
function export:f_box_SetBoolean_v2_120_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_120
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_120_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_120
  self._2Hacked = l0.Target
  self:OnEnter_box_VisibilityController_v2_68()
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1573299117", "1573299117", "S13M040_IOP_Seoul", "box_SetBoolean_v2_120.SetFalse", "box_VisibilityController_v2_68.Show", l0, l1)
  l1:Show()
end
function export:f_box_SetBoolean_v2_120_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_120
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_120_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_120
  self._2Hacked = l0.Target
  self:OnEnter_box_VisibilityController_v2_68()
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1779203437", "1779203437", "S13M040_IOP_Seoul", "box_SetBoolean_v2_120.SetTrue", "box_VisibilityController_v2_68.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_SetBoolean_v2_120_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_120
  self._2Hacked = l0.Target
end
function export:f_box_Timer_v2_122_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|367177263"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_127_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_127_Out_1
  l0 = self.box_Timer_v2_122
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|444726535", "444726535", "S13M040_IOP_Seoul", "box_Timer_v2_122.TimeElapsed", "box_Ordered_Output_127.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_36_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_36
  self.FalseBranchesHack = l0.Target
end
function export:f_box_ListWriter_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_36
  self.FalseBranchesHack = l0.Target
  l0 = self.box_ListWriter_27
  l0.Input = self.GoodBranches
  l0.Data[0] = "9223372047710334671"
  l0.Data[1] = "9223372047710334673"
  l0.Data[2] = "9223372047710334679"
  l0 = self.box_ListWriter_36
  l1 = self.box_ListWriter_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1437767713", "1437767713", "S13M040_IOP_Seoul", "box_ListWriter_36.Out", "box_ListWriter_27.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_36_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_36
  self.FalseBranchesHack = l0.Target
end
function export:f_box_Compare_Boolean_v2_117_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._3Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|420324160"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_118_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1387186555", "1387186555", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_117.A_is_True", "box_Compare_Boolean_v2_118.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_174_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_171
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_174
  l1 = self.box_Timer_v2_171
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|720389551", "720389551", "S13M040_IOP_Seoul", "box_HackableController_v2_174.Disabled", "box_Timer_v2_171.Start", l0, l1)
  l1:Start()
end
function export:f_box_SecurityCamController_82_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_182
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1924123639", "1924123639", "S13M040_IOP_Seoul", "box_SecurityCamController_82.CanExitSet", "box_CinematicPrep_182.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_SecurityCamController_82_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_82()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1692312704", "1692312704", "S13M040_IOP_Seoul", "box_SecurityCamController_82.EnterForced", "box_SecurityCamController_82.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_Timer_v2_169_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|488246851"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_185_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_185_Out_1
  l0 = self.box_Timer_v2_169
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1031482886", "1031482886", "S13M040_IOP_Seoul", "box_Timer_v2_169.TimeElapsed", "box_Ordered_Output_185.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_190_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_191()
  l0 = self.box_Hackable_Monitor_190
  l1 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1066517606", "1066517606", "S13M040_IOP_Seoul", "box_Hackable_Monitor_190.HackedOn", "box_MultipleOR_191.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_102_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_120()
  l0 = self.box_SetBoolean_v2_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1650773609", "1650773609", "S13M040_IOP_Seoul", "box_Ordered_Output_102.Out", "box_SetBoolean_v2_120.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_102_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_110()
  l0 = self.box_HackableController_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|613366989", "613366989", "S13M040_IOP_Seoul", "box_Ordered_Output_102.Out", "box_HackableController_v2_110.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_102_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_199
  l0.Entity = "9223372066252341749"
  l0.SoundId = "soundbinary/2036382555.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2043950960", "2043950960", "S13M040_IOP_Seoul", "box_Ordered_Output_102.Out", "box_PlaySound_v2_199.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_108_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_107()
  l0 = self.box_HackableController_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1419275580", "1419275580", "S13M040_IOP_Seoul", "box_Ordered_Output_108.Out", "box_HackableController_v2_107.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_108_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_107()
  l0 = self.box_HackableController_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|910194875", "910194875", "S13M040_IOP_Seoul", "box_Ordered_Output_108.Out", "box_HackableController_v2_107.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Ordered_Output_183_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_26
  l0.CLO = "9223372047710334682"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1763451772", "1763451772", "S13M040_IOP_Seoul", "box_Ordered_Output_183.Out", "box_CLOController_26.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_183_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_29
  l0.CLO = "9223372047710334681"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1062774921", "1062774921", "S13M040_IOP_Seoul", "box_Ordered_Output_183.Out", "box_CLOController_29.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_183_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_47
  l0.CLO = "9223372047710334680"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|952445177", "952445177", "S13M040_IOP_Seoul", "box_Ordered_Output_183.Out", "box_CLOController_47.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_183_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_106
  l0.CLO = "9223372048616035374"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|258859259", "258859259", "S13M040_IOP_Seoul", "box_Ordered_Output_183.Out", "box_CLOController_106.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_194_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_144
  l0.Seconds = 14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1607132956", "1607132956", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_Timer_v2_144.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_194_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_143
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/1627298849.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|801138717", "801138717", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_PlaySound_v2_143.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_194_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877174898"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1225107494"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1190617152", "1190617152", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_LightController_146.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_194_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175105"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_230"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1216947309"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1828266596", "1828266596", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_LightController_230.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_194_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175140"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_231"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1617312891"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1069804028", "1069804028", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_LightController_231.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_194_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175174"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_232"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|357020040"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1648876765", "1648876765", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_LightController_232.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_194_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372057781263633"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_238"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|993014523"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1096755350", "1096755350", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_LightController_238.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_194_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372057781263622"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_239"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1564657148"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|801052670", "801052670", "S13M040_IOP_Seoul", "box_Ordered_Output_194.Out", "box_LightController_239.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_VisibilityController_v2_50_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_52()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|180818945", "180818945", "S13M040_IOP_Seoul", "box_VisibilityController_v2_50.Hidden", "box_VisibilityController_v2_52.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_50_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_52()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1274924348", "1274924348", "S13M040_IOP_Seoul", "box_VisibilityController_v2_50.Shown", "box_VisibilityController_v2_52.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_SetBoolean_v2_67_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_67
  self._1Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_67_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_67
  self._1Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._2Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|10067674"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_42_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_42_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_67
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1344085654", "1344085654", "S13M040_IOP_Seoul", "box_SetBoolean_v2_67.SetFalse", "box_Compare_Boolean_v2_42.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_67_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_67
  self._1Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_67_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_67
  self._1Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._2Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|670891996"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_53_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_53_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_67
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|149204945", "149204945", "S13M040_IOP_Seoul", "box_SetBoolean_v2_67.SetTrue", "box_Compare_Boolean_v2_53.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_67_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_67
  self._1Hacked = l0.Target
end
function export:f_box_ListWriter_73_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_73
  self.RedLines = l0.Target
end
function export:f_box_ListWriter_73_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_73
  self.RedLines = l0.Target
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = self.RedLines
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1482911059"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_77_Out
  l0 = self.box_ListWriter_73
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|563251834", "563251834", "S13M040_IOP_Seoul", "box_ListWriter_73.Out", "box_VisibilityController_v2_77.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_ListWriter_73_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_73
  self.RedLines = l0.Target
end
function export:f_box_Compare_Boolean_v2_123_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._4Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|131057139"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_124_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|182529734", "182529734", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_123.A_is_False", "box_Compare_Boolean_v2_124.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_1_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self._2Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_1_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self._2Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._1Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1868250722"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_25_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_25_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_1
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1093897620", "1093897620", "S13M040_IOP_Seoul", "box_SetBoolean_v2_1.SetTrue", "box_Compare_Boolean_v2_25.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_1_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_1
  self._2Hacked = l0.Target
end
function export:f_box_Ordered_Output_85_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_12
  l0.HackableEntity = "9223372047710334669"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|91136942", "91136942", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_14
  l0.HackableEntity = "9223372047710334671"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|700676149", "700676149", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_3
  l0.HackableEntity = "9223372047710334673"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1071440353", "1071440353", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_4
  l0.HackableEntity = "9223372047710334675"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1452030379", "1452030379", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_100
  l0.HackableEntity = "9223372047710334677"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|277475565", "277475565", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_100.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_80
  l0.HackableEntity = "9223372047710334679"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|73501126", "73501126", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_80.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_19
  l0.HackableEntityList = self.AllLineHacks
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1708531759", "1708531759", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Hackable_Monitor_19.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_85_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_193"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1654558679"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_193_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_193_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_193_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_193_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|623040548", "623040548", "S13M040_IOP_Seoul", "box_Ordered_Output_85.Out", "box_Ordered_Output_193.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_32
  l0.Input = self.GreenLines
  l0.Data[0] = "9223372048973591695"
  l0.Data[1] = "9223372048973591705"
  l0.Data[2] = "9223372048973591699"
  l0.Data[3] = "9223372048973591697"
  l0.Data[4] = "9223372048973591701"
  l0.Data[5] = "9223372048973591703"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1274987404", "1274987404", "S13M040_IOP_Seoul", "box_VisibilityController_v2_77.Out", "box_ListWriter_32.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_173_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_174()
  l0 = self.box_HackableController_v2_174
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1298404911", "1298404911", "S13M040_IOP_Seoul", "box_Ordered_Output_173.Out", "box_HackableController_v2_174.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_173_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_115()
  l0 = self.box_SetBoolean_v2_115
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1678602815", "1678602815", "S13M040_IOP_Seoul", "box_Ordered_Output_173.Out", "box_SetBoolean_v2_115.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_173_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_206
  l0.Entity = "9223372066252341751"
  l0.SoundId = "soundbinary/3941287164.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1684893236", "1684893236", "S13M040_IOP_Seoul", "box_Ordered_Output_173.Out", "box_PlaySound_v2_206.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_101_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_44()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|476941923", "476941923", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_101.A_is_False", "box_VisibilityController_v2_44.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_101_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_62()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1070974993", "1070974993", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_101.A_is_True", "box_VisibilityController_v2_62.Show", clone, l0)
  l0:Show()
end
function export:f_box_Timer_v2_171_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|847767928"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_172_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_172_Out_1
  l0 = self.box_Timer_v2_171
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2082308042", "2082308042", "S13M040_IOP_Seoul", "box_Timer_v2_171.TimeElapsed", "box_Ordered_Output_172.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_21()
  l0 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1335057346", "1335057346", "S13M040_IOP_Seoul", "box_Ordered_Output_13.Out", "box_HackableController_v2_21.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_21()
  l0 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|912857344", "912857344", "S13M040_IOP_Seoul", "box_Ordered_Output_13.Out", "box_HackableController_v2_21.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_CLOController_106_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_106
  self.Worker4 = l0.UserID
  self:OnEnter_box_Multiple_AND_184()
  l1 = self.box_Multiple_AND_184
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1482405110", "1482405110", "S13M040_IOP_Seoul", "box_CLOController_106.OnUserInPlace", "box_Multiple_AND_184.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_Timer_v2_28_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1522329100"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_Timer_v2_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2109425168", "2109425168", "S13M040_IOP_Seoul", "box_Timer_v2_28.TimeElapsed", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_105_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PhoneCommunicationMonitor_247()
  l0 = self.box_PhoneCommunicationMonitor_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1361173143", "1361173143", "S13M040_IOP_Seoul", "box_Ordered_Output_105.Out", "box_PhoneCommunicationMonitor_247.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_105_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_189
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|832059125", "832059125", "S13M040_IOP_Seoul", "box_Ordered_Output_105.Out", "box_Timer_v2_189.Start", clone, l0)
  l0:Start()
end
function export:f_box_AI_IOPController_130_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_121
  l0.Seconds = 2
  l0 = self.box_AI_IOPController_130
  l1 = self.box_Timer_v2_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|515715214", "515715214", "S13M040_IOP_Seoul", "box_AI_IOPController_130.SendEventCompleted", "box_Timer_v2_121.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_111_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_113
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_111
  l1 = self.box_Timer_v2_113
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1454630047", "1454630047", "S13M040_IOP_Seoul", "box_HackableController_v2_111.Disabled", "box_Timer_v2_113.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_151_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_158()
  l0 = self.box_HackableController_v2_158
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1071822692", "1071822692", "S13M040_IOP_Seoul", "box_Ordered_Output_151.Out", "box_HackableController_v2_158.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_151_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_71()
  l0 = self.box_SetBoolean_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|999466026", "999466026", "S13M040_IOP_Seoul", "box_Ordered_Output_151.Out", "box_SetBoolean_v2_71.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_151_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_202
  l0.Entity = "9223372066252341751"
  l0.SoundId = "soundbinary/3941287164.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1980389027", "1980389027", "S13M040_IOP_Seoul", "box_Ordered_Output_151.Out", "box_PlaySound_v2_202.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetBoolean_v2_71_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self._4Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_71_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self._4Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._3Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|594351518"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_23_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_23_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_71
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1349086419", "1349086419", "S13M040_IOP_Seoul", "box_SetBoolean_v2_71.SetFalse", "box_Compare_Boolean_v2_23.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_71_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self._4Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_71_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self._4Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._3Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1492580881"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_101_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_101_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_71
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2038013532", "2038013532", "S13M040_IOP_Seoul", "box_SetBoolean_v2_71.SetTrue", "box_Compare_Boolean_v2_101.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_71_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_71
  self._4Hacked = l0.Target
end
function export:f_box_HackableController_v2_43_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_57
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_43
  l1 = self.box_Timer_v2_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1271119444", "1271119444", "S13M040_IOP_Seoul", "box_HackableController_v2_43.Disabled", "box_Timer_v2_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_191_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = 1
  l0.B = self.GoodBranchesHackInt
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|487380183"
  l0.Out = self.f_box_Integer_Arithmetics_176_Out
  l0 = self.box_MultipleOR_191
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|80253707", "80253707", "S13M040_IOP_Seoul", "box_MultipleOR_191.Out", "box_Integer_Arithmetics_176.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_155_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|791307727"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_156_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_156_Out_1
  l0 = self.box_Timer_v2_155
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|594182250", "594182250", "S13M040_IOP_Seoul", "box_Timer_v2_155.TimeElapsed", "box_Ordered_Output_156.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_103_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1245127439"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_114_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_114_Out_1
  l0 = self.box_Timer_v2_103
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|398370725", "398370725", "S13M040_IOP_Seoul", "box_Timer_v2_103.TimeElapsed", "box_Ordered_Output_114.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySound_v2_31_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|244868210"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_20_Out_2
  l0.Out[3] = DummyFunction
  l0.Out[4] = DummyFunction
  l0.Out[5] = self.f_box_Ordered_Output_20_Out_5
  l0 = self.box_PlaySound_v2_31
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1446987244", "1446987244", "S13M040_IOP_Seoul", "box_PlaySound_v2_31.Started", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_193_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_96
  l0.HackableEntity = "9223372047710334671"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|326279615", "326279615", "S13M040_IOP_Seoul", "box_Ordered_Output_193.Out", "box_Hackable_Monitor_96.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_193_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_190
  l0.HackableEntity = "9223372047710334673"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|555038714", "555038714", "S13M040_IOP_Seoul", "box_Ordered_Output_193.Out", "box_Hackable_Monitor_190.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_193_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_192
  l0.HackableEntity = "9223372047710334679"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1799333637", "1799333637", "S13M040_IOP_Seoul", "box_Ordered_Output_193.Out", "box_Hackable_Monitor_192.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_193_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_245()
  l0 = self.box_LogicGate_v2_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|163522884", "163522884", "S13M040_IOP_Seoul", "box_Ordered_Output_193.Out", "box_LogicGate_v2_245.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_116_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_132
  l0.IopID = "HackThePlanet2"
  l0.IopEvent = "HackThePlanet2.OutroTrigger"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|234746124", "234746124", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_116.A_is_True", "box_AI_IOPController_132.SendEvent", clone, l0)
  l0:SendEvent()
end
function export:f_box_SetBoolean_v2_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.GoodBranchesHacked = l0.Target
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0._name = "box_SetInteger_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|822207210"
  l0.Out = self.f_box_SetInteger_v2_63_Out
  l0 = self.box_SetBoolean_v2_46
  l1 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|952706938", "952706938", "S13M040_IOP_Seoul", "box_SetBoolean_v2_46.Out", "box_SetInteger_v2_63.FromInteger", l0, l1)
  l1:FromInteger()
end
function export:f_box_SetBoolean_v2_46_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.GoodBranchesHacked = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.GoodBranchesHacked = l0.Target
end
function export:f_box_SetBoolean_v2_46_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.GoodBranchesHacked = l0.Target
end
function export:f_box_SetBoolean_v2_46_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_46
  self.GoodBranchesHacked = l0.Target
end
function export:f_box_MissionMessageController_v3_175_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_IOPMonitor_8()
  l0 = self.box_MissionMessageController_v3_175
  l1 = self.box_IOPMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1208084431", "1208084431", "S13M040_IOP_Seoul", "box_MissionMessageController_v3_175.Out", "box_IOPMonitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_99_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1548444897"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_105_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_105_Out_1
  l0 = self.box_MissionMessageController_v3_99
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1833155185", "1833155185", "S13M040_IOP_Seoul", "box_MissionMessageController_v3_99.Out", "box_Ordered_Output_105.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_157_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_71()
  l0 = self.box_SetBoolean_v2_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|591366671", "591366671", "S13M040_IOP_Seoul", "box_Ordered_Output_157.Out", "box_SetBoolean_v2_71.False", clone, l0)
  l0:False()
end
function export:f_box_Ordered_Output_157_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_149()
  l0 = self.box_HackableController_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1260103124", "1260103124", "S13M040_IOP_Seoul", "box_Ordered_Output_157.Out", "box_HackableController_v2_149.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_157_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_203
  l0.Entity = "9223372066252341751"
  l0.SoundId = "soundbinary/2036382555.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|970836308", "970836308", "S13M040_IOP_Seoul", "box_Ordered_Output_157.Out", "box_PlaySound_v2_203.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetBoolean_v2_97_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self._5Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_97_SetFalse()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self._5Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._6Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|619434363"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_2_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_2_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_97
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1464697120", "1464697120", "S13M040_IOP_Seoul", "box_SetBoolean_v2_97.SetFalse", "box_Compare_Boolean_v2_2.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_97_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self._5Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_97_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self._5Hacked = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._6Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1208944366"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_41_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_41_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_97
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|199417138", "199417138", "S13M040_IOP_Seoul", "box_SetBoolean_v2_97.SetTrue", "box_Compare_Boolean_v2_41.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_97_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_97
  self._5Hacked = l0.Target
end
function export:f_box_VisibilityController_v2_64_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_18()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|61758174", "61758174", "S13M040_IOP_Seoul", "box_VisibilityController_v2_64.Hidden", "box_VisibilityController_v2_18.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_64_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_18()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|834314614", "834314614", "S13M040_IOP_Seoul", "box_VisibilityController_v2_64.Shown", "box_VisibilityController_v2_18.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_95_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_60()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|235019563", "235019563", "S13M040_IOP_Seoul", "box_VisibilityController_v2_95.Hidden", "box_VisibilityController_v2_60.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_95_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_60()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2033092409", "2033092409", "S13M040_IOP_Seoul", "box_VisibilityController_v2_95.Shown", "box_VisibilityController_v2_60.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ListWriter_30_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_30
  self.CamerasHTP2 = l0.Target
end
function export:f_box_ListWriter_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_30
  self.CamerasHTP2 = l0.Target
  l1 = self.box_SetBoolean_v2_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|690525729", "690525729", "S13M040_IOP_Seoul", "box_ListWriter_30.Out", "box_SetBoolean_v2_93.False", l0, l1)
  l1:False()
end
function export:f_box_ListWriter_30_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_30
  self.CamerasHTP2 = l0.Target
end
function export:f_box_VisibilityController_v2_44_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_45()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|53900080", "53900080", "S13M040_IOP_Seoul", "box_VisibilityController_v2_44.Hidden", "box_VisibilityController_v2_45.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_44_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_45()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|448849628", "448849628", "S13M040_IOP_Seoul", "box_VisibilityController_v2_44.Shown", "box_VisibilityController_v2_45.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_CLOController_188_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_188
  self.Extra2 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_236"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2016160080"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_236_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_236_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_236_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_236_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_236_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_236_Out_5
  l0 = self.box_CLOController_188
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1421211231", "1421211231", "S13M040_IOP_Seoul", "box_CLOController_188.OnUserInPlace", "box_Ordered_Output_236.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_228_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_225
  l0.CLO = "9223372047710334681"
  l0 = self.box_CLOController_228
  l1 = self.box_CLOController_225
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1396742826", "1396742826", "S13M040_IOP_Seoul", "box_CLOController_228.UnspawnedUser", "box_CLOController_225.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_VisibilityController_v2_91_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_17()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1405147712", "1405147712", "S13M040_IOP_Seoul", "box_VisibilityController_v2_91.Hidden", "box_VisibilityController_v2_17.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_91_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_17()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|341893614", "341893614", "S13M040_IOP_Seoul", "box_VisibilityController_v2_91.Shown", "box_VisibilityController_v2_17.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_170_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_159()
  l0 = self.box_HackableController_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|855917114", "855917114", "S13M040_IOP_Seoul", "box_Ordered_Output_170.Out", "box_HackableController_v2_159.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_170_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_159()
  l0 = self.box_HackableController_v2_159
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1149084179", "1149084179", "S13M040_IOP_Seoul", "box_Ordered_Output_170.Out", "box_HackableController_v2_159.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_VisibilityController_v2_60_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_48()
  l0 = self.box_SetBoolean_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2111269488", "2111269488", "S13M040_IOP_Seoul", "box_VisibilityController_v2_60.Hidden", "box_SetBoolean_v2_48.False", clone, l0)
  l0:False()
end
function export:f_box_VisibilityController_v2_60_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_48()
  l0 = self.box_SetBoolean_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|238396032", "238396032", "S13M040_IOP_Seoul", "box_VisibilityController_v2_60.Shown", "box_SetBoolean_v2_48.True", clone, l0)
  l0:True()
end
function export:f_box_HackableController_v2_246_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_214
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_HackableController_v2_246
  l1 = self.box_AI_IOPController_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|496684087", "496684087", "S13M040_IOP_Seoul", "box_HackableController_v2_246.Disabled", "box_AI_IOPController_214.TriggerIOPDisconnectScreenAndKickOut", l0, l1)
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Hackable_Monitor_19_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_129
  l0.Seconds = 3.5
  l0 = self.box_Hackable_Monitor_19
  l1 = self.box_Timer_v2_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|623723040", "623723040", "S13M040_IOP_Seoul", "box_Hackable_Monitor_19.HackSuccess", "box_Timer_v2_129.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_25_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_59()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|432444401", "432444401", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_25.A_is_False", "box_VisibilityController_v2_59.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_25_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_59()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2087491322", "2087491322", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_25.A_is_True", "box_VisibilityController_v2_59.Show", clone, l0)
  l0:Show()
end
function export:f_box_HackableController_v2_179_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_99
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective040",
    item = "Objective",
    id = "560732"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_HackableController_v2_179
  l1 = self.box_MissionMessageController_v3_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1238667927", "1238667927", "S13M040_IOP_Seoul", "box_HackableController_v2_179.Disabled", "box_MissionMessageController_v3_99.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Hackable_Monitor_96_HackedOn()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_191()
  l0 = self.box_Hackable_Monitor_96
  l1 = self.box_MultipleOR_191
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|116006567", "116006567", "S13M040_IOP_Seoul", "box_Hackable_Monitor_96.HackedOn", "box_MultipleOR_191.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self._3Hacked = l0.Target
  l1 = self.box_SetBoolean_v2_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1851557408", "1851557408", "S13M040_IOP_Seoul", "box_SetBoolean_v2_10.Out", "box_SetBoolean_v2_83.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_10_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_10_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self._3Hacked = l0.Target
end
function export:f_box_SetBoolean_v2_10_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_10
  self._3Hacked = l0.Target
end
function export:f_box_VisibilityController_v2_59_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_98()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1361267462", "1361267462", "S13M040_IOP_Seoul", "box_VisibilityController_v2_59.Hidden", "box_VisibilityController_v2_98.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_59_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_98()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1394658116", "1394658116", "S13M040_IOP_Seoul", "box_VisibilityController_v2_59.Shown", "box_VisibilityController_v2_98.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_160_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_166()
  l0 = self.box_HackableController_v2_166
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1607815305", "1607815305", "S13M040_IOP_Seoul", "box_Ordered_Output_160.Out", "box_HackableController_v2_166.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_160_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_97()
  l0 = self.box_SetBoolean_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|631795763", "631795763", "S13M040_IOP_Seoul", "box_Ordered_Output_160.Out", "box_SetBoolean_v2_97.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_160_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_204
  l0.Entity = "9223372066252341751"
  l0.SoundId = "soundbinary/3941287164.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2088285427", "2088285427", "S13M040_IOP_Seoul", "box_Ordered_Output_160.Out", "box_PlaySound_v2_204.Play", clone, l0)
  l0:Play()
end
function export:f_box_AI_IOPController_214_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self.box_AI_IOPController_214
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1922217318", "1922217318", "S13M040_IOP_Seoul", "box_AI_IOPController_214.IOPKickOutComplete", "Out", l0, self)
  self:Out()
end
function export:f_box_AI_IOPController_214_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_229"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2121341318"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_229_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_229_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_AI_IOPController_214
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1773981881", "1773981881", "S13M040_IOP_Seoul", "box_AI_IOPController_214.Out", "box_Ordered_Output_229.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationMonitor_247_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_248()
  l0 = self.box_PhoneCommunicationMonitor_247
  l1 = self.box_Multiple_AND_248
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|500312329", "500312329", "S13M040_IOP_Seoul", "box_PhoneCommunicationMonitor_247.Disabled", "box_Multiple_AND_248.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PhoneCommunicationMonitor_247_OnCommunicationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_PhoneCommunicationMonitor_247()
  l0 = self.box_PhoneCommunicationMonitor_247
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|329281034", "329281034", "S13M040_IOP_Seoul", "box_PhoneCommunicationMonitor_247.OnCommunicationFinished", "box_PhoneCommunicationMonitor_247.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_VisibilityController_v2_62_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_9()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1133450280", "1133450280", "S13M040_IOP_Seoul", "box_VisibilityController_v2_62.Hidden", "box_VisibilityController_v2_9.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_62_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_9()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1924662375", "1924662375", "S13M040_IOP_Seoul", "box_VisibilityController_v2_62.Shown", "box_VisibilityController_v2_9.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_IOPMonitor_8_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_246
  l0.HackableEntityList = self.CamerasHTP2
  l0 = self.box_IOPMonitor_8
  l1 = self.box_HackableController_v2_246
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|441014876", "441014876", "S13M040_IOP_Seoul", "box_IOPMonitor_8.Disabled", "box_HackableController_v2_246.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_IOPMonitor_8_IOPComplete()
  local l0
  self = self._graph
  self:OnEnter_box_IOPMonitor_8()
  l0 = self.box_IOPMonitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1593278079", "1593278079", "S13M040_IOP_Seoul", "box_IOPMonitor_8.IOPComplete", "box_IOPMonitor_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PlaySound_v2_186_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_194"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1365031709"
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_box_Ordered_Output_194_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_194_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_194_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_194_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_194_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_194_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_194_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_194_Out_7
  l0 = self.box_PlaySound_v2_186
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|804968844", "804968844", "S13M040_IOP_Seoul", "box_PlaySound_v2_186.Out", "box_Ordered_Output_194.In", l0, l1)
  l1:In()
end
function export:f_box_SetInteger_v2_177_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.GoodBranchesHackInt = l0.Target
end
function export:f_box_Ordered_Output_236_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877174898"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_237"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|208292418"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|260853565", "260853565", "S13M040_IOP_Seoul", "box_Ordered_Output_236.Out", "box_LightController_237.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_236_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175105"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_233"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1982533075"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|625131381", "625131381", "S13M040_IOP_Seoul", "box_Ordered_Output_236.Out", "box_LightController_233.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_236_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175140"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_234"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1567274599"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1475508815", "1475508815", "S13M040_IOP_Seoul", "box_Ordered_Output_236.Out", "box_LightController_234.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_236_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175174"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_235"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1899583406"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|734353297", "734353297", "S13M040_IOP_Seoul", "box_Ordered_Output_236.Out", "box_LightController_235.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_236_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372057781263633"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|680250345"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|894827578", "894827578", "S13M040_IOP_Seoul", "box_Ordered_Output_236.Out", "box_LightController_137.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_236_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372057781263622"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1034529732"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1333139908", "1333139908", "S13M040_IOP_Seoul", "box_Ordered_Output_236.Out", "box_LightController_138.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_244_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_243
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/2215789654.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1061420343", "1061420343", "S13M040_IOP_Seoul", "box_Ordered_Output_244.Out", "box_PlaySound_v2_243.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_244_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_245()
  l0 = self.box_LogicGate_v2_245
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|49374274", "49374274", "S13M040_IOP_Seoul", "box_Ordered_Output_244.Out", "box_LogicGate_v2_245.Close", clone, l0)
  l0:Close()
end
function export:f_box_Ordered_Output_75_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_43()
  l0 = self.box_HackableController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2092646952", "2092646952", "S13M040_IOP_Seoul", "box_Ordered_Output_75.Out", "box_HackableController_v2_43.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_75_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_43()
  l0 = self.box_HackableController_v2_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|325612791", "325612791", "S13M040_IOP_Seoul", "box_Ordered_Output_75.Out", "box_HackableController_v2_43.SetOverrideHackingText", clone, l0)
  l0:SetOverrideHackingText()
end
function export:f_box_Compare_Boolean_v2_125_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self._2Hacked
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1278072460"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_117_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|592478332", "592478332", "S13M040_IOP_Seoul", "box_Compare_Boolean_v2_125.A_is_False", "box_Compare_Boolean_v2_117.In", clone, l0)
  l0:In()
end
function export:f_box_HackableController_v2_166_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_163
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_166
  l1 = self.box_Timer_v2_163
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|487658393", "487658393", "S13M040_IOP_Seoul", "box_HackableController_v2_166.Disabled", "box_Timer_v2_163.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_107_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_109
  l0.Seconds = 1
  l0 = self.box_HackableController_v2_107
  l1 = self.box_Timer_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1371636525", "1371636525", "S13M040_IOP_Seoul", "box_HackableController_v2_107.Disabled", "box_Timer_v2_109.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_215_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_220"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|736092636"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_220_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_220_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_220_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_220_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_220_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_220_Out_5
  l0 = self.box_PlaySound_v2_215
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|90378854", "90378854", "S13M040_IOP_Seoul", "box_PlaySound_v2_215.Out", "box_Ordered_Output_220.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_51_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_88()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1694839144", "1694839144", "S13M040_IOP_Seoul", "box_VisibilityController_v2_51.Hidden", "box_VisibilityController_v2_88.Show", clone, l0)
  l0:Show()
end
function export:f_box_VisibilityController_v2_51_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VisibilityController_v2_88()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1681155532", "1681155532", "S13M040_IOP_Seoul", "box_VisibilityController_v2_51.Shown", "box_VisibilityController_v2_88.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ListWriter_27_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_27
  self.GoodBranches = l0.Target
end
function export:f_box_ListWriter_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_27
  self.GoodBranches = l0.Target
  l0 = self.box_ListWriter_128
  l0.Input = self.AllLineHacks
  l0.Data[0] = "9223372047710334671"
  l0.Data[1] = "9223372047710334673"
  l0.Data[2] = "9223372047710334679"
  l0.Data[3] = "9223372047710334669"
  l0.Data[4] = "9223372047710334675"
  l0.Data[5] = "9223372047710334677"
  l0 = self.box_ListWriter_27
  l1 = self.box_ListWriter_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1281341994", "1281341994", "S13M040_IOP_Seoul", "box_ListWriter_27.Out", "box_ListWriter_128.Add", l0, l1)
  l1:Add()
end
function export:f_box_ListWriter_27_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_27
  self.GoodBranches = l0.Target
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_21()
  l0 = self.box_HackableController_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|76059659", "76059659", "S13M040_IOP_Seoul", "box_Ordered_Output_38.Out", "box_HackableController_v2_21.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_67()
  l0 = self.box_SetBoolean_v2_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|294082011", "294082011", "S13M040_IOP_Seoul", "box_Ordered_Output_38.Out", "box_SetBoolean_v2_67.True", clone, l0)
  l0:True()
end
function export:f_box_Ordered_Output_38_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_197
  l0.Entity = "9223372066252341749"
  l0.SoundId = "soundbinary/3941287164.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|877883079", "877883079", "S13M040_IOP_Seoul", "box_Ordered_Output_38.Out", "box_PlaySound_v2_197.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_229_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_215
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/2015546268.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1582697673", "1582697673", "S13M040_IOP_Seoul", "box_Ordered_Output_229.Out", "box_PlaySound_v2_215.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_229_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_242
  l0.Entity = "9223372048973591720"
  l0.SoundId = "soundbinary/109187882.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|688161916", "688161916", "S13M040_IOP_Seoul", "box_Ordered_Output_229.Out", "box_PlaySound_v2_242.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetBoolean_v2_93_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.FalseBranchesHacked = l0.Target
  l1 = self.box_SetBoolean_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1016525335", "1016525335", "S13M040_IOP_Seoul", "box_SetBoolean_v2_93.Out", "box_SetBoolean_v2_46.False", l0, l1)
  l1:False()
end
function export:f_box_SetBoolean_v2_93_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.FalseBranchesHacked = l0.Target
end
function export:f_box_SetBoolean_v2_93_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.FalseBranchesHacked = l0.Target
end
function export:f_box_SetBoolean_v2_93_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.FalseBranchesHacked = l0.Target
end
function export:f_box_SetBoolean_v2_93_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_93
  self.FalseBranchesHacked = l0.Target
end
function export:f_box_Timer_v2_121_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_66
  l0.HackableEntityList = self.GoodBranches
  l0.AutoDisable = 1
  l0 = self.box_Timer_v2_121
  l1 = self.box_Hackable_Monitor_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|422474832", "422474832", "S13M040_IOP_Seoul", "box_Timer_v2_121.TimeElapsed", "box_Hackable_Monitor_66.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_221_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_224
  l0.CLO = "9223372067338594716"
  l0 = self.box_CLOController_221
  l1 = self.box_CLOController_224
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|893818499", "893818499", "S13M040_IOP_Seoul", "box_CLOController_221.UnspawnedUser", "box_CLOController_224.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:OnEnter_box_SetBoolean_v2_119()
end
function export:OnEnter_box_LogicGate_v2_245()
end
function export:OnEnter_box_HackableController_v2_21()
  local l0
  l0 = self.box_HackableController_v2_21
  l0.HackableEntity = "9223372047710334669"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Activate",
    id = "684784"
  }
end
function export:OnEnter_box_VisibilityController_v2_33()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591717"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|71613297"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_24()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591701"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|115152907"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_24_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_24_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_9()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591713"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|136401724"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_Multiple_AND_184()
end
function export:OnEnter_box_SetBoolean_v2_48()
end
function export:OnEnter_box_VisibilityController_v2_88()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591709"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|277019367"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_158()
  local l0
  l0 = self.box_HackableController_v2_158
  l0.HackableEntity = "9223372047710334675"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Activate",
    id = "684784"
  }
end
function export:OnEnter_box_VisibilityController_v2_79()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591711"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|729854165"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_79_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_79_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_159()
  local l0
  l0 = self.box_HackableController_v2_159
  l0.HackableEntity = "9223372047710334677"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Deactivate",
    id = "684785"
  }
end
function export:OnEnter_box_HackableController_v2_110()
  local l0
  l0 = self.box_HackableController_v2_110
  l0.HackableEntity = "9223372047710334671"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Deactivate",
    id = "684785"
  }
end
function export:OnEnter_box_SetBoolean_v2_39()
end
function export:OnEnter_box_HackableController_v2_152()
  local l0
  l0 = self.box_HackableController_v2_152
  l0.HackableEntity = "9223372047710334673"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Activate",
    id = "684784"
  }
end
function export:OnEnter_box_VisibilityController_v2_7()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591709"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|941501733"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_45()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591713"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|991502400"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_SetBoolean_v2_115()
end
function export:OnEnter_box_VisibilityController_v2_68()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591705"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1029095351"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_68_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_68_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_Multiple_AND_248()
end
function export:OnEnter_box_VisibilityController_v2_56()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591701"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1070532771"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_56_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_56_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_167()
  local l0
  l0 = self.box_HackableController_v2_167
  l0.HackableEntity = "9223372047710334679"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Deactivate",
    id = "684785"
  }
end
function export:OnEnter_box_HackableController_v2_149()
  local l0
  l0 = self.box_HackableController_v2_149
  l0.HackableEntity = "9223372047710334675"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Deactivate",
    id = "684785"
  }
end
function export:OnEnter_box_VisibilityController_v2_87()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591695"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1208466402"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_87_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_87_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_18()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591719"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1247147572"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_18_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_18_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_SetBoolean_v2_120()
end
function export:OnEnter_box_HackableController_v2_174()
  local l0
  l0 = self.box_HackableController_v2_174
  l0.HackableEntity = "9223372047710334679"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Activate",
    id = "684784"
  }
end
function export:OnEnter_box_SecurityCamController_82()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372052351796043"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1296208276"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_82_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_82_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_50()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591701"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1382548035"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_50_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_50_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_SetBoolean_v2_67()
end
function export:OnEnter_box_SetBoolean_v2_1()
end
function export:OnEnter_box_HackableController_v2_111()
  local l0
  l0 = self.box_HackableController_v2_111
  l0.HackableEntity = "9223372047710334673"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Deactivate",
    id = "684785"
  }
end
function export:OnEnter_box_VisibilityController_v2_17()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591713"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1587663316"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_SetBoolean_v2_71()
end
function export:OnEnter_box_HackableController_v2_43()
  local l0
  l0 = self.box_HackableController_v2_43
  l0.HackableEntity = "9223372047710334669"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Deactivate",
    id = "684785"
  }
end
function export:OnEnter_box_MultipleOR_191()
end
function export:OnEnter_box_SetBoolean_v2_97()
end
function export:OnEnter_box_VisibilityController_v2_64()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591699"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1707862348"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_64_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_64_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_95()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591703"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1735883696"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_95_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_95_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_44()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591697"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1741011309"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_44_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_44_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_98()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591709"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1770135614"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_37()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591717"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1783026820"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_91()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591697"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1809889263"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_91_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_91_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_60()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591715"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1857899514"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_60_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_60_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_VisibilityController_v2_59()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591695"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1924404937"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_59_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_59_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_PhoneCommunicationMonitor_247()
  local l0
  l0 = self.box_PhoneCommunicationMonitor_247
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440561"
end
function export:OnEnter_box_VisibilityController_v2_62()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591697"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|1966187603"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_62_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_62_Hidden
  l0.Out = DummyFunction
end
function export:OnEnter_box_IOPMonitor_8()
end
function export:OnEnter_box_VisibilityController_v2_52()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591717"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2011458430"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_HackableController_v2_166()
  local l0
  l0 = self.box_HackableController_v2_166
  l0.HackableEntity = "9223372047710334677"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Activate",
    id = "684784"
  }
end
function export:OnEnter_box_HackableController_v2_107()
  local l0
  l0 = self.box_HackableController_v2_107
  l0.HackableEntity = "9223372047710334671"
  l0.OasisHackingText = {
    section = "HACKING.Interface Messages",
    item = "Activate",
    id = "684784"
  }
end
function export:OnEnter_box_VisibilityController_v2_51()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372048973591695"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Seoul|2070896303"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_51_Shown
  l0.Hidden = self.f_box_VisibilityController_v2_51_Hidden
  l0.Out = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
