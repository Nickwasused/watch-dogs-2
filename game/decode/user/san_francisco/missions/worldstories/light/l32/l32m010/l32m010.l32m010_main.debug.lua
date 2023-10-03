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
  self._name = "L32M010_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main"
  self.PlayerEntity = nil
  self.Map_Point_Target = "9223372050077339801"
  self.Map_Point_Access = "9223372050077338846"
  self.VR_Exit_Node = "9223372050875848948"
  self.Security_Cam_IoP = "9223372052234861261"
  self.box_FreeRoam_Hack_Gameplay_17 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  l0._graph = self
  l0._name = "box_FreeRoam_Hack_Gameplay_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|138410820"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_FreeRoam_Hack_Gameplay_17_Hacked
  self.box_FreeRoam_Beat_7 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.debug.lua")
  l0 = self.box_FreeRoam_Beat_7
  l0._graph = self
  l0._name = "box_FreeRoam_Beat_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|239586436"
  l0.NewBeatStarted = self.f_box_FreeRoam_Beat_7_NewBeatStarted
  self.box_LayerMonitor_10 = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self.box_LayerMonitor_10
  l0._graph = self
  l0._name = "box_LayerMonitor_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|557951128"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_box_LayerMonitor_10_Loaded
  l0.Unloaded = DummyFunction
  self.box_PhoneCommunicationController_19 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_19
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|621694100"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|763391348"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_OnceOnly_v3_15 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_15
  l0._graph = self
  l0._name = "box_OnceOnly_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|813893070"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_15_Out
  l0.ResetOut = DummyFunction
  self.box_MultipleOR_13 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|833840856"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_FreeRoam_IOP_Interact_Gameplay_12 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.debug.lua")
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  l0._graph = self
  l0._name = "box_FreeRoam_IOP_Interact_Gameplay_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|848720937"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_FreeRoam_IOP_Interact_Gameplay_12_Interacted
  self.box_MissionMessageController_v3_8 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_8
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|948869004"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_8_MessageCompleted
  self.box_AI_IOPController_9 = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self.box_AI_IOPController_9
  l0._graph = self
  l0._name = "box_AI_IOPController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|962454298"
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_box_AI_IOPController_9_IOPKickOutComplete
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1190425318"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_Security_Camera_Monitor_14 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_14
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1663919992"
  l0.Enabled = self.f_box_Security_Camera_Monitor_14_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = self.f_box_Security_Camera_Monitor_14_OnEndExitCamera
  l0.OnEndExitAll = DummyFunction
  self.box_FreeRoam_Mission_End_1 = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.debug.lua")
  l0 = self.box_FreeRoam_Mission_End_1
  l0._graph = self
  l0._name = "box_FreeRoam_Mission_End_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1763827340"
  self.box_MissionCheckpointReach_4 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_4
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|2004318388"
  l0.Out = self.f_box_MissionCheckpointReach_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Reward_Phone_Call_Monitor_5 = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0._graph = self
  l0._name = "box_Reward_Phone_Call_Monitor_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|2138731665"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Reward_Phone_Call_Monitor_5_Disabled
  l0.OnPhoneCallEnded = self.f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1200166236", "1200166236", "L32M010_Main", "CheckPoint_0", "box_FreeRoam_Beat_7.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_LayerMonitor_10
  l0.ProgressionLayer = "ProgressionLayers.9223372049068555831"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1746411447", "1746411447", "L32M010_Main", "CheckPoint_1", "box_LayerMonitor_10.Enable", self, l0)
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1981246486", "1981246486", "L32M010_Main", "CheckPoint_2", "box_FreeRoam_Mission_End_1.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:OnEnter_box_FreeRoam_Beat_7()
  l0 = self.box_FreeRoam_Beat_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|312217631", "312217631", "L32M010_Main", "In", "box_FreeRoam_Beat_7.StartNewBeat", self, l0)
  l0:StartNewBeat()
end
function export:f_box_FreeRoam_Hack_Gameplay_17_Hacked()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1013647578"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|65072962", "65072962", "L32M010_Main", "box_FreeRoam_Hack_Gameplay_17.Hacked", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_FreeRoam_Beat_7_NewBeatStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_8
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L32.L32M010.Objectives.Objective010",
    item = "Objective",
    id = "550019"
  }
  l0 = self.box_FreeRoam_Beat_7
  l1 = self.box_MissionMessageController_v3_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|402410632", "402410632", "L32M010_Main", "box_FreeRoam_Beat_7.NewBeatStarted", "box_MissionMessageController_v3_8.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Get_Player_ID_6_Out()
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1699640066", "1699640066", "L32M010_Main", "box_Get_Player_ID_6.Out", "box_AI_IOPController_9.TriggerIOPDisconnectScreenAndKickOut", clone, l0)
  l0:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_box_LayerMonitor_10_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_LayerMonitor_10
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|219392885", "219392885", "L32M010_Main", "box_LayerMonitor_10.Loaded", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_14()
  l0 = self.box_MultipleOR_2
  l1 = self.box_Security_Camera_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|823627384", "823627384", "L32M010_Main", "box_MultipleOR_2.Out", "box_Security_Camera_Monitor_14.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_OnceOnly_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_19
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367348"
  l0 = self.box_OnceOnly_v3_15
  l1 = self.box_PhoneCommunicationController_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|705612018", "705612018", "L32M010_Main", "box_OnceOnly_v3_15.Out", "box_PhoneCommunicationController_19.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Mission_End_1()
  l0 = self.box_MultipleOR_13
  l1 = self.box_FreeRoam_Mission_End_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|589943467", "589943467", "L32M010_Main", "box_MultipleOR_13.Out", "box_FreeRoam_Mission_End_1.End", l0, l1)
  l1:End()
end
function export:f_box_FreeRoam_IOP_Interact_Gameplay_12_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1677286451"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|173104391", "173104391", "L32M010_Main", "box_FreeRoam_IOP_Interact_Gameplay_12.Interacted", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_8_MessageCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MissionMessageController_v3_8
  l1 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1493821352", "1493821352", "L32M010_Main", "box_MissionMessageController_v3_8.MessageCompleted", "box_MultipleOR_11.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AI_IOPController_9_IOPKickOutComplete()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_AI_IOPController_9
  l1 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1630310903", "1630310903", "L32M010_Main", "box_AI_IOPController_9.IOPKickOutComplete", "box_MultipleOR_13.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_18_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1531215355", "1531215355", "L32M010_Main", "box_Ordered_Output_18.Out", "box_MultipleOR_2.Input", clone, l0)
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
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1219541196", "1219541196", "L32M010_Main", "box_Ordered_Output_18.Out", "box_MultipleOR_11.Input", clone, l0)
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|545385620", "545385620", "L32M010_Main", "box_Ordered_Output_18.Out", "box_FreeRoam_Hack_Gameplay_17.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|265579136", "265579136", "L32M010_Main", "box_Ordered_Output_16.Out", "box_MultipleOR_2.Input", clone, l0)
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
  l0 = self.box_MissionCheckpointReach_4
  l0.CheckpointList = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|783274326", "783274326", "L32M010_Main", "box_Ordered_Output_16.Out", "box_MissionCheckpointReach_4.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  l0.IOPBoxEntity = "9223372052234783018"
  l0.MapPoint = "9223372053942618823"
  l0 = self.box_MultipleOR_11
  l1 = self.box_FreeRoam_IOP_Interact_Gameplay_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|347926121", "347926121", "L32M010_Main", "box_MultipleOR_11.Out", "box_FreeRoam_IOP_Interact_Gameplay_12.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_14_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FreeRoam_Hack_Gameplay_17()
  l0 = self.box_Security_Camera_Monitor_14
  l1 = self.box_FreeRoam_Hack_Gameplay_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|968174844", "968174844", "L32M010_Main", "box_Security_Camera_Monitor_14.Enabled", "box_FreeRoam_Hack_Gameplay_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_14_OnEndExitCamera()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|964775977"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_18_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_18_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_18_Out_2
  l0 = self.box_Security_Camera_Monitor_14
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1761224843", "1761224843", "L32M010_Main", "box_Security_Camera_Monitor_14.OnEndExitCamera", "box_Ordered_Output_18.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Security_Camera_Monitor_14()
  l0 = self.box_Security_Camera_Monitor_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|224991742", "224991742", "L32M010_Main", "box_Ordered_Output_3.Out", "box_Security_Camera_Monitor_14.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|1125084087", "1125084087", "L32M010_Main", "box_Ordered_Output_3.Out", "box_OnceOnly_v3_15.In", clone, l0)
  l0:In(0)
end
function export:f_box_MissionCheckpointReach_4_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_5()
  l0 = self.box_MissionCheckpointReach_4
  l1 = self.box_Reward_Phone_Call_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|2083740675", "2083740675", "L32M010_Main", "box_MissionCheckpointReach_4.Out", "box_Reward_Phone_Call_Monitor_5.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Reward_Phone_Call_Monitor_5_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|363402562"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|2090074256", "2090074256", "L32M010_Main", "box_Reward_Phone_Call_Monitor_5.Disabled", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:f_box_Reward_Phone_Call_Monitor_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:OnEnter_box_Reward_Phone_Call_Monitor_5()
  l0 = self.box_Reward_Phone_Call_Monitor_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Light\\L32\\L32M010\\L32M010.domino|@L32M010_Main|603272904", "603272904", "L32M010_Main", "box_Reward_Phone_Call_Monitor_5.OnPhoneCallEnded", "box_Reward_Phone_Call_Monitor_5.Disable", l0, l0)
  l0:Disable()
end
function export:OnEnter_box_FreeRoam_Hack_Gameplay_17()
  local l0
  l0 = self.box_FreeRoam_Hack_Gameplay_17
  l0.CLO = "9223372050077392704"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372049192601383"
end
function export:OnEnter_box_FreeRoam_Beat_7()
  local l0
  l0 = self.box_FreeRoam_Beat_7
  l0.ProgressionLayer = "ProgressionLayers.9223372049068555831"
  l0.Checkpoint = "CheckPoint_0"
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MultipleOR_11()
end
function export:OnEnter_box_Security_Camera_Monitor_14()
  local l0
  l0 = self.box_Security_Camera_Monitor_14
  l0.CameraEntity = "9223372052234861261"
end
function export:OnEnter_box_FreeRoam_Mission_End_1()
  local l0
  l0 = self.box_FreeRoam_Mission_End_1
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:OnEnter_box_Reward_Phone_Call_Monitor_5()
  local l0
  l0 = self.box_Reward_Phone_Call_Monitor_5
  l0.ItemDb = "Items.9223372049814637208"
end
_compilerVersion = 4
