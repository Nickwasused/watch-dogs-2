export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:LoadResource("soundbinary/1153372685.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Laptop_HackableEntity_L27M010 = "9223372049956831201"
  self.L27_StoryIcon_0 = "9223372049956831199"
  self.CLO_NPC_Target02 = "9223372050091869526"
  self.CLO_NPC_Target01 = "9223372050091710702"
  self.CLO_NPC_Target03 = "9223372050091869531"
  self.MissionArea_Target01 = "9223372050091763617"
  self.MissionArea_Target02 = "9223372050091869528"
  self.MissionArea_Target03 = "9223372050091869530"
  self.Target1 = nil
  self[36] = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self[36]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_36_Completed
  self[8] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_8_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_6_Out
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_16_Out
  self[14] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_14_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Loaded = self.f_18_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[43] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[43]
  l0._graph = self
  self[44] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_44_Stopped
  l0.Escaped = self.f_44_Escaped
  l0.LeftArea = DummyFunction
  self[32] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[32]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_32_PostOut
  self[24] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_24_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[40] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_40_Unloaded
  l0.Reseted = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_30_Out
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[31] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[31]
  l0._graph = self
  l0.Loaded = self.f_31_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[39] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.MessageCompleted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_15_EnterRadius
  l0.ExitRadius = DummyFunction
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[38] = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_38_Completed
  self[34] = cbox:CreateBox("domino/System/HackGameplayController.lua")
  l0 = self[34]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_34_Completed
  self[42] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[42]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_42_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[11] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[11]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_11_PostOut
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
  l0 = self[30]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[18]
  l0.LayerName = "L27M010_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[30]
  l0:Input(0)
end
function export:f_36_Completed()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(2)
end
function export:f_8_EnterRadius()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(0)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective",
    id = "550090"
  }
  l0:IncrementObjective()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0.Out[2] = self.f_12_Out_2
  l0.Out[3] = self.f_12_Out_3
  l0.Out[4] = self.f_12_Out_4
  l0.Out[5] = self.f_12_Out_5
  l0.Out[6] = self.f_12_Out_6
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SoundId = "soundbinary/1153372685.bnk"
  l0:Start()
end
function export:f_14_EnterRadius()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(1)
end
function export:f_18_Loaded()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_44_Escaped()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Stop()
end
function export:f_44_Stopped()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(0)
end
function export:f_32_PostOut()
  local l0
  self = self._graph
  l0 = self[7]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:f_24_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective_B",
    id = "685213"
  }
  l0:ShowNewObjective()
end
function export:f_40_Unloaded()
  local l0
  self = self._graph
  l0 = self[43]
  l0:Succeed()
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0.LayerName = "L27M010_Main"
  l0:Load()
end
function export:f_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0.Out[2] = self.f_13_Out_2
  l0:In()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_12_Out_2()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_12_Out_3()
  local l0
  self = self._graph
  l0 = self[38]
  l0.HackCategoryType = "Contextual"
  l0.CLO = self.CLO_NPC_Target01
  l0.UseStoryIcon = 1
  l0:Start()
end
function export:f_12_Out_4()
  local l0
  self = self._graph
  l0 = self[34]
  l0.HackCategoryType = "Contextual"
  l0.CLO = self.CLO_NPC_Target02
  l0.UseStoryIcon = 1
  l0:Start()
end
function export:f_12_Out_5()
  local l0
  self = self._graph
  l0 = self[36]
  l0.HackCategoryType = "Contextual"
  l0.CLO = self.CLO_NPC_Target03
  l0.UseStoryIcon = 1
  l0:Start()
end
function export:f_12_Out_6()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective",
    id = "550090"
  }
  l0:Enable()
end
function export:f_31_Loaded()
  local l0
  self = self._graph
  l0 = self[32]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.LIGHT.L27.L27M010.Objectives.Objective010",
    item = "Objective",
    id = "550090"
  }
  l0.IncrementalObjectiveTotal = 3
  l0:ShowNewObjective()
end
function export:f_39_Out()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Start()
end
function export:f_15_EnterRadius()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Input(2)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050357367120"
  l0:StartCommunication()
end
function export:f_38_Completed()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_34_Completed()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_42_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[40]
  l0.LayerName = "L27M010_Main"
  l0:Unload()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_13_Out_2()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_11_PostOut()
  local l0
  self = self._graph
  l0 = self[22]
  l0:Input(1)
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.TargetEntity = "9223372055539389961"
  l0.Radius = 10
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.TargetEntity = "9223372055539389963"
  l0.Radius = 5
  l0.CheckDistance3D = 1
end
function export:en_44()
  local l0
  l0 = self[44]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372067295950309"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.TargetEntity = "9223372055539389965"
  l0.Radius = 7
  l0.CheckDistance3D = 1
end
_compilerVersion = 4
