export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CollisionController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/System/IntelController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDominoAnimation.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/RandomOutput_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M040/s02m040_cin_mirandaknows.S02M040_CIN_MirandaKnows_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M040/s02m040_scr.S02M040_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
  cbox:LoadResource("soundbinary/3980994276.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/216038217.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/649472706.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3117755151.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1206640609.bnk", "CSoundResource")
  cbox:LoadResource("move/decisiontrees/scr/worldstories/s02/s02_m040_clo-greaseincell-cycle01.move.bin", "CMoveResource")
  cbox:LoadResource("soundbinary/2962974750.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S02M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main"
  self.PlayerEntity = nil
  self.Greasy = nil
  self.JimmySiska = nil
  self.RegistryDone = 0
  self.SiskaFree = 0
  self.Door1Open = 0
  self.Door2Open = 0
  self.IsUserRcVehicle = 0
  self.Miranda_PostCin = nil
  self.box_S02M040_SCR_Main_19 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M040/s02m040_scr.S02M040_SCR_Main.debug.lua")
  l0 = self.box_S02M040_SCR_Main_19
  l0._graph = self
  l0._name = "box_S02M040_SCR_Main_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|17623671"
  l0.Out = DummyFunction
  l0.JimmyFree = self.f_box_S02M040_SCR_Main_19_JimmyFree
  self.box_Hackable_Monitor_47 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_47
  l0._graph = self
  l0._name = "box_Hackable_Monitor_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|29833925"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_47_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_LMA_Layer_Controller_16 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_16
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|31811644"
  l0.Loaded = self.f_box_LMA_Layer_Controller_16_Loaded
  l0.Unloaded = DummyFunction
  self.box_InteractionScriptMonitor_v2_78 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_78
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|37257393"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_78_Disabled
  l0.InteractionStarted = self.f_box_InteractionScriptMonitor_v2_78_InteractionStarted
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_78_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_HackableController_v2_8 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_8
  l0._graph = self
  l0._name = "box_HackableController_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|40477578"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_8_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TriggerMonitor_v2_7 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_7
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|63652346"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PGTController_v2_22 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_22
  l0._graph = self
  l0._name = "box_PGTController_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|89235361"
  l0.Started = self.f_box_PGTController_v2_22_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_LMA_Layer_Controller_4 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_4
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|155646410"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_Timer_v2_63 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_63
  l0._graph = self
  l0._name = "box_Timer_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|168252443"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_63_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_53 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_53
  l0._graph = self
  l0._name = "box_PlayDialog_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|175398237"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_53_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|315860273"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MultipleOR_93 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_93
  l0._graph = self
  l0._name = "box_MultipleOR_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|370355497"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_93_Out
  self.box_MultipleOR_84 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_84
  l0._graph = self
  l0._name = "box_MultipleOR_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|374332296"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_84_Out
  self.box_RandomOutput_v2_24 = cbox:CreateBox("domino/System/RandomOutput_v2.lua")
  l0 = self.box_RandomOutput_v2_24
  l0._graph = self
  l0._name = "box_RandomOutput_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|379180765"
  l0._DynamicAnchors = {Probability = 6, Output = 6}
  l0.Out = DummyFunction
  l0.ResetOut = DummyFunction
  l0.None = DummyFunction
  l0.Output[0] = self.f_box_RandomOutput_v2_24_Output_0
  l0.Output[1] = self.f_box_RandomOutput_v2_24_Output_1
  l0.Output[2] = self.f_box_RandomOutput_v2_24_Output_2
  l0.Output[3] = self.f_box_RandomOutput_v2_24_Output_3
  l0.Output[4] = self.f_box_RandomOutput_v2_24_Output_4
  l0.Output[5] = self.f_box_RandomOutput_v2_24_Output_5
  self.box_PhoneCommunicationController_75 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_75
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|425273041"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_75_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_70 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_70
  l0._graph = self
  l0._name = "box_MultipleOR_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|477824406"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_70_Out
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|501465811"
  l0.Out = self.f_box_MissionMessageController_v3_13_Out
  l0.MessageCompleted = DummyFunction
  self.box_MapPointController_v4_67 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_67
  l0._graph = self
  l0._name = "box_MapPointController_v4_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|521066074"
  l0.Shown = self.f_box_MapPointController_v4_67_Shown
  l0.Hidden = self.f_box_MapPointController_v4_67_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_56 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_56
  l0._graph = self
  l0._name = "box_MissionLayer_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|540887591"
  l0.Loaded = self.f_box_MissionLayer_v2_56_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Escape_Gameplay_25 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_25
  l0._graph = self
  l0._name = "box_Escape_Gameplay_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|545584444"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_25_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_25_LeftArea
  self.box_CLOController_36 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_36
  l0._graph = self
  l0._name = "box_CLOController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|560147355"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_36_OnUserInPlace
  self.box_Play_Domino_Cinematic_Animation_51 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_51
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|580915689"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_51_Started
  l0.Stopped = self.f_box_Play_Domino_Cinematic_Animation_51_Stopped
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_54 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_54
  l0._graph = self
  l0._name = "box_MissionLayer_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|620996385"
  l0.Loaded = self.f_box_MissionLayer_v2_54_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|628739768"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_LogicGate_v2_65 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_65
  l0._graph = self
  l0._name = "box_LogicGate_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|655061079"
  l0.Out = self.f_box_LogicGate_v2_65_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_MissionMessageController_v3_38 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_38
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|655722947"
  l0.Out = self.f_box_MissionMessageController_v3_38_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|665869678"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_CLOController_80 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_80
  l0._graph = self
  l0._name = "box_CLOController_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|714657973"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_80_OnUserInPlace
  self.box_MapPointController_v4_71 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_71
  l0._graph = self
  l0._name = "box_MapPointController_v4_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|731151122"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_71_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SetBoolean_v2_39 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_39
  l0._graph = self
  l0._name = "box_SetBoolean_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|790772758"
  l0.Out = self.f_box_SetBoolean_v2_39_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_39_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_39_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_39_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_39_SetFromBool
  self.box_MapPointController_v4_73 = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self.box_MapPointController_v4_73
  l0._graph = self
  l0._name = "box_MapPointController_v4_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|851884983"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v4_73_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_Mission_End_97 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_97
  l0._graph = self
  l0._name = "box_Mission_End_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|888998721"
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|985512143"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_21 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_21
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|988945442"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_21_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_21_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_10 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_10
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1015100199"
  l0.Out = self.f_box_MissionCheckpointReach_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_60 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_60
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1034424387"
  l0.Out = self.f_box_MissionCheckpointReach_60_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Interact_Gameplay_23 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_23
  l0._graph = self
  l0._name = "box_Interact_Gameplay_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1082232331"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_23_Interacted
  self.box_PGTController_v2_18 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_18
  l0._graph = self
  l0._name = "box_PGTController_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1093127781"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_18_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Intel_Controller_96 = cbox:CreateBox("domino/System/IntelController.lua")
  l0 = self.box_Intel_Controller_96
  l0._graph = self
  l0._name = "box_Intel_Controller_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1153566791"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1172358291"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_SetBoolean_v2_92 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_92
  l0._graph = self
  l0._name = "box_SetBoolean_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1191140898"
  l0.Out = self.f_box_SetBoolean_v2_92_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_92_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_92_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_92_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_92_SetFromBool
  self.box_S02M040_CIN_MirandaKnows_Main_59 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M040/s02m040_cin_mirandaknows.S02M040_CIN_MirandaKnows_Main.debug.lua")
  l0 = self.box_S02M040_CIN_MirandaKnows_Main_59
  l0._graph = self
  l0._name = "box_S02M040_CIN_MirandaKnows_Main_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1267142942"
  l0.EndCine = self.f_box_S02M040_CIN_MirandaKnows_Main_59_EndCine
  self.box_Hackable_Monitor_88 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_88
  l0._graph = self
  l0._name = "box_Hackable_Monitor_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1307723471"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_88_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_UnspawnController_98 = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self.box_UnspawnController_98
  l0._graph = self
  l0._name = "box_UnspawnController_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1432793554"
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = self.f_box_UnspawnController_98_AutomaticCLOUnspawned
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self.box_MissionCheckpointReach_20 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_20
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1450312209"
  l0.Out = self.f_box_MissionCheckpointReach_20_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlayDialog_v2_62 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_62
  l0._graph = self
  l0._name = "box_PlayDialog_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1454493895"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_62_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_27 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_27
  l0._graph = self
  l0._name = "box_SetBoolean_v2_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1479198958"
  l0.Out = self.f_box_SetBoolean_v2_27_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_27_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_27_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_27_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_27_SetFromBool
  self.box_PlayDialog_v2_61 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_61
  l0._graph = self
  l0._name = "box_PlayDialog_v2_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1493878438"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_61_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1517230678"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MissionZone_52 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_52
  l0._graph = self
  l0._name = "box_MissionZone_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1539136909"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_OnceOnly_v3_74 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_74
  l0._graph = self
  l0._name = "box_OnceOnly_v3_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1558760607"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_74_Out
  l0.ResetOut = DummyFunction
  self.box_OnceOnly_v3_6 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_6
  l0._graph = self
  l0._name = "box_OnceOnly_v3_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1571896078"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_6_Out
  l0.ResetOut = DummyFunction
  self.box_PlayDialog_v2_49 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_49
  l0._graph = self
  l0._name = "box_PlayDialog_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1591771238"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_49_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_64 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_64
  l0._graph = self
  l0._name = "box_MultipleOR_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1693522855"
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_box_MultipleOR_64_Out
  self.box_PlayDialog_v2_37 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_37
  l0._graph = self
  l0._name = "box_PlayDialog_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1713300568"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_37_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SetBoolean_v2_89 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_89
  l0._graph = self
  l0._name = "box_SetBoolean_v2_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1725226355"
  l0.Out = self.f_box_SetBoolean_v2_89_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_89_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_89_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_89_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_89_SetFromBool
  self.box_Hackable_Monitor_46 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_46
  l0._graph = self
  l0._name = "box_Hackable_Monitor_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1736158120"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_46_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1767321592"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_14_PostOut
  self.box_LogicGate_v2_76 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_76
  l0._graph = self
  l0._name = "box_LogicGate_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1792832569"
  l0.Out = self.f_box_LogicGate_v2_76_Out
  l0.Opened = self.f_box_LogicGate_v2_76_Opened
  l0.Closed = DummyFunction
  self.box_Hackable_Monitor_87 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_87
  l0._graph = self
  l0._name = "box_Hackable_Monitor_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1811970704"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_87_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_PlayDialog_v2_50 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_50
  l0._graph = self
  l0._name = "box_PlayDialog_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1839300083"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_50_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_91 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_91
  l0._graph = self
  l0._name = "box_MultipleOR_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1889899794"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_91_Out
  self.box_TriggerMonitor_v2_31 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_31
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1900204905"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_31_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_57 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_57
  l0._graph = self
  l0._name = "box_CinematicPrep_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1975628057"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_57_PostOut
  self.box_HackableController_v2_41 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_41
  l0._graph = self
  l0._name = "box_HackableController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2013693212"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_41_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Proximity_Monitor_29 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_29
  l0._graph = self
  l0._name = "box_Proximity_Monitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2026137506"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Proximity_Monitor_29_EnterRadius
  l0.ExitRadius = self.f_box_Proximity_Monitor_29_ExitRadius
  self.box_PhoneCommunicationController_9 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_9
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2052776295"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_9_StartCommunicationOut
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
  l0 = self.box_MissionLayer_v2_54
  l0.LayerName = "S02M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1793945208", "1793945208", "S02M040_Main", "CheckPoint_0", "box_MissionLayer_v2_54.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_56
  l0.LayerName = "S02M040_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1076500002", "1076500002", "S02M040_Main", "CheckPoint_1", "box_MissionLayer_v2_56.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_Mission_End_97()
  l0 = self.box_Mission_End_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|644197714", "644197714", "S02M040_Main", "CheckPoint_2", "box_Mission_End_97.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_Replay()
  local l0
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1712962787", "1712962787", "S02M040_Main", "CheckPoint_Replay", "box_MultipleOR_11.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_16
  l0.LMALayerName = "SF_06_Rehab_Center_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|199193616", "199193616", "S02M040_Main", "In", "box_LMA_Layer_Controller_16.Load", self, l0)
  l0:Load()
end
function export:f_box_S02M040_SCR_Main_19_JimmyFree()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372057370017998"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2073640165"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = self.f_box_CollisionController_95_CollisionsEnabled
  l0.CollisionsDisabled = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_S02M040_SCR_Main_19
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|899643969", "899643969", "S02M040_Main", "box_S02M040_SCR_Main_19.JimmyFree", "box_CollisionController_95.EnableCollisions", l0, l1)
  l1:EnableCollisions()
end
function export:f_box_Hackable_Monitor_47_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_Hackable_Monitor_47
  l1 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1170615026", "1170615026", "S02M040_Main", "box_Hackable_Monitor_47.HackSuccess", "box_MultipleOR_91.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LMA_Layer_Controller_16_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_LMA_Layer_Controller_16
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|59441887", "59441887", "S02M040_Main", "box_LMA_Layer_Controller_16.Loaded", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptMonitor_v2_78_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Play_Domino_Cinematic_Animation_51()
  l0 = self.box_InteractionScriptMonitor_v2_78
  l1 = self.box_Play_Domino_Cinematic_Animation_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1966511282", "1966511282", "S02M040_Main", "box_InteractionScriptMonitor_v2_78.Disabled", "box_Play_Domino_Cinematic_Animation_51.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_InteractionScriptMonitor_v2_78_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_78()
  l0 = self.box_InteractionScriptMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|21735997", "21735997", "S02M040_Main", "box_InteractionScriptMonitor_v2_78.InteractionFinished", "box_InteractionScriptMonitor_v2_78.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_InteractionScriptMonitor_v2_78_InteractionStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_67()
  l0 = self.box_InteractionScriptMonitor_v2_78
  l1 = self.box_MapPointController_v4_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1103787722", "1103787722", "S02M040_Main", "box_InteractionScriptMonitor_v2_78.InteractionStarted", "box_MapPointController_v4_67.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_HackableController_v2_8_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_8()
  l0 = self.box_HackableController_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|663147536", "663147536", "S02M040_Main", "box_HackableController_v2_8.Disabled", "box_HackableController_v2_8.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_SetTimeOfDay_34_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_20
  l0.Checkpoint = "CheckPoint_Replay"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1733682266", "1733682266", "S02M040_Main", "box_SetTimeOfDay_34.Out", "box_MissionCheckpointReach_20.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_7_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_65()
  l0 = self.box_TriggerMonitor_v2_7
  l1 = self.box_LogicGate_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1992491394", "1992491394", "S02M040_Main", "box_TriggerMonitor_v2_7.Enter", "box_LogicGate_v2_65.Close", l0, l1)
  l1:Close()
end
function export:f_box_PGTController_v2_22_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_57
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PGTController_v2_22
  l1 = self.box_CinematicPrep_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1142206743", "1142206743", "S02M040_Main", "box_PGTController_v2_22.Started", "box_CinematicPrep_57.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Lanes_Restrictions_Control_33_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_73
  l0.MapPoint = "9223372068252491425"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1494776117", "1494776117", "S02M040_Main", "box_Lanes_Restrictions_Control_33.Out", "box_MapPointController_v4_73.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Timer_v2_63_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_65()
  l0 = self.box_Timer_v2_63
  l1 = self.box_LogicGate_v2_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1729173610", "1729173610", "S02M040_Main", "box_Timer_v2_63.TimeElapsed", "box_LogicGate_v2_65.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_53_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_PlayDialog_v2_53
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|921669411", "921669411", "S02M040_Main", "box_PlayDialog_v2_53.Finished", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(3)
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1080001713", "1080001713", "S02M040_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_10
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionCheckpointReach_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1479884921", "1479884921", "S02M040_Main", "box_MultipleOR_12.Out", "box_MissionCheckpointReach_10.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_30_CollisionsDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_36
  l0.CLO = "9223372050426883816"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|71864850", "71864850", "S02M040_Main", "box_CollisionController_30.CollisionsDisabled", "box_CLOController_36.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_93_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Door2Open
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|927864777"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_94_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_94_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_93
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2007517919", "2007517919", "S02M040_Main", "box_MultipleOR_93.Out", "box_Compare_Boolean_v2_94.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_84_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M040.Objectives.Objective010",
    item = "Objective",
    id = "343703"
  }
  l0 = self.box_MultipleOR_84
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1757869481", "1757869481", "S02M040_Main", "box_MultipleOR_84.Out", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_RandomOutput_v2_24_Output_0()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: You can't do this to me! I MADE this Church.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: You can't do this to me! I MADE this Church.")
  l0 = self.box_PlayDialog_v2_37
  l0.Entity = self.JimmySiska
  l0.SoundId = "soundbinary/3980994276.bnk"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_PlayDialog_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|8335743", "8335743", "S02M040_Main", "box_RandomOutput_v2_24.Output", "box_PlayDialog_v2_37.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_24_Output_1()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: You can't do this! Nelly's not going to let this go.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: You can't do this! Nelly's not going to let this go.")
  l0 = self.box_PlayDialog_v2_49
  l0.Entity = self.JimmySiska
  l0.SoundId = "soundbinary/2962974750.bnk"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_PlayDialog_v2_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1204783004", "1204783004", "S02M040_Main", "box_RandomOutput_v2_24.Output", "box_PlayDialog_v2_49.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_24_Output_2()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Ass holes! All of you!", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Ass holes! All of you!")
  l0 = self.box_PlayDialog_v2_50
  l0.Entity = self.JimmySiska
  l0.SoundId = "soundbinary/3117755151.bnk"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_PlayDialog_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1607373406", "1607373406", "S02M040_Main", "box_RandomOutput_v2_24.Output", "box_PlayDialog_v2_50.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_24_Output_3()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: If you'reListening...I can make you a very rich person.", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: If you'reListening...I can make you a very rich person.")
  l0 = self.box_PlayDialog_v2_53
  l0.Entity = self.JimmySiska
  l0.SoundId = "soundbinary/216038217.bnk"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_PlayDialog_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2091138830", "2091138830", "S02M040_Main", "box_RandomOutput_v2_24.Output", "box_PlayDialog_v2_53.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_24_Output_4()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Frustrated Roar", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Frustrated Roar")
  l0 = self.box_PlayDialog_v2_61
  l0.Entity = self.JimmySiska
  l0.SoundId = "soundbinary/649472706.bnk"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_PlayDialog_v2_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|901187602", "901187602", "S02M040_Main", "box_RandomOutput_v2_24.Output", "box_PlayDialog_v2_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_RandomOutput_v2_24_Output_5()
  local l0, l1
  self = self._graph
  DrawTextToScreen("Comment: Please. I shouldn't be here", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PlayDialog_v2')-- Comment: Please. I shouldn't be here")
  l0 = self.box_PlayDialog_v2_62
  l0.Entity = self.JimmySiska
  l0.SoundId = "soundbinary/1206640609.bnk"
  l0 = self.box_RandomOutput_v2_24
  l1 = self.box_PlayDialog_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1783053952", "1783053952", "S02M040_Main", "box_RandomOutput_v2_24.Output", "box_PlayDialog_v2_62.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_52()
  l0 = self.box_MissionZone_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|910009111", "910009111", "S02M040_Main", "box_Simple_Node_28.Out", "box_MissionZone_52.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PhoneCommunicationController_75_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_PhoneCommunicationController_75
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|265662335", "265662335", "S02M040_Main", "box_PhoneCommunicationController_75.OnCommunicationStarted", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Pawn_Health_Controller_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_41
  l0.HackableEntity = "9223372050426883820"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|613464825", "613464825", "S02M040_Main", "box_Pawn_Health_Controller_45.Out", "box_HackableController_v2_41.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_MultipleOR_70_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_76()
  l0 = self.box_MultipleOR_70
  l1 = self.box_LogicGate_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1799110999", "1799110999", "S02M040_Main", "box_MultipleOR_70.Out", "box_LogicGate_v2_76.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_96()
  l0 = self.box_MissionMessageController_v3_13
  l1 = self.box_Intel_Controller_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|733223466", "733223466", "S02M040_Main", "box_MissionMessageController_v3_13.Out", "box_Intel_Controller_96.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MapPointController_v4_67_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Intel_Controller_96()
  l0 = self.box_MapPointController_v4_67
  l1 = self.box_Intel_Controller_96
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|186430635", "186430635", "S02M040_Main", "box_MapPointController_v4_67.Hidden", "box_Intel_Controller_96.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MapPointController_v4_67_Shown()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M040.Objectives.Objective020",
    item = "Objective",
    id = "343709"
  }
  l0 = self.box_MapPointController_v4_67
  l1 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|646319099", "646319099", "S02M040_Main", "box_MapPointController_v4_67.Shown", "box_MissionMessageController_v3_13.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionLayer_v2_56_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|555015284"
  l0.Out = self.f_box_Get_Player_ID_58_Out
  l0 = self.box_MissionLayer_v2_56
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1868505143", "1868505143", "S02M040_Main", "box_MissionLayer_v2_56.Loaded", "box_Get_Player_ID_58.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_25_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_97()
  l0 = self.box_Escape_Gameplay_25
  l1 = self.box_Mission_End_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2001473413", "2001473413", "S02M040_Main", "box_Escape_Gameplay_25.Escaped", "box_Mission_End_97.End", l0, l1)
  l1:End()
end
function export:f_box_Escape_Gameplay_25_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_25
  l1 = self.box_OnceOnly_v3_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1821927976", "1821927976", "S02M040_Main", "box_Escape_Gameplay_25.LeftArea", "box_OnceOnly_v3_6.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_43_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_18
  l0.PGTMissionArea = "9223372046800153170"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1331499722", "1331499722", "S02M040_Main", "box_Ordered_Output_43.Out", "box_PGTController_v2_18.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_43_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|402719046"
  l0.Out = self.f_box_Simple_Node_28_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|796821826", "796821826", "S02M040_Main", "box_Ordered_Output_43.Out", "box_Simple_Node_28.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_43_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1937565352"
  l0.Out = self.f_box_Simple_Node_77_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|212149410", "212149410", "S02M040_Main", "box_Ordered_Output_43.Out", "box_Simple_Node_77.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_43_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|673001008"
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_box_Ordered_Output_48_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_48_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_48_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_48_Out_3
  l0.Out[4] = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1017529744", "1017529744", "S02M040_Main", "box_Ordered_Output_43.Out", "box_Ordered_Output_48.In", clone, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_22
  l0.PGTMissionArea = "9223372046800153170"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|269506582", "269506582", "S02M040_Main", "box_Get_Player_ID_58.Out", "box_PGTController_v2_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_36_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_36
  self.JimmySiska = l0.UserID
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.JimmySiska
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|436458763"
  l0.Out = self.f_box_Pawn_Health_Controller_45_Out
  l0 = self.box_CLOController_36
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|692523341", "692523341", "S02M040_Main", "box_CLOController_36.OnUserInPlace", "box_Pawn_Health_Controller_45.SetImmune", l0, l1)
  l1:SetImmune()
end
function export:f_box_Play_Domino_Cinematic_Animation_51_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|554219297"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_43_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_43_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_43_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_43_Out_3
  l0 = self.box_Play_Domino_Cinematic_Animation_51
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|916519071", "916519071", "S02M040_Main", "box_Play_Domino_Cinematic_Animation_51.Started", "box_Ordered_Output_43.In", l0, l1)
  l1:In()
end
function export:f_box_Play_Domino_Cinematic_Animation_51_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_InteractionScriptMonitor_v2_78
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l1.A = l0.IsUserRcVehicle
  l1.B = nil
  l1._graph = self
  l1._name = "box_Compare_Boolean_v2_44"
  l1._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1689710861"
  l1.Out = self.f_box_Compare_Boolean_v2_44_Out
  l1.A_is_True = self.f_box_Compare_Boolean_v2_44_A_is_True
  l1.A_is_False = self.f_box_Compare_Boolean_v2_44_A_is_False
  l1.A_and_B = DummyFunction
  l1.notA_and_notB = DummyFunction
  l1.A_or_B = DummyFunction
  l1.A_xor_B = DummyFunction
  l0 = self.box_Play_Domino_Cinematic_Animation_51
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|606465659", "606465659", "S02M040_Main", "box_Play_Domino_Cinematic_Animation_51.Stopped", "box_Compare_Boolean_v2_44.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_54_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1973430942"
  l0.Out = self.f_box_Get_Player_ID_55_Out
  l0 = self.box_MissionLayer_v2_54
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1067004662", "1067004662", "S02M040_Main", "box_MissionLayer_v2_54.Loaded", "box_Get_Player_ID_55.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_23()
  l0 = self.box_MissionMessageController_v3_5
  l1 = self.box_Interact_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|279052170", "279052170", "S02M040_Main", "box_MissionMessageController_v3_5.Out", "box_Interact_Gameplay_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_LogicGate_v2_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_RandomOutput_v2_24
  l0.AutoReset = 1
  l0 = self.box_LogicGate_v2_65
  l1 = self.box_RandomOutput_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1880990699", "1880990699", "S02M040_Main", "box_LogicGate_v2_65.Out", "box_RandomOutput_v2_24.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_38_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_23()
  l0 = self.box_MissionMessageController_v3_38
  l1 = self.box_Interact_Gameplay_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1257114553", "1257114553", "S02M040_Main", "box_MissionMessageController_v3_38.Out", "box_Interact_Gameplay_23.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S02M040_Main"
  l0 = self.box_MultipleOR_11
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1631580026", "1631580026", "S02M040_Main", "box_MultipleOR_11.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Ordered_Output_48_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_46
  l0.HackableEntity = "9223372069342022706"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1247079833", "1247079833", "S02M040_Main", "box_Ordered_Output_48.Out", "box_Hackable_Monitor_46.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_48_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_47
  l0.HackableEntity = "9223372069342022704"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1534633327", "1534633327", "S02M040_Main", "box_Ordered_Output_48.Out", "box_Hackable_Monitor_47.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_48_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_87
  l0.HackableEntity = "9223372069342022692"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|201014196", "201014196", "S02M040_Main", "box_Ordered_Output_48.Out", "box_Hackable_Monitor_87.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_48_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Hackable_Monitor_88
  l0.HackableEntity = "9223372069342022694"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1023027898", "1023027898", "S02M040_Main", "box_Ordered_Output_48.Out", "box_Hackable_Monitor_88.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_25
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372046915775460"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1125691026", "1125691026", "S02M040_Main", "box_Ordered_Output_3.Out", "box_Escape_Gameplay_25.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_52()
  l0 = self.box_MissionZone_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|97963491", "97963491", "S02M040_Main", "box_Ordered_Output_3.Out", "box_MissionZone_52.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_CLOController_80_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_80
  self.Miranda_PostCin = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2024513795"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_82_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_82_Out_3
  l0 = self.box_CLOController_80
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|641600033", "641600033", "S02M040_Main", "box_CLOController_80.OnUserInPlace", "box_Ordered_Output_82.In", l0, l1)
  l1:In()
end
function export:f_box_Pawn_Health_Controller_81_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_8()
  l0 = self.box_HackableController_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1411351042", "1411351042", "S02M040_Main", "box_Pawn_Health_Controller_81.Out", "box_HackableController_v2_8.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_MapPointController_v4_71_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MapPointController_v4_71
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1172035221", "1172035221", "S02M040_Main", "box_MapPointController_v4_71.Hidden", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_39_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.SiskaFree = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.RegistryDone
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1842685784"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_69_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_69_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_39
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|169895838", "169895838", "S02M040_Main", "box_SetBoolean_v2_39.Out", "box_Compare_Boolean_v2_69.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_39_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.SiskaFree = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.SiskaFree = l0.Target
end
function export:f_box_SetBoolean_v2_39_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.SiskaFree = l0.Target
end
function export:f_box_SetBoolean_v2_39_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_39
  self.SiskaFree = l0.Target
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
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 17
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|51854806"
  l0.Out = self.f_box_SetTimeOfDay_34_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1738099118", "1738099118", "S02M040_Main", "box_Get_Player_ID_1.Out", "box_SetTimeOfDay_34.SetTimeOfDay", clone, l0)
  l0:SetTimeOfDay()
end
function export:f_box_Compare_Boolean_v2_86_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_21
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346323"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|596920538", "596920538", "S02M040_Main", "box_Compare_Boolean_v2_86.A_is_False", "box_PhoneCommunicationController_21.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Compare_Boolean_v2_86_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|356245055", "356245055", "S02M040_Main", "box_Compare_Boolean_v2_86.A_is_True", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_MapPointController_v4_73_Hidden()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  l0.Entity = "9223372057370017998"
  l0.Collisionable = nil
  l0._graph = self
  l0._name = "box_CollisionController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|331921665"
  l0.IsSet = DummyFunction
  l0.CollisionsEnabled = DummyFunction
  l0.CollisionsDisabled = self.f_box_CollisionController_30_CollisionsDisabled
  l0.Out = DummyFunction
  l0 = self.box_MapPointController_v4_73
  l1 = Boxes[PathID("domino/System/CollisionController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1466412385", "1466412385", "S02M040_Main", "box_MapPointController_v4_73.Hidden", "box_CollisionController_30.DisableCollisions", l0, l1)
  l1:DisableCollisions()
end
function export:f_box_InteractionScriptController_72_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v4_71
  l0.MapPoint = "9223372068252491425"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|270963003", "270963003", "S02M040_Main", "box_InteractionScriptController_72.Disabled", "box_MapPointController_v4_71.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_Compare_Boolean_v2_94_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_92()
  l0 = self.box_SetBoolean_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2126616904", "2126616904", "S02M040_Main", "box_Compare_Boolean_v2_94.A_is_False", "box_SetBoolean_v2_92.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_94_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_92()
  l0 = self.box_SetBoolean_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1498486504", "1498486504", "S02M040_Main", "box_Compare_Boolean_v2_94.A_is_True", "box_SetBoolean_v2_92.False", clone, l0)
  l0:False()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|706534989"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_MissionMessageController_v3_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|288538866", "288538866", "S02M040_Main", "box_MissionMessageController_v3_15.Out", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_21_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v4_67()
  l0 = self.box_PhoneCommunicationController_21
  l1 = self.box_MapPointController_v4_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2092334905", "2092334905", "S02M040_Main", "box_PhoneCommunicationController_21.OnCommunicationStarted", "box_MapPointController_v4_67.Show", l0, l1)
  l1:Show()
end
function export:f_box_PhoneCommunicationController_21_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_31()
  l0 = self.box_PhoneCommunicationController_21
  l1 = self.box_TriggerMonitor_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|589301709", "589301709", "S02M040_Main", "box_PhoneCommunicationController_21.StartCommunicationOut", "box_TriggerMonitor_v2_31.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MissionCheckpointReach_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M040.Objectives.Objective030",
    item = "Objective",
    id = "343710"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_10
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|652207327", "652207327", "S02M040_Main", "box_MissionCheckpointReach_10.Out", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionCheckpointReach_60_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372050586903302"
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
  l0._name = "box_Lanes_Restrictions_Control_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|116235782"
  l0.Out = self.f_box_Lanes_Restrictions_Control_33_Out
  l0 = self.box_MissionCheckpointReach_60
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|420204757", "420204757", "S02M040_Main", "box_MissionCheckpointReach_60.Out", "box_Lanes_Restrictions_Control_33.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_23_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_23
  l1 = self.box_SetBoolean_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2072358329", "2072358329", "S02M040_Main", "box_Interact_Gameplay_23.Interacted", "box_SetBoolean_v2_27.True", l0, l1)
  l1:True()
end
function export:f_box_PGTController_v2_18_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372055069270449"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1299023346"
  l0.Out = self.f_box_AI_Agent_Zone_35_Out
  l0 = self.box_PGTController_v2_18
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1622822495", "1622822495", "S02M040_Main", "box_PGTController_v2_18.AllSpawned", "box_AI_Agent_Zone_35.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Compare_Boolean_v2_90_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_89()
  l0 = self.box_SetBoolean_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1121171534", "1121171534", "S02M040_Main", "box_Compare_Boolean_v2_90.A_is_False", "box_SetBoolean_v2_89.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_90_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_SetBoolean_v2_89()
  l0 = self.box_SetBoolean_v2_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1057353137", "1057353137", "S02M040_Main", "box_Compare_Boolean_v2_90.A_is_True", "box_SetBoolean_v2_89.False", clone, l0)
  l0:False()
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_UnspawnController_98
  l0.CLO = "9223372063884998202"
  l0 = self.box_MultipleOR_40
  l1 = self.box_UnspawnController_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|225539445", "225539445", "S02M040_Main", "box_MultipleOR_40.Out", "box_UnspawnController_98.UnspawnAutomaticCLO", l0, l1)
  l1:UnspawnAutomaticCLO()
end
function export:f_box_SetBoolean_v2_92_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.Door2Open = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.Door2Open = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.Door2Open = l0.Target
end
function export:f_box_SetBoolean_v2_92_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.Door2Open = l0.Target
end
function export:f_box_SetBoolean_v2_92_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_92
  self.Door2Open = l0.Target
end
function export:f_box_Ordered_Output_85_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Proximity_Monitor_29
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = self.JimmySiska
  l0.Radius = 30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1137654375", "1137654375", "S02M040_Main", "box_Ordered_Output_85.Out", "box_Proximity_Monitor_29.Enable", clone, l0)
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
  l0 = self.box_TriggerMonitor_v2_7
  l0.Trigger = "9223372056457745870"
  l0.AutoDisable = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1813101563", "1813101563", "S02M040_Main", "box_Ordered_Output_85.Out", "box_TriggerMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_S02M040_CIN_MirandaKnows_Main_59_EndCine()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1836675356"
  l0.Out = self.f_box_Pawn_Health_Controller_83_Out
  l0 = self.box_S02M040_CIN_MirandaKnows_Main_59
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1287815594", "1287815594", "S02M040_Main", "box_S02M040_CIN_MirandaKnows_Main_59.EndCine", "box_Pawn_Health_Controller_83.UnsetImmune", l0, l1)
  l1:UnsetImmune()
end
function export:f_box_AI_Agent_Zone_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|276079751", "276079751", "S02M040_Main", "box_AI_Agent_Zone_35.Out", "box_CinematicPrep_14.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Hackable_Monitor_88_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_Hackable_Monitor_88
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|30611655", "30611655", "S02M040_Main", "box_Hackable_Monitor_88.HackSuccess", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_UnspawnController_98_AutomaticCLOUnspawned()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_75
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367687"
  l0 = self.box_UnspawnController_98
  l1 = self.box_PhoneCommunicationController_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|868430579", "868430579", "S02M040_Main", "box_UnspawnController_98.AutomaticCLOUnspawned", "box_PhoneCommunicationController_75.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionCheckpointReach_20_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_20
  l1 = self.box_S02M040_CIN_MirandaKnows_Main_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2014144827", "2014144827", "S02M040_Main", "box_MissionCheckpointReach_20.Out", "box_S02M040_CIN_MirandaKnows_Main_59.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialog_v2_62_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_PlayDialog_v2_62
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|673219493", "673219493", "S02M040_Main", "box_PlayDialog_v2_62.Finished", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(5)
end
function export:f_box_SetBoolean_v2_27_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.RegistryDone = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.RegistryDone = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.RegistryDone = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.RegistryDone = l0.Target
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SiskaFree
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|846386888"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_86_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_86_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_SetBoolean_v2_27
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|721324660", "721324660", "S02M040_Main", "box_SetBoolean_v2_27.SetTrue", "box_Compare_Boolean_v2_86.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_27_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.RegistryDone = l0.Target
end
function export:f_box_Ordered_Output_32_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1144860224", "1144860224", "S02M040_Main", "box_Ordered_Output_32.Out", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_32_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_78()
  l0 = self.box_InteractionScriptMonitor_v2_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|372911399", "372911399", "S02M040_Main", "box_Ordered_Output_32.Out", "box_InteractionScriptMonitor_v2_78.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_31()
  l0 = self.box_TriggerMonitor_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1175407466", "1175407466", "S02M040_Main", "box_Ordered_Output_32.Out", "box_TriggerMonitor_v2_31.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_32_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491181"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1241535618"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1455054598", "1455054598", "S02M040_Main", "box_Ordered_Output_32.Out", "box_Media_System_Custom_Broadcast_Controller_42.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_PlayDialog_v2_61_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_PlayDialog_v2_61
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1106824659", "1106824659", "S02M040_Main", "box_PlayDialog_v2_61.Finished", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(4)
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_80
  l0.CLO = "9223372063884998202"
  l0 = self.box_MultipleOR_17
  l1 = self.box_CLOController_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|906523807", "906523807", "S02M040_Main", "box_MultipleOR_17.Out", "box_CLOController_80.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_OnceOnly_v3_74_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1227113389"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_85_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_85_Out_1
  l0 = self.box_OnceOnly_v3_74
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|959984384", "959984384", "S02M040_Main", "box_OnceOnly_v3_74.Out", "box_Ordered_Output_85.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_6_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_4
  l0.LMALayerName = "SF_06_Rehab_Center_LMA"
  l0 = self.box_OnceOnly_v3_6
  l1 = self.box_LMA_Layer_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1415895552", "1415895552", "S02M040_Main", "box_OnceOnly_v3_6.Out", "box_LMA_Layer_Controller_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PlayDialog_v2_49_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_PlayDialog_v2_49
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1541558662", "1541558662", "S02M040_Main", "box_PlayDialog_v2_49.Finished", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_44_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S02M040_SCR_Main_19()
  l0 = self.box_S02M040_SCR_Main_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|831173442", "831173442", "S02M040_Main", "box_Compare_Boolean_v2_44.A_is_False", "box_S02M040_SCR_Main_19.SetJimmyFree", clone, l0)
  l0:SetJimmyFree()
end
function export:f_box_Compare_Boolean_v2_44_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_S02M040_SCR_Main_19()
  l0 = self.box_S02M040_SCR_Main_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1958097263", "1958097263", "S02M040_Main", "box_Compare_Boolean_v2_44.A_is_True", "box_S02M040_SCR_Main_19.SetJimmyFree_RC", clone, l0)
  l0:SetJimmyFree_RC()
end
function export:f_box_Compare_Boolean_v2_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372050426883820"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|641241041"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1860149717", "1860149717", "S02M040_Main", "box_Compare_Boolean_v2_44.Out", "box_InteractionScriptController_79.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_64_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_MultipleOR_64
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1285198135", "1285198135", "S02M040_Main", "box_MultipleOR_64.Out", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlayDialog_v2_37_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_PlayDialog_v2_37
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1342150964", "1342150964", "S02M040_Main", "box_PlayDialog_v2_37.Finished", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_SetBoolean_v2_89_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.Door1Open = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.Door1Open = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.Door1Open = l0.Target
end
function export:f_box_SetBoolean_v2_89_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.Door1Open = l0.Target
end
function export:f_box_SetBoolean_v2_89_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_89
  self.Door1Open = l0.Target
end
function export:f_box_Hackable_Monitor_46_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_91()
  l0 = self.box_Hackable_Monitor_46
  l1 = self.box_MultipleOR_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1733899268", "1733899268", "S02M040_Main", "box_Hackable_Monitor_46.HackSuccess", "box_MultipleOR_91.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_14_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_9
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346324"
  l0 = self.box_CinematicPrep_14
  l1 = self.box_PhoneCommunicationController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|397562369", "397562369", "S02M040_Main", "box_CinematicPrep_14.PostOut", "box_PhoneCommunicationController_9.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_LogicGate_v2_76_Opened()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_70()
  l0 = self.box_LogicGate_v2_76
  l1 = self.box_MultipleOR_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|896980443", "896980443", "S02M040_Main", "box_LogicGate_v2_76.Opened", "box_MultipleOR_70.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LogicGate_v2_76_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_63
  l0.Seconds = 6
  l0 = self.box_LogicGate_v2_76
  l1 = self.box_Timer_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1241856301", "1241856301", "S02M040_Main", "box_LogicGate_v2_76.Out", "box_Timer_v2_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_87_HackSuccess()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_93()
  l0 = self.box_Hackable_Monitor_87
  l1 = self.box_MultipleOR_93
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|2083005677", "2083005677", "S02M040_Main", "box_Hackable_Monitor_87.HackSuccess", "box_MultipleOR_93.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Pawn_Health_Controller_83_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|638842205", "638842205", "S02M040_Main", "box_Pawn_Health_Controller_83.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_PlayDialog_v2_50_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_64()
  l0 = self.box_PlayDialog_v2_50
  l1 = self.box_MultipleOR_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|360961977", "360961977", "S02M040_Main", "box_PlayDialog_v2_50.Finished", "box_MultipleOR_64.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_Compare_Boolean_v2_69_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_84()
  l0 = self.box_MultipleOR_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1259549561", "1259549561", "S02M040_Main", "box_Compare_Boolean_v2_69.A_is_False", "box_MultipleOR_84.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_69_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|262202884", "262202884", "S02M040_Main", "box_Compare_Boolean_v2_69.A_is_True", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.Door1Open
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1136946179"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_90_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_90_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_91
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1160544115", "1160544115", "S02M040_Main", "box_MultipleOR_91.Out", "box_Compare_Boolean_v2_90.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_31_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_38
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M040.Objectives.Objective020",
    item = "Objective",
    id = "343709"
  }
  l0 = self.box_TriggerMonitor_v2_31
  l1 = self.box_MissionMessageController_v3_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|117067119", "117067119", "S02M040_Main", "box_TriggerMonitor_v2_31.Enter", "box_MissionMessageController_v3_38.UpdateObjective", l0, l1)
  l1:UpdateObjective()
end
function export:f_box_Simple_Node_77_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_74
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|702083230", "702083230", "S02M040_Main", "box_Simple_Node_77.Out", "box_OnceOnly_v3_74.In", clone, l0)
  l0:In(0)
end
function export:f_box_Get_Player_ID_55_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1210998757", "1210998757", "S02M040_Main", "box_Get_Player_ID_55.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CinematicPrep_57_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372050426883820"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|881293908"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_72_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CinematicPrep_57
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|517546891", "517546891", "S02M040_Main", "box_CinematicPrep_57.PostOut", "box_InteractionScriptController_72.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_41_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Play_Domino_Cinematic_Animation_51()
  l0 = self.box_HackableController_v2_41
  l1 = self.box_Play_Domino_Cinematic_Animation_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1699161934", "1699161934", "S02M040_Main", "box_HackableController_v2_41.ProfilingDisabled", "box_Play_Domino_Cinematic_Animation_51.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_60
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1418086004", "1418086004", "S02M040_Main", "box_Ordered_Output_82.Out", "box_MissionCheckpointReach_60.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Pawn_Health_Controller_81()
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1982684743", "1982684743", "S02M040_Main", "box_Ordered_Output_82.Out", "box_Pawn_Health_Controller_81.SetInvincible", clone, l0)
  l0:SetInvincible()
end
function export:f_box_Ordered_Output_82_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Pawn_Health_Controller_81()
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|939736762", "939736762", "S02M040_Main", "box_Ordered_Output_82.Out", "box_Pawn_Health_Controller_81.SetCannotDie", clone, l0)
  l0:SetCannotDie()
end
function export:f_box_Ordered_Output_82_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Pawn_Health_Controller_81()
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|392943931", "392943931", "S02M040_Main", "box_Ordered_Output_82.Out", "box_Pawn_Health_Controller_81.SetImmune", clone, l0)
  l0:SetImmune()
end
function export:f_box_Proximity_Monitor_29_EnterRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_76()
  l0 = self.box_Proximity_Monitor_29
  l1 = self.box_LogicGate_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|65597976", "65597976", "S02M040_Main", "box_Proximity_Monitor_29.EnterRadius", "box_LogicGate_v2_76.Open", l0, l1)
  l1:Open()
end
function export:f_box_Proximity_Monitor_29_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_76()
  l0 = self.box_Proximity_Monitor_29
  l1 = self.box_LogicGate_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|823002291", "823002291", "S02M040_Main", "box_Proximity_Monitor_29.ExitRadius", "box_LogicGate_v2_76.Close", l0, l1)
  l1:Close()
end
function export:f_box_PhoneCommunicationController_9_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1479723352"
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_box_Ordered_Output_32_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_32_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_32_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_32_Out_3
  l0 = self.box_PhoneCommunicationController_9
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|1980457633", "1980457633", "S02M040_Main", "box_PhoneCommunicationController_9.StartCommunicationOut", "box_Ordered_Output_32.In", l0, l1)
  l1:In()
end
function export:f_box_CollisionController_95_CollisionsEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CollisionController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|184785252", "184785252", "S02M040_Main", "box_CollisionController_95.CollisionsEnabled", "box_SetBoolean_v2_39.True", clone, l0)
  l0:True()
end
function export:OnEnter_box_S02M040_SCR_Main_19()
  local l0
  l0 = self.box_S02M040_SCR_Main_19
  l0.Jimmy = self.JimmySiska
  l0.Door1Open = self.Door1Open
  l0.Door2Open = self.Door2Open
  l0.Player = self.PlayerEntity
end
function export:OnEnter_box_InteractionScriptMonitor_v2_78()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_78
  l0.InteractionScriptEntity = "9223372050426883820"
  l0.AutoDisable = 1
end
function export:OnEnter_box_HackableController_v2_8()
  local l0
  l0 = self.box_HackableController_v2_8
  l0.HackableEntity = self.Miranda_PostCin
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_93()
end
function export:OnEnter_box_MultipleOR_84()
end
function export:OnEnter_box_MultipleOR_70()
end
function export:OnEnter_box_MapPointController_v4_67()
  local l0
  l0 = self.box_MapPointController_v4_67
  l0.MapPoint = "9223372068252491425"
end
function export:OnEnter_box_Play_Domino_Cinematic_Animation_51()
  local l0
  l0 = self.box_Play_Domino_Cinematic_Animation_51
  l0.TargetEntity = self.JimmySiska
  l0.Anim = "move/decisiontrees/scr/worldstories/s02/s02_m040_clo-greaseincell-cycle01.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372058380058125"
end
function export:OnEnter_box_LogicGate_v2_65()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_Pawn_Health_Controller_81()
  local l0
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.Miranda_PostCin
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M040\\S02M040.domino|@S02M040_Main|726153239"
  l0.Out = self.f_box_Pawn_Health_Controller_81_Out
end
function export:OnEnter_box_Mission_End_97()
  local l0
  l0 = self.box_Mission_End_97
  l0.Checkpoint = "CheckPoint_2"
  l0.MissionLayer = "S02M040_Main"
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372048421346326"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Interact_Gameplay_23()
  local l0
  l0 = self.box_Interact_Gameplay_23
  l0.Entity = "9223372049668767942"
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_Intel_Controller_96()
  local l0
  l0 = self.box_Intel_Controller_96
  l0.Entity = self.JimmySiska
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_SetBoolean_v2_92()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_MissionZone_52()
  local l0
  l0 = self.box_MissionZone_52
  l0.MissionArea = "9223372047839588188"
  l0.MissionLayer = "S02M040_Main"
  l0.LmaLayer = "SF_06_Rehab_Center_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_64()
end
function export:OnEnter_box_SetBoolean_v2_89()
end
function export:OnEnter_box_LogicGate_v2_76()
end
function export:OnEnter_box_MultipleOR_91()
end
function export:OnEnter_box_TriggerMonitor_v2_31()
  local l0
  l0 = self.box_TriggerMonitor_v2_31
  l0.Trigger = "9223372056457745870"
  l0.AutoDisable = 1
end
_compilerVersion = 4
