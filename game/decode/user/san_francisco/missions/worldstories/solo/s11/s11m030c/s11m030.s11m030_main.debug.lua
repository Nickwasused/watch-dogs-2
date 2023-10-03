export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AgentStateMonitor_v2.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/System/BreakableEntityMonitor_v2.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetNPC.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/776209402.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/478764689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3107632484.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3724583732.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/743649968.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S11M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main"
  self.PlayerEntity = nil
  self.ObjectiveIncremented = 0
  self.BoxCounter = 4
  self.VehicleCargo = nil
  self.AI_Cargo_List = {}
  self.Enemy_Entity = nil
  self.Dialogue01Played = 0
  self.Dialogue02Played = 0
  self.ProximityTrigger_Cargo_Zone = "9223372062707509213"
  self.box_MissionMessageController_v3_43 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_43
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|3360627"
  l0.Out = self.f_box_MissionMessageController_v3_43_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|94216066"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_BreakableEntityMonitor_v2_42 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_42
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|103830285"
  l0.Enabled = self.f_box_BreakableEntityMonitor_v2_42_Enabled
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_42_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_42_Breaking
  l0.AllBroken = DummyFunction
  self.box_Mission_End_27 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_27
  l0._graph = self
  l0._name = "box_Mission_End_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|148779650"
  self.box_MultipleOR_47 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_47
  l0._graph = self
  l0._name = "box_MultipleOR_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|153338241"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_47_Out
  self.box_PlaySound_v2_51 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_51
  l0._graph = self
  l0._name = "box_PlaySound_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|168418292"
  l0.Out = self.f_box_PlaySound_v2_51_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_78 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_78
  l0._graph = self
  l0._name = "box_Hackable_Monitor_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|218498885"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_78_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|240062208"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_BreakableEntityMonitor_v2_34 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_34
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|251656373"
  l0.Enabled = self.f_box_BreakableEntityMonitor_v2_34_Enabled
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_34_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_34_Breaking
  l0.AllBroken = DummyFunction
  self.box_Interact_Gameplay_35 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_35
  l0._graph = self
  l0._name = "box_Interact_Gameplay_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|268508421"
  l0.Started = self.f_box_Interact_Gameplay_35_Started
  l0.Stopped = self.f_box_Interact_Gameplay_35_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_35_Interacted
  self.box_Multiple_AND_15 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_15
  l0._graph = self
  l0._name = "box_Multiple_AND_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|344807645"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_15_Out
  self.box_PlayDialog_v2_28 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_28
  l0._graph = self
  l0._name = "box_PlayDialog_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|353789253"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_19 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_19
  l0._graph = self
  l0._name = "box_CLOController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|358842997"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_19_OnUserInPlace
  self.box_PlaySound_v2_23 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_23
  l0._graph = self
  l0._name = "box_PlaySound_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|396605284"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Interact_Gameplay_56 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_56
  l0._graph = self
  l0._name = "box_Interact_Gameplay_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|402646789"
  l0.Started = self.f_box_Interact_Gameplay_56_Started
  l0.Stopped = self.f_box_Interact_Gameplay_56_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_56_Interacted
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|405539935"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_CinematicPrep_33 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_33
  l0._graph = self
  l0._name = "box_CinematicPrep_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|455228189"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_33_PostOut
  self.box_Timer_v2_66 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_66
  l0._graph = self
  l0._name = "box_Timer_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|501245914"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_66_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialog_v2_24 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_24
  l0._graph = self
  l0._name = "box_PlayDialog_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|506837016"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionLayer_v2_22 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|539559874"
  l0.Loaded = self.f_box_MissionLayer_v2_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_2 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_2
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|544784699"
  l0.Out = self.f_box_MissionMessageController_v3_2_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_7 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_7
  l0._graph = self
  l0._name = "box_MissionLayer_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|558849225"
  l0.Loaded = self.f_box_MissionLayer_v2_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Interact_Gameplay_58 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_58
  l0._graph = self
  l0._name = "box_Interact_Gameplay_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|581344027"
  l0.Started = self.f_box_Interact_Gameplay_58_Started
  l0.Stopped = self.f_box_Interact_Gameplay_58_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_58_Interacted
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|637173430"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_5_PostOut
  self.box_PGTController_v2_4 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_4
  l0._graph = self
  l0._name = "box_PGTController_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|684819340"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_4_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_95 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_95
  l0._graph = self
  l0._name = "box_MultipleOR_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|753340786"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_95_Out
  self.box_MissionZone_69 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_69
  l0._graph = self
  l0._name = "box_MissionZone_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|783331784"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_MissionZone_69_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_OnceOnly_v3_75 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_75
  l0._graph = self
  l0._name = "box_OnceOnly_v3_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|801867401"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_75_Out
  l0.ResetOut = DummyFunction
  self.box_SnapAndBind_107 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_107
  l0._graph = self
  l0._name = "box_SnapAndBind_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|818170646"
  l0.Attached = DummyFunction
  self.box_Escape_Gameplay_6 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_6
  l0._graph = self
  l0._name = "box_Escape_Gameplay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|850218545"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_6_Escaped
  l0.LeftArea = DummyFunction
  self.box_Interact_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_10
  l0._graph = self
  l0._name = "box_Interact_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|866435450"
  l0.Started = self.f_box_Interact_Gameplay_10_Started
  l0.Stopped = self.f_box_Interact_Gameplay_10_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_10_Interacted
  self.box_BreakableEntityMonitor_v2_13 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_13
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|878105223"
  l0.Enabled = self.f_box_BreakableEntityMonitor_v2_13_Enabled
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_13_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_13_Breaking
  l0.AllBroken = DummyFunction
  self.box_Interact_Gameplay_83 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_83
  l0._graph = self
  l0._name = "box_Interact_Gameplay_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|893304691"
  l0.Started = self.f_box_Interact_Gameplay_83_Started
  l0.Stopped = self.f_box_Interact_Gameplay_83_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_83_Interacted
  self.box_MissionCheckpointReach_8 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_8
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|946191067"
  l0.Out = self.f_box_MissionCheckpointReach_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_37 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_37
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1057420681"
  l0.Out = self.f_box_MissionMessageController_v3_37_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_62 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_62
  l0._graph = self
  l0._name = "box_Timer_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1107167619"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_62_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_BreakableEntityMonitor_v2_21 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_21
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1135463979"
  l0.Enabled = self.f_box_BreakableEntityMonitor_v2_21_Enabled
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_21_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_21_Breaking
  l0.AllBroken = DummyFunction
  self.box_MultipleOR_72 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1160901350"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_PlaySound_v2_50 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_50
  l0._graph = self
  l0._name = "box_PlaySound_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1203586394"
  l0.Out = self.f_box_PlaySound_v2_50_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_46 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_46
  l0._graph = self
  l0._name = "box_MultipleOR_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1234667968"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_46_Out
  self.box_Interact_Gameplay_55 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_55
  l0._graph = self
  l0._name = "box_Interact_Gameplay_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1248049796"
  l0.Started = self.f_box_Interact_Gameplay_55_Started
  l0.Stopped = self.f_box_Interact_Gameplay_55_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_55_Interacted
  self.box_PhoneCommunicationController_14 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_14
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1360772002"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_14_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Multiple_AND_79 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_79
  l0._graph = self
  l0._name = "box_Multiple_AND_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1417914016"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_79_Out
  self.box_AISquadStateMonitor_98 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_98
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1445808463"
  l0.Enabled = self.f_box_AISquadStateMonitor_98_Enabled
  l0.Disabled = self.f_box_AISquadStateMonitor_98_Disabled
  l0.ArrestState = self.f_box_AISquadStateMonitor_98_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_98_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_98_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_98_VanishState
  l0.None = DummyFunction
  self.box_Timer_v2_77 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_77
  l0._graph = self
  l0._name = "box_Timer_v2_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1462487344"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_77_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_BreakableEntityMonitor_v2_84 = cbox:CreateBox("domino/System/BreakableEntityMonitor_v2.lua")
  l0 = self.box_BreakableEntityMonitor_v2_84
  l0._graph = self
  l0._name = "box_BreakableEntityMonitor_v2_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1499942054"
  l0.Enabled = self.f_box_BreakableEntityMonitor_v2_84_Enabled
  l0.Disabled = self.f_box_BreakableEntityMonitor_v2_84_Disabled
  l0.Breaking = self.f_box_BreakableEntityMonitor_v2_84_Breaking
  l0.AllBroken = DummyFunction
  self.box_CLOController_18 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1518256130"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_SnapAndBind_105 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_105
  l0._graph = self
  l0._name = "box_SnapAndBind_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1518867387"
  l0.Attached = DummyFunction
  self.box_GetNPC_52 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_52
  l0._graph = self
  l0._name = "box_GetNPC_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1540541121"
  l0.GotNPCList = self.f_box_GetNPC_52_GotNPCList
  self.box_Interact_Gameplay_85 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_85
  l0._graph = self
  l0._name = "box_Interact_Gameplay_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1580312696"
  l0.Started = self.f_box_Interact_Gameplay_85_Started
  l0.Stopped = self.f_box_Interact_Gameplay_85_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_85_Interacted
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1625163287"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_SnapAndBind_109 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_109
  l0._graph = self
  l0._name = "box_SnapAndBind_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1649693916"
  l0.Attached = DummyFunction
  self.box_Interact_Gameplay_60 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_60
  l0._graph = self
  l0._name = "box_Interact_Gameplay_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1665722250"
  l0.Started = self.f_box_Interact_Gameplay_60_Started
  l0.Stopped = self.f_box_Interact_Gameplay_60_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_60_Interacted
  self.box_MultipleOR_87 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_87
  l0._graph = self
  l0._name = "box_MultipleOR_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1684756405"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_87_Out
  self.box_PlayDialog_v2_31 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_31
  l0._graph = self
  l0._name = "box_PlayDialog_v2_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1711301737"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_SnapAndBind_111 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_111
  l0._graph = self
  l0._name = "box_SnapAndBind_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1724745187"
  l0.Attached = DummyFunction
  self.box_Interact_Gameplay_57 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_57
  l0._graph = self
  l0._name = "box_Interact_Gameplay_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1772511575"
  l0.Started = self.f_box_Interact_Gameplay_57_Started
  l0.Stopped = self.f_box_Interact_Gameplay_57_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_57_Interacted
  self.box_MultipleOR_32 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_32
  l0._graph = self
  l0._name = "box_MultipleOR_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1846873800"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_32_Out
  self.box_Interact_Gameplay_17 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_17
  l0._graph = self
  l0._name = "box_Interact_Gameplay_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1867879580"
  l0.Started = self.f_box_Interact_Gameplay_17_Started
  l0.Stopped = self.f_box_Interact_Gameplay_17_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_17_Interacted
  self.box_PlaySound_v2_1 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1869542516"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Interact_Gameplay_45 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_45
  l0._graph = self
  l0._name = "box_Interact_Gameplay_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1876450358"
  l0.Started = self.f_box_Interact_Gameplay_45_Started
  l0.Stopped = self.f_box_Interact_Gameplay_45_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_45_Interacted
  self.box_Timer_v2_38 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_38
  l0._graph = self
  l0._name = "box_Timer_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1937118590"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_38_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Interact_Gameplay_61 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_61
  l0._graph = self
  l0._name = "box_Interact_Gameplay_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1958422744"
  l0.Started = self.f_box_Interact_Gameplay_61_Started
  l0.Stopped = self.f_box_Interact_Gameplay_61_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_61_Interacted
  self.box_MissionMessageController_v3_20 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_20
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1960242331"
  l0.Out = self.f_box_MissionMessageController_v3_20_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySound_v2_53 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_53
  l0._graph = self
  l0._name = "box_PlaySound_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1971743405"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_100 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_100
  l0._graph = self
  l0._name = "box_MultipleOR_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1972159907"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_100_Out
  self.box_Interact_Gameplay_59 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_59
  l0._graph = self
  l0._name = "box_Interact_Gameplay_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1978864890"
  l0.Started = self.f_box_Interact_Gameplay_59_Started
  l0.Stopped = self.f_box_Interact_Gameplay_59_Stopped
  l0.Interacted = self.f_box_Interact_Gameplay_59_Interacted
  self.box_OnceOnly_v3_104 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_104
  l0._graph = self
  l0._name = "box_OnceOnly_v3_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1980899133"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_104_Out
  l0.ResetOut = DummyFunction
  self.box_AgentStateMonitor_V2_99 = cbox:CreateBox("domino/System/AgentStateMonitor_v2.lua")
  l0 = self.box_AgentStateMonitor_V2_99
  l0._graph = self
  l0._name = "box_AgentStateMonitor_V2_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2034396324"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_AgentStateMonitor_V2_99_Disabled
  l0.PauseState = DummyFunction
  l0.InterruptibleCinematicState = DummyFunction
  l0.UnawareState = DummyFunction
  l0.AllInUnawareState = DummyFunction
  l0.AwareState = DummyFunction
  l0.AllInAwareState = DummyFunction
  l0.AlertSoftState = DummyFunction
  l0.AlertHardState = self.f_box_AgentStateMonitor_V2_99_AlertHardState
  l0.FleeState = DummyFunction
  l0.AllInFleeState = DummyFunction
  l0.CombatState = DummyFunction
  l0.ScriptedState = DummyFunction
  l0.InvestigateState = DummyFunction
  l0.PostCombatSearchState = DummyFunction
  l0.CinematicMode_Interrupted = DummyFunction
  l0.DetectionIntuitionStarted = DummyFunction
  l0.DetectionIntuitionStopped = DummyFunction
  l0.DetectionIntuitionFull = DummyFunction
  l0.DetectionAlertStarted = DummyFunction
  l0.DetectionAlertStopped = DummyFunction
  l0.DetectionAlertFull = DummyFunction
  l0.IsDistracted = DummyFunction
  self.box_Timer_v2_91 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_91
  l0._graph = self
  l0._name = "box_Timer_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2055917262"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_91_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_40 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_40
  l0._graph = self
  l0._name = "box_MultipleOR_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2060476014"
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_box_MultipleOR_40_Out
  self.box_GetNPC_76 = cbox:CreateBox("domino/System/GetNPC.lua")
  l0 = self.box_GetNPC_76
  l0._graph = self
  l0._name = "box_GetNPC_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2097016468"
  l0.GotNPCList = self.f_box_GetNPC_76_GotNPCList
  self.box_PGTController_v2_11 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_11
  l0._graph = self
  l0._name = "box_PGTController_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2112249196"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_11_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_94 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_94
  l0._graph = self
  l0._name = "box_MultipleOR_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2119239823"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_94_Out
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
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = "S11M030C_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1609648376", "1609648376", "S11M030_Main", "CheckPoint_0", "box_MissionLayer_v2_22.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_Mission_End_27()
  l0 = self.box_Mission_End_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|210940281", "210940281", "S11M030_Main", "CheckPoint_1", "box_Mission_End_27.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_MissionLayer_v2_7
  l0.LayerName = "S11M030C_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1374968260", "1374968260", "S11M030_Main", "In", "box_MissionLayer_v2_7.Load", self, l0)
  l0:Load()
end
function export:f_box_MissionMessageController_v3_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1848028270"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_73_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_73_Out_1
  l0 = self.box_MissionMessageController_v3_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1640340076", "1640340076", "S11M030_Main", "box_MissionMessageController_v3_43.Out", "box_Ordered_Output_73.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_106_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_43
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M030.Objectives.Objective010",
    item = "SubObjective010",
    id = "481938"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1821315934", "1821315934", "S11M030_Main", "box_Simple_Node_106.Out", "box_MissionMessageController_v3_43.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Ordered_Output_81_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_77()
  l0 = self.box_Timer_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|591781732", "591781732", "S11M030_Main", "box_Ordered_Output_81.Out", "box_Timer_v2_77.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_81_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_94()
  l0 = self.box_MultipleOR_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|769846047", "769846047", "S11M030_Main", "box_Ordered_Output_81.Out", "box_MultipleOR_94.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669161"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1173013897"
  l0.Activated = self.f_box_MissionMusicController_48_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_MissionMessageController_v3_9
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1094697174", "1094697174", "S11M030_Main", "box_MissionMessageController_v3_9.Out", "box_MissionMusicController_48.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_BreakableEntityMonitor_v2_42_Breaking()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_45()
  l0 = self.box_BreakableEntityMonitor_v2_42
  l1 = self.box_Interact_Gameplay_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1962704225", "1962704225", "S11M030_Main", "box_BreakableEntityMonitor_v2_42.Breaking", "box_Interact_Gameplay_45.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_BreakableEntityMonitor_v2_42_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|515851185"
  l0.Out = self.f_box_Simple_Node_108_Out
  l0 = self.box_BreakableEntityMonitor_v2_42
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1310559408", "1310559408", "S11M030_Main", "box_BreakableEntityMonitor_v2_42.Disabled", "box_Simple_Node_108.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_42_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_107
  l0.Parent = "9223372065596343017"
  l0.Child = "9223372068253649157"
  l0.zPosOffset = 1.5
  l0 = self.box_BreakableEntityMonitor_v2_42
  l1 = self.box_SnapAndBind_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|151890207", "151890207", "S11M030_Main", "box_BreakableEntityMonitor_v2_42.Enabled", "box_SnapAndBind_107.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_MultipleOR_47_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_23
  l0.SoundId = "soundbinary/743649968.bnk"
  l0 = self.box_MultipleOR_47
  l1 = self.box_PlaySound_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|874668870", "874668870", "S11M030_Main", "box_MultipleOR_47.Out", "box_PlaySound_v2_23.Play", l0, l1)
  l1:Play()
end
function export:f_box_PlaySound_v2_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_6
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372048542345980"
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
  l0 = self.box_PlaySound_v2_51
  l1 = self.box_Escape_Gameplay_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1931616697", "1931616697", "S11M030_Main", "box_PlaySound_v2_51.Out", "box_Escape_Gameplay_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|485600643"
  l0.Out = self.f_box_Simple_Node_30_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1273319407", "1273319407", "S11M030_Main", "box_Simple_Node_49.Out", "box_Simple_Node_30.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|648087349", "648087349", "S11M030_Main", "box_Simple_Node_64.Out", "box_MultipleOR_87.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Hackable_Monitor_78_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|342833940"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_96_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_96_Out_1
  l0 = self.box_Hackable_Monitor_78
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1904402355", "1904402355", "S11M030_Main", "box_Hackable_Monitor_78.HackSuccess", "box_Ordered_Output_96.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMusicController_54_Deactivated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_27()
  l0 = self.box_Mission_End_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|257718891", "257718891", "S11M030_Main", "box_MissionMusicController_54.Deactivated", "box_Mission_End_27.End", clone, l0)
  l0:End()
end
function export:f_box_Ordered_Output_80_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_66()
  l0 = self.box_Timer_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1328971501", "1328971501", "S11M030_Main", "box_Ordered_Output_80.Out", "box_Timer_v2_66.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_80_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|595687107", "595687107", "S11M030_Main", "box_Ordered_Output_80.Out", "box_MultipleOR_95.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_79()
  l0 = self.box_MultipleOR_36
  l1 = self.box_Multiple_AND_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|910549943", "910549943", "S11M030_Main", "box_MultipleOR_36.Out", "box_Multiple_AND_79.Reset", l0, l1)
  l1:Reset()
end
function export:f_box_BreakableEntityMonitor_v2_34_Breaking()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_35()
  l0 = self.box_BreakableEntityMonitor_v2_34
  l1 = self.box_Interact_Gameplay_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2146223426", "2146223426", "S11M030_Main", "box_BreakableEntityMonitor_v2_34.Breaking", "box_Interact_Gameplay_35.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_BreakableEntityMonitor_v2_34_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|806098656"
  l0.Out = self.f_box_Simple_Node_112_Out
  l0 = self.box_BreakableEntityMonitor_v2_34
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1534080986", "1534080986", "S11M030_Main", "box_BreakableEntityMonitor_v2_34.Disabled", "box_Simple_Node_112.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_34_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_111
  l0.Parent = "9223372064340958630"
  l0.Child = "9223372068253649161"
  l0.zPosOffset = 1.5
  l0 = self.box_BreakableEntityMonitor_v2_34
  l1 = self.box_SnapAndBind_111
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|295027753", "295027753", "S11M030_Main", "box_BreakableEntityMonitor_v2_34.Enabled", "box_SnapAndBind_111.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Interact_Gameplay_35_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1458292005"
  l0.Out = self.f_box_Simple_Node_90_Out
  l0 = self.box_Interact_Gameplay_35
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1075849295", "1075849295", "S11M030_Main", "box_Interact_Gameplay_35.Interacted", "box_Simple_Node_90.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_35_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_61()
  l0 = self.box_Interact_Gameplay_35
  l1 = self.box_Interact_Gameplay_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1243915181", "1243915181", "S11M030_Main", "box_Interact_Gameplay_35.Started", "box_Interact_Gameplay_61.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_35_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_61()
  l0 = self.box_Interact_Gameplay_35
  l1 = self.box_Interact_Gameplay_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|494660052", "494660052", "S11M030_Main", "box_Interact_Gameplay_35.Stopped", "box_Interact_Gameplay_61.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_97_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_98()
  l0 = self.box_AISquadStateMonitor_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|410667961", "410667961", "S11M030_Main", "box_Simple_Node_97.Out", "box_AISquadStateMonitor_98.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_96_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_79()
  l0 = self.box_Multiple_AND_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|690022394", "690022394", "S11M030_Main", "box_Ordered_Output_96.Out", "box_Multiple_AND_79.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_96_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_91
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1808797029", "1808797029", "S11M030_Main", "box_Ordered_Output_96.Out", "box_Timer_v2_91.Start", clone, l0)
  l0:Start()
end
function export:f_box_Multiple_AND_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_98()
  l0 = self.box_Multiple_AND_15
  l1 = self.box_AISquadStateMonitor_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1169184273", "1169184273", "S11M030_Main", "box_Multiple_AND_15.Out", "box_AISquadStateMonitor_98.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1124229377", "1124229377", "S11M030_Main", "box_Ordered_Output_70.Out", "box_Multiple_AND_15.Condition", clone, l0)
  l0:Condition(0)
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|373915995", "373915995", "S11M030_Main", "box_Ordered_Output_70.Out", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_19_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_19
  self.VehicleCargo = l0.UserID
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_19
  l1 = self.box_CinematicPrep_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1196455555", "1196455555", "S11M030_Main", "box_CLOController_19.OnUserInPlace", "box_CinematicPrep_5.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Simple_Node_110_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_37
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M030.Objectives.Objective010",
    item = "SubObjective010",
    id = "481938"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1808446324", "1808446324", "S11M030_Main", "box_Simple_Node_110.Out", "box_MissionMessageController_v3_37.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Interact_Gameplay_56_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|488437912"
  l0.Out = self.f_box_Simple_Node_65_Out
  l0 = self.box_Interact_Gameplay_56
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|916751813", "916751813", "S11M030_Main", "box_Interact_Gameplay_56.Interacted", "box_Simple_Node_65.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_56_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_57()
  l0 = self.box_Interact_Gameplay_56
  l1 = self.box_Interact_Gameplay_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2105518163", "2105518163", "S11M030_Main", "box_Interact_Gameplay_56.Started", "box_Interact_Gameplay_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_56_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_57()
  l0 = self.box_Interact_Gameplay_56
  l1 = self.box_Interact_Gameplay_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|538165506", "538165506", "S11M030_Main", "box_Interact_Gameplay_56.Stopped", "box_Interact_Gameplay_57.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_8
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MultipleOR_12
  l1 = self.box_MissionCheckpointReach_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1921928024", "1921928024", "S11M030_Main", "box_MultipleOR_12.Out", "box_MissionCheckpointReach_8.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1959366692", "1959366692", "S11M030_Main", "box_Ordered_Output_74.Out", "box_Multiple_AND_15.Condition", clone, l0)
  l0:Condition(3)
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1939943136", "1939943136", "S11M030_Main", "box_Ordered_Output_74.Out", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Get_Player_ID_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_11
  l0.PGTMissionArea = "9223372047620607209"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1847893570", "1847893570", "S11M030_Main", "box_Get_Player_ID_25.Out", "box_PGTController_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_33_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CinematicPrep_33
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2084459891", "2084459891", "S11M030_Main", "box_CinematicPrep_33.PostOut", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_69()
  l0 = self.box_MissionZone_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1752413559", "1752413559", "S11M030_Main", "box_Simple_Node_30.Out", "box_MissionZone_69.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_65_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2026368584", "2026368584", "S11M030_Main", "box_Simple_Node_65.Out", "box_MultipleOR_87.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Timer_v2_66_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_28
  l0.SoundId = "soundbinary/3107632484.bnk"
  l0 = self.box_Timer_v2_66
  l1 = self.box_PlayDialog_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1788944641", "1788944641", "S11M030_Main", "box_Timer_v2_66.TimeElapsed", "box_PlayDialog_v2_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_86_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1626885937", "1626885937", "S11M030_Main", "box_Simple_Node_86.Out", "box_MultipleOR_32.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Simple_Node_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M030.Objectives.Objective010",
    item = "SubObjective010",
    id = "481938"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|310214128", "310214128", "S11M030_Main", "box_Simple_Node_108.Out", "box_MissionMessageController_v3_3.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_MissionLayer_v2_22_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|819687544"
  l0.Out = self.f_box_Get_Player_ID_41_Out
  l0 = self.box_MissionLayer_v2_22
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1959503015", "1959503015", "S11M030_Main", "box_MissionLayer_v2_22.Loaded", "box_Get_Player_ID_41.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_2_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_14
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346353"
  l0 = self.box_MissionMessageController_v3_2
  l1 = self.box_PhoneCommunicationController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|63063206", "63063206", "S11M030_Main", "box_MissionMessageController_v3_2.Out", "box_PhoneCommunicationController_14.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionLayer_v2_7_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|422170938"
  l0.Out = self.f_box_Get_Player_ID_25_Out
  l0 = self.box_MissionLayer_v2_7
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1830196449", "1830196449", "S11M030_Main", "box_MissionLayer_v2_7.Loaded", "box_Get_Player_ID_25.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_58_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Interact_Gameplay_58
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1159614975", "1159614975", "S11M030_Main", "box_Interact_Gameplay_58.Interacted", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_58_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_34()
  l0 = self.box_Interact_Gameplay_58
  l1 = self.box_BreakableEntityMonitor_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|551120253", "551120253", "S11M030_Main", "box_Interact_Gameplay_58.Started", "box_BreakableEntityMonitor_v2_34.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_58_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_Interact_Gameplay_58
  l1 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|103600484", "103600484", "S11M030_Main", "box_Interact_Gameplay_58.Stopped", "box_MultipleOR_40.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CinematicPrep_5_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_CinematicPrep_5
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1836527838", "1836527838", "S11M030_Main", "box_CinematicPrep_5.PostOut", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_4_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_76
  l0.Group = "AI_Cargo_List"
  l0 = self.box_PGTController_v2_4
  l1 = self.box_GetNPC_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|460454124", "460454124", "S11M030_Main", "box_PGTController_v2_4.AllSpawned", "box_GetNPC_76.GetEnemies", l0, l1)
  l1:GetEnemies()
end
function export:f_box_MultipleOR_95_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_77()
  l0 = self.box_MultipleOR_95
  l1 = self.box_Timer_v2_77
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|375539185", "375539185", "S11M030_Main", "box_MultipleOR_95.Out", "box_Timer_v2_77.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionZone_69_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_2
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M030.Objectives.Objective020",
    item = "Objective",
    id = "385574"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionZone_69
  l1 = self.box_MissionMessageController_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|171021382", "171021382", "S11M030_Main", "box_MissionZone_69.Disabled", "box_MissionMessageController_v3_2.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_75_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_31
  l0.SoundId = "soundbinary/3724583732.bnk"
  l0 = self.box_OnceOnly_v3_75
  l1 = self.box_PlayDialog_v2_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|597288597", "597288597", "S11M030_Main", "box_OnceOnly_v3_75.Out", "box_PlayDialog_v2_31.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_79()
  l0 = self.box_Multiple_AND_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1248828106", "1248828106", "S11M030_Main", "box_Simple_Node_39.Out", "box_Multiple_AND_79.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Simple_Node_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_20
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M030.Objectives.Objective010",
    item = "SubObjective010",
    id = "481938"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|692643728", "692643728", "S11M030_Main", "box_Simple_Node_112.Out", "box_MissionMessageController_v3_20.IncrementObjective", clone, l0)
  l0:IncrementObjective()
end
function export:f_box_Get_Player_ID_41_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_4
  l0.PGTMissionArea = "9223372047620607209"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1890420038", "1890420038", "S11M030_Main", "box_Get_Player_ID_41.Out", "box_PGTController_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Escape_Gameplay_6_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669161"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|220374293"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_MissionMusicController_54_Deactivated
  l0 = self.box_Escape_Gameplay_6
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|601439588", "601439588", "S11M030_Main", "box_Escape_Gameplay_6.Escaped", "box_MissionMusicController_54.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_Interact_Gameplay_10_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|506856959"
  l0.Out = self.f_box_Simple_Node_86_Out
  l0 = self.box_Interact_Gameplay_10
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2121729641", "2121729641", "S11M030_Main", "box_Interact_Gameplay_10.Interacted", "box_Simple_Node_86.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_10_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_59()
  l0 = self.box_Interact_Gameplay_10
  l1 = self.box_Interact_Gameplay_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|940925478", "940925478", "S11M030_Main", "box_Interact_Gameplay_10.Started", "box_Interact_Gameplay_59.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_10_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_59()
  l0 = self.box_Interact_Gameplay_10
  l1 = self.box_Interact_Gameplay_59
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|479223843", "479223843", "S11M030_Main", "box_Interact_Gameplay_10.Stopped", "box_Interact_Gameplay_59.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_BreakableEntityMonitor_v2_13_Breaking()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_10()
  l0 = self.box_BreakableEntityMonitor_v2_13
  l1 = self.box_Interact_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|374320256", "374320256", "S11M030_Main", "box_BreakableEntityMonitor_v2_13.Breaking", "box_Interact_Gameplay_10.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_BreakableEntityMonitor_v2_13_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_106"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|34411617"
  l0.Out = self.f_box_Simple_Node_106_Out
  l0 = self.box_BreakableEntityMonitor_v2_13
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|520293547", "520293547", "S11M030_Main", "box_BreakableEntityMonitor_v2_13.Disabled", "box_Simple_Node_106.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_13_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_105
  l0.Parent = "9223372064340958617"
  l0.Child = "9223372068253649159"
  l0.zPosOffset = 1.5
  l0 = self.box_BreakableEntityMonitor_v2_13
  l1 = self.box_SnapAndBind_105
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1215222410", "1215222410", "S11M030_Main", "box_BreakableEntityMonitor_v2_13.Enabled", "box_SnapAndBind_105.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_Interact_Gameplay_83_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2094424162"
  l0.Out = self.f_box_Simple_Node_89_Out
  l0 = self.box_Interact_Gameplay_83
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1641335066", "1641335066", "S11M030_Main", "box_Interact_Gameplay_83.Interacted", "box_Simple_Node_89.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_83_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_85()
  l0 = self.box_Interact_Gameplay_83
  l1 = self.box_Interact_Gameplay_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1007601796", "1007601796", "S11M030_Main", "box_Interact_Gameplay_83.Started", "box_Interact_Gameplay_85.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_83_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_85()
  l0 = self.box_Interact_Gameplay_83
  l1 = self.box_Interact_Gameplay_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1585665855", "1585665855", "S11M030_Main", "box_Interact_Gameplay_83.Stopped", "box_Interact_Gameplay_85.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Simple_Node_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2095428671", "2095428671", "S11M030_Main", "box_Simple_Node_63.Out", "box_MultipleOR_87.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_MissionCheckpointReach_8_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_9
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S11.S11M030.Objectives.Objective010",
    item = "SubObjective010",
    id = "481938"
  }
  l0.IncrementalObjectiveTotal = 4
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_8
  l1 = self.box_MissionMessageController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|602782564", "602782564", "S11M030_Main", "box_MissionCheckpointReach_8.Out", "box_MissionMessageController_v3_9.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_17()
  l0 = self.box_Interact_Gameplay_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1906287497", "1906287497", "S11M030_Main", "box_Ordered_Output_26.Out", "box_Interact_Gameplay_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_45()
  l0 = self.box_Interact_Gameplay_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|344165731", "344165731", "S11M030_Main", "box_Ordered_Output_26.Out", "box_Interact_Gameplay_45.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_26_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_10()
  l0 = self.box_Interact_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1870155960", "1870155960", "S11M030_Main", "box_Ordered_Output_26.Out", "box_Interact_Gameplay_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_26_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Interact_Gameplay_35()
  l0 = self.box_Interact_Gameplay_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1205407926", "1205407926", "S11M030_Main", "box_Ordered_Output_26.Out", "box_Interact_Gameplay_35.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_26_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|184269912"
  l0.Out = self.f_box_Simple_Node_49_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1188146900", "1188146900", "S11M030_Main", "box_Ordered_Output_26.Out", "box_Simple_Node_49.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_26_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BreakableEntityMonitor_v2_21()
  l0 = self.box_BreakableEntityMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1993371902", "1993371902", "S11M030_Main", "box_Ordered_Output_26.Out", "box_BreakableEntityMonitor_v2_21.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_26_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|331876708"
  l0.Out = self.f_box_Simple_Node_97_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1879805809", "1879805809", "S11M030_Main", "box_Ordered_Output_26.Out", "box_Simple_Node_97.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_37_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|353701449"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0 = self.box_MissionMessageController_v3_37
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1972143902", "1972143902", "S11M030_Main", "box_MissionMessageController_v3_37.Out", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_82_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|979192389", "979192389", "S11M030_Main", "box_Ordered_Output_82.Out", "box_Timer_v2_62.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_82_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_94()
  l0 = self.box_MultipleOR_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|621994707", "621994707", "S11M030_Main", "box_Ordered_Output_82.Out", "box_MultipleOR_94.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_82_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_95()
  l0 = self.box_MultipleOR_95
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1242554789", "1242554789", "S11M030_Main", "box_Ordered_Output_82.Out", "box_MultipleOR_95.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Timer_v2_62_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_62
  l1 = self.box_OnceOnly_v3_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1524998140", "1524998140", "S11M030_Main", "box_Timer_v2_62.TimeElapsed", "box_OnceOnly_v3_75.In", l0, l1)
  l1:In(0)
end
function export:f_box_BreakableEntityMonitor_v2_21_Breaking()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1741747225"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0 = self.box_BreakableEntityMonitor_v2_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1033979441", "1033979441", "S11M030_Main", "box_BreakableEntityMonitor_v2_21.Breaking", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_21_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_78()
  l0 = self.box_BreakableEntityMonitor_v2_21
  l1 = self.box_Hackable_Monitor_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|360543895", "360543895", "S11M030_Main", "box_BreakableEntityMonitor_v2_21.Disabled", "box_Hackable_Monitor_78.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_BreakableEntityMonitor_v2_21_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_78()
  l0 = self.box_BreakableEntityMonitor_v2_21
  l1 = self.box_Hackable_Monitor_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2122541101", "2122541101", "S11M030_Main", "box_BreakableEntityMonitor_v2_21.Enabled", "box_Hackable_Monitor_78.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.BoxCounter
  l0.B = 1
  l0._graph = self
  l0._name = "box_Integer_Arithmetics_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1201826661"
  l0.Out = self.f_box_Integer_Arithmetics_67_Out
  l0 = self.box_MultipleOR_72
  l1 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|368066145", "368066145", "S11M030_Main", "box_MultipleOR_72.Out", "box_Integer_Arithmetics_67.Sub", l0, l1)
  l1:Sub()
end
function export:f_box_MissionMusicController_48_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1031661198"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_26_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_26_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_26_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_26_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_26_Out_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|291518789", "291518789", "S11M030_Main", "box_MissionMusicController_48.Activated", "box_Ordered_Output_26.In", clone, l0)
  l0:In()
end
function export:f_box_Integer_Arithmetics_67_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.BoxCounter = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.BoxCounter
  l0.B = 2
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1753593919"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_68_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_box_Compare_Integers_v2_68_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_68_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|409553490", "409553490", "S11M030_Main", "box_Integer_Arithmetics_67.Out", "box_Compare_Integers_v2_68.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_50
  l1 = self.box_OnceOnly_v3_104
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1148061154", "1148061154", "S11M030_Main", "box_PlaySound_v2_50.Out", "box_OnceOnly_v3_104.In", l0, l1)
  l1:In(0)
end
function export:f_box_MultipleOR_46_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_42()
  l0 = self.box_MultipleOR_46
  l1 = self.box_BreakableEntityMonitor_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1948285877", "1948285877", "S11M030_Main", "box_MultipleOR_46.Out", "box_BreakableEntityMonitor_v2_42.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Vehicle_Controller_16_VehicleExploded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BreakableEntityMonitor_v2_21()
  l0 = self.box_BreakableEntityMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1638241151", "1638241151", "S11M030_Main", "box_Vehicle_Controller_16.VehicleExploded", "box_BreakableEntityMonitor_v2_21.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Interact_Gameplay_55_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|201625833"
  l0.Out = self.f_box_Simple_Node_64_Out
  l0 = self.box_Interact_Gameplay_55
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|80021719", "80021719", "S11M030_Main", "box_Interact_Gameplay_55.Interacted", "box_Simple_Node_64.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_55_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_56()
  l0 = self.box_Interact_Gameplay_55
  l1 = self.box_Interact_Gameplay_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|148431454", "148431454", "S11M030_Main", "box_Interact_Gameplay_55.Started", "box_Interact_Gameplay_56.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_55_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_56()
  l0 = self.box_Interact_Gameplay_55
  l1 = self.box_Interact_Gameplay_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|686016846", "686016846", "S11M030_Main", "box_Interact_Gameplay_55.Stopped", "box_Interact_Gameplay_56.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PhoneCommunicationController_14_StartCommunicationOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_51
  l0.SoundId = "soundbinary/81442961.bnk"
  l0 = self.box_PhoneCommunicationController_14
  l1 = self.box_PlaySound_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|365322293", "365322293", "S11M030_Main", "box_PhoneCommunicationController_14.StartCommunicationOut", "box_PlaySound_v2_51.Play", l0, l1)
  l1:Play()
end
function export:f_box_Simple_Node_88_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|490754677", "490754677", "S11M030_Main", "box_Simple_Node_88.Out", "box_MultipleOR_32.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Multiple_AND_79_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.VehicleCargo
  l0._graph = self
  l0._name = "box_Vehicle_Controller_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1246463965"
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_box_Vehicle_Controller_16_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0 = self.box_Multiple_AND_79
  l1 = Boxes[PathID("domino/System/VehicleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|492394240", "492394240", "S11M030_Main", "box_Multiple_AND_79.Out", "box_Vehicle_Controller_16.ExplodeVehicle", l0, l1)
  l1:ExplodeVehicle()
end
function export:f_box_AISquadStateMonitor_98_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_AISquadStateMonitor_98
  l1 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1448820924", "1448820924", "S11M030_Main", "box_AISquadStateMonitor_98.ArrestState", "box_MultipleOR_100.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_98_CombatState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_50
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_AISquadStateMonitor_98
  l1 = self.box_PlaySound_v2_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|607817396", "607817396", "S11M030_Main", "box_AISquadStateMonitor_98.CombatState", "box_PlaySound_v2_50.Play", l0, l1)
  l1:Play()
end
function export:f_box_AISquadStateMonitor_98_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_99()
  l0 = self.box_AISquadStateMonitor_98
  l1 = self.box_AgentStateMonitor_V2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|782148305", "782148305", "S11M030_Main", "box_AISquadStateMonitor_98.Disabled", "box_AgentStateMonitor_V2_99.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AISquadStateMonitor_98_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AgentStateMonitor_V2_99()
  l0 = self.box_AISquadStateMonitor_98
  l1 = self.box_AgentStateMonitor_V2_99
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|534827813", "534827813", "S11M030_Main", "box_AISquadStateMonitor_98.Enabled", "box_AgentStateMonitor_V2_99.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_AISquadStateMonitor_98_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_AISquadStateMonitor_98
  l1 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2037047356", "2037047356", "S11M030_Main", "box_AISquadStateMonitor_98.SearchState", "box_MultipleOR_47.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_98_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_47()
  l0 = self.box_AISquadStateMonitor_98
  l1 = self.box_MultipleOR_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|960818319", "960818319", "S11M030_Main", "box_AISquadStateMonitor_98.VanishState", "box_MultipleOR_47.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Simple_Node_93_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|64971060", "64971060", "S11M030_Main", "box_Simple_Node_93.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Simple_Node_90_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1576654506", "1576654506", "S11M030_Main", "box_Simple_Node_90.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Timer_v2_77_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_24
  l0.SoundId = "soundbinary/776209402.bnk"
  l0 = self.box_Timer_v2_77
  l1 = self.box_PlayDialog_v2_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1690145731", "1690145731", "S11M030_Main", "box_Timer_v2_77.TimeElapsed", "box_PlayDialog_v2_24.Start", l0, l1)
  l1:Start()
end
function export:f_box_BreakableEntityMonitor_v2_84_Breaking()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_17()
  l0 = self.box_BreakableEntityMonitor_v2_84
  l1 = self.box_Interact_Gameplay_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1455997306", "1455997306", "S11M030_Main", "box_BreakableEntityMonitor_v2_84.Breaking", "box_Interact_Gameplay_17.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_BreakableEntityMonitor_v2_84_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|360680992"
  l0.Out = self.f_box_Simple_Node_110_Out
  l0 = self.box_BreakableEntityMonitor_v2_84
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|277606585", "277606585", "S11M030_Main", "box_BreakableEntityMonitor_v2_84.Disabled", "box_Simple_Node_110.In", l0, l1)
  l1:In()
end
function export:f_box_BreakableEntityMonitor_v2_84_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_109
  l0.Parent = "9223372064340958605"
  l0.Child = "9223372068253649155"
  l0.zPosOffset = 1.5
  l0 = self.box_BreakableEntityMonitor_v2_84
  l1 = self.box_SnapAndBind_109
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2092083644", "2092083644", "S11M030_Main", "box_BreakableEntityMonitor_v2_84.Enabled", "box_SnapAndBind_109.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_18
  self.VehicleCargo = l0.UserID
  l0 = self.box_CinematicPrep_33
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_18
  l1 = self.box_CinematicPrep_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1624234930", "1624234930", "S11M030_Main", "box_CLOController_18.OnUserInPlace", "box_CinematicPrep_33.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_GetNPC_52_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_52
  self.AI_Cargo_List = l0.NPCList
  l0 = self.box_CLOController_19
  l0.CLO = "9223372048712537959"
  l0 = self.box_GetNPC_52
  l1 = self.box_CLOController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|609604097", "609604097", "S11M030_Main", "box_GetNPC_52.GotNPCList", "box_CLOController_19.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Interact_Gameplay_85_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_Interact_Gameplay_85
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1738491622", "1738491622", "S11M030_Main", "box_Interact_Gameplay_85.Interacted", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_85_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_13()
  l0 = self.box_Interact_Gameplay_85
  l1 = self.box_BreakableEntityMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|312957625", "312957625", "S11M030_Main", "box_Interact_Gameplay_85.Started", "box_BreakableEntityMonitor_v2_13.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_85_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_Interact_Gameplay_85
  l1 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|696658997", "696658997", "S11M030_Main", "box_Interact_Gameplay_85.Stopped", "box_MultipleOR_32.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2102243605"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_71_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_71_Out_1
  l0 = self.box_MissionMessageController_v3_3
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|219536959", "219536959", "S11M030_Main", "box_MissionMessageController_v3_3.Out", "box_Ordered_Output_71.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_60_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1449284975"
  l0.Out = self.f_box_Simple_Node_93_Out
  l0 = self.box_Interact_Gameplay_60
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|727335325", "727335325", "S11M030_Main", "box_Interact_Gameplay_60.Interacted", "box_Simple_Node_93.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_60_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_58()
  l0 = self.box_Interact_Gameplay_60
  l1 = self.box_Interact_Gameplay_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1079765469", "1079765469", "S11M030_Main", "box_Interact_Gameplay_60.Started", "box_Interact_Gameplay_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_60_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_58()
  l0 = self.box_Interact_Gameplay_60
  l1 = self.box_Interact_Gameplay_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2135779960", "2135779960", "S11M030_Main", "box_Interact_Gameplay_60.Stopped", "box_Interact_Gameplay_58.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_87_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_84()
  l0 = self.box_MultipleOR_87
  l1 = self.box_BreakableEntityMonitor_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1948483293", "1948483293", "S11M030_Main", "box_MultipleOR_87.Out", "box_BreakableEntityMonitor_v2_84.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|804483096"
  l0.Out = self.f_box_Simple_Node_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1977868689", "1977868689", "S11M030_Main", "box_Ordered_Output_29.Out", "box_Simple_Node_39.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1416622560", "1416622560", "S11M030_Main", "box_Ordered_Output_29.Out", "box_Timer_v2_38.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_68_A_eq_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|230739049"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_80_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_80_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|264440587", "264440587", "S11M030_Main", "box_Compare_Integers_v2_68.A_eq_B", "box_Ordered_Output_80.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_68_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|45338115"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_81_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_81_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1471641525", "1471641525", "S11M030_Main", "box_Compare_Integers_v2_68.A_gt_B", "box_Ordered_Output_81.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_68_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1079523704"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_82_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_82_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_82_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|980250642", "980250642", "S11M030_Main", "box_Compare_Integers_v2_68.A_lt_B", "box_Ordered_Output_82.In", clone, l0)
  l0:In()
end
function export:f_box_Interact_Gameplay_57_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_Interact_Gameplay_57
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2145940625", "2145940625", "S11M030_Main", "box_Interact_Gameplay_57.Interacted", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_57_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_84()
  l0 = self.box_Interact_Gameplay_57
  l1 = self.box_BreakableEntityMonitor_v2_84
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|454802805", "454802805", "S11M030_Main", "box_Interact_Gameplay_57.Started", "box_BreakableEntityMonitor_v2_84.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_57_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_87()
  l0 = self.box_Interact_Gameplay_57
  l1 = self.box_MultipleOR_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1157852626", "1157852626", "S11M030_Main", "box_Interact_Gameplay_57.Stopped", "box_MultipleOR_87.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_32_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_13()
  l0 = self.box_MultipleOR_32
  l1 = self.box_BreakableEntityMonitor_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|248617932", "248617932", "S11M030_Main", "box_MultipleOR_32.Out", "box_BreakableEntityMonitor_v2_13.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_73_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|471072551", "471072551", "S11M030_Main", "box_Ordered_Output_73.Out", "box_Multiple_AND_15.Condition", clone, l0)
  l0:Condition(2)
end
function export:f_box_Ordered_Output_73_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|821168501", "821168501", "S11M030_Main", "box_Ordered_Output_73.Out", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Interact_Gameplay_17_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|908212908"
  l0.Out = self.f_box_Simple_Node_63_Out
  l0 = self.box_Interact_Gameplay_17
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|539217129", "539217129", "S11M030_Main", "box_Interact_Gameplay_17.Interacted", "box_Simple_Node_63.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_17_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_55()
  l0 = self.box_Interact_Gameplay_17
  l1 = self.box_Interact_Gameplay_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|329282517", "329282517", "S11M030_Main", "box_Interact_Gameplay_17.Started", "box_Interact_Gameplay_55.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_17_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_55()
  l0 = self.box_Interact_Gameplay_17
  l1 = self.box_Interact_Gameplay_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2147141224", "2147141224", "S11M030_Main", "box_Interact_Gameplay_17.Stopped", "box_Interact_Gameplay_55.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Interact_Gameplay_45_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|623279480", "623279480", "S11M030_Main", "box_Interact_Gameplay_45.Interacted", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_45_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_42()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_BreakableEntityMonitor_v2_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|354868549", "354868549", "S11M030_Main", "box_Interact_Gameplay_45.Started", "box_BreakableEntityMonitor_v2_42.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Interact_Gameplay_45_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_46()
  l0 = self.box_Interact_Gameplay_45
  l1 = self.box_MultipleOR_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1653824005", "1653824005", "S11M030_Main", "box_Interact_Gameplay_45.Stopped", "box_MultipleOR_46.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_38_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_Timer_v2_38
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2051524478", "2051524478", "S11M030_Main", "box_Timer_v2_38.TimeElapsed", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Interact_Gameplay_61_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2045714337"
  l0.Out = self.f_box_Simple_Node_92_Out
  l0 = self.box_Interact_Gameplay_61
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|612031154", "612031154", "S11M030_Main", "box_Interact_Gameplay_61.Interacted", "box_Simple_Node_92.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_61_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_60()
  l0 = self.box_Interact_Gameplay_61
  l1 = self.box_Interact_Gameplay_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|306330045", "306330045", "S11M030_Main", "box_Interact_Gameplay_61.Started", "box_Interact_Gameplay_60.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_61_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_60()
  l0 = self.box_Interact_Gameplay_61
  l1 = self.box_Interact_Gameplay_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|53172963", "53172963", "S11M030_Main", "box_Interact_Gameplay_61.Stopped", "box_Interact_Gameplay_60.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MissionMessageController_v3_20_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|418310836"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  l0 = self.box_MissionMessageController_v3_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|2111917176", "2111917176", "S11M030_Main", "box_MissionMessageController_v3_20.Out", "box_Ordered_Output_74.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_100_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_53
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_MultipleOR_100
  l1 = self.box_PlaySound_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1946910560", "1946910560", "S11M030_Main", "box_MultipleOR_100.Out", "box_PlaySound_v2_53.Play", l0, l1)
  l1:Play()
end
function export:f_box_Interact_Gameplay_59_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1382690629"
  l0.Out = self.f_box_Simple_Node_88_Out
  l0 = self.box_Interact_Gameplay_59
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1888459468", "1888459468", "S11M030_Main", "box_Interact_Gameplay_59.Interacted", "box_Simple_Node_88.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_59_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_83()
  l0 = self.box_Interact_Gameplay_59
  l1 = self.box_Interact_Gameplay_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1188840870", "1188840870", "S11M030_Main", "box_Interact_Gameplay_59.Started", "box_Interact_Gameplay_83.Start", l0, l1)
  l1:Start()
end
function export:f_box_Interact_Gameplay_59_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Interact_Gameplay_83()
  l0 = self.box_Interact_Gameplay_59
  l1 = self.box_Interact_Gameplay_83
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1399452354", "1399452354", "S11M030_Main", "box_Interact_Gameplay_59.Stopped", "box_Interact_Gameplay_83.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_OnceOnly_v3_104_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_1
  l0.Entity = "9223372057015920759"
  l0.SoundId = "soundbinary/478764689.bnk"
  l0 = self.box_OnceOnly_v3_104
  l1 = self.box_PlaySound_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1876043484", "1876043484", "S11M030_Main", "box_OnceOnly_v3_104.Out", "box_PlaySound_v2_1.Play", l0, l1)
  l1:Play()
end
function export:f_box_AgentStateMonitor_V2_99_AlertHardState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_100()
  l0 = self.box_AgentStateMonitor_V2_99
  l1 = self.box_MultipleOR_100
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1899394704", "1899394704", "S11M030_Main", "box_AgentStateMonitor_V2_99.AlertHardState", "box_MultipleOR_100.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AgentStateMonitor_V2_99_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_69()
  l0 = self.box_AgentStateMonitor_V2_99
  l1 = self.box_MissionZone_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1795617198", "1795617198", "S11M030_Main", "box_AgentStateMonitor_V2_99.Disabled", "box_MissionZone_69.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_40()
  l0 = self.box_MultipleOR_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|216788149", "216788149", "S11M030_Main", "box_Simple_Node_92.Out", "box_MultipleOR_40.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_Timer_v2_91_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_Timer_v2_91
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1781118064", "1781118064", "S11M030_Main", "box_Timer_v2_91.TimeElapsed", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_40_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BreakableEntityMonitor_v2_34()
  l0 = self.box_MultipleOR_40
  l1 = self.box_BreakableEntityMonitor_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1240381725", "1240381725", "S11M030_Main", "box_MultipleOR_40.Out", "box_BreakableEntityMonitor_v2_34.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_89_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_32()
  l0 = self.box_MultipleOR_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|156689836", "156689836", "S11M030_Main", "box_Simple_Node_89.Out", "box_MultipleOR_32.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_GetNPC_76_GotNPCList()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_76
  self.AI_Cargo_List = l0.NPCList
  l0 = self.box_CLOController_18
  l0.CLO = "9223372048712537959"
  l0 = self.box_GetNPC_76
  l1 = self.box_CLOController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|961718607", "961718607", "S11M030_Main", "box_GetNPC_76.GotNPCList", "box_CLOController_18.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_71_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_15()
  l0 = self.box_Multiple_AND_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1750871714", "1750871714", "S11M030_Main", "box_Ordered_Output_71.Out", "box_Multiple_AND_15.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_Ordered_Output_71_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|1555625697", "1555625697", "S11M030_Main", "box_Ordered_Output_71.Out", "box_MultipleOR_72.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_PGTController_v2_11_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_GetNPC_52
  l0.Group = "AI_Cargo_List"
  l0 = self.box_PGTController_v2_11
  l1 = self.box_GetNPC_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|281298466", "281298466", "S11M030_Main", "box_PGTController_v2_11.AllSpawned", "box_GetNPC_52.GetEnemies", l0, l1)
  l1:GetEnemies()
end
function export:f_box_MultipleOR_94_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Timer_v2_66()
  l0 = self.box_MultipleOR_94
  l1 = self.box_Timer_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S11\\s11m030c\\s11m030.domino|@S11M030_Main|997734707", "997734707", "S11M030_Main", "box_MultipleOR_94.Out", "box_Timer_v2_66.Stop", l0, l1)
  l1:Stop()
end
function export:OnEnter_box_BreakableEntityMonitor_v2_42()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_42
  l0.BreakableEntity = "9223372065596343009"
end
function export:OnEnter_box_Mission_End_27()
  local l0
  l0 = self.box_Mission_End_27
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S11M030C_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_47()
end
function export:OnEnter_box_Hackable_Monitor_78()
  local l0
  l0 = self.box_Hackable_Monitor_78
  l0.HackableEntity = self.VehicleCargo
  l0.HackCategoryType = "EngineOverheat"
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_BreakableEntityMonitor_v2_34()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_34
  l0.BreakableEntity = "9223372063475970912"
end
function export:OnEnter_box_Interact_Gameplay_35()
  local l0
  l0 = self.box_Interact_Gameplay_35
  l0.Entity = "9223372063475970912"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649161"
end
function export:OnEnter_box_Multiple_AND_15()
end
function export:OnEnter_box_Interact_Gameplay_56()
  local l0
  l0 = self.box_Interact_Gameplay_56
  l0.Entity = "9223372063475970887"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649155"
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_Timer_v2_66()
end
function export:OnEnter_box_Interact_Gameplay_58()
  local l0
  l0 = self.box_Interact_Gameplay_58
  l0.Entity = "9223372063475970918"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649161"
end
function export:OnEnter_box_MultipleOR_95()
end
function export:OnEnter_box_MissionZone_69()
  local l0
  l0 = self.box_MissionZone_69
  l0.MissionArea = "9223372061408946669"
  l0.MissionLayer = "S11M030C_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_Interact_Gameplay_10()
  local l0
  l0 = self.box_Interact_Gameplay_10
  l0.Entity = "9223372063475970897"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649159"
end
function export:OnEnter_box_BreakableEntityMonitor_v2_13()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_13
  l0.BreakableEntity = "9223372063475970897"
end
function export:OnEnter_box_Interact_Gameplay_83()
  local l0
  l0 = self.box_Interact_Gameplay_83
  l0.Entity = "9223372063475970901"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649159"
end
function export:OnEnter_box_BreakableEntityMonitor_v2_21()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_21
  l0.BreakableEntity = "9223372054650952738"
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_MultipleOR_46()
end
function export:OnEnter_box_Interact_Gameplay_55()
  local l0
  l0 = self.box_Interact_Gameplay_55
  l0.Entity = "9223372063475970885"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649155"
end
function export:OnEnter_box_Multiple_AND_79()
end
function export:OnEnter_box_AISquadStateMonitor_98()
  local l0
  l0 = self.box_AISquadStateMonitor_98
  l0.Affiliation = "T_13"
end
function export:OnEnter_box_Timer_v2_77()
end
function export:OnEnter_box_BreakableEntityMonitor_v2_84()
  local l0
  l0 = self.box_BreakableEntityMonitor_v2_84
  l0.BreakableEntity = "9223372063475970883"
end
function export:OnEnter_box_Interact_Gameplay_85()
  local l0
  l0 = self.box_Interact_Gameplay_85
  l0.Entity = "9223372063475970903"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649159"
end
function export:OnEnter_box_Interact_Gameplay_60()
  local l0
  l0 = self.box_Interact_Gameplay_60
  l0.Entity = "9223372063475970916"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649161"
end
function export:OnEnter_box_MultipleOR_87()
end
function export:OnEnter_box_Interact_Gameplay_57()
  local l0
  l0 = self.box_Interact_Gameplay_57
  l0.Entity = "9223372063475970889"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649155"
end
function export:OnEnter_box_MultipleOR_32()
end
function export:OnEnter_box_Interact_Gameplay_17()
  local l0
  l0 = self.box_Interact_Gameplay_17
  l0.Entity = "9223372063475970883"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649155"
end
function export:OnEnter_box_Interact_Gameplay_45()
  local l0
  l0 = self.box_Interact_Gameplay_45
  l0.Entity = "9223372065596343009"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649157"
end
function export:OnEnter_box_Interact_Gameplay_61()
  local l0
  l0 = self.box_Interact_Gameplay_61
  l0.Entity = "9223372063475970914"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649161"
end
function export:OnEnter_box_MultipleOR_100()
end
function export:OnEnter_box_Interact_Gameplay_59()
  local l0
  l0 = self.box_Interact_Gameplay_59
  l0.Entity = "9223372063475970899"
  l0.IsManagingInteraction = 1
  l0.MarkerEntity = "9223372068253649159"
end
function export:OnEnter_box_AgentStateMonitor_V2_99()
  local l0
  l0 = self.box_AgentStateMonitor_V2_99
  l0.NPCList = self.AI_Cargo_List
end
function export:OnEnter_box_MultipleOR_40()
end
function export:OnEnter_box_MultipleOR_94()
end
_compilerVersion = 4
