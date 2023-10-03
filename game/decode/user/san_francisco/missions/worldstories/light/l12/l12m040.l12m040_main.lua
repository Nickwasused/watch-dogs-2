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
  self[8] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_8_Loaded
  l0.Unloaded = DummyFunction
  self[28] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_IOP_Interact_Gameplay.lua")
  l0 = self[28]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_28_Interacted
  self[20] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[15] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_15_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[34] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[34]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  self[27] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Mission_End.lua")
  l0 = self[27]
  l0._graph = self
  self[24] = cbox:CreateBox("domino/System/DistanceBasedProgressBarController_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.WasReset = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_23_Disabled
  l0.Enter = self.f_23_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[17] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[17]
  l0._graph = self
  l0.NewBeatStarted = self.f_17_NewBeatStarted
  self[32] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Hack_Gameplay.lua")
  l0 = self[32]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_32_Hacked
  self[26] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_26_Out
  self[30] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_30_Out
  l0.ResetOut = DummyFunction
  self[29] = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = self.f_29_Enabled
  l0.Disabled = DummyFunction
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_29_OnEndExitAll
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
  self[14] = cbox:CreateBox("domino/System/LineOfSightMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_14_Disabled
  l0.LOSAcquired = self.f_14_LOSAcquired
  l0.LOSLost = DummyFunction
  self[19] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[21] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[1] = cbox:CreateBox("domino/System/LocateGameplayController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_1_Completed
  self[22] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[22]
  l0._graph = self
  l0.NewBeatStarted = self.f_22_NewBeatStarted
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
  self:en_17()
  l0 = self[17]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_22()
  l0 = self[22]
  l0:FromCheckpoint()
end
function export:CheckPoint_2()
  local l0
  l0 = self[8]
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506740"
  l0:Enable()
end
function export:CheckPoint_3()
  local l0
  self:en_27()
  l0 = self[27]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_17()
  l0 = self[17]
  l0:StartNewBeat()
end
function export:f_8_Loaded()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(0)
end
function export:f_28_Interacted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:In()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:StartNewBeat()
end
function export:f_15_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = self[30]
  l0:In(0)
end
function export:f_9_IOPKickOutComplete()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(1)
end
function export:f_31_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CheckpointList = "CheckPoint_2"
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.TargetEntity = self.ctOS_IOP_Box_OQC_GenericAnimatedObjectInteractive_2
  l0.DistrictDB = "Districts.9223372048308080063"
  l0.UseStoryIcon = 1
  l0:Start()
end
function export:f_23_Disabled()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Close()
end
function export:f_23_Enter()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Disable()
end
function export:f_17_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M040.Objectives.Objective010",
    item = "Objective",
    id = "603654"
  }
  l0:ShowNewObjective()
end
function export:f_32_Hacked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_26_Out()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:End()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Text = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M040.EXTRA.Download Feedback",
    item = "Specific_Download",
    id = "694074"
  }
  l0.TotalTime = 10
  l0:Start()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Seconds = 10
  l0:Start()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[34]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357373371"
  l0:StartCommunication()
end
function export:f_33_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_33_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_33_Out_2()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Stop()
end
function export:f_29_Enabled()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Start()
end
function export:f_29_OnEndExitAll()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_33_Out_0
  l0.Out[1] = self.f_33_Out_1
  l0.Out[2] = self.f_33_Out_2
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0.IOPBoxEntity = self.L12M040_ctOS_IOP_Box_GenericAnimatedObjectInteractive_8
  l0.MapPoint = self.L12M040_NotActivatedByDefault_0
  l0:Start()
end
function export:f_14_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SoundId = "soundbinary/4039650263.bnk"
  l0:Start()
end
function export:f_14_LOSAcquired()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Seconds = 2
  l0:Start()
end
function export:f_5_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_18_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l1 = self[9]
  l1.PlayerEntity = l0.PlayerID
  l1:TriggerIOPDisconnectScreenAndKickOut()
end
function export:f_1_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_1_Started()
  local l0
  self = self._graph
  self:en_23()
  l0 = self[23]
  l0:Enable()
end
function export:f_22_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L12.L12M040.Objectives.Objective020",
    item = "Objective",
    id = "686923"
  }
  l0:ShowNewObjective()
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.Teamspeak = "PhoneCommunicationSettingsDb.9223372050357370925"
  l0.Checkpoint = "CheckPoint_3"
  l0.ShowMissionComplete = 0
  l0.BypassObjectiveCompleteMessage = 0
end
function export:en_23()
  local l0
  l0 = self[23]
  l0.Trigger = self.L12M040_ProximityTrigger_MarcusDialog
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506740"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.CLO = self.L12M040_CLO_Server
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.CameraEntityList = self.AllCamsL12M040
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Target = self.L12M040_ctOS_IOP_Box_GenericAnimatedObjectInteractive_8
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.ProgressionLayer = "ProgressionLayers.9223372048624506740"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
