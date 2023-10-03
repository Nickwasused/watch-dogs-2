export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/LightController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/playerphonecommunicationmonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/503594975.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2308844121.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3762083833.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3973683875.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/327987694.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1680735807.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/127651864.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S13M040_IOP_Dubai"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai"
  self.Out = DummyFunction
  self.Staff1 = nil
  self.FalseB4 = {}
  self.HTP_Cam3 = nil
  self.HTP_Cam4 = nil
  self.FalseB1 = {}
  self.PlayerEntity = nil
  self.Staff2 = nil
  self.HTP_Cam2 = nil
  self.FalseB3 = {}
  self.HTP_Cam5 = nil
  self.HTP_Cam1 = nil
  self.Emir = nil
  self.FalseB2 = {}
  self.FalseB5 = {}
  self.Tech1 = nil
  self.Tech2 = nil
  self.HTP3NPCList = {}
  self.HTP3NPCRoles = {
    "HackThePlanet3.Client",
    "HackThePlanet3.Guide",
    "HackThePlanet3.TechA",
    "HackThePlanet3.TechB"
  }
  self.HTP3Cameras = {}
  self.iop_hacktheplanet_dubai_serverlight_off_1 = "9223372055307727971"
  self.iop_hacktheplanet_dubai_serverlight_on_1 = "9223372055307727973"
  self.ServerLights = {}
  self.iop_hacktheplanet_dubai_serverlight_on_2 = "9223372055307806527"
  self.iop_hacktheplanet_dubai_serverlight_off_2 = "9223372055307807161"
  self.iop_hacktheplanet_dubai_serverlight_off_3 = "9223372055307807155"
  self.iop_hacktheplanet_dubai_serverlight_off_4 = "9223372055307807163"
  self.box_Timer_v2_172 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_172
  l0._graph = self
  l0._name = "box_Timer_v2_172"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|40591534"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_172_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_182 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_182
  l0._graph = self
  l0._name = "box_PlaySound_v2_182"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|59952672"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_115 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_115
  l0._graph = self
  l0._name = "box_CLOController_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|70045854"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_115_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Monitor_104 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_104
  l0._graph = self
  l0._name = "box_Hackable_Monitor_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|95341685"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_104_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_33 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_33
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|130702297"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_HackableController_v2_7 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_7
  l0._graph = self
  l0._name = "box_HackableController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|195363016"
  l0.Enabled = self.f_box_HackableController_v2_7_Enabled
  l0.Disabled = self.f_box_HackableController_v2_7_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_177 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_177
  l0._graph = self
  l0._name = "box_PlaySound_v2_177"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|206957570"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_118 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_118
  l0._graph = self
  l0._name = "box_Hackable_Monitor_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|219777669"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_118_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MissionMessageController_v3_82 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_82
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|229000848"
  l0.Out = self.f_box_MissionMessageController_v3_82_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_174 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_174
  l0._graph = self
  l0._name = "box_Timer_v2_174"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|309779725"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_174_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_84 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_84
  l0._graph = self
  l0._name = "box_OnceOnly_v3_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|367604923"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_84_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_117 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_117
  l0._graph = self
  l0._name = "box_CLOController_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|377608829"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_117_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySound_v2_110 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_110
  l0._graph = self
  l0._name = "box_PlaySound_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|416415618"
  l0.Out = self.f_box_PlaySound_v2_110_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_16 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_16
  l0._graph = self
  l0._name = "box_HackableController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|461220252"
  l0.Enabled = self.f_box_HackableController_v2_16_Enabled
  l0.Disabled = self.f_box_HackableController_v2_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_38 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_38
  l0._graph = self
  l0._name = "box_CLOController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|481343914"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_38_OnUserInPlace
  self.box_PlaySound_v2_181 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_181
  l0._graph = self
  l0._name = "box_PlaySound_v2_181"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|492540853"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_78 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_78
  l0._graph = self
  l0._name = "box_Timer_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|533098272"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_78_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationMonitor_6 = cbox:CreateBox("domino/System/playerphonecommunicationmonitor.lua")
  l0 = self.box_PhoneCommunicationMonitor_6
  l0._graph = self
  l0._name = "box_PhoneCommunicationMonitor_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|550692736"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_PhoneCommunicationMonitor_6_Disabled
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationMonitor_6_OnCommunicationFinished
  self.box_ListWriter_40 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_40
  l0._graph = self
  l0._name = "box_ListWriter_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|550927728"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_40_Added
  l0.Removed = self.f_box_ListWriter_40_Removed
  l0.Out = self.f_box_ListWriter_40_Out
  self.box_Timer_v2_90 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_90
  l0._graph = self
  l0._name = "box_Timer_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|574711293"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_90_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Multiple_AND_125 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_125
  l0._graph = self
  l0._name = "box_Multiple_AND_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|595357779"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = DummyFunction
  self.box_CLOController_4 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_4
  l0._graph = self
  l0._name = "box_CLOController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|621015498"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_4_OnUserInPlace
  self.box_PlaySound_v2_180 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_180
  l0._graph = self
  l0._name = "box_PlaySound_v2_180"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|716015633"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_85 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_85
  l0._graph = self
  l0._name = "box_ListWriter_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|759091604"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_85_Added
  l0.Removed = self.f_box_ListWriter_85_Removed
  l0.Out = self.f_box_ListWriter_85_Out
  self.box_HackableController_v2_103 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_103
  l0._graph = self
  l0._name = "box_HackableController_v2_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|786293868"
  l0.Enabled = self.f_box_HackableController_v2_103_Enabled
  l0.Disabled = self.f_box_HackableController_v2_103_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_173 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_173
  l0._graph = self
  l0._name = "box_Timer_v2_173"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|794821090"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_173_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_123 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_123
  l0._graph = self
  l0._name = "box_CLOController_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|854544377"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_123_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Timer_v2_171 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_171
  l0._graph = self
  l0._name = "box_Timer_v2_171"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|862081509"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_171_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Hackable_Monitor_101 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_101
  l0._graph = self
  l0._name = "box_Hackable_Monitor_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|893651216"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_101_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_HackableController_v2_22 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_22
  l0._graph = self
  l0._name = "box_HackableController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1045483986"
  l0.Enabled = self.f_box_HackableController_v2_22_Enabled
  l0.Disabled = self.f_box_HackableController_v2_22_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_9 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_9
  l0._graph = self
  l0._name = "box_AI_IOPController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1121552710"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = self.f_box_AI_IOPController_9_SendEventCompleted
  l0.IOPKickOutComplete = DummyFunction
  self.box_HackableController_v2_126 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_126
  l0._graph = self
  l0._name = "box_HackableController_v2_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1208271405"
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
  self.box_CinematicPrep_136 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_136
  l0._graph = self
  l0._name = "box_CinematicPrep_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1230377454"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_136_PostOut
  self.box_HackableController_v2_176 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_176
  l0._graph = self
  l0._name = "box_HackableController_v2_176"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1236920103"
  l0.Enabled = self.f_box_HackableController_v2_176_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_120 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_120
  l0._graph = self
  l0._name = "box_CLOController_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1253776805"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_120_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_AI_IOPController_114 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_114
  l0._graph = self
  l0._name = "box_AI_IOPController_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1276495880"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = self.f_box_AI_IOPController_114_EndForced
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_CLOController_46 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_46
  l0._graph = self
  l0._name = "box_CLOController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1276605828"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_46_OnUserInPlace
  self.box_PlaySound_v2_86 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_86
  l0._graph = self
  l0._name = "box_PlaySound_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1311784290"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_124 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_124
  l0._graph = self
  l0._name = "box_HackableController_v2_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1416011375"
  l0.Enabled = self.f_box_HackableController_v2_124_Enabled
  l0.Disabled = self.f_box_HackableController_v2_124_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AI_IOPController_2 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_2
  l0._graph = self
  l0._name = "box_AI_IOPController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1449150302"
  l0.Out = DummyFunction
  l0.StartCompleted = self.f_box_AI_IOPController_2_StartCompleted
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = DummyFunction
  self.box_PlaySound_v2_3 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_3
  l0._graph = self
  l0._name = "box_PlaySound_v2_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1450539175"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_3_Started
  l0.Finished = DummyFunction
  self.box_HackableController_v2_185 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_185
  l0._graph = self
  l0._name = "box_HackableController_v2_185"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1460587622"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_185_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Hackable_Monitor_122 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_122
  l0._graph = self
  l0._name = "box_Hackable_Monitor_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1469981357"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_122_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_54 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_54
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1477746873"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_48 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_48
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1478876988"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_PlaySound_v2_179 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_179
  l0._graph = self
  l0._name = "box_PlaySound_v2_179"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1494920311"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_112 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_112
  l0._graph = self
  l0._name = "box_CLOController_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1499139174"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_112_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_68 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_68
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1506384196"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_MissionMessageController_v3_83 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_83
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1558275647"
  l0.Out = self.f_box_MissionMessageController_v3_83_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_178 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_178
  l0._graph = self
  l0._name = "box_PlaySound_v2_178"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1562208404"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_109 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_109
  l0._graph = self
  l0._name = "box_PlaySound_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1633497673"
  l0.Out = self.f_box_PlaySound_v2_109_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_113 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_113
  l0._graph = self
  l0._name = "box_CLOController_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1636843208"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = self.f_box_CLOController_113_UnspawnedUser
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Monitor_63 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_63
  l0._graph = self
  l0._name = "box_Hackable_Monitor_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1666285169"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_63_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_137 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_137
  l0._graph = self
  l0._name = "box_Timer_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1712775232"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_137_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1724902548"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_CLOController_116 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_116
  l0._graph = self
  l0._name = "box_CLOController_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1761721858"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_116_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Multiple_AND_133 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_133
  l0._graph = self
  l0._name = "box_Multiple_AND_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1809777828"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_133_Out
  self.box_DistanceBasedProgressBarController_v2_1 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_1
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1826888567"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_Timer_v2_175 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_175
  l0._graph = self
  l0._name = "box_Timer_v2_175"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1897346928"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_175_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CLOController_121 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_121
  l0._graph = self
  l0._name = "box_CLOController_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1940117274"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_CLOController_121_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Hackable_Monitor_25 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_25
  l0._graph = self
  l0._name = "box_Hackable_Monitor_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2029216831"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_25_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_AI_IOPController_108 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_108
  l0._graph = self
  l0._name = "box_AI_IOPController_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2060085339"
  l0.Out = self.f_box_AI_IOPController_108_Out
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_108_IOPKickOutComplete
  self.box_Multiple_AND_5 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_5
  l0._graph = self
  l0._name = "box_Multiple_AND_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2092762429"
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_box_Multiple_AND_5_Out
  self.box_PlaySound_v2_80 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_80
  l0._graph = self
  l0._name = "box_PlaySound_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2096017658"
  l0.Out = self.f_box_PlaySound_v2_80_Out
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
  DrawTextToScreen("Comment: Starting Dubai IOP", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'Get Player ID')-- Comment: Starting Dubai IOP")
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1931901131"
  l0.Out = self.f_box_Get_Player_ID_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|419696664", "419696664", "S13M040_IOP_Dubai", "In", "box_Get_Player_ID_34.In", self, l0)
  l0:In()
end
function export:f_box_Timer_v2_172_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1636845926"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_94_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_94_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_94_Out_2
  l0 = self.box_Timer_v2_172
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1074274973", "1074274973", "S13M040_IOP_Dubai", "box_Timer_v2_172.TimeElapsed", "box_Ordered_Output_94.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_115_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_116
  l0.CLO = "9223372047710334711"
  l0 = self.box_CLOController_115
  l1 = self.box_CLOController_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1512543694", "1512543694", "S13M040_IOP_Dubai", "box_CLOController_115.UnspawnedUser", "box_CLOController_116.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_106_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_16()
  l0 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|497992636", "497992636", "S13M040_IOP_Dubai", "box_Ordered_Output_106.Out", "box_HackableController_v2_16.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_106_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_124()
  l0 = self.box_HackableController_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1890188474", "1890188474", "S13M040_IOP_Dubai", "box_Ordered_Output_106.Out", "box_HackableController_v2_124.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_106_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_22()
  l0 = self.box_HackableController_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1557181886", "1557181886", "S13M040_IOP_Dubai", "box_Ordered_Output_106.Out", "box_HackableController_v2_22.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_106_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|998323695", "998323695", "S13M040_IOP_Dubai", "box_Ordered_Output_106.Out", "box_HackableController_v2_7.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_106_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_103()
  l0 = self.box_HackableController_v2_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1868124685", "1868124685", "S13M040_IOP_Dubai", "box_Ordered_Output_106.Out", "box_HackableController_v2_103.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Ordered_Output_106_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_176
  l0.HackableEntity = "9223372066889899233"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1066737711", "1066737711", "S13M040_IOP_Dubai", "box_Ordered_Output_106.Out", "box_HackableController_v2_176.EnableHack", clone, l0)
  l0:EnableHack()
end
function export:f_box_Hackable_Monitor_104_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067401360430"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|336166144"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_102_Out
  l0 = self.box_Hackable_Monitor_104
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1767732821", "1767732821", "S13M040_IOP_Dubai", "box_Hackable_Monitor_104.HackSuccess", "box_VisibilityController_v2_102.Show", l0, l1)
  l1:Show()
end
function export:f_box_LightController_74_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_183"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|819206230"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_183_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_183_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2092573813", "2092573813", "S13M040_IOP_Dubai", "box_LightController_74.Out", "box_Ordered_Output_183.In", clone, l0)
  l0:In()
end
function export:f_box_CollisionController_50_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_133()
  l0 = self.box_Multiple_AND_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1991758317", "1991758317", "S13M040_IOP_Dubai", "box_CollisionController_50.CollisionsDisabled", "box_Multiple_AND_133.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Ordered_Output_132_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_4
  l0.CLO = "9223372047710334710"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|634542992", "634542992", "S13M040_IOP_Dubai", "box_Ordered_Output_132.Out", "box_CLOController_4.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_132_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_13
  l0.CLO = "9223372047710334711"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|584906461", "584906461", "S13M040_IOP_Dubai", "box_Ordered_Output_132.Out", "box_CLOController_13.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_132_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_46
  l0.CLO = "9223372047710334715"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|961516900", "961516900", "S13M040_IOP_Dubai", "box_Ordered_Output_132.Out", "box_CLOController_46.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_132_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_38
  l0.CLO = "9223372047710334714"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1833167133", "1833167133", "S13M040_IOP_Dubai", "box_Ordered_Output_132.Out", "box_CLOController_38.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_HackableController_v2_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_63()
  l0 = self.box_HackableController_v2_7
  l1 = self.box_Hackable_Monitor_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2010099536", "2010099536", "S13M040_IOP_Dubai", "box_HackableController_v2_7.Disabled", "box_Hackable_Monitor_63.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_63()
  l0 = self.box_HackableController_v2_7
  l1 = self.box_Hackable_Monitor_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1556020363", "1556020363", "S13M040_IOP_Dubai", "box_HackableController_v2_7.Enabled", "box_Hackable_Monitor_63.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CollisionController_67_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_133()
  l0 = self.box_Multiple_AND_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|20489742", "20489742", "S13M040_IOP_Dubai", "box_CollisionController_67.CollisionsDisabled", "box_Multiple_AND_133.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Hackable_Monitor_118_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1933165328"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_140_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_140_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_140_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_140_Out_3
  l0 = self.box_Hackable_Monitor_118
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1350453212", "1350453212", "S13M040_IOP_Dubai", "box_Hackable_Monitor_118.HackSuccess", "box_Ordered_Output_140.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_82_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PhoneCommunicationMonitor_6()
  l0 = self.box_MissionMessageController_v3_82
  l1 = self.box_PhoneCommunicationMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|795700632", "795700632", "S13M040_IOP_Dubai", "box_MissionMessageController_v3_82.Out", "box_PhoneCommunicationMonitor_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_152_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_48
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1482844872", "1482844872", "S13M040_IOP_Dubai", "box_Ordered_Output_152.Out", "box_DistanceBasedProgressBarController_v2_48.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_152_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_124()
  l0 = self.box_HackableController_v2_124
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|319361698", "319361698", "S13M040_IOP_Dubai", "box_Ordered_Output_152.Out", "box_HackableController_v2_124.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_152_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_178
  l0.Entity = "9223372047710334723"
  l0.SoundId = "soundbinary/3762083833.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1961984960", "1961984960", "S13M040_IOP_Dubai", "box_Ordered_Output_152.Out", "box_PlaySound_v2_178.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_152_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_172
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|783378926", "783378926", "S13M040_IOP_Dubai", "box_Ordered_Output_152.Out", "box_Timer_v2_172.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_174_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1187733378"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_98_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_98_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_98_Out_2
  l0 = self.box_Timer_v2_174
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1779658988", "1779658988", "S13M040_IOP_Dubai", "box_Timer_v2_174.TimeElapsed", "box_Ordered_Output_98.In", l0, l1)
  l1:In()
end
function export:f_box_VisibilityController_v2_102_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_126
  l0.HackableEntity = "9223372066889899233"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|594534993", "594534993", "S13M040_IOP_Dubai", "box_VisibilityController_v2_102.Out", "box_HackableController_v2_126.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_CollisionController_62_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_133()
  l0 = self.box_Multiple_AND_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|567282573", "567282573", "S13M040_IOP_Dubai", "box_CollisionController_62.CollisionsDisabled", "box_Multiple_AND_133.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_OnceOnly_v3_84_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1141985174"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_47_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_47_Out_3
  l0 = self.box_OnceOnly_v3_84
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1101352670", "1101352670", "S13M040_IOP_Dubai", "box_OnceOnly_v3_84.Out", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_117_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_121
  l0.CLO = "9223372047710334715"
  l0 = self.box_CLOController_117
  l1 = self.box_CLOController_121
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1922274902", "1922274902", "S13M040_IOP_Dubai", "box_CLOController_117.UnspawnedUser", "box_CLOController_121.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MaterialController_17_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|498178133", "498178133", "S13M040_IOP_Dubai", "box_MaterialController_17.ByIndexSet", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_PlaySound_v2_110_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_109
  l0.Entity = "9223372060518234727"
  l0.SoundId = "soundbinary/327987694.bnk"
  l0 = self.box_PlaySound_v2_110
  l1 = self.box_PlaySound_v2_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2109007635", "2109007635", "S13M040_IOP_Dubai", "box_PlaySound_v2_110.Out", "box_PlaySound_v2_109.Play", l0, l1)
  l1:Play()
end
function export:f_box_HackableController_v2_16_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_101()
  l0 = self.box_HackableController_v2_16
  l1 = self.box_Hackable_Monitor_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1606718144", "1606718144", "S13M040_IOP_Dubai", "box_HackableController_v2_16.Disabled", "box_Hackable_Monitor_101.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_16_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_101()
  l0 = self.box_HackableController_v2_16
  l1 = self.box_Hackable_Monitor_101
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|908999487", "908999487", "S13M040_IOP_Dubai", "box_HackableController_v2_16.Enabled", "box_Hackable_Monitor_101.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOController_38_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  self.Tech2 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Tech2
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|742815583"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_52_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_38
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2002350625", "2002350625", "S13M040_IOP_Dubai", "box_CLOController_38.OnUserInPlace", "box_CollisionController_52.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_LightController_128_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372069310127461"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|992712574"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1940877843", "1940877843", "S13M040_IOP_Dubai", "box_LightController_128.Disabled", "box_LightController_131.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_78_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518234338"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1176323833"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_78
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1995412450", "1995412450", "S13M040_IOP_Dubai", "box_Timer_v2_78.TimeElapsed", "box_LightController_79.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_147_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175237"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|616519895"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1531713605", "1531713605", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_145.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175241"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1283807518"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2140208327", "2140208327", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_158.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175253"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|60817924"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1439531476", "1439531476", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_157.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175265"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|123571320"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1501233367", "1501233367", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_156.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175721"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2078612123"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2109728089", "2109728089", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_155.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175725"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|818319272"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1289563630", "1289563630", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_154.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175729"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1367897882"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|380342226", "380342226", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_153.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175737"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1662280252"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|496704650", "496704650", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_151.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175741"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|926115872"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|804472690", "804472690", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_150.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175745"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|464740797"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1684272109", "1684272109", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_148.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175753"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1401087968"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|752441591", "752441591", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_149.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175757"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2041551211"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1213084973", "1213084973", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_146.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175761"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_167"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1242077555"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1814488762", "1814488762", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_167.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175765"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_166"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1756166296"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1511695149", "1511695149", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_166.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175769"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_165"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1500900571"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|154953976", "154953976", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_165.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175777"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_164"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|652826420"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|412076807", "412076807", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_164.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_16()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175781"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|884385909"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2083676953", "2083676953", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_163.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_17()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175785"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|36311758"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|411018554", "411018554", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_162.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_18()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175793"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|668236829"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|611413921", "611413921", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_161.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_19()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175797"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|207972155"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|30698830", "30698830", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_160.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_20()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175801"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1087771574"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|931771048", "931771048", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_159.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_21()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175705"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_170"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|157631179"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1813723943", "1813723943", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_170.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_22()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175709"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_169"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|772158581"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|133974611", "133974611", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_169.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_23()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175713"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_168"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1134587154"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|887195489", "887195489", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_168.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_147_Out_24()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175717"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|112969075"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|593559740", "593559740", "S13M040_IOP_Dubai", "box_Ordered_Output_147.Out", "box_LightController_130.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_138_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_68
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1731177182", "1731177182", "S13M040_IOP_Dubai", "box_Ordered_Output_138.Out", "box_DistanceBasedProgressBarController_v2_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_138_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_7()
  l0 = self.box_HackableController_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|692845585", "692845585", "S13M040_IOP_Dubai", "box_Ordered_Output_138.Out", "box_HackableController_v2_7.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_138_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_180
  l0.Entity = "9223372047710334737"
  l0.SoundId = "soundbinary/3762083833.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2139258285", "2139258285", "S13M040_IOP_Dubai", "box_Ordered_Output_138.Out", "box_PlaySound_v2_180.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_138_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_174
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2318043", "2318043", "S13M040_IOP_Dubai", "box_Ordered_Output_138.Out", "box_Timer_v2_174.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationMonitor_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_9
  l0.IopID = "HackThePlanet3"
  l0.IopEvent = "Generic.TeamSpeakEnded"
  l0 = self.box_PhoneCommunicationMonitor_6
  l1 = self.box_AI_IOPController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1023925205", "1023925205", "S13M040_IOP_Dubai", "box_PhoneCommunicationMonitor_6.Disabled", "box_AI_IOPController_9.SendEvent", l0, l1)
  l1:SendEvent()
end
function export:f_box_PhoneCommunicationMonitor_6_OnCommunicationFinished()
  local l0
  self = self._graph
  self:OnEnter_box_PhoneCommunicationMonitor_6()
  l0 = self.box_PhoneCommunicationMonitor_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1949395406", "1949395406", "S13M040_IOP_Dubai", "box_PhoneCommunicationMonitor_6.OnCommunicationFinished", "box_PhoneCommunicationMonitor_6.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_ListWriter_40_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_40
  self.HTP3NPCList = l0.Target
  l0 = self.box_AI_IOPController_2
  l0.IopID = "HackThePlanet3"
  l0.EmptyRoomName = "HackTehPlanet3"
  l0.PlayerEntity = self.PlayerEntity
  l0.NpcEntityList = self.HTP3NPCList
  l0.IopRoleList = self.HTP3NPCRoles
  l0 = self.box_ListWriter_40
  l1 = self.box_AI_IOPController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|81992814", "81992814", "S13M040_IOP_Dubai", "box_ListWriter_40.Added", "box_AI_IOPController_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_40_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_40
  self.HTP3NPCList = l0.Target
end
function export:f_box_ListWriter_40_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_40
  self.HTP3NPCList = l0.Target
end
function export:f_box_Timer_v2_90_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_185
  l0.HackableEntityList = self.HTP3Cameras
  l0 = self.box_Timer_v2_90
  l1 = self.box_HackableController_v2_185
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|43993801", "43993801", "S13M040_IOP_Dubai", "box_Timer_v2_90.TimeElapsed", "box_HackableController_v2_185.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MaterialController_21_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|434359736", "434359736", "S13M040_IOP_Dubai", "box_MaterialController_21.ByIndexSet", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_CLOController_4_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_4
  self.Emir = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Emir
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|359441848"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_62_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_4
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1673587848", "1673587848", "S13M040_IOP_Dubai", "box_CLOController_4.OnUserInPlace", "box_CollisionController_62.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_CollisionController_52_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_133()
  l0 = self.box_Multiple_AND_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1283990533", "1283990533", "S13M040_IOP_Dubai", "box_CollisionController_52.CollisionsDisabled", "box_Multiple_AND_133.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_ListWriter_85_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_85
  self.HTP3Cameras = l0.Target
end
function export:f_box_ListWriter_85_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_85
  self.HTP3Cameras = l0.Target
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518234338"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|124147553"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_box_LightController_74_Out
  l0 = self.box_ListWriter_85
  l1 = Boxes[PathID("domino/System/LightController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1521940565", "1521940565", "S13M040_IOP_Dubai", "box_ListWriter_85.Out", "box_LightController_74.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ListWriter_85_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_85
  self.HTP3Cameras = l0.Target
end
function export:f_box_SecurityCamController_127_CanExitSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_136
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|433285462", "433285462", "S13M040_IOP_Dubai", "box_SecurityCamController_127.CanExitSet", "box_CinematicPrep_136.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_SecurityCamController_127_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SecurityCamController_127()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1197644365", "1197644365", "S13M040_IOP_Dubai", "box_SecurityCamController_127.EnterForced", "box_SecurityCamController_127.SetCanExit", clone, l0)
  l0:SetCanExit()
end
function export:f_box_HackableController_v2_103_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_122()
  l0 = self.box_HackableController_v2_103
  l1 = self.box_Hackable_Monitor_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1922891834", "1922891834", "S13M040_IOP_Dubai", "box_HackableController_v2_103.Disabled", "box_Hackable_Monitor_122.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_103_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_122()
  l0 = self.box_HackableController_v2_103
  l1 = self.box_Hackable_Monitor_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|140167957", "140167957", "S13M040_IOP_Dubai", "box_HackableController_v2_103.Enabled", "box_Hackable_Monitor_122.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_173_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|897539651"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_96_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_96_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_96_Out_2
  l0 = self.box_Timer_v2_173
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1048769162", "1048769162", "S13M040_IOP_Dubai", "box_Timer_v2_173.TimeElapsed", "box_Ordered_Output_96.In", l0, l1)
  l1:In()
end
function export:f_box_MaterialController_18_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|157022359", "157022359", "S13M040_IOP_Dubai", "box_MaterialController_18.ByIndexSet", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_183_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_80
  l0.Entity = "9223372060518234727"
  l0.SoundId = "soundbinary/127651864.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1657518304", "1657518304", "S13M040_IOP_Dubai", "box_Ordered_Output_183.Out", "box_PlaySound_v2_80.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_183_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_182
  l0.Entity = "9223372065584803140"
  l0.SoundId = "soundbinary/503594975.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|280562585", "280562585", "S13M040_IOP_Dubai", "box_Ordered_Output_183.Out", "box_PlaySound_v2_182.Play", clone, l0)
  l0:Play()
end
function export:f_box_CLOController_123_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_125()
  l0 = self.box_CLOController_123
  l1 = self.box_Multiple_AND_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|703432780", "703432780", "S13M040_IOP_Dubai", "box_CLOController_123.Deactivated", "box_Multiple_AND_125.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_Timer_v2_171_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1488470859"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_91_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_91_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_91_Out_2
  l0 = self.box_Timer_v2_171
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1747913608", "1747913608", "S13M040_IOP_Dubai", "box_Timer_v2_171.TimeElapsed", "box_Ordered_Output_91.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_143_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175773"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1391140047"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1779706681", "1779706681", "S13M040_IOP_Dubai", "box_LightController_143.Disabled", "box_LightController_144.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Hackable_Monitor_101_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1411130214"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_10_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_10_Out_3
  l0 = self.box_Hackable_Monitor_101
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|836329945", "836329945", "S13M040_IOP_Dubai", "box_Hackable_Monitor_101.HackSuccess", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_96_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334735"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|399877550"
  l0.ByIndexSet = self.f_box_MaterialController_17_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2087223616", "2087223616", "S13M040_IOP_Dubai", "box_Ordered_Output_96.Out", "box_MaterialController_17.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_96_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067401360424"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1268117410"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|575521430", "575521430", "S13M040_IOP_Dubai", "box_Ordered_Output_96.Out", "box_VisibilityController_v2_95.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_96_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372069310127152"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|502013344"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_128_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|264046806", "264046806", "S13M040_IOP_Dubai", "box_Ordered_Output_96.Out", "box_LightController_128.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_141_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_54
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1375305016", "1375305016", "S13M040_IOP_Dubai", "box_Ordered_Output_141.Out", "box_DistanceBasedProgressBarController_v2_54.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_141_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_103()
  l0 = self.box_HackableController_v2_103
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1327987300", "1327987300", "S13M040_IOP_Dubai", "box_Ordered_Output_141.Out", "box_HackableController_v2_103.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_141_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_181
  l0.Entity = "9223372047710334755"
  l0.SoundId = "soundbinary/3762083833.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|756269886", "756269886", "S13M040_IOP_Dubai", "box_Ordered_Output_141.Out", "box_PlaySound_v2_181.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_141_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_175
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1731436643", "1731436643", "S13M040_IOP_Dubai", "box_Ordered_Output_141.Out", "box_Timer_v2_175.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_22_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_118()
  l0 = self.box_HackableController_v2_22
  l1 = self.box_Hackable_Monitor_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|500799859", "500799859", "S13M040_IOP_Dubai", "box_HackableController_v2_22.Disabled", "box_Hackable_Monitor_118.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_22_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_118()
  l0 = self.box_HackableController_v2_22
  l1 = self.box_Hackable_Monitor_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1607249673", "1607249673", "S13M040_IOP_Dubai", "box_HackableController_v2_22.Enabled", "box_Hackable_Monitor_118.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_IOPController_9_SendEventCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|89993809"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_106_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_106_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_106_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_106_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_106_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_106_Out_5
  l0 = self.box_AI_IOPController_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|745465998", "745465998", "S13M040_IOP_Dubai", "box_AI_IOPController_9.SendEventCompleted", "box_Ordered_Output_106.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_83
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective030",
    item = "Objective",
    id = "560731"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1082987367", "1082987367", "S13M040_IOP_Dubai", "box_Ordered_Output_47.Out", "box_MissionMessageController_v3_83.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372060518234338"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1704926456"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = self.f_box_LightController_75_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1446235850", "1446235850", "S13M040_IOP_Dubai", "box_Ordered_Output_47.Out", "box_LightController_75.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_47_Out_2()
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
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2143803678"
  l0._DynamicAnchors = {Out = 12}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_44_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_44_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_44_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_44_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_44_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_44_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_44_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_44_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_44_Out_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|725344453", "725344453", "S13M040_IOP_Dubai", "box_Ordered_Output_47.Out", "box_Ordered_Output_44.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_47_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_86
  l0.Entity = "9223372065584803140"
  l0.SoundId = "soundbinary/1680735807.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|32776117", "32776117", "S13M040_IOP_Dubai", "box_Ordered_Output_47.Out", "box_PlaySound_v2_86.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334737"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|618633833"
  l0.ByIndexSet = self.f_box_MaterialController_21_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|581305587", "581305587", "S13M040_IOP_Dubai", "box_Ordered_Output_98.Out", "box_MaterialController_21.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_98_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067401360420"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|344446877"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1647074476", "1647074476", "S13M040_IOP_Dubai", "box_Ordered_Output_98.Out", "box_VisibilityController_v2_97.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_98_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175731"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1679317841"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_135_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|482992767", "482992767", "S13M040_IOP_Dubai", "box_Ordered_Output_98.Out", "box_LightController_135.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_136_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_82
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M040.Objectives.Objective030",
    item = "Objective",
    id = "560731"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  l0 = self.box_CinematicPrep_136
  l1 = self.box_MissionMessageController_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1888271074", "1888271074", "S13M040_IOP_Dubai", "box_CinematicPrep_136.PostOut", "box_MissionMessageController_v3_82.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_HackableController_v2_176_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hackable_Monitor_104
  l0.HackableEntity = "9223372066889899233"
  l0 = self.box_HackableController_v2_176
  l1 = self.box_Hackable_Monitor_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|90572726", "90572726", "S13M040_IOP_Dubai", "box_HackableController_v2_176.Enabled", "box_Hackable_Monitor_104.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_LightController_142_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175749"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|102363928"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|155217070", "155217070", "S13M040_IOP_Dubai", "box_LightController_142.Disabled", "box_LightController_139.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_120_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_125()
  l0 = self.box_CLOController_120
  l1 = self.box_Multiple_AND_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1630752224", "1630752224", "S13M040_IOP_Dubai", "box_CLOController_120.Deactivated", "box_Multiple_AND_125.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_AI_IOPController_114_EndForced()
  local l0
  self = self._graph
  l0 = self.box_AI_IOPController_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1077131149", "1077131149", "S13M040_IOP_Dubai", "box_AI_IOPController_114.EndForced", "Out", l0, self)
  self:Out()
end
function export:f_box_CLOController_46_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_46
  self.Tech1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Tech1
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|191850114"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_50_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_46
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1453176", "1453176", "S13M040_IOP_Dubai", "box_CLOController_46.OnUserInPlace", "box_CollisionController_50.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_Ordered_Output_55_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|192264913"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_132_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_132_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_132_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_132_Out_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1475980250", "1475980250", "S13M040_IOP_Dubai", "box_Ordered_Output_55.Out", "box_Ordered_Output_132.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_55_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_85
  l0.Input = self.HTP3Cameras
  l0.Data[0] = "9223372047710334719"
  l0.Data[1] = "9223372047710334763"
  l0.Data[2] = "9223372047710334731"
  l0.Data[3] = "9223372047710334767"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|681606388", "681606388", "S13M040_IOP_Dubai", "box_Ordered_Output_55.Out", "box_ListWriter_85.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_55_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1491343248"
  l0._DynamicAnchors = {Out = 16}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_24_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_24_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_24_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_24_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_24_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_24_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_24_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_24_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_24_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_24_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_24_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_24_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_24_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_24_Out_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|219914050", "219914050", "S13M040_IOP_Dubai", "box_Ordered_Output_55.Out", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_VisibilityController_v2_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = {
    "9223372067401360434",
    "9223372067401360436",
    "9223372067401360438",
    "9223372067401360440",
    "9223372067401360442",
    "9223372067401360444",
    "9223372067401360446",
    "9223372067401360448",
    "9223372067401360450",
    "9223372067401360452",
    "9223372067401360454",
    "9223372067401360456",
    "9223372067401360458",
    "9223372067401360460",
    "9223372067401360462",
    "9223372067401360464",
    "9223372067401360466",
    "9223372067401360468",
    "9223372067401360472",
    "9223372067401360474",
    "9223372067401360476",
    "9223372067401360478",
    "9223372067401360480",
    "9223372067401360482",
    "9223372067401360484",
    "9223372067401360432"
  }
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|430721"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1397600986", "1397600986", "S13M040_IOP_Dubai", "box_VisibilityController_v2_88.Out", "box_VisibilityController_v2_105.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_33
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|101958641", "101958641", "S13M040_IOP_Dubai", "box_Ordered_Output_10.Out", "box_DistanceBasedProgressBarController_v2_33.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_16()
  l0 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1954768482", "1954768482", "S13M040_IOP_Dubai", "box_Ordered_Output_10.Out", "box_HackableController_v2_16.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_10_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_177
  l0.Entity = "9223372047710334717"
  l0.SoundId = "soundbinary/3762083833.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|533931478", "533931478", "S13M040_IOP_Dubai", "box_Ordered_Output_10.Out", "box_PlaySound_v2_177.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_10_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_171
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2055296166", "2055296166", "S13M040_IOP_Dubai", "box_Ordered_Output_10.Out", "box_Timer_v2_171.Start", clone, l0)
  l0:Start()
end
function export:f_box_HackableController_v2_124_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_25()
  l0 = self.box_HackableController_v2_124
  l1 = self.box_Hackable_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|24125368", "24125368", "S13M040_IOP_Dubai", "box_HackableController_v2_124.Disabled", "box_Hackable_Monitor_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_124_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_25()
  l0 = self.box_HackableController_v2_124
  l1 = self.box_Hackable_Monitor_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|243477941", "243477941", "S13M040_IOP_Dubai", "box_HackableController_v2_124.Enabled", "box_Hackable_Monitor_25.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AI_IOPController_2_StartCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_137
  l0.Seconds = 0.5
  l0 = self.box_AI_IOPController_2
  l1 = self.box_Timer_v2_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1817966533", "1817966533", "S13M040_IOP_Dubai", "box_AI_IOPController_2.StartCompleted", "box_Timer_v2_137.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_3_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1314087797"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_55_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_55_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_55_Out_2
  l0.Out[3] = DummyFunction
  l0 = self.box_PlaySound_v2_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|492931598", "492931598", "S13M040_IOP_Dubai", "box_PlaySound_v2_3.Started", "box_Ordered_Output_55.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_185_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_108
  l0.PlayerEntity = self.PlayerEntity
  l0 = self.box_HackableController_v2_185
  l1 = self.box_AI_IOPController_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|412455054", "412455054", "S13M040_IOP_Dubai", "box_HackableController_v2_185.Disabled", "box_AI_IOPController_108.TriggerIOPDisconnectScreenAndKickOut", l0, l1)
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334755"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2049177620"
  l0.ByIndexSet = self.f_box_MaterialController_19_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1881052033", "1881052033", "S13M040_IOP_Dubai", "box_Ordered_Output_100.Out", "box_MaterialController_19.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067401360426"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|240940803"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|925278230", "925278230", "S13M040_IOP_Dubai", "box_Ordered_Output_100.Out", "box_VisibilityController_v2_99.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_100_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175747"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1246453373"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_142_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1966519370", "1966519370", "S13M040_IOP_Dubai", "box_Ordered_Output_100.Out", "box_LightController_142.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Hackable_Monitor_122_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|956148979"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_141_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_141_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_141_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_141_Out_3
  l0 = self.box_Hackable_Monitor_122
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|572816261", "572816261", "S13M040_IOP_Dubai", "box_Hackable_Monitor_122.HackSuccess", "box_Ordered_Output_141.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_91_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334717"
  l0.Index = 1
  l0.ParameterName = "DiffuseColor1"
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1707648844"
  l0.ByIndexSet = self.f_box_MaterialController_15_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1907626896", "1907626896", "S13M040_IOP_Dubai", "box_Ordered_Output_91.Out", "box_MaterialController_15.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_91_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067401360422"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1115569705"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1996588931", "1996588931", "S13M040_IOP_Dubai", "box_Ordered_Output_91.Out", "box_VisibilityController_v2_89.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_91_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175803"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1947380506"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_129_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1614106655", "1614106655", "S13M040_IOP_Dubai", "box_Ordered_Output_91.Out", "box_LightController_129.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334717"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|213745642"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|450740080", "450740080", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_12.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334735"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|633465180"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1878123320", "1878123320", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_20.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334737"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|565490998"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1393032380", "1393032380", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_26.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334723"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|552744719"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|392687100", "392687100", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_27.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334755"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|259607179"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|607264333", "607264333", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_28.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065652875521"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2021018383"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1074856302", "1074856302", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_30.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052954"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1724047379"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|548278017", "548278017", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_29.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052956"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|925155719"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|568225300", "568225300", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_31.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052958"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|58479913"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|274589551", "274589551", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_35.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372060518233897"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1294675225"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1313296992", "1313296992", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_36.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052960"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|547487027"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1794154920", "1794154920", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_37.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052962"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1735233147"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|775840686", "775840686", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_56.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_12()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052964"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1048254537"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1201029403", "1201029403", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_58.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_13()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052966"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|480896250"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|716996716", "716996716", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_53.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_14()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052968"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|955868346"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|555754500", "555754500", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_66.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_24_Out_15()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052970"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1599646535"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|155754756", "155754756", "S13M040_IOP_Dubai", "box_Ordered_Output_24.Out", "box_MaterialController_64.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_CLOController_112_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_123
  l0.CLO = "9223372047710334710"
  l0 = self.box_CLOController_112
  l1 = self.box_CLOController_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|276091306", "276091306", "S13M040_IOP_Dubai", "box_CLOController_112.UnspawnedUser", "box_CLOController_123.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_MissionMessageController_v3_83_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_90
  l0.Seconds = 5
  l0 = self.box_MissionMessageController_v3_83
  l1 = self.box_Timer_v2_90
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|288794117", "288794117", "S13M040_IOP_Dubai", "box_MissionMessageController_v3_83.Out", "box_Timer_v2_90.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_109_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1971568772"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_119_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_119_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_119_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_119_Out_3
  l0 = self.box_PlaySound_v2_109
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1627917346", "1627917346", "S13M040_IOP_Dubai", "box_PlaySound_v2_109.Out", "box_Ordered_Output_119.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_113_UnspawnedUser()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_120
  l0.CLO = "9223372047710334714"
  l0 = self.box_CLOController_113
  l1 = self.box_CLOController_120
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|997230600", "997230600", "S13M040_IOP_Dubai", "box_CLOController_113.UnspawnedUser", "box_CLOController_120.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Ordered_Output_94_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372047710334723"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|798398424"
  l0.ByIndexSet = self.f_box_MaterialController_18_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|679046244", "679046244", "S13M040_IOP_Dubai", "box_Ordered_Output_94.Out", "box_MaterialController_18.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_94_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372067401360428"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1131807703"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|981111943", "981111943", "S13M040_IOP_Dubai", "box_Ordered_Output_94.Out", "box_VisibilityController_v2_93.Show", clone, l0)
  l0:Show()
end
function export:f_box_Ordered_Output_94_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175771"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|886848311"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LightController_143_Disabled
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2036894174", "2036894174", "S13M040_IOP_Dubai", "box_Ordered_Output_94.Out", "box_LightController_143.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Hackable_Monitor_63_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|541493217"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_138_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_138_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_138_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_138_Out_3
  l0 = self.box_Hackable_Monitor_63
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1995676802", "1995676802", "S13M040_IOP_Dubai", "box_Hackable_Monitor_63.HackSuccess", "box_Ordered_Output_138.In", l0, l1)
  l1:In()
end
function export:f_box_LightController_135_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372068877175733"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|619854977"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1776351153", "1776351153", "S13M040_IOP_Dubai", "box_LightController_135.Disabled", "box_LightController_134.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_LightController_75_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = {
    "9223372067401360434",
    "9223372067401360436",
    "9223372067401360438",
    "9223372067401360440",
    "9223372067401360442",
    "9223372067401360444",
    "9223372067401360446",
    "9223372067401360448",
    "9223372067401360450",
    "9223372067401360452",
    "9223372067401360454",
    "9223372067401360456",
    "9223372067401360458",
    "9223372067401360460",
    "9223372067401360462",
    "9223372067401360464",
    "9223372067401360466",
    "9223372067401360468",
    "9223372067401360472",
    "9223372067401360474",
    "9223372067401360476",
    "9223372067401360478",
    "9223372067401360480",
    "9223372067401360482",
    "9223372067401360484",
    "9223372067401360432"
  }
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1985055033"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_107_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1243122066", "1243122066", "S13M040_IOP_Dubai", "box_LightController_75.Out", "box_VisibilityController_v2_107.Show", clone, l0)
  l0:Show()
end
function export:f_box_MaterialController_15_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1091460477", "1091460477", "S13M040_IOP_Dubai", "box_MaterialController_15.ByIndexSet", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Timer_v2_137_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_SecurityCamController_127()
  l0 = self.box_Timer_v2_137
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1342083032", "1342083032", "S13M040_IOP_Dubai", "box_Timer_v2_137.TimeElapsed", "box_SecurityCamController_127.ForceEnter", l0, l1)
  l1:ForceEnter()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  self.Staff1 = l0.UserID
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = self.Staff1
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|206822970"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_67_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_CLOController_13
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|653284486", "653284486", "S13M040_IOP_Dubai", "box_CLOController_13.OnUserInPlace", "box_CollisionController_67.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_CLOController_116_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_125()
  l0 = self.box_CLOController_116
  l1 = self.box_Multiple_AND_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|918010013", "918010013", "S13M040_IOP_Dubai", "box_CLOController_116.Deactivated", "box_Multiple_AND_125.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_Multiple_AND_133_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_40
  l0.Input = self.HTP3NPCList
  l0.Data[0] = self.Emir
  l0.Data[1] = self.Staff1
  l0.Data[2] = self.Tech1
  l0.Data[3] = self.Tech2
  l0 = self.box_Multiple_AND_133
  l1 = self.box_ListWriter_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2014880359", "2014880359", "S13M040_IOP_Dubai", "box_Multiple_AND_133.Out", "box_ListWriter_40.Add", l0, l1)
  l1:Add()
end
function export:f_box_Timer_v2_175_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1461895996"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_100_Out_2
  l0 = self.box_Timer_v2_175
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|105942336", "105942336", "S13M040_IOP_Dubai", "box_Timer_v2_175.TimeElapsed", "box_Ordered_Output_100.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_3
  l0.SoundId = "soundbinary/3973683875.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1345976914", "1345976914", "S13M040_IOP_Dubai", "box_Get_Player_ID_34.Out", "box_PlaySound_v2_3.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_140_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_1
  l0.Text = {
    section = "HACKING.Interface Messages",
    item = "UploadingVirus",
    id = "171882"
  }
  l0.TotalTime = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|204837718", "204837718", "S13M040_IOP_Dubai", "box_Ordered_Output_140.Out", "box_DistanceBasedProgressBarController_v2_1.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_140_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_22()
  l0 = self.box_HackableController_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1135593607", "1135593607", "S13M040_IOP_Dubai", "box_Ordered_Output_140.Out", "box_HackableController_v2_22.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_140_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_179
  l0.Entity = "9223372047710334735"
  l0.SoundId = "soundbinary/3762083833.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1501341578", "1501341578", "S13M040_IOP_Dubai", "box_Ordered_Output_140.Out", "box_PlaySound_v2_179.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_140_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_173
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2009308546", "2009308546", "S13M040_IOP_Dubai", "box_Ordered_Output_140.Out", "box_Timer_v2_173.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_121_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_125()
  l0 = self.box_CLOController_121
  l1 = self.box_Multiple_AND_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|652737996", "652737996", "S13M040_IOP_Dubai", "box_CLOController_121.Deactivated", "box_Multiple_AND_125.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_LightController_129_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LightController.lua")]
  l0.LightEntity = "9223372069310127463"
  l0.SetEnabled = nil
  l0._graph = self
  l0._name = "box_LightController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|919462484"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1369889749", "1369889749", "S13M040_IOP_Dubai", "box_LightController_129.Disabled", "box_LightController_71.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_119_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_112
  l0.User = self.Emir
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|662608618", "662608618", "S13M040_IOP_Dubai", "box_Ordered_Output_119.Out", "box_CLOController_112.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_119_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_115
  l0.User = self.Staff1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1244441814", "1244441814", "S13M040_IOP_Dubai", "box_Ordered_Output_119.Out", "box_CLOController_115.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_119_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_117
  l0.User = self.Tech1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|25464359", "25464359", "S13M040_IOP_Dubai", "box_Ordered_Output_119.Out", "box_CLOController_117.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_Ordered_Output_119_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_113
  l0.User = self.Tech2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|796792405", "796792405", "S13M040_IOP_Dubai", "box_Ordered_Output_119.Out", "box_CLOController_113.UnspawnUser", clone, l0)
  l0:UnspawnUser()
end
function export:f_box_VisibilityController_v2_107_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_78
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|10892503", "10892503", "S13M040_IOP_Dubai", "box_VisibilityController_v2_107.Out", "box_Timer_v2_78.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hackable_Monitor_25_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|293160907"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_152_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_152_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_152_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_152_Out_3
  l0 = self.box_Hackable_Monitor_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|755707331", "755707331", "S13M040_IOP_Dubai", "box_Hackable_Monitor_25.HackSuccess", "box_Ordered_Output_152.In", l0, l1)
  l1:In()
end
function export:f_box_MaterialController_19_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_5()
  l0 = self.box_Multiple_AND_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|629731101", "629731101", "S13M040_IOP_Dubai", "box_MaterialController_19.ByIndexSet", "box_Multiple_AND_5.Condition", clone, l0)
  l0:Condition(4)
end
function export:f_box_AI_IOPController_108_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  l0 = self.box_AI_IOPController_114
  l0.IopID = "HackThePlanet3"
  l0 = self.box_AI_IOPController_108
  l1 = self.box_AI_IOPController_114
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1369468999", "1369468999", "S13M040_IOP_Dubai", "box_AI_IOPController_108.IOPKickOutComplete", "box_AI_IOPController_114.ForceEnd", l0, l1)
  l1:ForceEnd()
end
function export:f_box_AI_IOPController_108_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_110
  l0.Entity = "9223372065584803140"
  l0.SoundId = "soundbinary/2308844121.bnk"
  l0 = self.box_AI_IOPController_108
  l1 = self.box_PlaySound_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1845770147", "1845770147", "S13M040_IOP_Dubai", "box_AI_IOPController_108.Out", "box_PlaySound_v2_110.Play", l0, l1)
  l1:Play()
end
function export:f_box_Multiple_AND_5_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Multiple_AND_5
  l1 = self.box_OnceOnly_v3_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1352442821", "1352442821", "S13M040_IOP_Dubai", "box_Multiple_AND_5.Out", "box_OnceOnly_v3_84.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySound_v2_80_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = nil
  l0.EntityList = {
    "9223372067401360424",
    "9223372067401360422",
    "9223372067401360428",
    "9223372067401360420",
    "9223372067401360426",
    "9223372067401360430"
  }
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1341552855"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = self.f_box_VisibilityController_v2_88_Out
  l0 = self.box_PlaySound_v2_80
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|801986673", "801986673", "S13M040_IOP_Dubai", "box_PlaySound_v2_80.Out", "box_VisibilityController_v2_88.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065652875521"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|927405574"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1830354682", "1830354682", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_49.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052954"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1895879948"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|569761387", "569761387", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_51.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052956"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1896281178"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1283561851", "1283561851", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_69.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052958"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1312881658"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|882553429", "882553429", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_39.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372060518233897"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1705503387"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1177197856", "1177197856", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_41.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052960"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2023561501"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2064088208", "2064088208", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_72.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052962"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1935921676"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|637495958", "637495958", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_60.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052964"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|967759277"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1126503072", "1126503072", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_42.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052966"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|761923069"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1587146454", "1587146454", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_61.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052968"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1936423210"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|2019426104", "2019426104", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_45.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372065653052970"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1474408248"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|1409873129", "1409873129", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_MaterialController_43.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_44_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|539708292"
  l0._DynamicAnchors = {Out = 25}
  l0.Out[0] = self.f_box_Ordered_Output_147_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_147_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_147_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_147_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_147_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_147_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_147_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_147_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_147_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_147_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_147_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_147_Out_11
  l0.Out[12] = self.f_box_Ordered_Output_147_Out_12
  l0.Out[13] = self.f_box_Ordered_Output_147_Out_13
  l0.Out[14] = self.f_box_Ordered_Output_147_Out_14
  l0.Out[15] = self.f_box_Ordered_Output_147_Out_15
  l0.Out[16] = self.f_box_Ordered_Output_147_Out_16
  l0.Out[17] = self.f_box_Ordered_Output_147_Out_17
  l0.Out[18] = self.f_box_Ordered_Output_147_Out_18
  l0.Out[19] = self.f_box_Ordered_Output_147_Out_19
  l0.Out[20] = self.f_box_Ordered_Output_147_Out_20
  l0.Out[21] = self.f_box_Ordered_Output_147_Out_21
  l0.Out[22] = self.f_box_Ordered_Output_147_Out_22
  l0.Out[23] = self.f_box_Ordered_Output_147_Out_23
  l0.Out[24] = self.f_box_Ordered_Output_147_Out_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|633684599", "633684599", "S13M040_IOP_Dubai", "box_Ordered_Output_44.Out", "box_Ordered_Output_147.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_HackableController_v2_7()
  local l0
  l0 = self.box_HackableController_v2_7
  l0.HackableEntity = "9223372047710334737"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_Hackable_Monitor_118()
  local l0
  l0 = self.box_Hackable_Monitor_118
  l0.HackableEntity = "9223372047710334735"
end
function export:OnEnter_box_HackableController_v2_16()
  local l0
  l0 = self.box_HackableController_v2_16
  l0.HackableEntity = "9223372047710334717"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_PhoneCommunicationMonitor_6()
  local l0
  l0 = self.box_PhoneCommunicationMonitor_6
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049406440559"
end
function export:OnEnter_box_Multiple_AND_125()
end
function export:OnEnter_box_SecurityCamController_127()
  local l0
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372047710334719"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = 0
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S13\\s13m040\\s13m040_iop.domino|@S13M040_IOP_Dubai|763844321"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = self.f_box_SecurityCamController_127_CanExitSet
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_127_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
end
function export:OnEnter_box_HackableController_v2_103()
  local l0
  l0 = self.box_HackableController_v2_103
  l0.HackableEntity = "9223372047710334755"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_Hackable_Monitor_101()
  local l0
  l0 = self.box_Hackable_Monitor_101
  l0.HackableEntity = "9223372047710334717"
  l0.AutoDisable = 1
end
function export:OnEnter_box_HackableController_v2_22()
  local l0
  l0 = self.box_HackableController_v2_22
  l0.HackableEntity = "9223372047710334735"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_HackableController_v2_124()
  local l0
  l0 = self.box_HackableController_v2_124
  l0.HackableEntity = "9223372047710334723"
  l0.ProfileLinkedToHack = 1
end
function export:OnEnter_box_Hackable_Monitor_122()
  local l0
  l0 = self.box_Hackable_Monitor_122
  l0.HackableEntity = "9223372047710334755"
end
function export:OnEnter_box_Hackable_Monitor_63()
  local l0
  l0 = self.box_Hackable_Monitor_63
  l0.HackableEntity = "9223372047710334737"
end
function export:OnEnter_box_Multiple_AND_133()
end
function export:OnEnter_box_Hackable_Monitor_25()
  local l0
  l0 = self.box_Hackable_Monitor_25
  l0.HackableEntity = "9223372047710334723"
  l0.AutoDisable = 1
end
function export:OnEnter_box_Multiple_AND_5()
end
function export:Out()
end
_compilerVersion = 4
