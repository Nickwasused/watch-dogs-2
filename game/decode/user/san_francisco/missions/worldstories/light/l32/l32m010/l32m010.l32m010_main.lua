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
  self.Map_Point_Target = "9223372050077339801"
  self.Map_Point_Access = "9223372050077338846"
  self.VR_Exit_Node = "9223372050875848948"
  self.Security_Cam_IoP = "9223372052234861261"
  self[17] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_17_Hacked
  self[7] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[7]
  l0._graph = self
  l0.NewBeatStarted = self.f_7_NewBeatStarted
  self[10] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_10_Loaded
  l0.Unloaded = DummyFunction
  self[19] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[19]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[15] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_15_Out
  l0.ResetOut = DummyFunction
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[12] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_12_Interacted
  self[8] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_8_MessageCompleted
  self[9] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_9_IOPKickOutComplete
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[14] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = self.f_14_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = self.f_14_OnEndExitCamera
  l0.OnEndExitAll = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[1]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[5] = cbox:CreateBox("domino/System/RewardPhoneCallMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.OnPhoneCallEnded = self.f_5_OnPhoneCallEnded
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
  l0 = self[10]
  l0.ProgressionLayer = "ProgressionLayers.9223372049068555831"
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
  self:en_7()
  l0 = self[7]
  l0:StartNewBeat()
end
function export:f_17_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_7_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L32.L32M010.Objectives.Objective010",
    item = "Objective",
    id = "550019"
  }
  l0:ShowNewObjective()
end
function export:f_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[9]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_10_Loaded()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367348"
  l0:StartCommunication()
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:End()
end
function export:f_12_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_8_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_9_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_18_Out_2()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Stop()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[4]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.IOPBoxEntity = "9223372052234783018"
  l0.MapPoint = "9223372053942618823"
  l0:Start()
end
function export:f_14_Enabled()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Start()
end
function export:f_14_OnEndExitCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0.Out[2] = self.f_18_Out_2
  l0:In()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:In(0)
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_5_OnPhoneCallEnded()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.CLO = "9223372050077392704"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.ProgressionTag = "ProgressionTag.9223372049192601383"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.ProgressionLayer = "ProgressionLayers.9223372049068555831"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.CameraEntity = "9223372052234861261"
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.ItemDb = "Items.9223372049814637208"
end
_compilerVersion = 4
