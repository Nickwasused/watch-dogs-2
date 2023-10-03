export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L24M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main"
  self.PlayerEntity = nil
  self.IOP_Cam = "9223372052986886539"
  self.Laptop_HackableEntity_15 = "9223372052986886533"
  self.L24_StoryIcon_IOP = "9223372052986886535"
  self.L24_StoryIcon_OUTSIDE = "9223372052986888109"
  self.L24M030_IPO_Hackable = "9223372053925879863"
  self.L24M030_PhoneCam_1 = "9223372057847108978"
  self.L24M030_WebCam_1 = "9223372057847113647"
  self.L24M030_IOP_Hackable_2 = "9223372057847108984"
  self.AllCamsL24M030 = {
    "9223372071498721030",
    "9223372071498717193"
  }
  self.box_MultipleOR_10 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|44338444"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|525188302"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_Security_Camera_Monitor_12 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_12
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|758828645"
  l0.Enabled = self.f_box_Security_Camera_Monitor_12_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_12_OnEndExitAll
  self.box_FreeRoam_Hack_Gameplay_17 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|832964545"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_17_Hacked
  self.box_FreeRoam_IOP_Interact_Gameplay_11 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_11
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1015832070"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_11_Interacted
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1305653090"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1432930044"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_Mission_End_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_3
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1680243960"
  self.box_DistanceBasedProgressBarController_v2_14 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_14
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1706912990"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_FreeRoam_Beat_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_1
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1714640372"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_1_NewBeatStarted
  self.box_Timer_v2_20 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_20
  l0._graph = self
  l0._name = "box_Timer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1777206208"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_20_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1800183240"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_13 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_13
  l0._graph = self
  l0._name = "box_OnceOnly_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1852678306"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_13_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1885110733"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_LayerMonitor_9 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_9
  l0._graph = self
  l0._name = "box_LayerMonitor_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|2142564672"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_9_Loaded
  l0.Unloaded = DummyFunction
  self.box_AI_IOPController_8 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_8
  l0._graph = self
  l0._name = "box_AI_IOPController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|2145973777"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_8_IOPKickOutComplete
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
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|983216020", "983216020", "L24M030_Main", "CheckPoint_0", "box_FreeRoam_Beat_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_9
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457740"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1705904918", "1705904918", "L24M030_Main", "CheckPoint_1", "box_LayerMonitor_9.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|247840126", "247840126", "L24M030_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_1()
  l0 = self.box_FreeRoam_Beat_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1727496722", "1727496722", "L24M030_Main", "In", "box_FreeRoam_Beat_1.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MultipleOR_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_11
  l0.IOPBoxEntity = "9223372052986886541"
  l0.MapPoint = "9223372052986888109"
  l0 = self.box_MultipleOR_10
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|264299714", "264299714", "L24M030_Main", "box_MultipleOR_10.Out", "box_FreeRoam_IOP_Interact_Gameplay_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_MultipleOR_2
  l1 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1372801392", "1372801392", "L24M030_Main", "box_MultipleOR_2.Out", "box_FreeRoam_Mission_End_3.End", l0, l1)
  l1:End()
end
function export:f_box_Get_Player_ID_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_8
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|96080134", "96080134", "L24M030_Main", "box_Get_Player_ID_7.Out", "box_AI_IOPController_8.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Security_Camera_Monitor_12_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_17()
  l0 = self.box_Security_Camera_Monitor_12
  l1 = self.box_FreeRoam_Hack_Gameplay_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|278282286", "278282286", "L24M030_Main", "box_Security_Camera_Monitor_12.Enabled", "box_FreeRoam_Hack_Gameplay_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_12_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1982334820"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_18_Out_2
  l0 = self.box_Security_Camera_Monitor_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1771752512", "1771752512", "L24M030_Main", "box_Security_Camera_Monitor_12.OnEndExitAll", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1914804281", "1914804281", "L24M030_Main", "box_Ordered_Output_16.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_6
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|2070693156", "2070693156", "L24M030_Main", "box_Ordered_Output_16.Out", "box_MissionCheckpointReach_6.In", clone, l0)
  l0:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_17_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|779408297"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|256837115", "256837115", "L24M030_Main", "box_FreeRoam_Hack_Gameplay_17.Hacked", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_11_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1731118515"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1273980948", "1273980948", "L24M030_Main", "box_FreeRoam_IOP_Interact_Gameplay_11.Interacted", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_14
  l0.Text = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Erase",
    id = "317680"
  }
  l0.TotalTime = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|609236434", "609236434", "L24M030_Main", "box_Ordered_Output_21.Out", "box_DistanceBasedProgressBarController_v2_14.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_20
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|505319840", "505319840", "L24M030_Main", "box_Ordered_Output_21.Out", "box_Timer_v2_20.Start", clone, l0)
  l0:Start()
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1146380434"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_MissionCheckpointReach_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1490328559", "1490328559", "L24M030_Main", "box_MissionCheckpointReach_6.Out", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_1_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L24.L24M030.Objectives.Objective010",
    item = "Objective",
    id = "550053"
  }
  l0 = self.box_FreeRoam_Beat_1
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1386633217", "1386633217", "L24M030_Main", "box_FreeRoam_Beat_1.NewBeatStarted", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_12()
  l0 = self.box_Security_Camera_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1120770088", "1120770088", "L24M030_Main", "box_Ordered_Output_5.Out", "box_Security_Camera_Monitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1120048157", "1120048157", "L24M030_Main", "box_Ordered_Output_5.Out", "box_OnceOnly_v3_13.In", clone, l0)
  l0:In(0)
end
function export:f_box_Timer_v2_20_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|685038007"
  l0.Out = self.f_box_Get_Player_ID_7_Out
  l0 = self.box_Timer_v2_20
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1841815595", "1841815595", "L24M030_Main", "box_Timer_v2_20.TimeElapsed", "box_Get_Player_ID_7.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MissionMessageController_v3_15
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|235251039", "235251039", "L24M030_Main", "box_MissionMessageController_v3_15.Out", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_OnceOnly_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367732"
  l0 = self.box_OnceOnly_v3_13
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|149658768", "149658768", "L24M030_Main", "box_OnceOnly_v3_13.Out", "box_PhoneCommunicationController_19.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_12()
  l0 = self.box_MultipleOR_4
  l1 = self.box_Security_Camera_Monitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|2073917740", "2073917740", "L24M030_Main", "box_MultipleOR_4.Out", "box_Security_Camera_Monitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|277780413", "277780413", "L24M030_Main", "box_Ordered_Output_18.Out", "box_MultipleOR_4.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_18_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1121269042", "1121269042", "L24M030_Main", "box_Ordered_Output_18.Out", "box_MultipleOR_10.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_18_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_17()
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|778895671", "778895671", "L24M030_Main", "box_Ordered_Output_18.Out", "box_FreeRoam_Hack_Gameplay_17.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_LayerMonitor_9_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_LayerMonitor_9
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|1295716230", "1295716230", "L24M030_Main", "box_LayerMonitor_9.Loaded", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_IOPController_8_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_AI_IOPController_8
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L24\\L24M030.domino|@L24M030_Main|710262351", "710262351", "L24M030_Main", "box_AI_IOPController_8.IOPKickOutComplete", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_Security_Camera_Monitor_12()
  local l0
  l0 = self.box_Security_Camera_Monitor_12
  l0.CameraEntityList = self.AllCamsL24M030
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_17()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  l0.CLO = self.L24M030_IPO_Hackable
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_FreeRoam_Mission_End_3()
  local l0
  l0 = self.box_FreeRoam_Mission_End_3
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_FreeRoam_Beat_1()
  local l0
  l0 = self.box_FreeRoam_Beat_1
  l0.ProgressionLayer = "ProgressionLayers.9223372052771457740"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_4()
end
_compilerVersion = 4
