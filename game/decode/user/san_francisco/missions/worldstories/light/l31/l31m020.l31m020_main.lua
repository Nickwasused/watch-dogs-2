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
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1240006807.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2860539964.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.L31M020_Cam = "9223372058410655567"
  self.Sleeping = nil
  self.CLO_9223372058100356712 = "9223372058100356712"
  self.SoundEntity = "9223372071045475312"
  self[8] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[23] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_23_Started
  l0.Finished = DummyFunction
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
  self[5] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[7] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[20] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[20]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = self.f_15_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = self.f_15_OnEndExitCamera
  l0.OnEndExitAll = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[16] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_16_Out
  l0.ResetOut = DummyFunction
  self[18] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_18_Hacked
  self[12] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_12_Loaded
  l0.Unloaded = DummyFunction
  self[14] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[14]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_14_Interacted
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[22] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_22_Started
  l0.Finished = DummyFunction
  self[21] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_21_Started
  l0.Finished = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[2] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[2]
  l0._graph = self
  l0.NewBeatStarted = self.f_2_NewBeatStarted
  self[11] = cbox:CreateBox("domino/System/IOPController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.StartCompleted = DummyFunction
  l0.StartEmptyRoomCompleted = DummyFunction
  l0.StopEmptyRoomCompleted = DummyFunction
  l0.EndForced = DummyFunction
  l0.SendEventCompleted = DummyFunction
  l0.IOPKickOutComplete = self.f_11_IOPKickOutComplete
  self[9] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[9]
  l0._graph = self
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
  l0 = self[12]
  l0.ProgressionLayer = "ProgressionLayers.9223372049634201760"
  l0:Enable()
end
function export:CheckPoint_2()
  local l0
  self:en_9()
  l0 = self[9]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_2()
  l0 = self[2]
  l0:StartNewBeat()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0:In()
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Text = {
    section = "MISSIONS.WORLD MISSIONS.IOP.CHILDS_PLAY.OBJECTS.Hackables",
    item = "Router",
    id = "316615"
  }
  l0.TotalTime = 10
  l0:Start()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Seconds = 10
  l0:Start()
end
function export:f_23_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_24_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Seconds = 2
  l0:Start()
end
function export:f_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity = self.SoundEntity
  l0.SoundId = "soundbinary/2860539964.bnk"
  l0:Play()
end
function export:f_10_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[11]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_15_Enabled()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Start()
end
function export:f_15_OnEndExitCamera()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Entity = self.SoundEntity
  l0.SoundId = "soundbinary/2860539964.bnk"
  l0:Play()
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373738"
  l0:StartCommunication()
end
function export:f_18_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0:In()
end
function export:f_12_Loaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_14_Interacted()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Entity = self.SoundEntity
  l0.SoundId = "soundbinary/1240006807.bnk"
  l0:Play()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.IOPBoxEntity = "9223372049726250275"
  l0.MapPoint = "9223372049784607343"
  l0:Start()
end
function export:f_22_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0.Out[2] = self.f_19_Out_2
  l0:In()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_21_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:End()
end
function export:f_2_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L31.L31M020.ActivationObjective",
    item = "ActivationObjective",
    id = "550173"
  }
  l0:ShowNewObjective()
end
function export:f_11_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_19_Out_2()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Stop()
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.CameraEntity = "9223372058410655567"
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.CLO = "9223372058100356713"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionLayer = "ProgressionLayers.9223372049634201760"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Checkpoint = "CheckPoint_2"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
_compilerVersion = 4
