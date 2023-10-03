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
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
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
  self[22] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[22]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[16] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_16_Interacted
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
  self[14] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_14_Loaded
  l0.Unloaded = DummyFunction
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[2]
  l0._graph = self
  l0.NewBeatStarted = self.f_2_NewBeatStarted
  self[18] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_18_Out
  l0.ResetOut = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[4]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_4_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[1] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[7] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_7_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[23] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_23_Completed
  self[20] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_20_Hacked
  self[10] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[6]
  l0._graph = self
  self[13] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_13_IOPKickOutComplete
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
  self:en_2()
  l0 = self[2]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[14]
  l0.ProgressionLayer = "ProgressionLayers.9223372049691744218"
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:en_6()
  l0 = self[6]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_2()
  l0 = self[2]
  l0:StartNewBeat()
end
function export:f_16_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:f_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[13]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Start()
end
function export:f_17_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0:In()
end
function export:f_14_Loaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[18]
  l0:In(0)
end
function export:f_2_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M030.Objectives.Objective010",
    item = "Objective",
    id = "550111"
  }
  l0:ShowNewObjective()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367346"
  l0:StartCommunication()
end
function export:f_4_OnCommunicationStarted()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.IOPBoxEntity = self.ctOS_IOP_Box_GenericAnimatedObjectInteractive_6
  l0.MapPoint = self.NotActivatedByDefault_8
  l0:Start()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Stop()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:End()
end
function export:f_7_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367345"
  l0:TryStartCommunication()
end
function export:f_23_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_20_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L28.L28M030.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "694070"
  }
  l0.TotalTime = 5
  l0:Start()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_13_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.CameraEntityList = self.L28M030_AllCams
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionLayer = "ProgressionLayers.9223372049691744218"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Trigger = self.L28M030_ShapeTrigger_Cemetery_TS
  l0.CheckNow = 1
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.CLO = self.L28M030_CityLifeObject_Server
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357367347"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
