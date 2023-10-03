export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.ctOS_BOX = "9223372051557050701"
  self.Security_Cam = "9223372050077508269"
  self.Map_Icon_Access = "9223372050077338850"
  self.Map_Icon_Target = "9223372048502957679"
  self.PlayerEntity = "20"
  self.Cam2 = "9223372056641968010"
  self.Answering_Machine = "9223372056705199828"
  self.Oscilloscope = "9223372057381670701"
  self.Wave_Generator = "9223372057381670702"
  self.Cam1 = "9223372056705199827"
  self.AllCamsL08M010 = {
    "9223372056641968010",
    "9223372056705199827"
  }
  self[30] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = self.f_30_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[5]
  l0._graph = self
  l0.NewBeatStarted = self.f_5_NewBeatStarted
  self[26] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_26_Out
  self[13] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[13]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_13_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_22_Loaded
  l0.Unloaded = DummyFunction
  self[19] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[19]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_19_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_29_Out
  self[21] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_21_Disabled
  l0.OnPhoneCallEnded = self.f_21_OnPhoneCallEnded
  self[32] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = self.f_32_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_32_OnEndExitAll
  self[31] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[25] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_25_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[24] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_24_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_14_MessageCompleted
  self[15] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_15_Hacked
  self[18] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_18_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[2]
  l0._graph = self
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_35_Out
  self[27] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_27_IOPKickOutComplete
  self[33] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_33_Has
  l0.HasNOT = self.f_33_HasNOT
  self[23] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_23_Out
  l0.ResetOut = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[34]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_34_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[10]
  l0._graph = self
  l0.NewBeatStarted = self.f_10_NewBeatStarted
  self[9] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[9]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[4] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_4_Interacted
  self[12] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Locate_Gameplay.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Located = self.f_12_Located
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_3_Hacked
  self[11] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_11_Disabled
  l0.OnPhoneCallEnded = self.f_11_OnPhoneCallEnded
  self[17] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[17]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_17_OnCommunicationFinished
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
  self:en_5()
  l0 = self[5]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_10()
  l0 = self[10]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self[22]
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957724"
  l0:Enable()
end
function export:CheckPoint_3()
  local l0
  self:en_2()
  l0 = self[2]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[25]
  l0.Seconds = 15
  l0:Start()
end
function export:f_30_Out()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Enable()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.CLO = "9223372048502957674"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372048502958913"
  l0:Start()
end
function export:f_5_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[5]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[33]
  l0.ProgressionTag = "ProgressionTag.9223372048502958913"
  l0:HasProgressionTag()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(0)
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367114"
  l0:StartCommunication()
end
function export:f_13_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(0)
end
function export:f_22_Loaded()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(0)
end
function export:f_19_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.IOPBoxEntity = "9223372051557050701"
  l0.MapPoint = "9223372050077338850"
  l0:Start()
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050495846404"
  l0:StartCommunication()
end
function export:f_21_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_32_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Start()
end
function export:f_32_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0.Out[2] = self.f_8_Out_2
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_25_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056441907557"
  l0:StartCommunication()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(0)
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[29]
  l0:Input(1)
end
function export:f_8_Out_2()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Stop()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_14_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[12]
  l0.CLO = "9223372048502957674"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.DistrictsDB = "Districts.9223372048308079976"
  l0:Start()
end
function export:f_36_Out()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(1)
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0.CheckpointList = "CheckPoint_2"
  l0:In()
end
function export:f_15_Hacked()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_28_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[27]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_18_EnterRadius()
  local l0
  self = self._graph
  l0 = self[19]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367112"
  l0:TryStartCommunication()
end
function export:f_35_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:StartNewBeat()
end
function export:f_27_IOPKickOutComplete()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:End()
end
function export:f_33_Has()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_36_Out
  l0:In()
end
function export:f_33_HasNOT()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M001.Objectives.Objective010",
    item = "Objective",
    id = "658898"
  }
  l0:ShowNewObjective()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367113"
  l0:StartCommunication()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = self[23]
  l0:In(0)
end
function export:f_34_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 2
  l0:Start()
end
function export:f_10_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M010.Objectives.Objective010",
    item = "Objective",
    id = "457643"
  }
  l0:ShowNewObjective()
end
function export:f_4_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_12_Located()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L08.L08M001.Objectives.Objective011",
    item = "Objective",
    id = "659015"
  }
  l0:UpdateObjective()
end
function export:f_3_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_11_Disabled()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(1)
end
function export:f_11_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Disable()
end
function export:f_17_OnCommunicationFinished()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:StartNewBeat()
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957724"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.ItemDb = "Items.9223372050357367125"
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.CameraEntityList = self.AllCamsL08M010
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.TargetEntity = "9223372050077338850"
  l0.Radius = 30
  l0.CheckDistance3D = 1
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367115"
  l0.Checkpoint = "CheckPoint_3"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.ProgressionLayer = "ProgressionLayers.9223372048502957724"
  l0.Checkpoint = "CheckPoint_1"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.CLO = self.Answering_Machine
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.ItemDb = "Items.9223372059111819039"
end
_compilerVersion = 4
