export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/Cinematic.Cinematic.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MapPointController_v4.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.Finished = DummyFunction
  self.PlayerEntity = nil
  self.LayerMain = "S18M050_Main"
  self.Main_Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M050.Objectives.Objective010",
    item = "Objective",
    id = "542994"
  }
  self.Camera_Reference = "9223372058236804380"
  self[51] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Loaded = self.f_51_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_49_Out
  self[21] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = self.f_21_Enabled
  l0.Disabled = self.f_21_Disabled
  l0.TagIsOwned = self.f_21_TagIsOwned
  l0.Has = self.f_21_Has
  l0.HasNOT = self.f_21_HasNOT
  self[24] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[24]
  l0._graph = self
  l0.Out = self.f_24_Out
  l0.MessageCompleted = DummyFunction
  self[41] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[28] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_28_Out
  self[12] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[3]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_3_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[30]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_30_Out
  self[17] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[22] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_22_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = DummyFunction
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = self.f_22_ObjectiveMessageFinished
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[18] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = self.f_18_Enabled
  l0.Disabled = self.f_18_Disabled
  l0.TagIsOwned = self.f_18_TagIsOwned
  l0.Has = self.f_18_Has
  l0.HasNOT = self.f_18_HasNOT
  self[44] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_44_Out
  self[48] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_48_Out
  self[40] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self[11] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[11]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_11_PostOut
  self[7] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Loaded = self.f_7_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_20_Out
  self[2] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.TagIsOwned = self.f_2_TagIsOwned
  l0.Has = self.f_2_Has
  l0.HasNOT = self.f_2_HasNOT
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[16] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_16_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[27] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_27_Out
  self[43] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[43]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self[31] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[31]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_31_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[50] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_50_Out
  self[42] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self[52] = cbox:CreateBox("domino/Library/common/Cinematic.Cinematic.lua")
  l0 = self[52]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Finished = self.f_52_Finished
  self[19] = cbox:CreateBox("domino/System/MapPointController_v4.lua")
  l0 = self[19]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_19_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.MessageCompleted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[5]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.MessageCompleted = DummyFunction
  self[33] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = self.f_33_Enabled
  l0.Disabled = self.f_33_Disabled
  l0.TagIsOwned = self.f_33_TagIsOwned
  l0.Has = self.f_33_Has
  l0.HasNOT = self.f_33_HasNOT
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
  l0 = self[10]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[20]
  l0:Input(0)
end
function export:CheckPoint_2()
  local l0
  l0 = self[20]
  l0:Input(1)
end
function export:CheckPoint_3()
  local l0
  l0 = self[20]
  l0:Input(2)
end
function export:CheckPoint_4()
  local l0
  l0 = self[20]
  l0:Input(3)
end
function export:CheckPoint_5()
  local l0
  self:en_5()
  l0 = self[5]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[10]
  l0:Input(0)
end
function export:f_51_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_29_Out_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(1)
end
function export:f_29_Out_1()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Condition(1)
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_21_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_29_Out_0
  l0.Out[1] = self.f_29_Out_1
  l0:In()
end
function export:f_21_Enabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Show()
end
function export:f_21_Has()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(0)
end
function export:f_21_HasNOT()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Enable()
end
function export:f_21_TagIsOwned()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Disable()
end
function export:f_24_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Condition(0)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_28_Out()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Hide()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_26_Out_0
  l0.Out[1] = self.f_26_Out_1
  l0:In()
end
function export:f_3_Hidden()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Objective = self.Main_Objective
  l0:IncrementObjective()
end
function export:f_30_Out()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Hide()
end
function export:f_45_Out_0()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(1)
end
function export:f_45_Out_1()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Condition(1)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_22_Disabled()
  local l0
  self = self._graph
  l0 = self[52]
  l0.SceneEntity = "9223372060283293249"
  l0.SequenceFile = "sequences/ScriptedEvents/graffitigoldengate.seq"
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:Start()
end
function export:f_22_ObjectiveMessageFinished()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Disable()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_18_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_18_Enabled()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Show()
end
function export:f_18_Has()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Input(0)
end
function export:f_18_HasNOT()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Enable()
end
function export:f_18_TagIsOwned()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:Disable()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0.Checkpoint = "CheckPoint_4"
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[17]
  l0:Input(1)
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Checkpoint = "CheckPoint_2"
  l0:In()
end
function export:f_47_Out_0()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_47_Out_1()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Condition(1)
end
function export:f_11_PostOut()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Objective = self.Main_Objective
  l0.IncrementalObjectiveTotal = 4
  l0:ShowNewObjective()
end
function export:f_46_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0:Input(1)
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = self[48]
  l0:Condition(1)
end
function export:f_7_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[51]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_26_Out_0()
  local l0
  self = self._graph
  self:en_22()
  l0 = self[22]
  l0:Enable()
end
function export:f_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0.Out[2] = self.f_15_Out_2
  l0.Out[3] = self.f_15_Out_3
  l0:In()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Show()
end
function export:f_2_Has()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_2_HasNOT()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_2_TagIsOwned()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Hide()
end
function export:f_16_Hidden()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Objective = self.Main_Objective
  l0:IncrementObjective()
end
function export:f_27_Out()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Hide()
end
function export:f_31_Hidden()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Objective = self.Main_Objective
  l0:IncrementObjective()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[42]
  l0.Checkpoint = "CheckPoint_3"
  l0:In()
end
function export:f_52_Finished()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:End()
end
function export:f_19_Hidden()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Objective = self.Main_Objective
  l0:IncrementObjective()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0:Condition(0)
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[50]
  l0:Condition(0)
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:HasProgressionTag()
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  self:en_18()
  l0 = self[18]
  l0:HasProgressionTag()
end
function export:f_15_Out_2()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:HasProgressionTag()
end
function export:f_15_Out_3()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:HasProgressionTag()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Condition(0)
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_45_Out_0
  l0.Out[1] = self.f_45_Out_1
  l0:In()
end
function export:f_33_Enabled()
  local l0
  self = self._graph
  self:en_31()
  l0 = self[31]
  l0:Show()
end
function export:f_33_Has()
  local l0
  self = self._graph
  l0 = self[30]
  l0:Input(0)
end
function export:f_33_HasNOT()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_33_TagIsOwned()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.ProgressionTag = "ProgressionTag.9223372049571486072"
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.MapPoint = "9223372048440160157"
end
function export:en_22()
  local l0
  l0 = self[22]
  l0.Objective = self.Main_Objective
end
function export:en_18()
  local l0
  l0 = self[18]
  l0.ProgressionTag = "ProgressionTag.9223372049571486070"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionTag = "ProgressionTag.9223372048440160165"
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.MapPoint = "9223372049571486062"
end
function export:en_31()
  local l0
  l0 = self[31]
  l0.MapPoint = "9223372050272288738"
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.MapPoint = "9223372049571486064"
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Checkpoint = "CheckPoint_5"
  l0.MissionLayer = self.LayerMain
  l0.TeamSpeak = "PhoneCommunicationSettingsDb.9223372049163244306"
  l0.ShowMissionComplete = 1
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.ProgressionTag = "ProgressionTag.9223372050272288904"
end
function export:Finished()
end
_compilerVersion = 4
