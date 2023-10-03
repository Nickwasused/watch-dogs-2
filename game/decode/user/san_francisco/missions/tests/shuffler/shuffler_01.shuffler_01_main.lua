export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhotoDetectionMonitor.lua")
  cbox:RegisterBox("domino/System/PlayerRandomizedTimeOfDayMonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Hour02 = 0
  self.Hour01 = 0
  self.Minute01 = 0
  self.Minute02 = 0
  self[65] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[65]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_14_Has
  l0.HasNOT = DummyFunction
  self[107] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[107]
  l0._graph = self
  self[96] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[96]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[89] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[89]
  l0._graph = self
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_89_Output_0
  l0.Output[1] = self.f_89_Output_1
  l0.Output[2] = self.f_89_Output_2
  l0.Output[3] = self.f_89_Output_3
  l0.Output[4] = self.f_89_Output_4
  l0.Output[5] = self.f_89_Output_5
  l0.Output[6] = self.f_89_Output_6
  l0.Output[7] = self.f_89_Output_7
  l0.Output[8] = self.f_89_Output_8
  l0.Output[9] = self.f_89_Output_9
  l0.OutOfRange = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PhotoDetectionMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_1_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self[87] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[87]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[27] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_27_Disabled
  l0.Loaded = self.f_27_Loaded
  l0.Unloaded = self.f_27_Unloaded
  self[73] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[73]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[86] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[86]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_15_Has
  l0.HasNOT = DummyFunction
  self[94] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[94]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[56] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[56]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_47_Out
  self[33] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[33]
  l0._graph = self
  l0.StartCommunicationOut = self.f_33_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_33_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_12_RewardsExecuted
  self[69] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[69]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[31] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[31]
  l0._graph = self
  l0.StartCommunicationOut = self.f_31_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_31_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[91] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[91]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_7_HasNOT
  self[67] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[67]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
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
  self[95] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[95]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/PhotoDetectionMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_4_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self[46] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_46_HasNOT
  self[105] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[105]
  l0._graph = self
  l0.Out = self.f_105_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[100] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[100]
  l0._graph = self
  l0.Out = self.f_100_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[104] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[104]
  l0._graph = self
  l0.Out = self.f_104_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[79] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[79]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[32] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[32]
  l0._graph = self
  l0.StartCommunicationOut = self.f_32_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_32_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[60] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[60]
  l0._graph = self
  l0._DynamicAnchors = {Output = 6}
  l0.Output[0] = self.f_60_Output_0
  l0.Output[1] = self.f_60_Output_1
  l0.Output[2] = self.f_60_Output_2
  l0.Output[3] = self.f_60_Output_3
  l0.Output[4] = self.f_60_Output_4
  l0.Output[5] = self.f_60_Output_5
  l0.OutOfRange = DummyFunction
  self[54] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[54]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = DummyFunction
  self[70] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[70]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[39] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_39_Out
  self[84] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[84]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[92] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[92]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[80] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[80]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[49] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[49]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[28] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_28_Disabled
  l0.Loaded = self.f_28_Loaded
  l0.Unloaded = self.f_28_Unloaded
  self[50] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[30] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[30]
  l0._graph = self
  l0.StartCommunicationOut = self.f_30_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_30_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_10_RewardsExecuted
  self[19] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[19]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_19_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[90] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[90]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[53]
  l0._graph = self
  self[38] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[38]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_38_Out
  self[98] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[98]
  l0._graph = self
  l0.Enabled = self.f_98_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_98_Executed
  self[66] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[66]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[101] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[101]
  l0._graph = self
  l0.Out = self.f_101_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_8_HasNOT
  self[29] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_29_Disabled
  l0.Loaded = self.f_29_Loaded
  l0.Unloaded = self.f_29_Unloaded
  self[5] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_5_HasNOT
  self[93] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[93]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_6_HasNOT
  self[35] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_35_Out
  self[71] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[71]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[24]
  l0._graph = self
  self[74] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[74]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[57] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Output = 3}
  l0.Output[0] = self.f_57_Output_0
  l0.Output[1] = self.f_57_Output_1
  l0.Output[2] = self.f_57_Output_2
  l0.OutOfRange = DummyFunction
  self[44] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[44]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_44_Has
  l0.HasNOT = self.f_44_HasNOT
  self[77] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[77]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[102] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[102]
  l0._graph = self
  l0.Out = self.f_102_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PhotoDetectionMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_2_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self[76] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[76]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[103] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[103]
  l0._graph = self
  l0.Out = self.f_103_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[58] = cbox:CreateBox("domino/System/IndexedOutput_v2.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {Output = 10}
  l0.Output[0] = self.f_58_Output_0
  l0.Output[1] = self.f_58_Output_1
  l0.Output[2] = self.f_58_Output_2
  l0.Output[3] = self.f_58_Output_3
  l0.Output[4] = self.f_58_Output_4
  l0.Output[5] = self.f_58_Output_5
  l0.Output[6] = self.f_58_Output_6
  l0.Output[7] = self.f_58_Output_7
  l0.Output[8] = self.f_58_Output_8
  l0.Output[9] = self.f_58_Output_9
  l0.OutOfRange = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_37_Out
  self[51] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = self.f_51_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[45] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_45_Has
  l0.HasNOT = self.f_45_HasNOT
  self[11] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_11_RewardsExecuted
  self[97] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[97]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[48] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[48]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/PhotoDetectionMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ValidPhotoTaken = self.f_3_ValidPhotoTaken
  l0.TargetInView = DummyFunction
  l0.TargetNotInView = DummyFunction
  self[52] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[52]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_52_Out
  self[18] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[18]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_9_RewardsExecuted
  self[55] = cbox:CreateBox("domino/System/PlayerRandomizedTimeOfDayMonitor.lua")
  l0 = self[55]
  l0._graph = self
  l0.Enabled = self.f_55_Enabled
  l0.Disabled = DummyFunction
  l0.GotTimeOfDay = self.f_55_GotTimeOfDay
  l0.OnTimeOfDayReached = self.f_55_OnTimeOfDayReached
  self[21] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_21_Has
  l0.HasNOT = self.f_21_HasNOT
  self[68] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[68]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
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
  self[85] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[85]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[75] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[75]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[88] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[88]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[72] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[72]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_13_Has
  l0.HasNOT = DummyFunction
  self[106] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[106]
  l0._graph = self
  l0.Out = self.f_106_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[26] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_26_Disabled
  l0.Loaded = self.f_26_Loaded
  l0.Unloaded = self.f_26_Unloaded
  self[99] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[99]
  l0._graph = self
  l0.Out = self.f_99_Out
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_16_Has
  l0.HasNOT = DummyFunction
  self[36] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_36_Out
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
  l0 = self[23]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[52]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[98]
  l0.Command = "Complete"
  l0:Enable()
end
function export:f_14_Has()
  local l0
  self = self._graph
  l0 = self[15]
  l0.ProgressionTag = "ProgressionTag.9223372077393152781"
  l0:HasProgressionTag()
end
function export:f_89_Output_0()
  local l0
  self = self._graph
  l0 = self[96]
  l0.ItemDB = "Items.9223372078232668255"
  l0:ExecuteRewards()
end
function export:f_89_Output_1()
  local l0
  self = self._graph
  l0 = self[88]
  l0.ItemDB = "Items.9223372078232668256"
  l0:ExecuteRewards()
end
function export:f_89_Output_2()
  local l0
  self = self._graph
  l0 = self[93]
  l0.ItemDB = "Items.9223372078232668257"
  l0:ExecuteRewards()
end
function export:f_89_Output_3()
  local l0
  self = self._graph
  l0 = self[92]
  l0.ItemDB = "Items.9223372078232668258"
  l0:ExecuteRewards()
end
function export:f_89_Output_4()
  local l0
  self = self._graph
  l0 = self[90]
  l0.ItemDB = "Items.9223372078232668259"
  l0:ExecuteRewards()
end
function export:f_89_Output_5()
  local l0
  self = self._graph
  l0 = self[97]
  l0.ItemDB = "Items.9223372078232668260"
  l0:ExecuteRewards()
end
function export:f_89_Output_6()
  local l0
  self = self._graph
  l0 = self[91]
  l0.ItemDB = "Items.9223372078232668261"
  l0:ExecuteRewards()
end
function export:f_89_Output_7()
  local l0
  self = self._graph
  l0 = self[95]
  l0.ItemDB = "Items.9223372078232668262"
  l0:ExecuteRewards()
end
function export:f_89_Output_8()
  local l0
  self = self._graph
  l0 = self[94]
  l0.ItemDB = "Items.9223372078232668263"
  l0:ExecuteRewards()
end
function export:f_89_Output_9()
  local l0
  self = self._graph
  l0 = self[87]
  l0.ItemDB = "Items.9223372078232668254"
  l0:ExecuteRewards()
end
function export:f_1_ValidPhotoTaken()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_27_Disabled()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_27_Loaded()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_27_Unloaded()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_15_Has()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Succeed()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[44]
  l0.ProgressionTag = "ProgressionTag.9223372078027664963"
  l0:HasProgressionTag()
end
function export:f_33_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[19]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078027647760"
  l0:StartCommunication()
end
function export:f_33_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[51]
  l0.ItemDB = "Items.9223372078027664970"
  l0:ExecuteRewards()
end
function export:f_12_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[47]
  l0:Input(3)
end
function export:f_31_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[17]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078027647757"
  l0:StartCommunication()
end
function export:f_31_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[48]
  l0.ItemDB = "Items.9223372078027664967"
  l0:ExecuteRewards()
end
function export:f_7_HasNOT()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Enable()
end
function export:f_4_ValidPhotoTaken()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_42_Out_0
  l0.Out[1] = self.f_42_Out_1
  l0:In()
end
function export:f_64_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Minute02 = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_59_Out_0
  l0.Out[1] = self.f_59_Out_1
  l0.Out[2] = self.f_59_Out_2
  l0.Out[3] = self.f_59_Out_3
  l0.Out[4] = self.f_59_Out_4
  l0:In()
end
function export:f_46_HasNOT()
  local l0
  self = self._graph
  l0 = self[33]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078089151973"
  l0:StartCommunication()
end
function export:f_105_Out()
  local l0
  self = self._graph
  l0 = self[103]
  l0.ItemDB = "Items.9223372077393152784"
  l0:ExecuteRewards()
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = self[102]
  l0.ItemDB = "Items.9223372078027664968"
  l0:ExecuteRewards()
end
function export:f_104_Out()
  local l0
  self = self._graph
  l0 = self[100]
  l0.ItemDB = "Items.9223372078027664967"
  l0:ExecuteRewards()
end
function export:f_32_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[20]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078027647759"
  l0:StartCommunication()
end
function export:f_32_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[50]
  l0.ItemDB = "Items.9223372078027664969"
  l0:ExecuteRewards()
end
function export:f_60_Output_0()
  local l0
  self = self._graph
  l0 = self[79]
  l0.ItemDB = "Items.9223372078232668244"
  l0:ExecuteRewards()
end
function export:f_60_Output_1()
  local l0
  self = self._graph
  l0 = self[80]
  l0.ItemDB = "Items.9223372078232668245"
  l0:ExecuteRewards()
end
function export:f_60_Output_2()
  local l0
  self = self._graph
  l0 = self[86]
  l0.ItemDB = "Items.9223372078232668246"
  l0:ExecuteRewards()
end
function export:f_60_Output_3()
  local l0
  self = self._graph
  l0 = self[85]
  l0.ItemDB = "Items.9223372078232668247"
  l0:ExecuteRewards()
end
function export:f_60_Output_4()
  local l0
  self = self._graph
  l0 = self[77]
  l0.ItemDB = "Items.9223372078232668248"
  l0:ExecuteRewards()
end
function export:f_60_Output_5()
  local l0
  self = self._graph
  l0 = self[84]
  l0.ItemDB = "Items.9223372078232668249"
  l0:ExecuteRewards()
end
function export:f_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Minute01 = l0.Target
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.Minute02
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_64_Out
  l0:Add()
end
function export:f_39_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_28_Disabled()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(1)
end
function export:f_28_Loaded()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Enable()
end
function export:f_28_Unloaded()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(0)
end
function export:f_59_Out_0()
  local l0
  self = self._graph
  l0 = self[57]
  l0.Index = self.Hour01
  l0:In()
end
function export:f_59_Out_1()
  local l0
  self = self._graph
  l0 = self[58]
  l0.Index = self.Hour02
  l0:In()
end
function export:f_59_Out_2()
  local l0
  self = self._graph
  l0 = self[60]
  l0.Index = self.Minute01
  l0:In()
end
function export:f_59_Out_3()
  local l0
  self = self._graph
  l0 = self[89]
  l0.Index = self.Minute02
  l0:In()
end
function export:f_59_Out_4()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_30_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[18]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078027647758"
  l0:StartCommunication()
end
function export:f_30_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[49]
  l0.ItemDB = "Items.9223372078027664968"
  l0:ExecuteRewards()
end
function export:f_10_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[47]
  l0:Input(1)
end
function export:f_19_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[52]
  l0:Input(0)
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0.Out[2] = self.f_25_Out_2
  l0.Out[3] = self.f_25_Out_3
  l0:In()
end
function export:f_43_Out_0()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Disable()
end
function export:f_43_Out_1()
  local l0
  self = self._graph
  l0 = self[9]
  l0.ItemDB = "Items.9223372077393152782"
  l0:ExecuteRewards()
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  l0 = self[5]
  l0.ProgressionTag = "ProgressionTag.9223372077393152778"
  l0:HasProgressionTag()
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0:In()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0.ProgressionTag = "ProgressionTag.9223372077393152779"
  l0:HasProgressionTag()
end
function export:f_25_Out_2()
  local l0
  self = self._graph
  l0 = self[7]
  l0.ProgressionTag = "ProgressionTag.9223372077393152780"
  l0:HasProgressionTag()
end
function export:f_25_Out_3()
  local l0
  self = self._graph
  l0 = self[8]
  l0.ProgressionTag = "ProgressionTag.9223372077393152781"
  l0:HasProgressionTag()
end
function export:f_38_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_98_Enabled()
  local l0
  self = self._graph
  l0 = self[55]
  l0:GetTimeOfDay()
end
function export:f_98_Executed()
  local l0
  self = self._graph
  l0 = self[106]
  l0.ItemDB = "Items.9223372077393152782"
  l0:ExecuteRewards()
end
function export:f_101_Out()
  local l0
  self = self._graph
  l0 = self[99]
  l0.ItemDB = "Items.9223372078027664970"
  l0:ExecuteRewards()
end
function export:f_61_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Hour01 = l0.Target
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.Hour02
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_62_Out
  l0:Add()
end
function export:f_8_HasNOT()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_29_Disabled()
  local l0
  self = self._graph
  l0 = self[39]
  l0:Input(1)
end
function export:f_29_Loaded()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_29_Unloaded()
  local l0
  self = self._graph
  l0 = self[39]
  l0:Input(0)
end
function export:f_5_HasNOT()
  local l0
  self = self._graph
  self:en_26()
  l0 = self[26]
  l0:Enable()
end
function export:f_42_Out_0()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Disable()
end
function export:f_42_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0.ItemDB = "Items.9223372077393152783"
  l0:ExecuteRewards()
end
function export:f_6_HasNOT()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Enable()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.ProgressionTag = "ProgressionTag.9223372077393152778"
  l0:HasProgressionTag()
end
function export:f_57_Output_0()
  local l0
  self = self._graph
  l0 = self[56]
  l0.ItemDB = "Items.9223372078232668231"
  l0:ExecuteRewards()
end
function export:f_57_Output_1()
  local l0
  self = self._graph
  l0 = self[65]
  l0.ItemDB = "Items.9223372078232668232"
  l0:ExecuteRewards()
end
function export:f_57_Output_2()
  local l0
  self = self._graph
  l0 = self[66]
  l0.ItemDB = "Items.9223372078232668233"
  l0:ExecuteRewards()
end
function export:f_44_Has()
  local l0
  self = self._graph
  l0 = self[21]
  l0.ProgressionTag = "ProgressionTag.9223372078027664964"
  l0:HasProgressionTag()
end
function export:f_44_HasNOT()
  local l0
  self = self._graph
  l0 = self[31]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078089151970"
  l0:StartCommunication()
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.Hour02 = l0.Target
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.Minute01
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_63_Out
  l0:Add()
end
function export:f_102_Out()
  local l0
  self = self._graph
  l0 = self[101]
  l0.ItemDB = "Items.9223372078027664969"
  l0:ExecuteRewards()
end
function export:f_2_ValidPhotoTaken()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_43_Out_0
  l0.Out[1] = self.f_43_Out_1
  l0:In()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_103_Out()
  local l0
  self = self._graph
  l0 = self[104]
  l0.ItemDB = "Items.9223372077393152785"
  l0:ExecuteRewards()
end
function export:f_40_Out_0()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_40_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.ItemDB = "Items.9223372077393152785"
  l0:ExecuteRewards()
end
function export:f_58_Output_0()
  local l0
  self = self._graph
  l0 = self[67]
  l0.ItemDB = "Items.9223372078232668234"
  l0:ExecuteRewards()
end
function export:f_58_Output_1()
  local l0
  self = self._graph
  l0 = self[71]
  l0.ItemDB = "Items.9223372078232668235"
  l0:ExecuteRewards()
end
function export:f_58_Output_2()
  local l0
  self = self._graph
  l0 = self[68]
  l0.ItemDB = "Items.9223372078232668236"
  l0:ExecuteRewards()
end
function export:f_58_Output_3()
  local l0
  self = self._graph
  l0 = self[70]
  l0.ItemDB = "Items.9223372078232668237"
  l0:ExecuteRewards()
end
function export:f_58_Output_4()
  local l0
  self = self._graph
  l0 = self[74]
  l0.ItemDB = "Items.9223372078232668238"
  l0:ExecuteRewards()
end
function export:f_58_Output_5()
  local l0
  self = self._graph
  l0 = self[69]
  l0.ItemDB = "Items.9223372078232668239"
  l0:ExecuteRewards()
end
function export:f_58_Output_6()
  local l0
  self = self._graph
  l0 = self[73]
  l0.ItemDB = "Items.9223372078232668240"
  l0:ExecuteRewards()
end
function export:f_58_Output_7()
  local l0
  self = self._graph
  l0 = self[75]
  l0.ItemDB = "Items.9223372078232668241"
  l0:ExecuteRewards()
end
function export:f_58_Output_8()
  local l0
  self = self._graph
  l0 = self[72]
  l0.ItemDB = "Items.9223372078232668242"
  l0:ExecuteRewards()
end
function export:f_58_Output_9()
  local l0
  self = self._graph
  l0 = self[76]
  l0.ItemDB = "Items.9223372078232668243"
  l0:ExecuteRewards()
end
function export:f_37_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_45_Has()
  local l0
  self = self._graph
  l0 = self[46]
  l0.ProgressionTag = "ProgressionTag.9223372078027664966"
  l0:HasProgressionTag()
end
function export:f_45_HasNOT()
  local l0
  self = self._graph
  l0 = self[32]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078089151972"
  l0:StartCommunication()
end
function export:f_11_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[47]
  l0:Input(2)
end
function export:f_3_ValidPhotoTaken()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_40_Out_0
  l0.Out[1] = self.f_40_Out_1
  l0:In()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Succeed()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Disable()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0.ItemDB = "Items.9223372077393152784"
  l0:ExecuteRewards()
end
function export:f_9_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[47]
  l0:Input(0)
end
function export:f_55_Enabled()
  local l0
  self = self._graph
  l0 = self[55]
  self.Hour01 = l0.HourTen
  self.Hour02 = l0.HourUnit
  self.Minute01 = l0.MinuteTen
  self.Minute02 = l0.MinuteUnit
end
function export:f_55_GotTimeOfDay()
  local l0
  self = self._graph
  l0 = self[55]
  self.Hour01 = l0.HourTen
  self.Hour02 = l0.HourUnit
  self.Minute01 = l0.MinuteTen
  self.Minute02 = l0.MinuteUnit
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.Hour01
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_61_Out
  l0:Add()
end
function export:f_55_OnTimeOfDayReached()
  local l0
  self = self._graph
  l0 = self[55]
  self.Hour01 = l0.HourTen
  self.Hour02 = l0.HourUnit
  self.Minute01 = l0.MinuteTen
  self.Minute02 = l0.MinuteUnit
end
function export:f_21_Has()
  local l0
  self = self._graph
  l0 = self[45]
  l0.ProgressionTag = "ProgressionTag.9223372078027664965"
  l0:HasProgressionTag()
end
function export:f_21_HasNOT()
  local l0
  self = self._graph
  l0 = self[30]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372078089151971"
  l0:StartCommunication()
end
function export:f_13_Has()
  local l0
  self = self._graph
  l0 = self[14]
  l0.ProgressionTag = "ProgressionTag.9223372077393152780"
  l0:HasProgressionTag()
end
function export:f_106_Out()
  local l0
  self = self._graph
  l0 = self[105]
  l0.ItemDB = "Items.9223372077393152783"
  l0:ExecuteRewards()
end
function export:f_26_Disabled()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(1)
end
function export:f_26_Loaded()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_26_Unloaded()
  local l0
  self = self._graph
  l0 = self[38]
  l0:Input(0)
end
function export:f_99_Out()
  local l0
  self = self._graph
  l0 = self[107]
  l0:Succeed()
end
function export:f_16_Has()
  local l0
  self = self._graph
  l0 = self[13]
  l0.ProgressionTag = "ProgressionTag.9223372077393152779"
  l0:HasProgressionTag()
end
function export:f_36_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Disable()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.LandmarkTargetName = {
    section = "PRESENTATION.DLC.Shuffler_Support",
    item = "GlyphObjective3",
    id = "705917"
  }
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.ProgressionLayer = "ProgressionLayers.9223372077393152790"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.LandmarkTargetName = {
    section = "PRESENTATION.DLC.Shuffler_Support",
    item = "GlyphObjective2",
    id = "705918"
  }
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.ProgressionLayer = "ProgressionLayers.9223372077393152791"
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.ProgressionLayer = "ProgressionLayers.9223372077393152792"
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.LandmarkTargetName = {
    section = "PRESENTATION.DLC.Shuffler_Support",
    item = "GlyphObjective1",
    id = "705915"
  }
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.LandmarkTargetName = {
    section = "PRESENTATION.DLC.Shuffler_Support",
    item = "GlyphObjective4",
    id = "705916"
  }
end
function export:en_26()
  local l0
  l0 = self[26]
  l0.ProgressionLayer = "ProgressionLayers.9223372077393152789"
end
_compilerVersion = 4
