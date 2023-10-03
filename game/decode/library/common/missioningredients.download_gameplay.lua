export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/AISquadStateController.lua")
  cbox:RegisterBox("Domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/DownloadGameplayController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/ReinforcementSystemController_v2.lua")
  cbox:RegisterBox("Domino/System/ReinforcementSystemMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/FleeBehaviorController.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v3.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.CustomRatioReached = DummyFunction
  self.DownloadCompleted = DummyFunction
  self.Ratio1Reached = DummyFunction
  self.Ratio2Reached = DummyFunction
  self.PauseRatioReached = DummyFunction
  self.Ratio1Reached_PostReset = DummyFunction
  self.Ratio2Reached_PostReset = DummyFunction
  self.CustomRatioReached_PostReset = DummyFunction
  self.PauseRatioReached_PostReset = DummyFunction
  self.PlayerEntity = nil
  self.DownloadTime = 0
  self[13] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
  self[43] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[43]
  l0._graph = self
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_43_Output_0
  l0.None = self.f_43_None
  l0.WasReset = DummyFunction
  self[17] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_17_Out
  self[35] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[35]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_35_Out
  self[4] = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_4_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_4_Leave
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = DummyFunction
  l0.VehicleLanding = DummyFunction
  l0.BollardTakedown = DummyFunction
  l0.SteamPipeTakedown = DummyFunction
  l0.TrafficLightTakedown = DummyFunction
  l0.FullTakedown = DummyFunction
  l0.PartialTakedown = DummyFunction
  l0.NitroUsed = DummyFunction
  l0.NitroStopped = DummyFunction
  l0.IsFlipped = DummyFunction
  l0.IsUnFlipped = DummyFunction
  l0.Unloaded = DummyFunction
  self[36] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_36_Output_0
  l0.None = self.f_36_None
  l0.WasReset = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/DownloadGameplayController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = self.f_1_Stopped
  l0.Ratio1Reached = self.f_1_Ratio1Reached
  l0.Ratio2Reached = self.f_1_Ratio2Reached
  l0.RatioCustomReached = self.f_1_RatioCustomReached
  l0.RatioBlockedReached = self.f_1_RatioBlockedReached
  l0.DownloadCompleted = self.f_1_DownloadCompleted
  self[39] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_39_Output_0
  l0.None = self.f_39_None
  l0.WasReset = DummyFunction
  self[21] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[21]
  l0._graph = self
  l0.StartCommunicationOut = self.f_21_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[14] = cbox:CreateBox("Domino/System/AISquadStateController.lua")
  l0 = self[14]
  l0._graph = self
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_14_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self[34] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[34]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_34_Out
  self[49] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_49_Out
  self[29] = cbox:CreateBox("Domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = self.f_29_Enabled
  l0.Disabled = DummyFunction
  l0.None = self.f_29_None
  l0.Reinforcing = self.f_29_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[41] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_41_Output_0
  l0.None = self.f_41_None
  l0.WasReset = DummyFunction
  self[27] = cbox:CreateBox("Domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_27_None
  l0.Reinforcing = self.f_27_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self[42] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[42]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_42_Out
  self[28] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_28_Out
  self[23] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_23_Out
  self[12] = cbox:CreateBox("Domino/System/AISquadStateMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = self.f_12_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_12_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_12_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_12_VanishState
  l0.None = self.f_12_None
  self[18] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:Stop()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_48_Is_nil()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(0)
end
function export:f_48_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoDetectDownload
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_44_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_33_Out_0()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(1)
end
function export:f_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = self.Affiliation
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StopReinforcing()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Disable()
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(3)
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:Enable()
end
function export:f_47_Out_0()
  self = self._graph
  self:CustomRatioReached_PostReset()
end
function export:f_47_Out_1()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(1)
end
function export:f_43_None()
  self = self._graph
  self:PauseRatioReached_PostReset()
end
function export:f_43_Output_0()
  self = self._graph
  self:PauseRatioReached()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Position = self.TargetEntity
  l0.Affiliation = self.Affiliation
  l0.DispatchCallId = "COMS_Dispatch_HackDetected"
  l0.SearchOverrideParamTimeout = self.DownloadTime
  l0:SetInTargetedSearch()
end
function export:f_30_A_is_True()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(5)
end
function export:f_4_Entered()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_7_Out_0
  l0.Out[1] = self.f_7_Out_1
  l0:In()
end
function export:f_4_Leave()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_5_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(4)
end
function export:f_44_A_is_True()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(1)
end
function export:f_36_None()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_46_Out_0
  l0.Out[1] = self.f_46_Out_1
  l0:In()
end
function export:f_36_Output_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_1_DownloadCompleted()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_1_Ratio1Reached()
  local l0
  self = self._graph
  l0 = self[1]
  self.DownloadTime = l0.DownloadRemainingTime
  l0 = self[36]
  l0:In()
end
function export:f_1_Ratio2Reached()
  local l0
  self = self._graph
  l0 = self[1]
  self.DownloadTime = l0.DownloadRemainingTime
  l0 = self[39]
  l0:In()
end
function export:f_1_RatioBlockedReached()
  local l0
  self = self._graph
  l0 = self[1]
  self.DownloadTime = l0.DownloadRemainingTime
  l0 = self[43]
  l0:In()
end
function export:f_1_RatioCustomReached()
  local l0
  self = self._graph
  l0 = self[1]
  self.DownloadTime = l0.DownloadRemainingTime
  l0 = self[41]
  l0:In()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[1]
  self.DownloadTime = l0.DownloadRemainingTime
  self:Started()
end
function export:f_1_Stopped()
  self = self._graph
  self:Stopped()
end
function export:f_11_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(0)
end
function export:f_7_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_39_None()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_45_Out_0
  l0.Out[1] = self.f_45_Out_1
  l0:In()
end
function export:f_39_Output_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_25_Out_0
  l0.Out[1] = self.f_25_Out_1
  l0:In()
end
function export:f_21_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(1)
end
function export:f_19_A_is_False()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_19_A_is_True()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_24_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = self.Affiliation
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253485"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_11_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartReinforcing()
end
function export:f_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = self.Affiliation
  l0.ReinforcementConfig = self.ReinforcementConfig
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_5_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartReinforcing()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_45_Out_0()
  self = self._graph
  self:Ratio2Reached_PostReset()
end
function export:f_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:In()
end
function export:f_3_Out_0()
  self = self._graph
  self:Ratio1Reached()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.TeamSpeak
  l0._graph = self
  l0.Is_nil = self.f_22_Is_nil
  l0.Is_not_nil = self.f_22_Is_not_nil
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(2)
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_14_TargetedSearchSet()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_25_Out_0()
  self = self._graph
  self:Ratio2Reached()
end
function export:f_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:In()
end
function export:f_22_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_37_Out
  l0:In()
end
function export:f_22_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[21]
  l0.PhoneCommunicationDb = self.TeamSpeak
  l0:StartCommunication()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(2)
end
function export:f_34_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FleeOnDownloadDetected
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_19_A_is_True
  l0.A_is_False = self.f_19_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_29_Enabled()
  self = self._graph
  self:DownloadCompleted()
end
function export:f_29_None()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Input(0)
end
function export:f_29_Reinforcing()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_33_Out_0
  l0.Out[1] = self.f_33_Out_1
  l0:In()
end
function export:f_41_None()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_47_Out_0
  l0.Out[1] = self.f_47_Out_1
  l0:In()
end
function export:f_41_Output_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_31_Out_0
  l0.Out[1] = self.f_31_Out_1
  l0:In()
end
function export:f_27_None()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.ReinforcementConfig
  l0._graph = self
  l0.Is_nil = self.f_24_Is_nil
  l0.Is_not_nil = self.f_24_Is_not_nil
  l0:In()
end
function export:f_27_Reinforcing()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("Domino/System/FleeBehaviorController.lua")]
  l0.Target = self.TargetEntity
  l0.TargetList = nil
  l0.Destination = self.FleeDestination
  l0.Threat = self.PlayerEntity
  l0.Config = nil
  l0.Vehicle = nil
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DetectionOnCustomRatio
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_30_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(0)
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.AutoDetectDownload
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_48_Is_nil
  l0.Is_not_nil = self.f_48_Is_not_nil
  l0:In()
end
function export:f_31_Out_0()
  self = self._graph
  self:CustomRatioReached()
end
function export:f_31_Out_1()
  local l0
  self = self._graph
  l0 = self[42]
  l0:Input(0)
end
function export:f_46_Out_0()
  self = self._graph
  self:Ratio1Reached_PostReset()
end
function export:f_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0:In()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_12_ArrestState()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(0)
end
function export:f_12_CombatState()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(1)
end
function export:f_12_None()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(1)
end
function export:f_12_SearchState()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(2)
end
function export:f_12_VanishState()
  local l0
  self = self._graph
  l0 = self[35]
  l0:Input(0)
end
function export:f_18_Out()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Pawn = self.TargetEntity
  l0.CheckNow = 1
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.TargetEntityId = self.TargetEntity
  l0.LinkedObjective = self.LinkedObjective
  l0.Duration = self.Duration
  l0.DownloadRadiusPreset = self.DownloadRadiusPreset
  l0.OverridedRadius = self.OverridedRadius
  l0.CustomRatio = self.CustomRatio
  l0.DownloadingText = self.DownloadingText
  l0.DownloadPausedText = self.DownloadingPausedText
  l0.SignalBlockedDuration = self.DownloadPauseDuration
  l0.SignalBlockedStartRatio = self.DownloadPauseRatio
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Affiliation = self.Affiliation
  l0.CheckNow = 1
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.Affiliation = self.Affiliation
  l0.CheckNow = 1
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Affiliation = self.Affiliation
  l0.CheckStateNow = 1
end
function export:Stopped()
end
function export:Started()
end
function export:CustomRatioReached()
end
function export:DownloadCompleted()
end
function export:Ratio1Reached()
end
function export:Ratio2Reached()
end
function export:PauseRatioReached()
end
function export:Ratio1Reached_PostReset()
end
function export:Ratio2Reached_PostReset()
end
function export:CustomRatioReached_PostReset()
end
function export:PauseRatioReached_PostReset()
end
_compilerVersion = 4
