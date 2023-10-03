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
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L17M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main"
  self.PlayerEntity = nil
  self.CLO = "9223372057847105397"
  self.NSA = nil
  self.L17M020_Int_Cam_01 = "9223372059242207537"
  self.L17M020_Int_Cam_03 = "9223372059242207540"
  self.L17M020_Int_Cam_04 = "9223372059242207535"
  self.L17M020_Int_Cam_02 = "9223372059242207543"
  self.InCam1 = 1
  self.InCam2 = 1
  self.InCam3 = 1
  self.InCam4 = 1
  self.AllCamsL17M020 = {
    "9223372059242207537",
    "9223372067346562026",
    "9223372067346562152",
    "9223372067346562150"
  }
  self.box_MultipleOR_21 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_21
  l0._graph = self
  l0._name = "box_MultipleOR_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|36591501"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_21_Out
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|89661258"
  l0.Out = self.f_box_MissionMessageController_v3_7_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Mission_End_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_1
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|138758157"
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|277185329"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_DistanceBasedProgressBarController_v2_49 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_49
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|299400681"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_Security_Camera_Monitor_17 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_17
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|438427058"
  l0.Enabled = self.f_box_Security_Camera_Monitor_17_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_17_OnEndExitAll
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|464460954"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_Timer_v2_22 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_22
  l0._graph = self
  l0._name = "box_Timer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|757907355"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_12 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|763135153"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_FreeRoam_IOP_Interact_Gameplay_18 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_18
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|936135601"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_18_Interacted
  self.box_FreeRoam_Beat_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_3
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1017777385"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_3_NewBeatStarted
  self.box_LayerMonitor_20 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_20
  l0._graph = self
  l0._name = "box_LayerMonitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1275567647"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_20_Loaded
  l0.Unloaded = DummyFunction
  self.box_FreeRoam_Hack_Gameplay_5 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1514139419"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_5_Hacked
  self.box_OnceOnly_v3_11 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_11
  l0._graph = self
  l0._name = "box_OnceOnly_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1537880935"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_11_Out
  l0.ResetOut = DummyFunction
  self.box_MissionCheckpointReach_16 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_16
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1815066264"
  l0.Out = self.f_box_MissionCheckpointReach_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1959771872"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1971430052"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_8_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_47 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_47
  l0._graph = self
  l0._name = "box_Timer_v2_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1993952863"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_AI_IOPController_19 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_19
  l0._graph = self
  l0._name = "box_AI_IOPController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|2013239002"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_19_IOPKickOutComplete
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
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1200816127", "1200816127", "L17M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_20
  l0.ProgressionLayer = "ProgressionLayers.9223372050359526708"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|835308517", "835308517", "L17M020_Main", "CheckPoint_1", "box_LayerMonitor_20.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|48984498", "48984498", "L17M020_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_3()
  l0 = self.box_FreeRoam_Beat_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1231296365", "1231296365", "L17M020_Main", "In", "box_FreeRoam_Beat_3.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_MultipleOR_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_MultipleOR_21
  l1 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1701643397", "1701643397", "L17M020_Main", "box_MultipleOR_21.Out", "box_FreeRoam_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_MissionMessageController_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|634376083"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_MissionMessageController_v3_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|211429970", "211429970", "L17M020_Main", "box_MissionMessageController_v3_7.Out", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1490743442", "1490743442", "L17M020_Main", "box_Ordered_Output_4.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|2040968086", "2040968086", "L17M020_Main", "box_Ordered_Output_4.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_4_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|339961171", "339961171", "L17M020_Main", "box_Ordered_Output_4.Out", "box_FreeRoam_Hack_Gameplay_5.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_18
  l0.IOPBoxEntity = "9223372052773862054"
  l0.MapPoint = "9223372073068710710"
  l0 = self.box_MultipleOR_15
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|130964558", "130964558", "L17M020_Main", "box_MultipleOR_15.Out", "box_FreeRoam_IOP_Interact_Gameplay_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_23_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_49
  l0.Text = {
    section = "POPUPS.MULTIPLAYER",
    item = "Uploading",
    id = "14998"
  }
  l0.TotalTime = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|2076019104", "2076019104", "L17M020_Main", "box_Ordered_Output_23.Out", "box_DistanceBasedProgressBarController_v2_49.Start", clone, l0)
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
  l0 = self.box_Timer_v2_22
  l0.Seconds = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1950841161", "1950841161", "L17M020_Main", "box_Ordered_Output_23.Out", "box_Timer_v2_22.Start", clone, l0)
  l0:Start()
end
function export:f_box_Get_Player_ID_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_19
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|706392556", "706392556", "L17M020_Main", "box_Get_Player_ID_14.Out", "box_AI_IOPController_19.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Security_Camera_Monitor_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  l0 = self.box_Security_Camera_Monitor_17
  l1 = self.box_FreeRoam_Hack_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1593325600", "1593325600", "L17M020_Main", "box_Security_Camera_Monitor_17.Enabled", "box_FreeRoam_Hack_Gameplay_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_17_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|180411297"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_4_Out_2
  l0 = self.box_Security_Camera_Monitor_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|733582195", "733582195", "L17M020_Main", "box_Security_Camera_Monitor_17.OnEndExitAll", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_TriggerMonitor_v2_6_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_8
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373373"
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_PhoneCommunicationController_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|584207886", "584207886", "L17M020_Main", "box_TriggerMonitor_v2_6.Enter", "box_PhoneCommunicationController_8.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1080006106", "1080006106", "L17M020_Main", "box_Ordered_Output_9.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1952529301", "1952529301", "L17M020_Main", "box_Ordered_Output_9.Out", "box_TriggerMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_22_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_47
  l0.Seconds = 2
  l0 = self.box_Timer_v2_22
  l1 = self.box_Timer_v2_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|2038447933", "2038447933", "L17M020_Main", "box_Timer_v2_22.TimeElapsed", "box_Timer_v2_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_17()
  l0 = self.box_MultipleOR_12
  l1 = self.box_Security_Camera_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1368834759", "1368834759", "L17M020_Main", "box_MultipleOR_12.Out", "box_Security_Camera_Monitor_17.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_18_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|2089496783"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|41124332", "41124332", "L17M020_Main", "box_FreeRoam_IOP_Interact_Gameplay_18.Interacted", "box_Ordered_Output_13.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_3_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_7
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L17.L17M020.ActivationObjective",
    item = "ActivationObjective",
    id = "457763"
  }
  l0 = self.box_FreeRoam_Beat_3
  l1 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1988166154", "1988166154", "L17M020_Main", "box_FreeRoam_Beat_3.NewBeatStarted", "box_MissionMessageController_v3_7.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_LayerMonitor_20_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_LayerMonitor_20
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1832703257", "1832703257", "L17M020_Main", "box_LayerMonitor_20.Loaded", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_Hack_Gameplay_5_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1825381971"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1585102171", "1585102171", "L17M020_Main", "box_FreeRoam_Hack_Gameplay_5.Hacked", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373375"
  l0 = self.box_OnceOnly_v3_11
  l1 = self.box_PhoneCommunicationController_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|919537495", "919537495", "L17M020_Main", "box_OnceOnly_v3_11.Out", "box_PhoneCommunicationController_2.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionCheckpointReach_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|279907348"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_23_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_23_Out_1
  l0 = self.box_MissionCheckpointReach_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|305859383", "305859383", "L17M020_Main", "box_MissionCheckpointReach_16.Out", "box_Ordered_Output_23.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|614726733", "614726733", "L17M020_Main", "box_Ordered_Output_10.Out", "box_MultipleOR_12.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_16
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|109486079", "109486079", "L17M020_Main", "box_Ordered_Output_10.Out", "box_MissionCheckpointReach_16.In", clone, l0)
  l0:In()
end
function export:f_box_PhoneCommunicationController_8_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_PhoneCommunicationController_8
  l1 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|885943246", "885943246", "L17M020_Main", "box_PhoneCommunicationController_8.OnCommunicationStarted", "box_TriggerMonitor_v2_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Timer_v2_47_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|315894943"
  l0.Out = self.f_box_Get_Player_ID_14_Out
  l0 = self.box_Timer_v2_47
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1301417808", "1301417808", "L17M020_Main", "box_Timer_v2_47.TimeElapsed", "box_Get_Player_ID_14.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_19_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_21()
  l0 = self.box_AI_IOPController_19
  l1 = self.box_MultipleOR_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1182926013", "1182926013", "L17M020_Main", "box_AI_IOPController_19.IOPKickOutComplete", "box_MultipleOR_21.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_17()
  l0 = self.box_Security_Camera_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|949239171", "949239171", "L17M020_Main", "box_Ordered_Output_13.Out", "box_Security_Camera_Monitor_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L17\\L17M020\\L17M020.domino|@L17M020_Main|1731683479", "1731683479", "L17M020_Main", "box_Ordered_Output_13.Out", "box_OnceOnly_v3_11.In", clone, l0)
  l0:In(0)
end
function export:OnEnter_box_MultipleOR_21()
end
function export:OnEnter_box_FreeRoam_Mission_End_1()
  local l0
  l0 = self.box_FreeRoam_Mission_End_1
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367621"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_Security_Camera_Monitor_17()
  local l0
  l0 = self.box_Security_Camera_Monitor_17
  l0.CameraEntityList = self.AllCamsL17M020
end
function export:OnEnter_box_TriggerMonitor_v2_6()
  local l0
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = "9223372055400838816"
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_FreeRoam_Beat_3()
  local l0
  l0 = self.box_FreeRoam_Beat_3
  l0.ProgressionLayer = "ProgressionLayers.9223372050359526708"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_5()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_5
  l0.CLO = "9223372055400837468"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
_compilerVersion = 4
