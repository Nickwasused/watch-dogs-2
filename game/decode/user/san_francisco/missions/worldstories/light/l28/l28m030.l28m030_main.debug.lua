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
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L28M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main"
  self.PlayerEntity = nil
  self.DebugAnnotationTextEntity_362 = "9223372049902396708"
  self.Tablet_HackableEntity_26 = "9223372049691848657"
  self._30DG_5 = "9223372053015078781"
  self.ServerHacked = 0
  self.NotActivatedByDefault_8 = "9223372053015078786"
  self.L28M030_Cemetary_TS_ProximityTrigger_3579 = "9223372053758735515"
  self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_6 = "9223372053015078788"
  self.L28M030_CityLifeObject_Server = "9223372057223392832"
  self.L28M030_ShapeTrigger_Cemetery_TS = "9223372057401081456"
  self.L28M030_AllCams = {
    "9223372053015078781",
    "9223372068880275552"
  }
  self.box_PhoneCommunicationController_22 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_22
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|47705568"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_16 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_16
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|106527568"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_16_Interacted
  self.box_Security_Camera_Monitor_17 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_17
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|179535979"
  l0.Enabled = self.f_box_Security_Camera_Monitor_17_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_17_OnEndExitAll
  self.box_LayerMonitor_14 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_14
  l0._graph = self
  l0._name = "box_LayerMonitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|416033035"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_14_Loaded
  l0.Unloaded = DummyFunction
  self.box_FreeRoam_Beat_2 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_2
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|488302625"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_2_NewBeatStarted
  self.box_OnceOnly_v3_18 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_18
  l0._graph = self
  l0._name = "box_OnceOnly_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|738736279"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_18_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|741477595"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_8 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_8
  l0._graph = self
  l0._name = "box_MultipleOR_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|856258777"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_8_Out
  self.box_MultipleOR_15 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_15
  l0._graph = self
  l0._name = "box_MultipleOR_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|909806385"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_15_Out
  self.box_MultipleOR_1 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_1
  l0._graph = self
  l0._name = "box_MultipleOR_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1395858085"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_1_Out
  self.box_TriggerMonitor_v2_7 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_7
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1400030290"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_DistanceBasedProgressBarController_v2_23 = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self.box_DistanceBasedProgressBarController_v2_23
  l0._graph = self
  l0._name = "box_DistanceBasedProgressBarController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1426722938"
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_box_DistanceBasedProgressBarController_v2_23_Completed
  self.box_FreeRoam_Hack_Gameplay_20 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_20
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1505265491"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_20_Hacked
  self.box_MissionCheckpointReach_10 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_10
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1648542664"
  l0.Out = self.f_box_MissionCheckpointReach_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_5 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_5
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1980373485"
  l0.Out = self.f_box_MissionMessageController_v3_5_Out
  l0.MessageCompleted = DummyFunction
  self.box_FreeRoam_Mission_End_6 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_6
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|2020024022"
  self.box_AI_IOPController_13 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_13
  l0._graph = self
  l0._name = "box_AI_IOPController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|2072082712"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_13_IOPKickOutComplete
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
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|361106823", "361106823", "L28M030_Main", "CheckPoint_0", "box_FreeRoam_Beat_2.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_14
  l0.ProgressionLayer = "ProgressionLayers.9223372049691744218"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1112074287", "1112074287", "L28M030_Main", "CheckPoint_1", "box_LayerMonitor_14.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_6()
  l0 = self.box_FreeRoam_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1227656483", "1227656483", "L28M030_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_6.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_2()
  l0 = self.box_FreeRoam_Beat_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|793626543", "793626543", "L28M030_Main", "In", "box_FreeRoam_Beat_2.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_16_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|454105685"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|896815824", "896815824", "L28M030_Main", "box_FreeRoam_IOP_Interact_Gameplay_16.Interacted", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_13
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1661850519", "1661850519", "L28M030_Main", "box_Get_Player_ID_12.Out", "box_AI_IOPController_13.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_Security_Camera_Monitor_17_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_20()
  l0 = self.box_Security_Camera_Monitor_17
  l1 = self.box_FreeRoam_Hack_Gameplay_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1705211095", "1705211095", "L28M030_Main", "box_Security_Camera_Monitor_17.Enabled", "box_FreeRoam_Hack_Gameplay_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_17_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|961695362"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_21_Out_2
  l0 = self.box_Security_Camera_Monitor_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1076849193", "1076849193", "L28M030_Main", "box_Security_Camera_Monitor_17.OnEndExitAll", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_LayerMonitor_14_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_LayerMonitor_14
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1605582032", "1605582032", "L28M030_Main", "box_LayerMonitor_14.Loaded", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|913086371", "913086371", "L28M030_Main", "box_Ordered_Output_19.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_10
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|679640296", "679640296", "L28M030_Main", "box_Ordered_Output_19.Out", "box_MissionCheckpointReach_10.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_17()
  l0 = self.box_Security_Camera_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|816709662", "816709662", "L28M030_Main", "box_Ordered_Output_9.Out", "box_Security_Camera_Monitor_17.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|251990884", "251990884", "L28M030_Main", "box_Ordered_Output_9.Out", "box_OnceOnly_v3_18.In", clone, l0)
  l0:In(0)
end
function export:f_box_FreeRoam_Beat_2_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_5
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M030.Objectives.Objective010",
    item = "Objective",
    id = "550111"
  }
  l0 = self.box_FreeRoam_Beat_2
  l1 = self.box_MissionMessageController_v3_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|50256531", "50256531", "L28M030_Main", "box_FreeRoam_Beat_2.NewBeatStarted", "box_MissionMessageController_v3_5.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_22
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367346"
  l0 = self.box_OnceOnly_v3_18
  l1 = self.box_PhoneCommunicationController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1789699068", "1789699068", "L28M030_Main", "box_OnceOnly_v3_18.Out", "box_PhoneCommunicationController_22.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_PhoneCommunicationController_4_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_7()
  l0 = self.box_PhoneCommunicationController_4
  l1 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1089189212", "1089189212", "L28M030_Main", "box_PhoneCommunicationController_4.OnCommunicationStarted", "box_TriggerMonitor_v2_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_8_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_17()
  l0 = self.box_MultipleOR_8
  l1 = self.box_Security_Camera_Monitor_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1617753692", "1617753692", "L28M030_Main", "box_MultipleOR_8.Out", "box_Security_Camera_Monitor_17.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_16
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_6
  l0.MapPoint = self.NotActivatedByDefault_8
  l0 = self.box_MultipleOR_15
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|2076727312", "2076727312", "L28M030_Main", "box_MultipleOR_15.Out", "box_FreeRoam_IOP_Interact_Gameplay_16.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_21_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_8()
  l0 = self.box_MultipleOR_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|401898804", "401898804", "L28M030_Main", "box_Ordered_Output_21.Out", "box_MultipleOR_8.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1281535264", "1281535264", "L28M030_Main", "box_Ordered_Output_21.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_21_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_20()
  l0 = self.box_FreeRoam_Hack_Gameplay_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|210887493", "210887493", "L28M030_Main", "box_Ordered_Output_21.Out", "box_FreeRoam_Hack_Gameplay_20.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_15()
  l0 = self.box_MultipleOR_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1996531258", "1996531258", "L28M030_Main", "box_Ordered_Output_3.Out", "box_MultipleOR_15.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_7()
  l0 = self.box_TriggerMonitor_v2_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1965815003", "1965815003", "L28M030_Main", "box_Ordered_Output_3.Out", "box_TriggerMonitor_v2_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_1_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_6()
  l0 = self.box_MultipleOR_1
  l1 = self.box_FreeRoam_Mission_End_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|2061025594", "2061025594", "L28M030_Main", "box_MultipleOR_1.Out", "box_FreeRoam_Mission_End_6.End", l0, l1)
  l1:End()
end
function export:f_box_TriggerMonitor_v2_7_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367345"
  l0 = self.box_TriggerMonitor_v2_7
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|462546875", "462546875", "L28M030_Main", "box_TriggerMonitor_v2_7.Enter", "box_PhoneCommunicationController_4.TryStartCommunication", l0, l1)
  l1:TryStartCommunication()
end
function export:f_box_DistanceBasedProgressBarController_v2_23_Completed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|174491506"
  l0.Out = self.f_box_Get_Player_ID_12_Out
  l0 = self.box_DistanceBasedProgressBarController_v2_23
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|296283118", "296283118", "L28M030_Main", "box_DistanceBasedProgressBarController_v2_23.Completed", "box_Get_Player_ID_12.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_20_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|440862346"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1217837145", "1217837145", "L28M030_Main", "box_FreeRoam_Hack_Gameplay_20.Hacked", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_DistanceBasedProgressBarController_v2_23
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M030.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "694070"
  }
  l0.TotalTime = 5
  l0 = self.box_MissionCheckpointReach_10
  l1 = self.box_DistanceBasedProgressBarController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1296628398", "1296628398", "L28M030_Main", "box_MissionCheckpointReach_10.Out", "box_DistanceBasedProgressBarController_v2_23.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_5_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|1226003330"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_MissionMessageController_v3_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|114804463", "114804463", "L28M030_Main", "box_MissionMessageController_v3_5.Out", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_AI_IOPController_13_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_1()
  l0 = self.box_AI_IOPController_13
  l1 = self.box_MultipleOR_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L28\\L28M030.domino|@L28M030_Main|237177173", "237177173", "L28M030_Main", "box_AI_IOPController_13.IOPKickOutComplete", "box_MultipleOR_1.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_Security_Camera_Monitor_17()
  local l0
  l0 = self.box_Security_Camera_Monitor_17
  l0.CameraEntityList = self.L28M030_AllCams
end
function export:OnEnter_box_FreeRoam_Beat_2()
  local l0
  l0 = self.box_FreeRoam_Beat_2
  l0.ProgressionLayer = "ProgressionLayers.9223372049691744218"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_8()
end
function export:OnEnter_box_MultipleOR_15()
end
function export:OnEnter_box_MultipleOR_1()
end
function export:OnEnter_box_TriggerMonitor_v2_7()
  local l0
  l0 = self.box_TriggerMonitor_v2_7
  l0.Trigger = self.L28M030_ShapeTrigger_Cemetery_TS
  l0.CheckNow = 1
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_20()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_20
  l0.CLO = self.L28M030_CityLifeObject_Server
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:OnEnter_box_FreeRoam_Mission_End_6()
  local l0
  l0 = self.box_FreeRoam_Mission_End_6
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367347"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
