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
  cbox:RegisterBox("domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/4039650263.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "L12M040_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main"
  self.PlayerEntity = nil
  self.Hackable_Tablet_8 = "9223372048740236442"
  self.L12M030_DebugAnnotationTextEntity_325 = "9223372048740236444"
  self._30DG_1 = "9223372050612991351"
  self.MissionStartTrigger_31 = "9223372050612991361"
  self.L12_StoryIcon_IoP = "9223372050612991363"
  self.L12_StoryIcon_Outside = "9223372048740236446"
  self.L12M040_NotActivatedByDefault_0 = "9223372055528329482"
  self.L12M040_ctOS_IOP_Box_GenericAnimatedObjectInteractive_8 = "9223372061673866560"
  self.L12M040_CityLifeObject_SuperComputer = "9223372055528329484"
  self.Camera = "9223372056705081815"
  self.Car = nil
  self.Car_CLO = "9223372056705081813"
  self.L12M040_CLO_Server = "9223372057381828793"
  self.L12M040_ProximityTrigger_MarcusDialog = "9223372059367796026"
  self.L12M040_CityLifeObject_IOP_Box = "9223372061673866555"
  self.ctOS_IOP_Box_OQC_GenericAnimatedObjectInteractive_2 = "9223372061673866560"
  self.AllCamsL12M040 = {
    "9223372065521679220",
    "9223372067346611109",
    "9223372067346611111"
  }
  self.box_LayerMonitor_8 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_8
  l0._graph = self
  l0._name = "box_LayerMonitor_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|16682245"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_8_Loaded
  l0.Unloaded = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_28 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_28
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|67066799"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_28_Interacted
  self.box_PlayDialog_v2_20 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_20
  l0._graph = self
  l0._name = "box_PlayDialog_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|113225938"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_7 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_7
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|121792945"
  l0.Out = self.f_box_MissionCheckpointReach_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Timer_v2_15 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_15
  l0._graph = self
  l0._name = "box_Timer_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|178215940"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PhoneCommunicationController_34 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_34
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|285621219"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_AI_IOPController_9 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_9
  l0._graph = self
  l0._name = "box_AI_IOPController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|326630496"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_9_IOPKickOutComplete
  self.box_FreeRoam_Mission_End_27 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_27
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|343106697"
  self.box_DistanceBasedProgressBarController_v2_24 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_24
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|345152400"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|417445221"
  l0.Out = self.f_box_MissionMessageController_v3_3_Out
  l0.MessageCompleted = DummyFunction
  self.box_TriggerMonitor_v2_23 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_23
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|450960284"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_23_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_23_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_FreeRoam_Beat_17 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_17
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|584972761"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_17_NewBeatStarted
  self.box_FreeRoam_Hack_Gameplay_32 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_32
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|683739892"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_32_Hacked
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|697597100"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_OnceOnly_v3_30 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_30
  l0._graph = self
  l0._name = "box_OnceOnly_v3_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|794715441"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_30_Out
  l0.ResetOut = DummyFunction
  self.box_Security_Camera_Monitor_29 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_29
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1270295663"
  l0.Enabled = self.f_box_Security_Camera_Monitor_29_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_29_OnEndExitAll
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1474561151"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_LineOfSightMonitor_14 = cbox:CreateBox("domino/System/LineOfSightMonitor.lua")
  l0 = self.box_LineOfSightMonitor_14
  l0._graph = self
  l0._name = "box_LineOfSightMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1596594106"
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_LineOfSightMonitor_14_Disabled
  l0.LOSAcquired = self.f_box_LineOfSightMonitor_14_LOSAcquired
  l0.LOSLost = DummyFunction
  self.box_LogicGate_v2_19 = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self.box_LogicGate_v2_19
  l0._graph = self
  l0._name = "box_LogicGate_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1653233336"
  l0.Out = self.f_box_LogicGate_v2_19_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self.box_MissionMessageController_v3_21 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_21
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1692932161"
  l0.Out = self.f_box_MissionMessageController_v3_21_Out
  l0.MessageCompleted = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1844686776"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1851108572"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_LocateGameplayController_1 = cbox:CreateBox("domino/System/LocateGameplayController.lua")
  l0 = self.box_LocateGameplayController_1
  l0._graph = self
  l0._name = "box_LocateGameplayController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1959416984"
  l0.Started = self.f_box_LocateGameplayController_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_LocateGameplayController_1_Completed
  self.box_FreeRoam_Beat_22 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_22
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|2113517918"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_22_NewBeatStarted
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
  self:OnEnter_box_FreeRoam_Beat_17()
  l0 = self.box_FreeRoam_Beat_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|709029356", "709029356", "L12M040_Main", "CheckPoint_0", "box_FreeRoam_Beat_17.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:OnEnter_box_FreeRoam_Beat_22()
  l0 = self.box_FreeRoam_Beat_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|469047874", "469047874", "L12M040_Main", "CheckPoint_1", "box_FreeRoam_Beat_22.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_LayerMonitor_8
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506740"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|978643762", "978643762", "L12M040_Main", "CheckPoint_2", "box_LayerMonitor_8.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_27()
  l0 = self.box_FreeRoam_Mission_End_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1235449755", "1235449755", "L12M040_Main", "CheckPoint_3", "box_FreeRoam_Mission_End_27.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_17()
  l0 = self.box_FreeRoam_Beat_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|180918666", "180918666", "L12M040_Main", "In", "box_FreeRoam_Beat_17.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_LayerMonitor_8_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_LayerMonitor_8
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1468125028", "1468125028", "L12M040_Main", "box_LayerMonitor_8.Loaded", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_28_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|244926876"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_4_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_4_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|587661674", "587661674", "L12M040_Main", "box_FreeRoam_IOP_Interact_Gameplay_28.Interacted", "box_Ordered_Output_4.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|794704965"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_MissionCheckpointReach_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1657987476", "1657987476", "L12M040_Main", "box_MissionCheckpointReach_7.Out", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_LogicGate_v2_19()
  l0 = self.box_LogicGate_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1581265753", "1581265753", "L12M040_Main", "box_Ordered_Output_2.Out", "box_LogicGate_v2_19.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Beat_22()
  l0 = self.box_FreeRoam_Beat_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|600275461", "600275461", "L12M040_Main", "box_Ordered_Output_2.Out", "box_FreeRoam_Beat_22.StartNewBeat", clone, l0)
  l0:StartNewBeat()
end
function export:f_box_Timer_v2_15_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1889903670"
  l0.Out = self.f_box_Get_Player_ID_18_Out
  l0 = self.box_Timer_v2_15
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|416746528", "416746528", "L12M040_Main", "box_Timer_v2_15.TimeElapsed", "box_Get_Player_ID_18.In", l0, l1)
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
  self:OnEnter_box_Security_Camera_Monitor_29()
  l0 = self.box_Security_Camera_Monitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1206163778", "1206163778", "L12M040_Main", "box_Ordered_Output_4.Out", "box_Security_Camera_Monitor_29.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|100136548", "100136548", "L12M040_Main", "box_Ordered_Output_4.Out", "box_OnceOnly_v3_30.In", clone, l0)
  l0:In(0)
end
function export:f_box_AI_IOPController_9_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_AI_IOPController_9
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1470217419", "1470217419", "L12M040_Main", "box_AI_IOPController_9.IOPKickOutComplete", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|333112395", "333112395", "L12M040_Main", "box_Ordered_Output_31.Out", "box_MultipleOR_5.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_7
  l0.CheckpointList = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1950294943", "1950294943", "L12M040_Main", "box_Ordered_Output_31.Out", "box_MissionCheckpointReach_7.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_3_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LocateGameplayController_1
  l0.TargetEntity = self.ctOS_IOP_Box_OQC_GenericAnimatedObjectInteractive_2
  l0.DistrictDB = "Districts.9223372048308080063"
  l0.UseStoryIcon = 1
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_LocateGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1711758056", "1711758056", "L12M040_Main", "box_MissionMessageController_v3_3.Out", "box_LocateGameplayController_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_23_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LogicGate_v2_19()
  l0 = self.box_TriggerMonitor_v2_23
  l1 = self.box_LogicGate_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1781393857", "1781393857", "L12M040_Main", "box_TriggerMonitor_v2_23.Disabled", "box_LogicGate_v2_19.Close", l0, l1)
  l1:Close()
end
function export:f_box_TriggerMonitor_v2_23_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_23()
  l0 = self.box_TriggerMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|573562277", "573562277", "L12M040_Main", "box_TriggerMonitor_v2_23.Enter", "box_TriggerMonitor_v2_23.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_FreeRoam_Beat_17_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M040.Objectives.Objective010",
    item = "Objective",
    id = "603654"
  }
  l0 = self.box_FreeRoam_Beat_17
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|738262585", "738262585", "L12M040_Main", "box_FreeRoam_Beat_17.NewBeatStarted", "box_MissionMessageController_v3_3.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_FreeRoam_Hack_Gameplay_32_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|389356280"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|207930084", "207930084", "L12M040_Main", "box_FreeRoam_Hack_Gameplay_32.Hacked", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_27()
  l0 = self.box_MultipleOR_26
  l1 = self.box_FreeRoam_Mission_End_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|371949935", "371949935", "L12M040_Main", "box_MultipleOR_26.Out", "box_FreeRoam_Mission_End_27.End", l0, l1)
  l1:End()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_DistanceBasedProgressBarController_v2_24
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M040.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "694074"
  }
  l0.TotalTime = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|443333074", "443333074", "L12M040_Main", "box_Ordered_Output_10.Out", "box_DistanceBasedProgressBarController_v2_24.Start", clone, l0)
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
  l0 = self.box_Timer_v2_6
  l0.Seconds = 10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1297896067", "1297896067", "L12M040_Main", "box_Ordered_Output_10.Out", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_OnceOnly_v3_30_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_34
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373371"
  l0 = self.box_OnceOnly_v3_30
  l1 = self.box_PhoneCommunicationController_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|666681965", "666681965", "L12M040_Main", "box_OnceOnly_v3_30.Out", "box_PhoneCommunicationController_34.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|232966050", "232966050", "L12M040_Main", "box_Ordered_Output_33.Out", "box_MultipleOR_5.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1492220184", "1492220184", "L12M040_Main", "box_Ordered_Output_33.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_33_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_32()
  l0 = self.box_FreeRoam_Hack_Gameplay_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|2119134122", "2119134122", "L12M040_Main", "box_Ordered_Output_33.Out", "box_FreeRoam_Hack_Gameplay_32.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Security_Camera_Monitor_29_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_32()
  l0 = self.box_Security_Camera_Monitor_29
  l1 = self.box_FreeRoam_Hack_Gameplay_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|119986411", "119986411", "L12M040_Main", "box_Security_Camera_Monitor_29.Enabled", "box_FreeRoam_Hack_Gameplay_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_29_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1123416340"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_33_Out_2
  l0 = self.box_Security_Camera_Monitor_29
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1494096313", "1494096313", "L12M040_Main", "box_Security_Camera_Monitor_29.OnEndExitAll", "box_Ordered_Output_33.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_28
  l0.IOPBoxEntity = self.L12M040_ctOS_IOP_Box_GenericAnimatedObjectInteractive_8
  l0.MapPoint = self.L12M040_NotActivatedByDefault_0
  l0 = self.box_MultipleOR_11
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|818827751", "818827751", "L12M040_Main", "box_MultipleOR_11.Out", "box_FreeRoam_IOP_Interact_Gameplay_28.Start", l0, l1)
  l1:Start()
end
function export:f_box_LineOfSightMonitor_14_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_20
  l0.SoundId = "soundbinary/4039650263.bnk"
  l0 = self.box_LineOfSightMonitor_14
  l1 = self.box_PlayDialog_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|2054319193", "2054319193", "L12M040_Main", "box_LineOfSightMonitor_14.Disabled", "box_PlayDialog_v2_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_LineOfSightMonitor_14_LOSAcquired()
  local l0
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_14()
  l0 = self.box_LineOfSightMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1322371114", "1322371114", "L12M040_Main", "box_LineOfSightMonitor_14.LOSAcquired", "box_LineOfSightMonitor_14.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_LogicGate_v2_19_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_LineOfSightMonitor_14()
  l0 = self.box_LogicGate_v2_19
  l1 = self.box_LineOfSightMonitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1360209548", "1360209548", "L12M040_Main", "box_LogicGate_v2_19.Out", "box_LineOfSightMonitor_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionMessageController_v3_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MissionMessageController_v3_21
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|2059972143", "2059972143", "L12M040_Main", "box_MissionMessageController_v3_21.Out", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_15
  l0.Seconds = 2
  l0 = self.box_Timer_v2_6
  l1 = self.box_Timer_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|2048998317", "2048998317", "L12M040_Main", "box_Timer_v2_6.TimeElapsed", "box_Timer_v2_15.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_5_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_29()
  l0 = self.box_MultipleOR_5
  l1 = self.box_Security_Camera_Monitor_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|591945374", "591945374", "L12M040_Main", "box_MultipleOR_5.Out", "box_Security_Camera_Monitor_29.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Get_Player_ID_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_9
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|886012170", "886012170", "L12M040_Main", "box_Get_Player_ID_18.Out", "box_AI_IOPController_9.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_LocateGameplayController_1_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|150550440"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0 = self.box_LocateGameplayController_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|348760803", "348760803", "L12M040_Main", "box_LocateGameplayController_1.Completed", "box_Ordered_Output_2.In", l0, l1)
  l1:In()
end
function export:f_box_LocateGameplayController_1_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_23()
  l0 = self.box_LocateGameplayController_1
  l1 = self.box_TriggerMonitor_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|2100229378", "2100229378", "L12M040_Main", "box_LocateGameplayController_1.Started", "box_TriggerMonitor_v2_23.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_FreeRoam_Beat_22_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_21
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M040.Objectives.Objective020",
    item = "Objective",
    id = "686923"
  }
  l0 = self.box_FreeRoam_Beat_22
  l1 = self.box_MissionMessageController_v3_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L12\\L12M040.domino|@L12M040_Main|1324923462", "1324923462", "L12M040_Main", "box_FreeRoam_Beat_22.NewBeatStarted", "box_MissionMessageController_v3_21.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:OnEnter_box_FreeRoam_Mission_End_27()
  local l0
  l0 = self.box_FreeRoam_Mission_End_27
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357370925"
  l0.Checkpoint = "CheckPoint_3"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_TriggerMonitor_v2_23()
  local l0
  l0 = self.box_TriggerMonitor_v2_23
  l0.Trigger = self.L12M040_ProximityTrigger_MarcusDialog
end
function export:OnEnter_box_FreeRoam_Beat_17()
  local l0
  l0 = self.box_FreeRoam_Beat_17
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506740"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_32()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_32
  l0.CLO = self.L12M040_CLO_Server
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_Security_Camera_Monitor_29()
  local l0
  l0 = self.box_Security_Camera_Monitor_29
  l0.CameraEntityList = self.AllCamsL12M040
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_LineOfSightMonitor_14()
  local l0
  l0 = self.box_LineOfSightMonitor_14
  l0.Target = self.L12M040_ctOS_IOP_Box_GenericAnimatedObjectInteractive_8
end
function export:OnEnter_box_LogicGate_v2_19()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_FreeRoam_Beat_22()
  local l0
  l0 = self.box_FreeRoam_Beat_22
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506740"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
