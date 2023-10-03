export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/System/BreakableEntityMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14_m070_cin_snipers.S14_M070_CIN_Snipers_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14m070_scr.S14M070_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/StopMusic.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/4128667699.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S14M070_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main"
  self.PlayerEntity = "9223372047128032495"
  self.VotingMachines = {}
  self.BreakableObjective = nil
  self.IsCheckPoint_1 = 0
  self.Objectives_LocatedORDestroyed = 0
  self.HACK_DebugAnnotions_VotingMachines = {}
  self.VotingMachines_1stF_INT = {}
  self.VotingMachines_1stF_Courtyard = {}
  self.BrokenEntity01 = nil
  self.BrokenEntity02 = nil
  self.VotingMachines_3rdF_BaySide = {}
  self.BrokenEntity03 = nil
  self.VotingMachines_3rdF_BridgeSide = {}
  self.BrokenEntity04 = nil
  self.Convo_Guard01 = nil
  self.Convo_Guard02 = nil
  self.Josh = nil
  self.ExplosionParticles_3rdF_BridgeSide = {}
  self.ExplosionParticles_3rdF_BaySide = {}
  self.box_Timer_v2_135 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_135
  l0._graph = self
  l0._name = "box_Timer_v2_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|28356311"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_135_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_98 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_98
  l0._graph = self
  l0._name = "box_CinematicPrep_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|34790724"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_98_PostOut
  self.box_CinematicPrep_97 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_97
  l0._graph = self
  l0._name = "box_CinematicPrep_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|65003699"
  l0.PreOut = self.f_box_CinematicPrep_97_PreOut
  l0.PostOut = DummyFunction
  self.box_Intel_Controller_59 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_59
  l0._graph = self
  l0._name = "box_Intel_Controller_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|112291474"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_59_Disabled
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|124958769"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_PlaySequence_v5_51 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_51
  l0._graph = self
  l0._name = "box_PlaySequence_v5_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|126552539"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_51_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_51_Finished
  self.box_BreakableEntityMonitor_v2_22 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_22
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|138769481"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_22_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_22_Breaking
  l0.AllBroken = self.f_box_BreakableEntityMonitor_v2_22_AllBroken
  self.box_S14_M070_CIN_Snipers_Main_78 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14_m070_cin_snipers.S14_M070_CIN_Snipers_Main.debug.lua")
  l0 = self.box_S14_M070_CIN_Snipers_Main_78
  l0._graph = self
  l0._name = "box_S14_M070_CIN_Snipers_Main_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|140489574"
  l0.Out = self.f_box_S14_M070_CIN_Snipers_Main_78_Out
  self.box_CinematicPrep_33 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_33
  l0._graph = self
  l0._name = "box_CinematicPrep_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|150986331"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_33_PostOut
  self.box_MultipleOR_70 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|217658600"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_PGTController_v2_15 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_15
  l0._graph = self
  l0._name = "box_PGTController_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|220244478"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_15_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Intel_Controller_52 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_52
  l0._graph = self
  l0._name = "box_Intel_Controller_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|228054192"
  l0.Enabled = self.f_box_Intel_Controller_52_Enabled
  l0.Disabled = DummyFunction
  self.box_MissionMonitor_161 = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self.box_MissionMonitor_161
  l0._graph = self
  l0._name = "box_MissionMonitor_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|240767790"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = self.f_box_MissionMonitor_161_OnMissionFailed
  l0.OnMissionAborted = DummyFunction
  self.box_Multiple_AND_83 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_83
  l0._graph = self
  l0._name = "box_Multiple_AND_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|288703683"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = DummyFunction
  self.box_Intel_Controller_18 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_18
  l0._graph = self
  l0._name = "box_Intel_Controller_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|323515421"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_18_Disabled
  self.box_PhoneCommunicationController_16 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_16
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|401391106"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_16_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_12 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_12
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|495462273"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_12_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_112 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_112
  l0._graph = self
  l0._name = "box_Timer_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|523086115"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_112_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionCheckpointReach_27 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_27
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|523877403"
  l0.Out = self.f_box_MissionCheckpointReach_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Hackable_Monitor_133 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_133
  l0._graph = self
  l0._name = "box_Hackable_Monitor_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|549198708"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = DummyFunction
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = self.f_box_Hackable_Monitor_133_HackContextual
  l0.AllHacked = DummyFunction
  self.box_Multiple_AND_21 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_21
  l0._graph = self
  l0._name = "box_Multiple_AND_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|585859338"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_21_Out
  self.box_PhoneCommunicationController_79 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_79
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|666667361"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_79_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_116 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_116
  l0._graph = self
  l0._name = "box_Timer_v2_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|673991466"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_116_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_117 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_117
  l0._graph = self
  l0._name = "box_Timer_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|688964322"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_117_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|733270196"
  l0.Out = self.f_box_MissionMessageController_v3_8_Out
  l0.MessageCompleted = DummyFunction
  self.box_ListWriter_54 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_54
  l0._graph = self
  l0._name = "box_ListWriter_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|740952377"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_54_Added
  l0.Removed = self.f_box_ListWriter_54_Removed
  l0.Out = self.f_box_ListWriter_54_Out
  self.box_MapPointController_v4_99 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_99
  l0._graph = self
  l0._name = "box_MapPointController_v4_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|768496677"
  l0.Shown = self.f_box_MapPointController_v4_99_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Timer_v2_131 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_131
  l0._graph = self
  l0._name = "box_Timer_v2_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|770088331"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_131_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_ListWriter_23 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_23
  l0._graph = self
  l0._name = "box_ListWriter_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|825230697"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_23_Added
  l0.Removed = self.f_box_ListWriter_23_Removed
  l0.Out = self.f_box_ListWriter_23_Out
  self.box_Intel_Controller_26 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_26
  l0._graph = self
  l0._name = "box_Intel_Controller_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|854732809"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_Mission_End_3 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_3
  l0._graph = self
  l0._name = "box_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|946944929"
  self.box_S14M070_SCR_Main_82 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14m070_scr.S14M070_SCR_Main.debug.lua")
  l0 = self.box_S14M070_SCR_Main_82
  l0._graph = self
  l0._name = "box_S14M070_SCR_Main_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|969377064"
  l0.Out_Debug_Annotations = self.f_box_S14M070_SCR_Main_82_Out_Debug_Annotations
  self.box_MultipleOR_38 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_38
  l0._graph = self
  l0._name = "box_MultipleOR_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|983613771"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_38_Out
  self.box_Intel_Controller_65 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_65
  l0._graph = self
  l0._name = "box_Intel_Controller_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|999472648"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_OnceOnly_v3_162 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_162
  l0._graph = self
  l0._name = "box_OnceOnly_v3_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1029365527"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_162_Out
  l0.ResetOut = DummyFunction
  self.box_BreakableEntityMonitor_v2_58 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_58
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1052785525"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_58_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_58_Breaking
  l0.AllBroken = self.f_box_BreakableEntityMonitor_v2_58_AllBroken
  self.box_PlaySound_v2_157 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_157
  l0._graph = self
  l0._name = "box_PlaySound_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1062725619"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S14M070_SCR_Main_39 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S14/S14M070/s14m070_scr.S14M070_SCR_Main.debug.lua")
  l0 = self.box_S14M070_SCR_Main_39
  l0._graph = self
  l0._name = "box_S14M070_SCR_Main_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1197539942"
  l0.Out_Debug_Annotations = self.f_box_S14M070_SCR_Main_39_Out_Debug_Annotations
  self.box_Intel_Controller_25 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_25
  l0._graph = self
  l0._name = "box_Intel_Controller_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1242648301"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_25_Disabled
  self.box_BreakableEntityMonitor_v2_46 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_46
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1251375664"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_46_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_46_Breaking
  l0.AllBroken = self.f_box_BreakableEntityMonitor_v2_46_AllBroken
  self.box_CLOMonitor_75 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_75
  l0._graph = self
  l0._name = "box_CLOMonitor_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1258629099"
  l0.Enabled = self.f_box_CLOMonitor_75_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_75_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_75_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_75_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self.box_CinematicPrep_80 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_80
  l0._graph = self
  l0._name = "box_CinematicPrep_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1264415609"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_80_PostOut
  self.box_ListWriter_10 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_10
  l0._graph = self
  l0._name = "box_ListWriter_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1299895672"
  l0._DynamicAnchors = {Data = 4}
  l0.Added = self.f_box_ListWriter_10_Added
  l0.Removed = self.f_box_ListWriter_10_Removed
  l0.Out = self.f_box_ListWriter_10_Out
  self.box_MultipleOR_81 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_81
  l0._graph = self
  l0._name = "box_MultipleOR_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1380728458"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_81_Out
  self.box_Intel_Controller_48 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_48
  l0._graph = self
  l0._name = "box_Intel_Controller_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1387853039"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Intel_Controller_48_Disabled
  self.box_ListWriter_45 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_45
  l0._graph = self
  l0._name = "box_ListWriter_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1400963824"
  l0._DynamicAnchors = {Data = 5}
  l0.Added = self.f_box_ListWriter_45_Added
  l0.Removed = self.f_box_ListWriter_45_Removed
  l0.Out = self.f_box_ListWriter_45_Out
  self.box_OnceOnly_v3_141 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_141
  l0._graph = self
  l0._name = "box_OnceOnly_v3_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1401212491"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_141_Out
  l0.ResetOut = DummyFunction
  self.box_ConsoleCommand_v2_62 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_62
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1408115098"
  l0.Enabled = self.f_box_ConsoleCommand_v2_62_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_62_Executed
  self.box_OnceOnly_v3_110 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_110
  l0._graph = self
  l0._name = "box_OnceOnly_v3_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1441038246"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_110_Out
  l0.ResetOut = DummyFunction
  self.box_MissionMessageController_v3_57 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_57
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1463620109"
  l0.Out = self.f_box_MissionMessageController_v3_57_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_68 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_68
  l0._graph = self
  l0._name = "box_MapPointController_v4_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1506278995"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_68_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MultipleOR_30 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_30
  l0._graph = self
  l0._name = "box_MultipleOR_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1508861337"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_30_Out
  self.box_MissionZone_11 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_11
  l0._graph = self
  l0._name = "box_MissionZone_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1532508826"
  l0.Enabled = self.f_box_MissionZone_11_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MapPointController_v4_53 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_53
  l0._graph = self
  l0._name = "box_MapPointController_v4_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1565511531"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_53_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionCheckpointReach_76 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_76
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1597318092"
  l0.Out = self.f_box_MissionCheckpointReach_76_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Intel_Controller_49 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_49
  l0._graph = self
  l0._name = "box_Intel_Controller_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1642101428"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_Intel_Controller_67 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_67
  l0._graph = self
  l0._name = "box_Intel_Controller_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1713679390"
  l0.Enabled = self.f_box_Intel_Controller_67_Enabled
  l0.Disabled = DummyFunction
  self.box_Timer_v2_139 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_139
  l0._graph = self
  l0._name = "box_Timer_v2_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1721730842"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_139_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_129 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_129
  l0._graph = self
  l0._name = "box_Timer_v2_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1735811858"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_129_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MapPointController_v4_19 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_19
  l0._graph = self
  l0._name = "box_MapPointController_v4_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1742058565"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_19_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_OnceOnly_v3_104 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_104
  l0._graph = self
  l0._name = "box_OnceOnly_v3_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1769399147"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_104_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_92 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_92
  l0._graph = self
  l0._name = "box_PlaySound_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1780117499"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Intel_Controller_17 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_17
  l0._graph = self
  l0._name = "box_Intel_Controller_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1801028520"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_Intel_Controller_20 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_20
  l0._graph = self
  l0._name = "box_Intel_Controller_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1808978092"
  l0.Enabled = self.f_box_Intel_Controller_20_Enabled
  l0.Disabled = DummyFunction
  self.box_ConsoleCommand_v2_66 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_66
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1825278027"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_66_Executed
  self.box_OnceOnly_v3_155 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_155
  l0._graph = self
  l0._name = "box_OnceOnly_v3_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1904341097"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_155_Out
  l0.ResetOut = DummyFunction
  self.box_MapPointController_v4_108 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_108
  l0._graph = self
  l0._name = "box_MapPointController_v4_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1908103507"
  l0.Shown = self.f_box_MapPointController_v4_108_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Intel_Controller_28 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_28
  l0._graph = self
  l0._name = "box_Intel_Controller_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1930382707"
  l0.Enabled = self.f_box_Intel_Controller_28_Enabled
  l0.Disabled = DummyFunction
  self.box_Hackable_Monitor_100 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_100
  l0._graph = self
  l0._name = "box_Hackable_Monitor_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1939980349"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_100_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_BreakableEntityMonitor_v2_24 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_24
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2015442226"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_24_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_24_Breaking
  l0.AllBroken = self.f_box_BreakableEntityMonitor_v2_24_AllBroken
  self.box_MapPointController_v4_43 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_43
  l0._graph = self
  l0._name = "box_MapPointController_v4_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2021705253"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_43_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2031063566"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_SetBoolean_v2_36 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_36
  l0._graph = self
  l0._name = "box_SetBoolean_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2040301669"
  l0.Out = self.f_box_SetBoolean_v2_36_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_36_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_36_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_36_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_36_SetFromBool
  self.box_Escape_Gameplay_50 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_50
  l0._graph = self
  l0._name = "box_Escape_Gameplay_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2051185971"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_50_Escaped
  l0.LeftArea = DummyFunction
  self.box_MissionMessageController_v3_29 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_29
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2061528804"
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_142 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_142
  l0._graph = self
  l0._name = "box_MapPointController_v4_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2072108995"
  l0.Shown = self.f_box_MapPointController_v4_142_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2115828857"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MapPointController_v4_128 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_128
  l0._graph = self
  l0._name = "box_MapPointController_v4_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2127490385"
  l0.Shown = self.f_box_MapPointController_v4_128_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_CLOMonitor_77 = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self.box_CLOMonitor_77
  l0._graph = self
  l0._name = "box_CLOMonitor_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2127639099"
  l0.Enabled = self.f_box_CLOMonitor_77_Enabled
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_box_CLOMonitor_77_GotUser
  l0.NotGotUser = self.f_box_CLOMonitor_77_NotGotUser
  l0.OnUserInPlace = self.f_box_CLOMonitor_77_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
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
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|204619457", "204619457", "S14M070_Main", "CheckPoint_0", "box_MultipleOR_81.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "S14M070_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1876804066", "1876804066", "S14M070_Main", "CheckPoint_1", "box_MissionLayer_v2_4.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_3()
  l0 = self.box_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|128580138", "128580138", "S14M070_Main", "CheckPoint_2", "box_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_81()
  l0 = self.box_MultipleOR_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1535063829", "1535063829", "S14M070_Main", "In", "box_MultipleOR_81.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_135_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265680"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1861306075"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_135
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|917243098", "917243098", "S14M070_Main", "box_Timer_v2_135.TimeElapsed", "box_ParticleFXController_v2_130.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_98_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1452284361"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_56_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_98
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|952161314", "952161314", "S14M070_Main", "box_CinematicPrep_98.PostOut", "box_Show_Or_Hide_All_UI_56.Show", l0, l1)
  l1:Show()
end
function export:f_box_CinematicPrep_97_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|508130775"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_Show_Or_Hide_All_UI_55_Hidden
  l0 = self.box_CinematicPrep_97
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1759993150", "1759993150", "S14M070_Main", "box_CinematicPrep_97.PreOut", "box_Show_Or_Hide_All_UI_55.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_StopMusic_95_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_92
  l0.SoundId = "soundbinary/4128667699.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|578318599", "578318599", "S14M070_Main", "box_StopMusic_95.Out", "box_PlaySound_v2_92.Play", clone, l0)
  l0:Play()
end
function export:f_box_Intel_Controller_59_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|312610166"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_Intel_Controller_59
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1448007645", "1448007645", "S14M070_Main", "box_Intel_Controller_59.Disabled", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_77
  l0.CLO = "9223372047531497552"
  l0 = self.box_MultipleOR_32
  l1 = self.box_CLOMonitor_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|574201045", "574201045", "S14M070_Main", "box_MultipleOR_32.Out", "box_CLOMonitor_77.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_PlaySequence_v5_51_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_PlaySequence_v5_51
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1055970674", "1055970674", "S14M070_Main", "box_PlaySequence_v5_51.Finished", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySequence_v5_51_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_PlaySequence_v5_51
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|819042115", "819042115", "S14M070_Main", "box_PlaySequence_v5_51.Skipped", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_BreakableEntityMonitor_v2_22_AllBroken()
  local l0
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_22()
  l0 = self.box_BreakableEntityMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|736597580", "736597580", "S14M070_Main", "box_BreakableEntityMonitor_v2_22.AllBroken", "box_BreakableEntityMonitor_v2_22.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_22_Breaking()
  local l0, l1
  self = self._graph
  l0 = self.box_BreakableEntityMonitor_v2_22
  self.BrokenEntity01 = l0.BrokenEntity
  l0 = self.box_Intel_Controller_17
  l0.Entity = self.BrokenEntity01
  l0 = self.box_BreakableEntityMonitor_v2_22
  l1 = self.box_Intel_Controller_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|368136327", "368136327", "S14M070_Main", "box_BreakableEntityMonitor_v2_22.Breaking", "box_Intel_Controller_17.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_22_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_19
  l0.MapPoint = "9223372054684906104"
  l0 = self.box_BreakableEntityMonitor_v2_22
  l1 = self.box_MapPointController_v4_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1468900876", "1468900876", "S14M070_Main", "box_BreakableEntityMonitor_v2_22.Disabled", "box_MapPointController_v4_19.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_S14_M070_CIN_Snipers_Main_78_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_S14_M070_CIN_Snipers_Main_78
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1877703442", "1877703442", "S14M070_Main", "box_S14_M070_CIN_Snipers_Main_78.Out", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_CinematicPrep_33_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_CinematicPrep_33
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1884379518", "1884379518", "S14M070_Main", "box_CinematicPrep_33.PostOut", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_115_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265213"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|232074350"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1023296426", "1023296426", "S14M070_Main", "box_Simple_Node_115.Out", "box_ParticleFXController_v2_113.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_34_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_11()
  l0 = self.box_MissionZone_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|978853835", "978853835", "S14M070_Main", "box_Ordered_Output_34.Out", "box_MissionZone_11.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_34_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_50
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047969946283"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1882929738", "1882929738", "S14M070_Main", "box_Ordered_Output_34.Out", "box_Escape_Gameplay_50.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_34_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 5
  l0._graph = self
  l0._name = "box_StopMusic_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|110851547"
  l0.Out = self.f_box_StopMusic_95_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|849890559", "849890559", "S14M070_Main", "box_Ordered_Output_34.Out", "box_StopMusic_95.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_98
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_70
  l1 = self.box_CinematicPrep_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|916706649", "916706649", "S14M070_Main", "box_MultipleOR_70.Out", "box_CinematicPrep_98.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PGTController_v2_15_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372049749705411"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1525418504"
  l0.Out = self.f_box_AI_Agent_Zone_35_Out
  l0 = self.box_PGTController_v2_15
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1385623879", "1385623879", "S14M070_Main", "box_PGTController_v2_15.AllSpawned", "box_AI_Agent_Zone_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|632596966", "632596966", "S14M070_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Intel_Controller_52_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_46()
  l0 = self.box_Intel_Controller_52
  l1 = self.box_BreakableEntityMonitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|69761149", "69761149", "S14M070_Main", "box_Intel_Controller_52.Enabled", "box_BreakableEntityMonitor_v2_46.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMonitor_161_OnMissionFailed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 8
  l0._graph = self
  l0._name = "box_StopMusic_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|793967043"
  l0.Out = DummyFunction
  l0 = self.box_MissionMonitor_161
  l1 = Boxes[PathID("domino/System/StopMusic.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|281218795", "281218795", "S14M070_Main", "box_MissionMonitor_161.OnMissionFailed", "box_StopMusic_160.In", l0, l1)
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
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1083138094", "1083138094", "S14M070_Main", "box_Ordered_Output_47.Out", "box_Multiple_AND_21.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|924902519", "924902519", "S14M070_Main", "box_Ordered_Output_47.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Intel_Controller_18_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1637289121"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_Intel_Controller_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1411953911", "1411953911", "S14M070_Main", "box_Intel_Controller_18.Disabled", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_63_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_76
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1344032915", "1344032915", "S14M070_Main", "box_Ordered_Output_63.Out", "box_MissionCheckpointReach_76.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_63_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_62
  l0.Command = "restrictON"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1505855650", "1505855650", "S14M070_Main", "box_Ordered_Output_63.Out", "box_ConsoleCommand_v2_62.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_103_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265212"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|654672233"
  l0.Started = self.f_box_ParticleFXController_v2_101_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1540934535", "1540934535", "S14M070_Main", "box_Ordered_Output_103.Out", "box_ParticleFXController_v2_101.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_103_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_112
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|445805011", "445805011", "S14M070_Main", "box_Ordered_Output_103.Out", "box_Timer_v2_112.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_103_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|178951672"
  l0.Out = self.f_box_Simple_Node_115_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|108042342", "108042342", "S14M070_Main", "box_Ordered_Output_103.Out", "box_Simple_Node_115.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_103_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_116
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|78620357", "78620357", "S14M070_Main", "box_Ordered_Output_103.Out", "box_Timer_v2_116.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_103_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_117
  l0.Seconds = 0.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1338946389", "1338946389", "S14M070_Main", "box_Ordered_Output_103.Out", "box_Timer_v2_117.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_16_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_97
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PhoneCommunicationController_16
  l1 = self.box_CinematicPrep_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|115698483", "115698483", "S14M070_Main", "box_PhoneCommunicationController_16.OnCommunicationFinished", "box_CinematicPrep_97.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_Ordered_Output_134_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_131
  l0.Seconds = 0.1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|763563047", "763563047", "S14M070_Main", "box_Ordered_Output_134.Out", "box_Timer_v2_131.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_134_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|933752777"
  l0.Out = self.f_box_Simple_Node_138_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1300590655", "1300590655", "S14M070_Main", "box_Ordered_Output_134.Out", "box_Simple_Node_138.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_134_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_129
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|491753761", "491753761", "S14M070_Main", "box_Ordered_Output_134.Out", "box_Timer_v2_129.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_134_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_135
  l0.Seconds = 0.6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|164380937", "164380937", "S14M070_Main", "box_Ordered_Output_134.Out", "box_Timer_v2_135.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_134_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_139
  l0.Seconds = 0.3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|687977746", "687977746", "S14M070_Main", "box_Ordered_Output_134.Out", "box_Timer_v2_139.Start", clone, l0)
  l0:Start()
end
function export:f_box_PhoneCommunicationController_12_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_27
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_PhoneCommunicationController_12
  l1 = self.box_MissionCheckpointReach_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1964347107", "1964347107", "S14M070_Main", "box_PhoneCommunicationController_12.OnCommunicationStarted", "box_MissionCheckpointReach_27.In", l0, l1)
  l1:In()
end
function export:f_box_Show_Or_Hide_All_UI_55_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_51
  l0.SceneEntity = "9223372049410233498"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/s14_pgv-fs_vid.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|994012705", "994012705", "S14M070_Main", "box_Show_Or_Hide_All_UI_55.Hidden", "box_PlaySequence_v5_51.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_112_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265214"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1086075060"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_112
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|195250044", "195250044", "S14M070_Main", "box_Timer_v2_112.TimeElapsed", "box_ParticleFXController_v2_114.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_27_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|811782270"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_94_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MissionCheckpointReach_27
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|748007857", "748007857", "S14M070_Main", "box_MissionCheckpointReach_27.Out", "box_Ordered_Output_94.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|955768563", "955768563", "S14M070_Main", "box_Ordered_Output_42.Out", "box_Multiple_AND_21.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1318639914", "1318639914", "S14M070_Main", "box_Ordered_Output_42.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Hackable_Monitor_133_HackContextual()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|402741850"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_134_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_134_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_134_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_134_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_134_Out_4
  l0 = self.box_Hackable_Monitor_133
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|388010861", "388010861", "S14M070_Main", "box_Hackable_Monitor_133.HackContextual", "box_Ordered_Output_134.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_21_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1226816248"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_87_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_87_Out_1
  l0 = self.box_Multiple_AND_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|675199551", "675199551", "S14M070_Main", "box_Multiple_AND_21.Out", "box_Ordered_Output_87.In", l0, l1)
  l1:In()
end
function export:f_box_ParticleFXController_v2_101_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_104()
  l0 = self.box_OnceOnly_v3_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|632209634", "632209634", "S14M070_Main", "box_ParticleFXController_v2_101.Started", "box_OnceOnly_v3_104.In", clone, l0)
  l0:In(1)
end
function export:f_box_Show_Or_Hide_All_UI_73_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_12
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053615630250"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1977007641", "1977007641", "S14M070_Main", "box_Show_Or_Hide_All_UI_73.Shown", "box_PhoneCommunicationController_12.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_PhoneCommunicationController_79_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective020",
    item = "Objective",
    id = "354188"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_PhoneCommunicationController_79
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1040770740", "1040770740", "S14M070_Main", "box_PhoneCommunicationController_79.OnCommunicationStarted", "box_MissionMessageController_v3_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Timer_v2_116_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265215"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1182018542"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_116
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1258088205", "1258088205", "S14M070_Main", "box_Timer_v2_116.TimeElapsed", "box_ParticleFXController_v2_111.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_117_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265216"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|253411318"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_117
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1395673853", "1395673853", "S14M070_Main", "box_Timer_v2_117.TimeElapsed", "box_ParticleFXController_v2_107.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_8_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|208325907"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_34_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_34_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_34_Out_2
  l0 = self.box_MissionMessageController_v3_8
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|692459224", "692459224", "S14M070_Main", "box_MissionMessageController_v3_8.Out", "box_Ordered_Output_34.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_54_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_54
  self.VotingMachines_3rdF_BridgeSide = l0.Target
  l0 = self.box_MapPointController_v4_99
  l0.MapPoint = "9223372054684906110"
  l0 = self.box_ListWriter_54
  l1 = self.box_MapPointController_v4_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1408296090", "1408296090", "S14M070_Main", "box_ListWriter_54.Added", "box_MapPointController_v4_99.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_54_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_54
  self.VotingMachines_3rdF_BridgeSide = l0.Target
end
function export:f_box_ListWriter_54_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_54
  self.VotingMachines_3rdF_BridgeSide = l0.Target
end
function export:f_box_MissionMusicController_159_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMonitor_161
  l0.Mission = "MissionList.9223372046811300302"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|606809275", "606809275", "S14M070_Main", "box_MissionMusicController_159.Activated", "box_MissionMonitor_161.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v4_99_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_67
  l0.EntityList = self.VotingMachines_3rdF_BridgeSide
  l0 = self.box_MapPointController_v4_99
  l1 = self.box_Intel_Controller_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2023881745", "2023881745", "S14M070_Main", "box_MapPointController_v4_99.Shown", "box_Intel_Controller_67.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Timer_v2_131_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265682"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1139328355"
  l0.Started = self.f_box_ParticleFXController_v2_140_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_131
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|90191675", "90191675", "S14M070_Main", "box_Timer_v2_131.TimeElapsed", "box_ParticleFXController_v2_140.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_145_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BreakableEntityMonitor_v2_24()
  l0 = self.box_BreakableEntityMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|858521125", "858521125", "S14M070_Main", "box_Ordered_Output_145.Out", "box_BreakableEntityMonitor_v2_24.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_145_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_133
  l0.HackableEntity = "9223372067173090823"
  l0.HackCategoryType = "Explosive"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|180640147", "180640147", "S14M070_Main", "box_Ordered_Output_145.Out", "box_Hackable_Monitor_133.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_94_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective010",
    item = "Objective",
    id = "354183"
  }
  l0.IncrementalObjectiveTotal = 4
  l0.ShowPreviousObjectiveComplete = 0
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1230938307", "1230938307", "S14M070_Main", "box_Ordered_Output_94.Out", "box_MissionMessageController_v3_5.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372058043348850"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = nil
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1629398468"
  l0.Out = self.f_box_Lanes_Restrictions_Control_69_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1599976483", "1599976483", "S14M070_Main", "box_Get_Player_ID_1.Out", "box_Lanes_Restrictions_Control_69.In", clone, l0)
  l0:In()
end
function export:f_box_ListWriter_23_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_23
  self.VotingMachines_1stF_INT = l0.Target
  l0 = self.box_MapPointController_v4_128
  l0.MapPoint = "9223372054684906106"
  l0 = self.box_ListWriter_23
  l1 = self.box_MapPointController_v4_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|852715224", "852715224", "S14M070_Main", "box_ListWriter_23.Added", "box_MapPointController_v4_128.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_23_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_23
  self.VotingMachines_1stF_INT = l0.Target
end
function export:f_box_ListWriter_23_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_23
  self.VotingMachines_1stF_INT = l0.Target
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_10
  l0.Input = self.VotingMachines_1stF_Courtyard
  l0.Data[0] = "9223372056332876197"
  l0.Data[1] = "9223372056332876201"
  l0.Data[2] = "9223372056332876199"
  l0.Data[3] = "9223372056332876191"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1653116806", "1653116806", "S14M070_Main", "box_Ordered_Output_41.Out", "box_ListWriter_10.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_23
  l0.Input = self.VotingMachines_1stF_INT
  l0.Data[0] = "9223372056332874937"
  l0.Data[1] = "9223372056332874939"
  l0.Data[2] = "9223372056332874941"
  l0.Data[3] = "9223372056332874943"
  l0.Data[4] = "9223372061942159112"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1115667130", "1115667130", "S14M070_Main", "box_Ordered_Output_41.Out", "box_ListWriter_23.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_41_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_45
  l0.Input = self.VotingMachines_3rdF_BaySide
  l0.Data[0] = "9223372056997412506"
  l0.Data[1] = "9223372056997412510"
  l0.Data[2] = "9223372056997412514"
  l0.Data[3] = "9223372056997412516"
  l0.Data[4] = "9223372056997412518"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|400808413", "400808413", "S14M070_Main", "box_Ordered_Output_41.Out", "box_ListWriter_45.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_41_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_54
  l0.Input = self.VotingMachines_3rdF_BridgeSide
  l0.Data[0] = "9223372056997412498"
  l0.Data[1] = "9223372056997412494"
  l0.Data[2] = "9223372056997412488"
  l0.Data[3] = "9223372056997412486"
  l0.Data[4] = "9223372056997412502"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|689331558", "689331558", "S14M070_Main", "box_Ordered_Output_41.Out", "box_ListWriter_54.Add", clone, l0)
  l0:Add()
end
function export:f_box_Simple_Node_138_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265684"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1332531314"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1261593396", "1261593396", "S14M070_Main", "box_Simple_Node_138.Out", "box_ParticleFXController_v2_132.Start", clone, l0)
  l0:Start()
end
function export:f_box_S14M070_SCR_Main_82_Out_Debug_Annotations()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_1
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|981903409"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_40_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_40_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_S14M070_SCR_Main_82
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|95675896", "95675896", "S14M070_Main", "box_S14M070_SCR_Main_82.Out Debug Annotations", "box_Compare_Boolean_v2_40.In", l0, l1)
  l1:In()
end
function export:f_box_Compare_Boolean_v2_40_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S14_M070_CIN_Snipers_Main_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|484498926", "484498926", "S14M070_Main", "box_Compare_Boolean_v2_40.A_is_False", "box_S14_M070_CIN_Snipers_Main_78.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_40_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|30453887", "30453887", "S14M070_Main", "box_Compare_Boolean_v2_40.A_is_True", "box_MultipleOR_32.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MultipleOR_38_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_38
  l1 = self.box_S14M070_SCR_Main_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|489935042", "489935042", "S14M070_Main", "box_MultipleOR_38.Out", "box_S14M070_SCR_Main_39.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_162_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372068246841851"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|751588516"
  l0.Activated = self.f_box_MissionMusicController_159_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_OnceOnly_v3_162
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|175546071", "175546071", "S14M070_Main", "box_OnceOnly_v3_162.Out", "box_MissionMusicController_159.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_BreakableEntityMonitor_v2_58_AllBroken()
  local l0
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_58()
  l0 = self.box_BreakableEntityMonitor_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|128558852", "128558852", "S14M070_Main", "box_BreakableEntityMonitor_v2_58.AllBroken", "box_BreakableEntityMonitor_v2_58.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_58_Breaking()
  local l0, l1
  self = self._graph
  l0 = self.box_BreakableEntityMonitor_v2_58
  self.BrokenEntity04 = l0.BrokenEntity
  l0 = self.box_Intel_Controller_65
  l0.Entity = self.BrokenEntity04
  l0 = self.box_BreakableEntityMonitor_v2_58
  l1 = self.box_Intel_Controller_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1962214583", "1962214583", "S14M070_Main", "box_BreakableEntityMonitor_v2_58.Breaking", "box_Intel_Controller_65.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_58_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_104()
  l0 = self.box_BreakableEntityMonitor_v2_58
  l1 = self.box_OnceOnly_v3_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1890735998", "1890735998", "S14M070_Main", "box_BreakableEntityMonitor_v2_58.Disabled", "box_OnceOnly_v3_104.In", l0, l1)
  l1:In(0)
end
function export:f_box_ParticleFXController_v2_140_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_OnceOnly_v3_141()
  l0 = self.box_OnceOnly_v3_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|823939422", "823939422", "S14M070_Main", "box_ParticleFXController_v2_140.Started", "box_OnceOnly_v3_141.In", clone, l0)
  l0:In(1)
end
function export:f_box_S14M070_SCR_Main_39_Out_Debug_Annotations()
  local l0, l1
  self = self._graph
  l0 = self.box_S14M070_SCR_Main_39
  l1 = self.box_S14M070_SCR_Main_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1235728321", "1235728321", "S14M070_Main", "box_S14M070_SCR_Main_39.Out Debug Annotations", "box_S14M070_SCR_Main_82.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_87_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_79
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346294"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1294600394", "1294600394", "S14M070_Main", "box_Ordered_Output_87.Out", "box_PhoneCommunicationController_79.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_87_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  l0.FadeOutTime = 8
  l0._graph = self
  l0._name = "box_StopMusic_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1389729876"
  l0.Out = self.f_box_StopMusic_109_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|495932179", "495932179", "S14M070_Main", "box_Ordered_Output_87.Out", "box_StopMusic_109.In", clone, l0)
  l0:In()
end
function export:f_box_Intel_Controller_25_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|536612526"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_Intel_Controller_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1735949150", "1735949150", "S14M070_Main", "box_Intel_Controller_25.Disabled", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_46_AllBroken()
  local l0
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_46()
  l0 = self.box_BreakableEntityMonitor_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1775617694", "1775617694", "S14M070_Main", "box_BreakableEntityMonitor_v2_46.AllBroken", "box_BreakableEntityMonitor_v2_46.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_46_Breaking()
  local l0, l1
  self = self._graph
  l0 = self.box_BreakableEntityMonitor_v2_46
  self.BrokenEntity03 = l0.BrokenEntity
  l0 = self.box_Intel_Controller_49
  l0.Entity = self.BrokenEntity03
  l0 = self.box_BreakableEntityMonitor_v2_46
  l1 = self.box_Intel_Controller_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|56854998", "56854998", "S14M070_Main", "box_BreakableEntityMonitor_v2_46.Breaking", "box_Intel_Controller_49.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_46_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_BreakableEntityMonitor_v2_46
  l1 = self.box_OnceOnly_v3_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1146127659", "1146127659", "S14M070_Main", "box_BreakableEntityMonitor_v2_46.Disabled", "box_OnceOnly_v3_110.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOMonitor_75_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_15
  l0.PGTMissionArea = "9223372052607970127"
  l0 = self.box_CLOMonitor_75
  l1 = self.box_PGTController_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2137370265", "2137370265", "S14M070_Main", "box_CLOMonitor_75.Enabled", "box_PGTController_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOMonitor_75_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_75
  self.Convo_Guard02 = l0.UserID
end
function export:f_box_CLOMonitor_75_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_75
  self.Convo_Guard02 = l0.UserID
end
function export:f_box_CLOMonitor_75_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_75
  self.Convo_Guard02 = l0.UserID
  self:OnEnter_box_Multiple_AND_83()
  l1 = self.box_Multiple_AND_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1452931412", "1452931412", "S14M070_Main", "box_CLOMonitor_75.OnUserInPlace", "box_Multiple_AND_83.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CinematicPrep_80_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0._name = "box_Show_Or_Hide_All_UI_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|658757010"
  l0.Out = DummyFunction
  l0.Shown = self.f_box_Show_Or_Hide_All_UI_73_Shown
  l0.Hidden = DummyFunction
  l0 = self.box_CinematicPrep_80
  l1 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|790448860", "790448860", "S14M070_Main", "box_CinematicPrep_80.PostOut", "box_Show_Or_Hide_All_UI_73.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_10_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_10
  self.VotingMachines_1stF_Courtyard = l0.Target
  l0 = self.box_MapPointController_v4_142
  l0.MapPoint = "9223372054684906104"
  l0 = self.box_ListWriter_10
  l1 = self.box_MapPointController_v4_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1416926762", "1416926762", "S14M070_Main", "box_ListWriter_10.Added", "box_MapPointController_v4_142.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_10_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_10
  self.VotingMachines_1stF_Courtyard = l0.Target
end
function export:f_box_ListWriter_10_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_10
  self.VotingMachines_1stF_Courtyard = l0.Target
end
function export:f_box_MultipleOR_81_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S14M070_Main"
  l0 = self.box_MultipleOR_81
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1641427824", "1641427824", "S14M070_Main", "box_MultipleOR_81.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Intel_Controller_48_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1608658126"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0 = self.box_Intel_Controller_48
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|29564581", "29564581", "S14M070_Main", "box_Intel_Controller_48.Disabled", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_StopMusic_109_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/StopMusic.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_157
  l0.SoundId = "soundbinary/4128667699.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|669109623", "669109623", "S14M070_Main", "box_StopMusic_109.Out", "box_PlaySound_v2_157.Play", clone, l0)
  l0:Play()
end
function export:f_box_ListWriter_45_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_45
  self.VotingMachines_3rdF_BaySide = l0.Target
  l0 = self.box_MapPointController_v4_108
  l0.MapPoint = "9223372054684906108"
  l0 = self.box_ListWriter_45
  l1 = self.box_MapPointController_v4_108
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1745999043", "1745999043", "S14M070_Main", "box_ListWriter_45.Added", "box_MapPointController_v4_108.Show", l0, l1)
  l1:Show()
end
function export:f_box_ListWriter_45_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_45
  self.VotingMachines_3rdF_BaySide = l0.Target
end
function export:f_box_ListWriter_45_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_45
  self.VotingMachines_3rdF_BaySide = l0.Target
end
function export:f_box_OnceOnly_v3_141_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_25
  l0.EntityList = self.VotingMachines_1stF_INT
  l0 = self.box_OnceOnly_v3_141
  l1 = self.box_Intel_Controller_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|265081231", "265081231", "S14M070_Main", "box_OnceOnly_v3_141.Out", "box_Intel_Controller_25.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ConsoleCommand_v2_62_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_66
  l0.Command = "restrictOFF"
  l0 = self.box_ConsoleCommand_v2_62
  l1 = self.box_ConsoleCommand_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|988424535", "988424535", "S14M070_Main", "box_ConsoleCommand_v2_62.Enabled", "box_ConsoleCommand_v2_66.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConsoleCommand_v2_62_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372049710585850"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1211905629"
  l0.Out = DummyFunction
  l0 = self.box_ConsoleCommand_v2_62
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1125268768", "1125268768", "S14M070_Main", "box_ConsoleCommand_v2_62.Executed", "box_Lanes_Restrictions_Control_61.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_110_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_53
  l0.MapPoint = "9223372054684906108"
  l0 = self.box_OnceOnly_v3_110
  l1 = self.box_MapPointController_v4_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|152873312", "152873312", "S14M070_Main", "box_OnceOnly_v3_110.Out", "box_MapPointController_v4_53.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Show_Or_Hide_All_UI_56_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ShowOrHideAllUI.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_3()
  l0 = self.box_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1994810234", "1994810234", "S14M070_Main", "box_Show_Or_Hide_All_UI_56.Shown", "box_Mission_End_3.End", clone, l0)
  l0:End()
end
function export:f_box_MissionMessageController_v3_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_16
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053615630251"
  l0 = self.box_MissionMessageController_v3_57
  l1 = self.box_PhoneCommunicationController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|897853056", "897853056", "S14M070_Main", "box_MissionMessageController_v3_57.Out", "box_PhoneCommunicationController_16.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MapPointController_v4_68_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_59
  l0.EntityList = self.VotingMachines_3rdF_BridgeSide
  l0 = self.box_MapPointController_v4_68
  l1 = self.box_Intel_Controller_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|927803084", "927803084", "S14M070_Main", "box_MapPointController_v4_68.Hidden", "box_Intel_Controller_59.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_30_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2023448183"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_158_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_158_Out_1
  l0 = self.box_MultipleOR_30
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|536935346", "536935346", "S14M070_Main", "box_MultipleOR_30.Out", "box_Ordered_Output_158.In", l0, l1)
  l1:In()
end
function export:f_box_AI_Agent_Zone_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_11()
  l0 = self.box_MissionZone_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1414058441", "1414058441", "S14M070_Main", "box_AI_Agent_Zone_35.Out", "box_MissionZone_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionZone_11_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_80
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionZone_11
  l1 = self.box_CinematicPrep_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1148170269", "1148170269", "S14M070_Main", "box_MissionZone_11.Enabled", "box_CinematicPrep_80.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_102_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BreakableEntityMonitor_v2_58()
  l0 = self.box_BreakableEntityMonitor_v2_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1967285828", "1967285828", "S14M070_Main", "box_Ordered_Output_102.Out", "box_BreakableEntityMonitor_v2_58.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_102_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_100
  l0.HackableEntity = "9223372067173090819"
  l0.HackCategoryType = "Explosive"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|239716058", "239716058", "S14M070_Main", "box_Ordered_Output_102.Out", "box_Hackable_Monitor_100.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v4_53_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_48
  l0.EntityList = self.VotingMachines_3rdF_BaySide
  l0 = self.box_MapPointController_v4_53
  l1 = self.box_Intel_Controller_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|361126718", "361126718", "S14M070_Main", "box_MapPointController_v4_53.Hidden", "box_Intel_Controller_48.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionCheckpointReach_76_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_38()
  l0 = self.box_MissionCheckpointReach_76
  l1 = self.box_MultipleOR_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1666611575", "1666611575", "S14M070_Main", "box_MissionCheckpointReach_76.Out", "box_MultipleOR_38.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|231702407", "231702407", "S14M070_Main", "box_Ordered_Output_44.Out", "box_Multiple_AND_21.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|47751453", "47751453", "S14M070_Main", "box_Ordered_Output_44.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Lanes_Restrictions_Control_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|336860488"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_63_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_63_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1761742426", "1761742426", "S14M070_Main", "box_Lanes_Restrictions_Control_69.Out", "box_Ordered_Output_63.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_21()
  l0 = self.box_Multiple_AND_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2056445158", "2056445158", "S14M070_Main", "box_Ordered_Output_31.Out", "box_Multiple_AND_21.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_30()
  l0 = self.box_MultipleOR_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1248702451", "1248702451", "S14M070_Main", "box_Ordered_Output_31.Out", "box_MultipleOR_30.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Intel_Controller_67_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1548129791"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_102_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_102_Out_1
  l0 = self.box_Intel_Controller_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1397548766", "1397548766", "S14M070_Main", "box_Intel_Controller_67.Enabled", "box_Ordered_Output_102.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_139_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265678"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1516438989"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_139
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2043015578", "2043015578", "S14M070_Main", "box_Timer_v2_139.TimeElapsed", "box_ParticleFXController_v2_137.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_129_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372067173265686"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1082710277"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_Timer_v2_129
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|268148391", "268148391", "S14M070_Main", "box_Timer_v2_129.TimeElapsed", "box_ParticleFXController_v2_136.Start", l0, l1)
  l1:Start()
end
function export:f_box_MapPointController_v4_19_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_19
  l1 = self.box_OnceOnly_v3_155
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1348390402", "1348390402", "S14M070_Main", "box_MapPointController_v4_19.Hidden", "box_OnceOnly_v3_155.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_68
  l0.MapPoint = "9223372054684906110"
  l0 = self.box_OnceOnly_v3_104
  l1 = self.box_MapPointController_v4_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1719762616", "1719762616", "S14M070_Main", "box_OnceOnly_v3_104.Out", "box_MapPointController_v4_68.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Intel_Controller_20_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_22()
  l0 = self.box_Intel_Controller_20
  l1 = self.box_BreakableEntityMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|152600123", "152600123", "S14M070_Main", "box_Intel_Controller_20.Enabled", "box_BreakableEntityMonitor_v2_22.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ConsoleCommand_v2_66_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372049710585850"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|955144334"
  l0.Out = DummyFunction
  l0 = self.box_ConsoleCommand_v2_66
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1502609823", "1502609823", "S14M070_Main", "box_ConsoleCommand_v2_66.Executed", "box_Lanes_Restrictions_Control_74.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|2118034669", "2118034669", "S14M070_Main", "box_Get_Player_ID_37.Out", "box_SetBoolean_v2_36.True", clone, l0)
  l0:True()
end
function export:f_box_OnceOnly_v3_155_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_18
  l0.EntityList = self.VotingMachines_1stF_Courtyard
  l0 = self.box_OnceOnly_v3_155
  l1 = self.box_Intel_Controller_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|872506901", "872506901", "S14M070_Main", "box_OnceOnly_v3_155.Out", "box_Intel_Controller_18.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_108_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_52
  l0.EntityList = self.VotingMachines_3rdF_BaySide
  l0 = self.box_MapPointController_v4_108
  l1 = self.box_Intel_Controller_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1635669299", "1635669299", "S14M070_Main", "box_MapPointController_v4_108.Shown", "box_Intel_Controller_52.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Intel_Controller_28_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|790736979"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_145_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_145_Out_1
  l0 = self.box_Intel_Controller_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|323780353", "323780353", "S14M070_Main", "box_Intel_Controller_28.Enabled", "box_Ordered_Output_145.In", l0, l1)
  l1:In()
end
function export:f_box_Hackable_Monitor_100_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|351250570"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_103_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_103_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_103_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_103_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_103_Out_4
  l0 = self.box_Hackable_Monitor_100
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1307005892", "1307005892", "S14M070_Main", "box_Hackable_Monitor_100.HackSuccess", "box_Ordered_Output_103.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_24_AllBroken()
  local l0
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_24()
  l0 = self.box_BreakableEntityMonitor_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|247389388", "247389388", "S14M070_Main", "box_BreakableEntityMonitor_v2_24.AllBroken", "box_BreakableEntityMonitor_v2_24.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_24_Breaking()
  local l0, l1
  self = self._graph
  l0 = self.box_BreakableEntityMonitor_v2_24
  self.BrokenEntity02 = l0.BrokenEntity
  l0 = self.box_Intel_Controller_26
  l0.Entity = self.BrokenEntity02
  l0 = self.box_BreakableEntityMonitor_v2_24
  l1 = self.box_Intel_Controller_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|572535365", "572535365", "S14M070_Main", "box_BreakableEntityMonitor_v2_24.Breaking", "box_Intel_Controller_26.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_24_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MapPointController_v4_43
  l0.MapPoint = "9223372054684906106"
  l0 = self.box_BreakableEntityMonitor_v2_24
  l1 = self.box_MapPointController_v4_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|836132992", "836132992", "S14M070_Main", "box_BreakableEntityMonitor_v2_24.Disabled", "box_MapPointController_v4_43.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_MapPointController_v4_43_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_141()
  l0 = self.box_MapPointController_v4_43
  l1 = self.box_OnceOnly_v3_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|216502953", "216502953", "S14M070_Main", "box_MapPointController_v4_43.Hidden", "box_OnceOnly_v3_141.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_158_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_29
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective010",
    item = "Objective",
    id = "354183"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|295120573", "295120573", "S14M070_Main", "box_Ordered_Output_158.Out", "box_MissionMessageController_v3_29.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Ordered_Output_158_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_162
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1056403743", "1056403743", "S14M070_Main", "box_Ordered_Output_158.Out", "box_OnceOnly_v3_162.In", clone, l0)
  l0:In(0)
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|882273772"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_41_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_41_Out_3
  l0.Out[4] = DummyFunction
  l0 = self.box_MissionMessageController_v3_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1800069013", "1800069013", "S14M070_Main", "box_MissionMessageController_v3_5.Out", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_36_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_36
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_36_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_36
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_36_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_36
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_SetBoolean_v2_36_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_36
  self.IsCheckPoint_1 = l0.Target
  l0 = self.box_CinematicPrep_33
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_SetBoolean_v2_36
  l1 = self.box_CinematicPrep_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1970183329", "1970183329", "S14M070_Main", "box_SetBoolean_v2_36.SetTrue", "box_CinematicPrep_33.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_SetBoolean_v2_36_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_36
  self.IsCheckPoint_1 = l0.Target
end
function export:f_box_Escape_Gameplay_50_Escaped()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_57
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S14.S14M070.Objectives.Objective020",
    item = "Objective",
    id = "354188"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Escape_Gameplay_50
  l1 = self.box_MissionMessageController_v3_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|686275373", "686275373", "S14M070_Main", "box_Escape_Gameplay_50.Escaped", "box_MissionMessageController_v3_57.ShowLastObjectiveComplete", l0, l1)
  l1:ShowLastObjectiveComplete()
end
function export:f_box_MapPointController_v4_142_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_20
  l0.EntityList = self.VotingMachines_1stF_Courtyard
  l0 = self.box_MapPointController_v4_142
  l1 = self.box_Intel_Controller_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|72300524", "72300524", "S14M070_Main", "box_MapPointController_v4_142.Shown", "box_Intel_Controller_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1850286223"
  l0.Out = self.f_box_Get_Player_ID_37_Out
  l0 = self.box_MissionLayer_v2_4
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1808802232", "1808802232", "S14M070_Main", "box_MissionLayer_v2_4.Loaded", "box_Get_Player_ID_37.In", l0, l1)
  l1:In()
end
function export:f_box_MapPointController_v4_128_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_Intel_Controller_28
  l0.EntityList = self.VotingMachines_1stF_INT
  l0 = self.box_MapPointController_v4_128
  l1 = self.box_Intel_Controller_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1334631405", "1334631405", "S14M070_Main", "box_MapPointController_v4_128.Shown", "box_Intel_Controller_28.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_77_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_75
  l0.CLO = "9223372047411652686"
  l0 = self.box_CLOMonitor_77
  l1 = self.box_CLOMonitor_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|180283556", "180283556", "S14M070_Main", "box_CLOMonitor_77.Enabled", "box_CLOMonitor_75.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_CLOMonitor_77_GotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_77
  self.Convo_Guard01 = l0.UserID
end
function export:f_box_CLOMonitor_77_NotGotUser()
  local l0
  self = self._graph
  l0 = self.box_CLOMonitor_77
  self.Convo_Guard01 = l0.UserID
end
function export:f_box_CLOMonitor_77_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOMonitor_77
  self.Convo_Guard01 = l0.UserID
  self:OnEnter_box_Multiple_AND_83()
  l1 = self.box_Multiple_AND_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\S14M070.domino|@S14M070_Main|1056106427", "1056106427", "S14M070_Main", "box_CLOMonitor_77.OnUserInPlace", "box_Multiple_AND_83.Condition", l0, l1)
  l1:Condition(1)
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_BreakableEntityMonitor_v2_22()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_22
  l0.BreakableEntitiesList = self.VotingMachines_1stF_Courtyard
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_Multiple_AND_83()
end
function export:OnEnter_box_Multiple_AND_21()
end
function export:OnEnter_box_Mission_End_3()
  local l0
  l0 = self.box_Mission_End_3
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S14M070_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_38()
end
function export:OnEnter_box_BreakableEntityMonitor_v2_58()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_58
  l0.BreakableEntitiesList = self.VotingMachines_3rdF_BridgeSide
end
function export:OnEnter_box_BreakableEntityMonitor_v2_46()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_46
  l0.BreakableEntitiesList = self.VotingMachines_3rdF_BaySide
end
function export:OnEnter_box_MultipleOR_81()
end
function export:OnEnter_box_OnceOnly_v3_141()
end
function export:OnEnter_box_MultipleOR_30()
end
function export:OnEnter_box_MissionZone_11()
  local l0
  l0 = self.box_MissionZone_11
  l0.MissionArea = "9223372047969946283"
  l0.MissionLayer = "S14M070_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_OnceOnly_v3_104()
end
function export:OnEnter_box_BreakableEntityMonitor_v2_24()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_24
  l0.BreakableEntitiesList = self.VotingMachines_1stF_INT
end
_compilerVersion = 4
