export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/IOPController.lua")
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
  cbox:RegisterBox("domino/System/RewardPhoneCallMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.ctOS_BOX = "9223372051557047701"
  self.Can_Exit = 0
  self.InCam1 = 0
  self.InCam2 = 0
  self.AllCamsL32M020 = {
    "9223372065424989959",
    "9223372065424990008"
  }
  self[18] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_18_Disabled
  l0.OnPhoneCallEnded = self.f_18_OnPhoneCallEnded
  self[15] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.MessageCompleted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[17]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[5] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
  self[23] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_23_IOPKickOutComplete
  self[26] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_26_Out
  self[20] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = self.f_20_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_20_OnEndExitAll
  self[6] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[19] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_19_Out
  l0.ResetOut = DummyFunction
  self[12] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_12_Interacted
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_1_Hacked
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[7]
  l0._graph = self
  l0.NewBeatStarted = self.f_7_NewBeatStarted
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[3]
  l0._graph = self
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
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
  self:en_7()
  l0 = self[7]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  l0 = self[5]
  l0.ProgressionLayer = "ProgressionLayers.9223372050033923853"
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:en_3()
  l0 = self[3]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_7()
  l0 = self[7]
  l0:StartNewBeat()
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0:In()
end
function export:f_18_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(0)
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:f_2_Out_2()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_23_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_27_Out_0()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(1)
end
function export:f_27_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_26_Out()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Disable()
end
function export:f_20_Enabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:f_20_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0.Out[2] = self.f_2_Out_2
  l0:In()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  self:en_20()
  l0 = self[20]
  l0:Enable()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0:In(0)
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:End()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367349"
  l0:StartCommunication()
end
function export:f_12_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0:In()
end
function export:f_1_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_27_Out_0
  l0.Out[1] = self.f_27_Out_1
  l0:In()
end
function export:f_7_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L32.L32M020.Objectives.Objective010",
    item = "Objective",
    id = "550023"
  }
  l0:ShowNewObjective()
end
function export:f_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[23]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.IOPBoxEntity = "9223372051557047701"
  l0.MapPoint = "9223372050033977051"
  l0:Start()
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.ItemDb = "Items.9223372049814637209"
end
function export:en_20()
  local l0
  l0 = self[20]
  l0.CameraEntityList = self.AllCamsL32M020
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.CLO = "9223372061410603077"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372049813566537"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.ProgressionLayer = "ProgressionLayers.9223372050033923853"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372049814637202"
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 1
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
