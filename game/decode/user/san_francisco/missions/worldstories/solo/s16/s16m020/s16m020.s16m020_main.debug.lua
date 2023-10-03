export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main"
  self.PlayerEntity = nil
  self.Objective_found = 0
  self.box_Hack_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_10
  l0._graph = self
  l0._name = "box_Hack_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|66206635"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_10_Hacked
  self.box_PhoneCommunicationController_63 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_63
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|72184137"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_63_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Mission_End_32 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_32
  l0._graph = self
  l0._name = "box_Mission_End_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|124909094"
  self.box_MultipleOR_51 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_51
  l0._graph = self
  l0._name = "box_MultipleOR_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|126097922"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_51_Out
  self.box_CinematicPrep_31 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_31
  l0._graph = self
  l0._name = "box_CinematicPrep_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|185701103"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_31_PostOut
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionMessageController_v3_27 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_27
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|235918177"
  l0.Out = self.f_box_MissionMessageController_v3_27_Out
  l0.MessageCompleted = DummyFunction
  self.box_Proximity_Monitor_8 = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self.box_Proximity_Monitor_8
  l0._graph = self
  l0._name = "box_Proximity_Monitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|237815700"
  l0.Enabled = self.f_box_Proximity_Monitor_8_Enabled
  l0.Disabled = self.f_box_Proximity_Monitor_8_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_box_Proximity_Monitor_8_ExitRadius
  self.box_HackableController_v2_30 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_30
  l0._graph = self
  l0._name = "box_HackableController_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|282316275"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_30_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_21 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_21
  l0._graph = self
  l0._name = "box_Timer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|403193902"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_21_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PGTController_v2_33 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_33
  l0._graph = self
  l0._name = "box_PGTController_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|554347255"
  l0.Started = self.f_box_PGTController_v2_33_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_LMA_Layer_Controller_5 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_5
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|561818691"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_MissionMessageController_v3_24 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_24
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|731928084"
  l0.Out = self.f_box_MissionMessageController_v3_24_Out
  l0.MessageCompleted = DummyFunction
  self.box_CinematicPrep_52 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_52
  l0._graph = self
  l0._name = "box_CinematicPrep_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|745845182"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_52_PostOut
  self.box_HackableController_v2_50 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_50
  l0._graph = self
  l0._name = "box_HackableController_v2_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|988868353"
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
  self.box_MissionLayer_v2_48 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_48
  l0._graph = self
  l0._name = "box_MissionLayer_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1117125481"
  l0.Loaded = self.f_box_MissionLayer_v2_48_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PGTController_v2_9 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_9
  l0._graph = self
  l0._name = "box_PGTController_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1166622341"
  l0.Started = self.f_box_PGTController_v2_9_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionZone_43 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_43
  l0._graph = self
  l0._name = "box_MissionZone_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1297794807"
  l0.Enabled = self.f_box_MissionZone_43_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionZone_38 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_38
  l0._graph = self
  l0._name = "box_MissionZone_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1304032275"
  l0.Enabled = self.f_box_MissionZone_38_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1331132668"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_HackableController_v2_17 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_17
  l0._graph = self
  l0._name = "box_HackableController_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1362012057"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_17_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_LMA_Layer_Controller_11 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_11
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1449892518"
  l0.Loaded = self.f_box_LMA_Layer_Controller_11_Loaded
  l0.Unloaded = DummyFunction
  self.box_PGTController_v2_41 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_41
  l0._graph = self
  l0._name = "box_PGTController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1495570076"
  l0.Started = self.f_box_PGTController_v2_41_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MultipleOR_45 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_45
  l0._graph = self
  l0._name = "box_MultipleOR_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1533034211"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_45_Out
  self.box_MissionLayer_v2_40 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_40
  l0._graph = self
  l0._name = "box_MissionLayer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1763882164"
  l0.Loaded = self.f_box_MissionLayer_v2_40_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Interact_Gameplay_15 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_15
  l0._graph = self
  l0._name = "box_Interact_Gameplay_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1787808472"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_15_Interacted
  self.box_CLOController_13 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_13
  l0._graph = self
  l0._name = "box_CLOController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1799039000"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_13_OnUserInPlace
  self.box_MissionCheckpointReach_46 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_46
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1820522142"
  l0.Out = self.f_box_MissionCheckpointReach_46_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionCheckpointReach_42 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_42
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1901566637"
  l0.Out = self.f_box_MissionCheckpointReach_42_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_7 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_7
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1998655030"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_57 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_57
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|2026527737"
  l0.Out = self.f_box_MissionCheckpointReach_57_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_56 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_56
  l0._graph = self
  l0._name = "box_MultipleOR_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|2048070913"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_56_Out
  self.box_Escape_Gameplay_16 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_16
  l0._graph = self
  l0._name = "box_Escape_Gameplay_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|2144624163"
  l0.Started = self.f_box_Escape_Gameplay_16_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_16_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_16_LeftArea
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
  self:OnEnter_box_MultipleOR_56()
  l0 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1241062750", "1241062750", "S16M020_Main", "CheckPoint_0", "box_MultipleOR_56.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_40
  l0.LayerName = "S16M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|689077468", "689077468", "S16M020_Main", "CheckPoint_1", "box_MissionLayer_v2_40.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_MissionLayer_v2_48
  l0.LayerName = "S16M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|540824857", "540824857", "S16M020_Main", "CheckPoint_2", "box_MissionLayer_v2_48.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_32()
  l0 = self.box_Mission_End_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|728030579", "728030579", "S16M020_Main", "CheckPoint_3", "box_Mission_End_32.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_11
  l0.LMALayerName = "SF_03_Triad_HQ_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|2053366578", "2053366578", "S16M020_Main", "In", "box_LMA_Layer_Controller_11.Load", self, l0)
  l0:Load()
end
function export:f_box_Hack_Gameplay_10_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_21
  l0.Seconds = 3
  l0 = self.box_Hack_Gameplay_10
  l1 = self.box_Timer_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1971273044", "1971273044", "S16M020_Main", "box_Hack_Gameplay_10.Hacked", "box_Timer_v2_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_63_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_PhoneCommunicationController_63
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1800469400", "1800469400", "S16M020_Main", "box_PhoneCommunicationController_63.OnCommunicationFinished", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_51_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_46
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_51
  l1 = self.box_MissionCheckpointReach_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|629797538", "629797538", "S16M020_Main", "box_MultipleOR_51.Out", "box_MissionCheckpointReach_46.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_31_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_8()
  l0 = self.box_CinematicPrep_31
  l1 = self.box_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1812989906", "1812989906", "S16M020_Main", "box_CinematicPrep_31.PostOut", "box_Proximity_Monitor_8.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053752787328"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
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
  l0._name = "box_Lanes_Restrictions_Control_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|249493647"
  l0.Out = self.f_box_Lanes_Restrictions_Control_22_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1991570496", "1991570496", "S16M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Lanes_Restrictions_Control_22.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_16
  l0.Entity = "9223372046563433046"
  l0.Entity_AreaRadius = 75
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
  l0 = self.box_MissionMessageController_v3_27
  l1 = self.box_Escape_Gameplay_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|912675179", "912675179", "S16M020_Main", "box_MissionMessageController_v3_27.Out", "box_Escape_Gameplay_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_Proximity_Monitor_8_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_7
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053752786023"
  l0 = self.box_Proximity_Monitor_8
  l1 = self.box_PhoneCommunicationController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|897468559", "897468559", "S16M020_Main", "box_Proximity_Monitor_8.Disabled", "box_PhoneCommunicationController_7.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Proximity_Monitor_8_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_Proximity_Monitor_8
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|179363910", "179363910", "S16M020_Main", "box_Proximity_Monitor_8.Enabled", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Proximity_Monitor_8_ExitRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Proximity_Monitor_8()
  l0 = self.box_Proximity_Monitor_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|520858120", "520858120", "S16M020_Main", "box_Proximity_Monitor_8.ExitRadius", "box_Proximity_Monitor_8.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Lanes_Restrictions_Control_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372053752787328"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1002295825"
  l0.Out = self.f_box_AI_Agent_Zone_23_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1843719156", "1843719156", "S16M020_Main", "box_Lanes_Restrictions_Control_22.Out", "box_AI_Agent_Zone_23.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_HackableController_v2_30_ProfilingEnabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_15
  l0.Entity = "9223372060813327860"
  l0.IsManagingInteraction = 1
  l0 = self.box_HackableController_v2_30
  l1 = self.box_Interact_Gameplay_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|923372090", "923372090", "S16M020_Main", "box_HackableController_v2_30.ProfilingEnabled", "box_Interact_Gameplay_15.Start", l0, l1)
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
  l0 = self.box_PhoneCommunicationController_63
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495907210"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|966710435", "966710435", "S16M020_Main", "box_Ordered_Output_14.Out", "box_PhoneCommunicationController_63.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptController_20()
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|394197934", "394197934", "S16M020_Main", "box_Ordered_Output_14.Out", "box_InteractionScriptController_20.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Timer_v2_21_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_InteractionScriptController_20()
  l0 = self.box_Timer_v2_21
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|2007850467", "2007850467", "S16M020_Main", "box_Timer_v2_21.TimeElapsed", "box_InteractionScriptController_20.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Trigger_Controller_49_Unusable()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_50
  l0.HackableEntity = "9223372046563433426"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1257200662", "1257200662", "S16M020_Main", "box_Trigger_Controller_49.Unusable", "box_HackableController_v2_50.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_PGTController_v2_33_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_38()
  l0 = self.box_PGTController_v2_33
  l1 = self.box_MissionZone_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|407871160", "407871160", "S16M020_Main", "box_PGTController_v2_33.Started", "box_MissionZone_38.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_24_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372060813327860"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|906075839"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_19_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_24
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1179436668", "1179436668", "S16M020_Main", "box_MissionMessageController_v3_24.Out", "box_InteractionScriptController_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_CinematicPrep_52_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_51()
  l0 = self.box_CinematicPrep_52
  l1 = self.box_MultipleOR_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|454860699", "454860699", "S16M020_Main", "box_CinematicPrep_52.PostOut", "box_MultipleOR_51.Input", l0, l1)
  l1:Input(1)
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
  l0 = self.box_MissionCheckpointReach_57
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1450316035", "1450316035", "S16M020_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_57.In", clone, l0)
  l0:In()
end
function export:f_box_InteractionScriptController_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_24
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M020.Objectives.Objective010",
    item = "Objective",
    id = "345153"
  }
  l0.HasObjectiveMarker = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1678279153", "1678279153", "S16M020_Main", "box_InteractionScriptController_6.Disabled", "box_MissionMessageController_v3_24.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_InteractionScriptController_19_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_17
  l0.HackableEntity = "9223372060813327860"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|745040512", "745040512", "S16M020_Main", "box_InteractionScriptController_19.Disabled", "box_HackableController_v2_17.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_InteractionScriptController_20_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_30
  l0.HackableEntity = "9223372060813327860"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|755306204", "755306204", "S16M020_Main", "box_InteractionScriptController_20.Enabled", "box_HackableController_v2_30.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_HackableController_v2_50_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_52
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_HackableController_v2_50
  l1 = self.box_CinematicPrep_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1115429586", "1115429586", "S16M020_Main", "box_HackableController_v2_50.Disabled", "box_CinematicPrep_52.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_AI_Agent_Zone_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|180014860", "180014860", "S16M020_Main", "box_AI_Agent_Zone_23.Out", "box_Get_Player_ID_1.In", clone, l0)
  l0:In()
end
function export:f_box_MissionLayer_v2_48_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1659160311"
  l0.Out = self.f_box_Get_Player_ID_47_Out
  l0 = self.box_MissionLayer_v2_48
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1029831971", "1029831971", "S16M020_Main", "box_MissionLayer_v2_48.Loaded", "box_Get_Player_ID_47.In", l0, l1)
  l1:In()
end
function export:f_box_PGTController_v2_9_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372046563433428"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0._name = "box_Trigger_Controller_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|468055485"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = self.f_box_Trigger_Controller_49_Unusable
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0 = self.box_PGTController_v2_9
  l1 = Boxes[PathID("domino/System/TriggerController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1076857730", "1076857730", "S16M020_Main", "box_PGTController_v2_9.Started", "box_Trigger_Controller_49.SetAsUnusable", l0, l1)
  l1:SetAsUnusable()
end
function export:f_box_MissionZone_43_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MissionZone_43
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1398187593", "1398187593", "S16M020_Main", "box_MissionZone_43.Enabled", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionZone_38_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_13
  l0.CLO = "9223372053652503025"
  l0 = self.box_MissionZone_38
  l1 = self.box_CLOController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1608642062", "1608642062", "S16M020_Main", "box_MissionZone_38.Enabled", "box_CLOController_13.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_AI_Agent_Zone_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_41
  l0.PGTMissionArea = "9223372046830459286"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|93023842", "93023842", "S16M020_Main", "box_AI_Agent_Zone_26.Out", "box_PGTController_v2_41.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_45()
  l0 = self.box_CinematicPrep_4
  l1 = self.box_MultipleOR_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|249990973", "249990973", "S16M020_Main", "box_CinematicPrep_4.PostOut", "box_MultipleOR_45.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_HackableController_v2_17_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_10
  l0.Entity = "9223372053328113578"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_HackableController_v2_17
  l1 = self.box_Hack_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1624839931", "1624839931", "S16M020_Main", "box_HackableController_v2_17.ProfilingDisabled", "box_Hack_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|2023895385"
  l0.Out = self.f_box_Simple_Node_12_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1552904339", "1552904339", "S16M020_Main", "box_Simple_Node_3.Out", "box_Simple_Node_12.In", clone, l0)
  l0:In()
end
function export:f_box_LMA_Layer_Controller_11_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_56()
  l0 = self.box_LMA_Layer_Controller_11
  l1 = self.box_MultipleOR_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|358565403", "358565403", "S16M020_Main", "box_LMA_Layer_Controller_11.Loaded", "box_MultipleOR_56.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_41_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_43
  l0.MissionArea = "9223372047775187408"
  l0.MissionLayer = "S16M020_Main"
  l0.LmaLayer = "SF_03_Triad_HQ_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_PGTController_v2_41
  l1 = self.box_MissionZone_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1028041791", "1028041791", "S16M020_Main", "box_PGTController_v2_41.Started", "box_MissionZone_43.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_42
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_45
  l1 = self.box_MissionCheckpointReach_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1866105100", "1866105100", "S16M020_Main", "box_MultipleOR_45.Out", "box_MissionCheckpointReach_42.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372053752787328"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1909810068"
  l0.Out = self.f_box_AI_Agent_Zone_29_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|629550981", "629550981", "S16M020_Main", "box_Get_Player_ID_47.Out", "box_AI_Agent_Zone_29.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionLayer_v2_40_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1839147075"
  l0.Out = self.f_box_Get_Player_ID_44_Out
  l0 = self.box_MissionLayer_v2_40
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|648260365", "648260365", "S16M020_Main", "box_MissionLayer_v2_40.Loaded", "box_Get_Player_ID_44.In", l0, l1)
  l1:In()
end
function export:f_box_Interact_Gameplay_15_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|363748815"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  l0 = self.box_Interact_Gameplay_15
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1285395677", "1285395677", "S16M020_Main", "box_Interact_Gameplay_15.Interacted", "box_Ordered_Output_14.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_13_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_31
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_CLOController_13
  l1 = self.box_CinematicPrep_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|146595147", "146595147", "S16M020_Main", "box_CLOController_13.OnUserInPlace", "box_CinematicPrep_31.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionCheckpointReach_46_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_27
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M020.Objectives.Objective020",
    item = "Objective",
    id = "355603"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_MissionCheckpointReach_46
  l1 = self.box_MissionMessageController_v3_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|513558095", "513558095", "S16M020_Main", "box_MissionCheckpointReach_46.Out", "box_MissionMessageController_v3_27.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372053752787328"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1305365382"
  l0.Out = self.f_box_AI_Agent_Zone_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1079187256", "1079187256", "S16M020_Main", "box_Get_Player_ID_44.Out", "box_AI_Agent_Zone_26.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372060813327860"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|889136110"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_6_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionCheckpointReach_42
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|833934399", "833934399", "S16M020_Main", "box_MissionCheckpointReach_42.Out", "box_InteractionScriptController_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_AI_Agent_Zone_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_9
  l0.PGTMissionArea = "9223372046830459286"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|707338224", "707338224", "S16M020_Main", "box_AI_Agent_Zone_29.Out", "box_PGTController_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Simple_Node_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_38()
  l0 = self.box_MissionZone_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1809050889", "1809050889", "S16M020_Main", "box_Simple_Node_12.Out", "box_MissionZone_38.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_33
  l0.PGTMissionArea = "9223372046830459286"
  l0 = self.box_MissionCheckpointReach_57
  l1 = self.box_PGTController_v2_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1807549173", "1807549173", "S16M020_Main", "box_MissionCheckpointReach_57.Out", "box_PGTController_v2_33.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_56_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S16M020_Main"
  l0 = self.box_MultipleOR_56
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1491138613", "1491138613", "S16M020_Main", "box_MultipleOR_56.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_Escape_Gameplay_16_Escaped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Mission_End_32()
  l0 = self.box_Escape_Gameplay_16
  l1 = self.box_Mission_End_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|462758562", "462758562", "S16M020_Main", "box_Escape_Gameplay_16.Escaped", "box_Mission_End_32.End", l0, l1)
  l1:End()
end
function export:f_box_Escape_Gameplay_16_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_5
  l0.LMALayerName = "SF_03_Triad_HQ_LMA"
  l0 = self.box_Escape_Gameplay_16
  l1 = self.box_LMA_Layer_Controller_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|561365551", "561365551", "S16M020_Main", "box_Escape_Gameplay_16.LeftArea", "box_LMA_Layer_Controller_5.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_Escape_Gameplay_16_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1431515526"
  l0.Out = self.f_box_Simple_Node_3_Out
  l0 = self.box_Escape_Gameplay_16
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|1982604273", "1982604273", "S16M020_Main", "box_Escape_Gameplay_16.Started", "box_Simple_Node_3.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_Mission_End_32()
  local l0
  l0 = self.box_Mission_End_32
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S16M020_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_MultipleOR_51()
end
function export:OnEnter_box_Proximity_Monitor_8()
  local l0
  l0 = self.box_Proximity_Monitor_8
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372060722865732"
  l0.Radius = 13
  l0.CheckNow = 1
end
function export:OnEnter_box_InteractionScriptController_20()
  local l0
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372060813327860"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M020\\S16M020.domino|@S16M020_Main|923587810"
  l0.Enabled = self.f_box_InteractionScriptController_20_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MissionZone_38()
  local l0
  l0 = self.box_MissionZone_38
  l0.MissionArea = "9223372047775187408"
  l0.MissionLayer = "S16M020_Main"
  l0.LmaLayer = "SF_03_Triad_HQ_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_45()
end
function export:OnEnter_box_MultipleOR_56()
end
_compilerVersion = 4
