export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
  cbox:RegisterBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
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
  self[21] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_21_Out
  self[7] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[1]
  l0._graph = self
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[49] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[17] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_17_OnEndExitAll
  self[6] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[22] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_22_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[18] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_18_Interacted
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[3]
  l0._graph = self
  l0.NewBeatStarted = self.f_3_NewBeatStarted
  self[20] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_20_Loaded
  l0.Unloaded = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_5_Hacked
  self[11] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_11_Out
  l0.ResetOut = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[8]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_8_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[47] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_47_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[19] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_19_IOPKickOutComplete
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
  self:en_3()
  l0 = self[3]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[20]
  l0.ProgressionLayer = "ProgressionLayers.9223372050359526708"
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:en_1()
  l0 = self[1]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_3()
  l0 = self[3]
  l0:StartNewBeat()
end
function export:f_21_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:End()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_4_Out_2()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Stop()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.IOPBoxEntity = "9223372052773862054"
  l0.MapPoint = "9223372073068710710"
  l0:Start()
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[49]
  l0.Text = {
    section = "POPUPS.MULTIPLAYER",
    item = "Uploading",
    id = "14998"
  }
  l0.TotalTime = 10
  l0:Start()
end
function export:f_23_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Seconds = 10
  l0:Start()
end
function export:f_14_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[19]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:f_17_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0.Out[2] = self.f_4_Out_2
  l0:In()
end
function export:f_6_Enter()
  local l0
  self = self._graph
  l0 = self[8]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373373"
  l0:TryStartCommunication()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_22_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Seconds = 2
  l0:Start()
end
function export:f_12_Out()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_18_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_3_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L17.L17M020.ActivationObjective",
    item = "ActivationObjective",
    id = "457763"
  }
  l0:ShowNewObjective()
end
function export:f_20_Loaded()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(0)
end
function export:f_5_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373375"
  l0:StartCommunication()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_8_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_47_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_19_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(1)
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In(0)
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367621"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.CameraEntityList = self.AllCamsL17M020
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Trigger = "9223372055400838816"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ProgressionLayer = "ProgressionLayers.9223372050359526708"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.CLO = "9223372055400837468"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
_compilerVersion = 4
