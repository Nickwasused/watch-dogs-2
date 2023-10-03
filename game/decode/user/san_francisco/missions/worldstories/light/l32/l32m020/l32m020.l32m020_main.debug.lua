export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
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
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
end
function export:Init(cbox)
  local l0
  self._name = "L32M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main"
  self.PlayerEntity = nil
  self.ctOS_BOX = "9223372051557047701"
  self.Can_Exit = 0
  self.InCam1 = 0
  self.InCam2 = 0
  self.AllCamsL32M020 = {
    "9223372065424989959",
    "9223372065424990008"
  }
  self.box_Reward_Phone_Call_Monitor_18 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_18
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|3490022"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_18_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_18_OnPhoneCallEnded
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|130858280"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_17 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_17
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|185783094"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_LayerMonitor_5 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_5
  l0._graph = self
  l0._name = "box_LayerMonitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|277101069"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_5_Loaded
  l0.Unloaded = DummyFunction
  self.box_AI_IOPController_23 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_23
  l0._graph = self
  l0._name = "box_AI_IOPController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|511261841"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_23_IOPKickOutComplete
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|832759577"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_Security_Camera_Monitor_20 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_20
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|969062313"
  l0.Enabled = self.f_box_Security_Camera_Monitor_20_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_20_OnEndExitAll
  self.box_MissionCheckpointReach_6 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_6
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1228866803"
  l0.Out = self.f_box_MissionCheckpointReach_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_4 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1311192219"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_OnceOnly_v3_19 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_19
  l0._graph = self
  l0._name = "box_OnceOnly_v3_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1546339551"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_19_Out
  l0.ResetOut = DummyFunction
  self.box_FreeRoam_IOP_Interact_Gameplay_12 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1675521979"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_12_Interacted
  self.box_FreeRoam_Hack_Gameplay_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1685600747"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_1_Hacked
  self.box_FreeRoam_Beat_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_7
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1689990872"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_7_NewBeatStarted
  self.box_FreeRoam_Mission_End_3 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_3
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1919838050"
  self.box_MultipleOR_22 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1956020886"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
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
  self:OnEnter_box_FreeRoam_Beat_7()
  l0 = self.box_FreeRoam_Beat_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1735182549", "1735182549", "L32M020_Main", "CheckPoint_0", "box_FreeRoam_Beat_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_5
  l0.ProgressionLayer = "ProgressionLayers.9223372050033923853"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|807272623", "807272623", "L32M020_Main", "CheckPoint_1", "box_LayerMonitor_5.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1393135176", "1393135176", "L32M020_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_3.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_7()
  l0 = self.box_FreeRoam_Beat_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1752276409", "1752276409", "L32M020_Main", "In", "box_FreeRoam_Beat_7.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_Reward_Phone_Call_Monitor_18_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1730059185"
  l0.Out = self.f_box_Get_Player_ID_25_Out
  l0 = self.box_Reward_Phone_Call_Monitor_18
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1130269983", "1130269983", "L32M020_Main", "box_Reward_Phone_Call_Monitor_18.Disabled", "box_Get_Player_ID_25.In", l0, l1)
  l1:In()
end
function export:f_box_Reward_Phone_Call_Monitor_18_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_18()
  l0 = self.box_Reward_Phone_Call_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|943817335", "943817335", "L32M020_Main", "box_Reward_Phone_Call_Monitor_18.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_18.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|790165477", "790165477", "L32M020_Main", "box_Ordered_Output_2.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|407778822", "407778822", "L32M020_Main", "box_Ordered_Output_2.Out", "box_MultipleOR_22.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_2_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FreeRoam_Hack_Gameplay_1()
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|54557688", "54557688", "L32M020_Main", "box_Ordered_Output_2.Out", "box_FreeRoam_Hack_Gameplay_1.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_22()
  l0 = self.box_MissionMessageController_v3_15
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|579065167", "579065167", "L32M020_Main", "box_MissionMessageController_v3_15.Out", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_LayerMonitor_5_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_LayerMonitor_5
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|247028542", "247028542", "L32M020_Main", "box_LayerMonitor_5.Loaded", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_IOPController_23_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_AI_IOPController_23
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|518333239", "518333239", "L32M020_Main", "box_AI_IOPController_23.IOPKickOutComplete", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_27_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|2018255907", "2018255907", "L32M020_Main", "box_Ordered_Output_27.Out", "box_MultipleOR_26.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_6
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1176001139", "1176001139", "L32M020_Main", "box_Ordered_Output_27.Out", "box_MissionCheckpointReach_6.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_20()
  l0 = self.box_MultipleOR_26
  l1 = self.box_Security_Camera_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|97129221", "97129221", "L32M020_Main", "box_MultipleOR_26.Out", "box_Security_Camera_Monitor_20.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Security_Camera_Monitor_20_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_1()
  l0 = self.box_Security_Camera_Monitor_20
  l1 = self.box_FreeRoam_Hack_Gameplay_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|661225512", "661225512", "L32M020_Main", "box_Security_Camera_Monitor_20.Enabled", "box_FreeRoam_Hack_Gameplay_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_20_OnEndExitAll()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|19637549"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_2_Out_2
  l0 = self.box_Security_Camera_Monitor_20
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1506042711", "1506042711", "L32M020_Main", "box_Security_Camera_Monitor_20.OnEndExitAll", "box_Ordered_Output_2.In", l0, l1)
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
  self:OnEnter_box_Security_Camera_Monitor_20()
  l0 = self.box_Security_Camera_Monitor_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1406704358", "1406704358", "L32M020_Main", "box_Ordered_Output_21.Out", "box_Security_Camera_Monitor_20.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_21_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1132274477", "1132274477", "L32M020_Main", "box_Ordered_Output_21.Out", "box_OnceOnly_v3_19.In", clone, l0)
  l0:In(0)
end
function export:f_box_MissionCheckpointReach_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_18()
  l0 = self.box_MissionCheckpointReach_6
  l1 = self.box_Reward_Phone_Call_Monitor_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|912845628", "912845628", "L32M020_Main", "box_MissionCheckpointReach_6.Out", "box_Reward_Phone_Call_Monitor_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_3()
  l0 = self.box_MultipleOR_4
  l1 = self.box_FreeRoam_Mission_End_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1561787075", "1561787075", "L32M020_Main", "box_MultipleOR_4.Out", "box_FreeRoam_Mission_End_3.End", l0, l1)
  l1:End()
end
function export:f_box_OnceOnly_v3_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_17
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367349"
  l0 = self.box_OnceOnly_v3_19
  l1 = self.box_PhoneCommunicationController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|901331911", "901331911", "L32M020_Main", "box_OnceOnly_v3_19.Out", "box_PhoneCommunicationController_17.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_12_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1092519839"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_21_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_21_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1160682618", "1160682618", "L32M020_Main", "box_FreeRoam_IOP_Interact_Gameplay_12.Interacted", "box_Ordered_Output_21.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Hack_Gameplay_1_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|806071669"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_27_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_27_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1190285737", "1190285737", "L32M020_Main", "box_FreeRoam_Hack_Gameplay_1.Hacked", "box_Ordered_Output_27.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_7_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L32.L32M020.Objectives.Objective010",
    item = "Objective",
    id = "550023"
  }
  l0 = self.box_FreeRoam_Beat_7
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|1326996770", "1326996770", "L32M020_Main", "box_FreeRoam_Beat_7.NewBeatStarted", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self.box_AI_IOPController_23
  l1.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AI_IOPController_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|657876084", "657876084", "L32M020_Main", "box_Get_Player_ID_25.Out", "box_AI_IOPController_23.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  l0.IOPBoxEntity = "9223372051557047701"
  l0.MapPoint = "9223372050033977051"
  l0 = self.box_MultipleOR_22
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M020\\L32M020.domino|@L32M020_Main|576727884", "576727884", "L32M020_Main", "box_MultipleOR_22.Out", "box_FreeRoam_IOP_Interact_Gameplay_12.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_18()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_18
  l0.ItemDb = "Items.9223372049814637209"
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_Security_Camera_Monitor_20()
  local l0
  l0 = self.box_Security_Camera_Monitor_20
  l0.CameraEntityList = self.AllCamsL32M020
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_1()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_1
  l0.CLO = "9223372061410603077"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372049813566537"
end
function export:OnEnter_box_FreeRoam_Beat_7()
  local l0
  l0 = self.box_FreeRoam_Beat_7
  l0.ProgressionLayer = "ProgressionLayers.9223372050033923853"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_FreeRoam_Mission_End_3()
  local l0
  l0 = self.box_FreeRoam_Mission_End_3
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049814637202"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_MultipleOR_22()
end
_compilerVersion = 4
