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
  self._name = "Download Gameplay"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay"
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
  self.box_MultipleOR_13 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_13
  l0._graph = self
  l0._name = "box_MultipleOR_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|173332346"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_13_Out
  self.box_SwitchOutput_v3_43 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_43
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_43"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|280146054"
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_43_Output_0
  l0.None = self.f_box_SwitchOutput_v3_43_None
  l0.WasReset = DummyFunction
  self.box_MultipleOR_17 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_17
  l0._graph = self
  l0._name = "box_MultipleOR_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|407671863"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_17_Out
  self.box_MultipleOR_35 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_35
  l0._graph = self
  l0._name = "box_MultipleOR_35"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|415370894"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_35_Out
  self.box_VehicleMonitor_v3_4 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_4
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|503070750"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Entered = self.f_box_VehicleMonitor_v3_4_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_4_Leave
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
  self.box_SwitchOutput_v3_36 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_36
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_36"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|602650649"
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_36_Output_0
  l0.None = self.f_box_SwitchOutput_v3_36_None
  l0.WasReset = DummyFunction
  self.box_DownloadGameplayController_1 = cbox:CreateBox("Domino/System/DownloadGameplayController.lua")
  l0 = self.box_DownloadGameplayController_1
  l0._graph = self
  l0._name = "box_DownloadGameplayController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|718794838"
  l0.Started = self.f_box_DownloadGameplayController_1_Started
  l0.Stopped = self.f_box_DownloadGameplayController_1_Stopped
  l0.Ratio1Reached = self.f_box_DownloadGameplayController_1_Ratio1Reached
  l0.Ratio2Reached = self.f_box_DownloadGameplayController_1_Ratio2Reached
  l0.RatioCustomReached = self.f_box_DownloadGameplayController_1_RatioCustomReached
  l0.RatioBlockedReached = self.f_box_DownloadGameplayController_1_RatioBlockedReached
  l0.DownloadCompleted = self.f_box_DownloadGameplayController_1_DownloadCompleted
  self.box_SwitchOutput_v3_39 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_39
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_39"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|882534969"
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_39_Output_0
  l0.None = self.f_box_SwitchOutput_v3_39_None
  l0.WasReset = DummyFunction
  self.box_PhoneCommunicationController_21 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_21
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|887418690"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_21_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_6 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_6
  l0._graph = self
  l0._name = "box_MultipleOR_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1156167202"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_6_Out
  self.box_AISquadStateController_14 = cbox:CreateBox("Domino/System/AISquadStateController.lua")
  l0 = self.box_AISquadStateController_14
  l0._graph = self
  l0._name = "box_AISquadStateController_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1467933287"
  l0.WanderSet = DummyFunction
  l0.AwareSet = DummyFunction
  l0.UntargetedSearchSet = DummyFunction
  l0.TargetedSearchSet = self.f_box_AISquadStateController_14_TargetedSearchSet
  l0.CombatSet = DummyFunction
  l0.VanishSet = DummyFunction
  l0.SearchOverrideParamsSet = DummyFunction
  l0.SearchOverrideParamsReset = DummyFunction
  l0.SquadBhvParamsSet = DummyFunction
  l0.SquadBhvParamsCleared = DummyFunction
  l0.SquadRemoved = DummyFunction
  self.box_MultipleOR_34 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_34
  l0._graph = self
  l0._name = "box_MultipleOR_34"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1715729669"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_34_Out
  self.box_MultipleOR_49 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_49
  l0._graph = self
  l0._name = "box_MultipleOR_49"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1732827051"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_49_Out
  self.box_ReinforcementSystemMonitor_v2_29 = cbox:CreateBox("Domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_29
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1781188226"
  l0.Enabled = self.f_box_ReinforcementSystemMonitor_v2_29_Enabled
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_29_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_29_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_SwitchOutput_v3_41 = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self.box_SwitchOutput_v3_41
  l0._graph = self
  l0._name = "box_SwitchOutput_v3_41"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1837666960"
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_box_SwitchOutput_v3_41_Output_0
  l0.None = self.f_box_SwitchOutput_v3_41_None
  l0.WasReset = DummyFunction
  self.box_ReinforcementSystemMonitor_v2_27 = cbox:CreateBox("Domino/System/ReinforcementSystemMonitor_v2.lua")
  l0 = self.box_ReinforcementSystemMonitor_v2_27
  l0._graph = self
  l0._name = "box_ReinforcementSystemMonitor_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1865858442"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.None = self.f_box_ReinforcementSystemMonitor_v2_27_None
  l0.Reinforcing = self.f_box_ReinforcementSystemMonitor_v2_27_Reinforcing
  l0.CallingNextWave = DummyFunction
  l0.CallingNextWaveSucceeded = DummyFunction
  l0.ReachedWaveChangeThreshold = DummyFunction
  l0.WaveChanged = DummyFunction
  l0.EntitySpawned = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_42 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1901218094"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_MultipleOR_28 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_28
  l0._graph = self
  l0._name = "box_MultipleOR_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1918156430"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_28_Out
  self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1922923339"
  l0._DynamicAnchors = {Input = 6}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_AISquadStateMonitor_12 = cbox:CreateBox("Domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_12
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2100342088"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = self.f_box_AISquadStateMonitor_12_ArrestState
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_12_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = self.f_box_AISquadStateMonitor_12_SearchState
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_12_VanishState
  l0.None = self.f_box_AISquadStateMonitor_12_None
  self.box_MultipleOR_18 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2102177548"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
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
  self:OnEnter_box_DownloadGameplayController_1()
  l0 = self.box_DownloadGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|574994222", "574994222", "Download Gameplay", "Start", "box_DownloadGameplayController_1.Start", self, l0)
  l0:Start()
end
function export:Stop()
  local l0
  self:OnEnter_box_DownloadGameplayController_1()
  l0 = self.box_DownloadGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1425094760", "1425094760", "Download Gameplay", "Stop", "box_DownloadGameplayController_1.Stop", self, l0)
  l0:Stop()
end
function export:f_box_Test_if_Nil_48_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1381455160", "1381455160", "Download Gameplay", "box_Test_if_Nil_48.Is_nil", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_48_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AutoDetectDownload
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_44"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|598160758"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_44_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1983917202", "1983917202", "Download Gameplay", "box_Test_if_Nil_48.Is_not_nil", "box_Compare_Boolean_v2_44.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1375812579"
  l0.Out = self.f_box_Simple_Node_16_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1543878465", "1543878465", "Download Gameplay", "box_Simple_Node_15.Out", "box_Simple_Node_16.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_33_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|565416543", "565416543", "Download Gameplay", "box_Ordered_Output_33.Out", "box_MultipleOR_34.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_33_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = self.Affiliation
  l0.ReinforcementConfig = nil
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_32"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|799703936"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = DummyFunction
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1487761560", "1487761560", "Download Gameplay", "box_Ordered_Output_33.Out", "box_ReinforcementSystemController_v2_32.StopReinforcing", clone, l0)
  l0:StopReinforcing()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ReinforcementSystemMonitor_v2_27()
  l0 = self.box_ReinforcementSystemMonitor_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|750105688", "750105688", "Download Gameplay", "box_Ordered_Output_20.Out", "box_ReinforcementSystemMonitor_v2_27.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_AISquadStateMonitor_12()
  l0 = self.box_AISquadStateMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1419913899", "1419913899", "Download Gameplay", "box_Ordered_Output_20.Out", "box_AISquadStateMonitor_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2017324054", "2017324054", "Download Gameplay", "box_Simple_Node_26.Out", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_MultipleOR_13_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_27()
  l0 = self.box_MultipleOR_13
  l1 = self.box_ReinforcementSystemMonitor_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2026187879", "2026187879", "Download Gameplay", "box_MultipleOR_13.Out", "box_ReinforcementSystemMonitor_v2_27.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1921550927", "1921550927", "Download Gameplay", "box_Ordered_Output_47.Out", "CustomRatioReached PostReset", clone, self)
  self:CustomRatioReached_PostReset()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1740361428", "1740361428", "Download Gameplay", "box_Ordered_Output_47.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SwitchOutput_v3_43_None()
  local l0
  self = self._graph
  l0 = self.box_SwitchOutput_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1156788416", "1156788416", "Download Gameplay", "box_SwitchOutput_v3_43.None", "PauseRatioReached PostReset", l0, self)
  self:PauseRatioReached_PostReset()
end
function export:f_box_SwitchOutput_v3_43_Output_0()
  local l0
  self = self._graph
  l0 = self.box_SwitchOutput_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1525516932", "1525516932", "Download Gameplay", "box_SwitchOutput_v3_43.Output", "PauseRatioReached", l0, self)
  self:PauseRatioReached()
end
function export:f_box_MultipleOR_17_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|156947372"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_MultipleOR_17
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1750569932", "1750569932", "Download Gameplay", "box_MultipleOR_17.Out", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_AISquadStateController_14
  l0.Position = self.TargetEntity
  l0.Affiliation = self.Affiliation
  l0.DispatchCallId = "COMS_Dispatch_HackDetected"
  l0.SearchOverrideParamTimeout = self.DownloadTime
  l0 = self.box_MultipleOR_35
  l1 = self.box_AISquadStateController_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|632363852", "632363852", "Download Gameplay", "box_MultipleOR_35.Out", "box_AISquadStateController_14.SetInTargetedSearch", l0, l1)
  l1:SetInTargetedSearch()
end
function export:f_box_Compare_Boolean_v2_30_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2128127950", "2128127950", "Download Gameplay", "box_Compare_Boolean_v2_30.A_is_True", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(5)
end
function export:f_box_VehicleMonitor_v3_4_Entered()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|843110551"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_7_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_7_Out_1
  l0 = self.box_VehicleMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|451437406", "451437406", "Download Gameplay", "box_VehicleMonitor_v3_4.Entered", "box_Ordered_Output_7.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_4_Leave()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1990337981"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  l0 = self.box_VehicleMonitor_v3_4
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|355705759", "355705759", "Download Gameplay", "box_VehicleMonitor_v3_4.Leave", "box_Ordered_Output_10.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemController_v2_5_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|186395877", "186395877", "Download Gameplay", "box_ReinforcementSystemController_v2_5.ReinforcingStarted", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Simple_Node_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|736479293", "736479293", "Download Gameplay", "box_Simple_Node_9.Out", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Simple_Node_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|691854109", "691854109", "Download Gameplay", "box_Simple_Node_40.Out", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(4)
end
function export:f_box_Compare_Boolean_v2_44_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_49()
  l0 = self.box_MultipleOR_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1476569332", "1476569332", "Download Gameplay", "box_Compare_Boolean_v2_44.A_is_True", "box_MultipleOR_49.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_SwitchOutput_v3_36_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_46"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1980138433"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_46_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_46_Out_1
  l0 = self.box_SwitchOutput_v3_36
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2094875252", "2094875252", "Download Gameplay", "box_SwitchOutput_v3_36.None", "box_Ordered_Output_46.In", l0, l1)
  l1:In()
end
function export:f_box_SwitchOutput_v3_36_Output_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1370666842"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_SwitchOutput_v3_36
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1292794545", "1292794545", "Download Gameplay", "box_SwitchOutput_v3_36.Output", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_DownloadGameplayController_1_DownloadCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_29()
  l0 = self.box_DownloadGameplayController_1
  l1 = self.box_ReinforcementSystemMonitor_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1395055704", "1395055704", "Download Gameplay", "box_DownloadGameplayController_1.DownloadCompleted", "box_ReinforcementSystemMonitor_v2_29.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_DownloadGameplayController_1_Ratio1Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_DownloadGameplayController_1
  self.DownloadTime = l0.DownloadRemainingTime
  l1 = self.box_SwitchOutput_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1294120061", "1294120061", "Download Gameplay", "box_DownloadGameplayController_1.Ratio1Reached", "box_SwitchOutput_v3_36.In", l0, l1)
  l1:In()
end
function export:f_box_DownloadGameplayController_1_Ratio2Reached()
  local l0, l1
  self = self._graph
  l0 = self.box_DownloadGameplayController_1
  self.DownloadTime = l0.DownloadRemainingTime
  l1 = self.box_SwitchOutput_v3_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|547444791", "547444791", "Download Gameplay", "box_DownloadGameplayController_1.Ratio2Reached", "box_SwitchOutput_v3_39.In", l0, l1)
  l1:In()
end
function export:f_box_DownloadGameplayController_1_RatioBlockedReached()
  local l0, l1
  self = self._graph
  l0 = self.box_DownloadGameplayController_1
  self.DownloadTime = l0.DownloadRemainingTime
  l1 = self.box_SwitchOutput_v3_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1510276813", "1510276813", "Download Gameplay", "box_DownloadGameplayController_1.RatioBlockedReached", "box_SwitchOutput_v3_43.In", l0, l1)
  l1:In()
end
function export:f_box_DownloadGameplayController_1_RatioCustomReached()
  local l0, l1
  self = self._graph
  l0 = self.box_DownloadGameplayController_1
  self.DownloadTime = l0.DownloadRemainingTime
  l1 = self.box_SwitchOutput_v3_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|209136139", "209136139", "Download Gameplay", "box_DownloadGameplayController_1.RatioCustomReached", "box_SwitchOutput_v3_41.In", l0, l1)
  l1:In()
end
function export:f_box_DownloadGameplayController_1_Started()
  local l0
  self = self._graph
  l0 = self.box_DownloadGameplayController_1
  self.DownloadTime = l0.DownloadRemainingTime
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1079669907", "1079669907", "Download Gameplay", "box_DownloadGameplayController_1.Started", "Started", l0, self)
  self:Started()
end
function export:f_box_DownloadGameplayController_1_Stopped()
  local l0
  self = self._graph
  l0 = self.box_DownloadGameplayController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|724332267", "724332267", "Download Gameplay", "box_DownloadGameplayController_1.Stopped", "Stopped", l0, self)
  self:Stopped()
end
function export:f_box_ReinforcementSystemController_v2_11_ReinforcingStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|528609904", "528609904", "Download Gameplay", "box_ReinforcementSystemController_v2_11.ReinforcingStarted", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_7_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|944925506", "944925506", "Download Gameplay", "box_Ordered_Output_7.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_7_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|564447658"
  l0.Out = self.f_box_Simple_Node_9_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2074014598", "2074014598", "Download Gameplay", "box_Ordered_Output_7.Out", "box_Simple_Node_9.In", clone, l0)
  l0:In()
end
function export:f_box_SwitchOutput_v3_39_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_45"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1253481619"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_45_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_45_Out_1
  l0 = self.box_SwitchOutput_v3_39
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1850663209", "1850663209", "Download Gameplay", "box_SwitchOutput_v3_39.None", "box_Ordered_Output_45.In", l0, l1)
  l1:In()
end
function export:f_box_SwitchOutput_v3_39_Output_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_25"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1560760752"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_25_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_25_Out_1
  l0 = self.box_SwitchOutput_v3_39
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1843492751", "1843492751", "Download Gameplay", "box_SwitchOutput_v3_39.Output", "box_Ordered_Output_25.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_21_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_PhoneCommunicationController_21
  l1 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|563486699", "563486699", "Download Gameplay", "box_PhoneCommunicationController_21.StartCommunicationOut", "box_MultipleOR_23.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_19_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_13()
  l0 = self.box_MultipleOR_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|773854374", "773854374", "Download Gameplay", "box_Compare_Boolean_v2_19.A_is_False", "box_MultipleOR_13.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_19_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_4()
  l0 = self.box_VehicleMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|616534439", "616534439", "Download Gameplay", "box_Compare_Boolean_v2_19.A_is_True", "box_VehicleMonitor_v3_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Test_if_Nil_24_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = self.Affiliation
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253485"
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|764380725"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_11_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|643199480", "643199480", "Download Gameplay", "box_Test_if_Nil_24.Is_nil", "box_ReinforcementSystemController_v2_11.StartReinforcing", clone, l0)
  l0:StartReinforcing()
end
function export:f_box_Test_if_Nil_24_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/ReinforcementSystemController_v2.lua")]
  l0.Target = nil
  l0.Affiliation = self.Affiliation
  l0.ReinforcementConfig = self.ReinforcementConfig
  l0.AgentList = nil
  l0.Center = nil
  l0.UnspawnOnStop = nil
  l0._graph = self
  l0._name = "box_ReinforcementSystemController_v2_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|563703589"
  l0.Out = DummyFunction
  l0.ReinforcingStarted = self.f_box_ReinforcementSystemController_v2_5_ReinforcingStarted
  l0.ReinforcingStopped = DummyFunction
  l0.ReinforcementLocationFixed = DummyFunction
  l0.ReinforcementLocationReleased = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|54919304", "54919304", "Download Gameplay", "box_Test_if_Nil_24.Is_not_nil", "box_ReinforcementSystemController_v2_5.StartReinforcing", clone, l0)
  l0:StartReinforcing()
end
function export:f_box_MultipleOR_6_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_4()
  l0 = self.box_MultipleOR_6
  l1 = self.box_VehicleMonitor_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1166386542", "1166386542", "Download Gameplay", "box_MultipleOR_6.Out", "box_VehicleMonitor_v3_4.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_45_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|998208031", "998208031", "Download Gameplay", "box_Ordered_Output_45.Out", "Ratio2Reached PostReset", clone, self)
  self:Ratio2Reached_PostReset()
end
function export:f_box_Ordered_Output_45_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_40"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|571289783"
  l0.Out = self.f_box_Simple_Node_40_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1201728582", "1201728582", "Download Gameplay", "box_Ordered_Output_45.Out", "box_Simple_Node_40.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1557008309", "1557008309", "Download Gameplay", "box_Ordered_Output_3.Out", "Ratio1Reached", clone, self)
  self:Ratio1Reached()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_Test_if_Nil_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1649644839"
  l0.Is_nil = self.f_box_Test_if_Nil_22_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_22_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|238629297", "238629297", "Download Gameplay", "box_Ordered_Output_3.Out", "box_Test_if_Nil_22.In", clone, l0)
  l0:In()
end
function export:f_box_Simple_Node_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_17()
  l0 = self.box_MultipleOR_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|283285170", "283285170", "Download Gameplay", "box_Simple_Node_16.Out", "box_MultipleOR_17.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Simple_Node_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1980604247", "1980604247", "Download Gameplay", "box_Simple_Node_37.Out", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_AISquadStateController_14_TargetedSearchSet()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_AISquadStateController_14
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1607973653", "1607973653", "Download Gameplay", "box_AISquadStateController_14.TargetedSearchSet", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_25_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1490004354", "1490004354", "Download Gameplay", "box_Ordered_Output_25.Out", "Ratio2Reached", clone, self)
  self:Ratio2Reached()
end
function export:f_box_Ordered_Output_25_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_26"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|170924201"
  l0.Out = self.f_box_Simple_Node_26_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1926200178", "1926200178", "Download Gameplay", "box_Ordered_Output_25.Out", "box_Simple_Node_26.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_22_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_37"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1410689374"
  l0.Out = self.f_box_Simple_Node_37_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1596902875", "1596902875", "Download Gameplay", "box_Test_if_Nil_22.Is_nil", "box_Simple_Node_37.In", clone, l0)
  l0:In()
end
function export:f_box_Test_if_Nil_22_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_21
  l0.PhoneCommunicationDb = self.TeamSpeak
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2111695995", "2111695995", "Download Gameplay", "box_Test_if_Nil_22.Is_not_nil", "box_PhoneCommunicationController_21.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Simple_Node_38_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|722077883", "722077883", "Download Gameplay", "box_Simple_Node_38.Out", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_MultipleOR_34_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ReinforcementSystemMonitor_v2_29()
  l0 = self.box_MultipleOR_34
  l1 = self.box_ReinforcementSystemMonitor_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1084379979", "1084379979", "Download Gameplay", "box_MultipleOR_34.Out", "box_ReinforcementSystemMonitor_v2_29.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_MultipleOR_49_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FleeOnDownloadDetected
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|890494860"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_19_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_19_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_49
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|294546789", "294546789", "Download Gameplay", "box_MultipleOR_49.Out", "box_Compare_Boolean_v2_19.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_29_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ReinforcementSystemMonitor_v2_29
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|141553342", "141553342", "Download Gameplay", "box_ReinforcementSystemMonitor_v2_29.Enabled", "DownloadCompleted", l0, self)
  self:DownloadCompleted()
end
function export:f_box_ReinforcementSystemMonitor_v2_29_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_34()
  l0 = self.box_ReinforcementSystemMonitor_v2_29
  l1 = self.box_MultipleOR_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1397695937", "1397695937", "Download Gameplay", "box_ReinforcementSystemMonitor_v2_29.None", "box_MultipleOR_34.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ReinforcementSystemMonitor_v2_29_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_33"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|142344332"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_33_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_33_Out_1
  l0 = self.box_ReinforcementSystemMonitor_v2_29
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2085876725", "2085876725", "Download Gameplay", "box_ReinforcementSystemMonitor_v2_29.Reinforcing", "box_Ordered_Output_33.In", l0, l1)
  l1:In()
end
function export:f_box_SwitchOutput_v3_41_None()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|204837912"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0 = self.box_SwitchOutput_v3_41
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|504166116", "504166116", "Download Gameplay", "box_SwitchOutput_v3_41.None", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_SwitchOutput_v3_41_Output_0()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1955432641"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_SwitchOutput_v3_41
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|454411298", "454411298", "Download Gameplay", "box_SwitchOutput_v3_41.Output", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_27_None()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|968959529"
  l0.Is_nil = self.f_box_Test_if_Nil_24_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_24_Is_not_nil
  l0 = self.box_ReinforcementSystemMonitor_v2_27
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1603644972", "1603644972", "Download Gameplay", "box_ReinforcementSystemMonitor_v2_27.None", "box_Test_if_Nil_24.In", l0, l1)
  l1:In()
end
function export:f_box_ReinforcementSystemMonitor_v2_27_Reinforcing()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|7006046"
  l0.Out = self.f_box_Simple_Node_15_Out
  l0 = self.box_ReinforcementSystemMonitor_v2_27
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1523663919", "1523663919", "Download Gameplay", "box_ReinforcementSystemMonitor_v2_27.Reinforcing", "box_Simple_Node_15.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/FleeBehaviorController.lua")]
  l0.Target = self.TargetEntity
  l0.TargetList = nil
  l0.Destination = self.FleeDestination
  l0.Threat = self.PlayerEntity
  l0.Config = nil
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|930489288"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|891579982", "891579982", "Download Gameplay", "box_Get_Player_ID_2.Out", "box_Start_Update_Stop_flee_behavior_on_an_AI_8.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DetectionOnCustomRatio
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|432742088"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_30_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_42
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1390548121", "1390548121", "Download Gameplay", "box_MultipleOR_42.Out", "box_Compare_Boolean_v2_30.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_28_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_28
  l1 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|2066455620", "2066455620", "Download Gameplay", "box_MultipleOR_28.Out", "box_MultipleOR_18.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
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
  l0._name = "box_Test_if_Nil_48"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|6615947"
  l0.Is_nil = self.f_box_Test_if_Nil_48_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_48_Is_not_nil
  l0 = self.box_MultipleOR_23
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1125390582", "1125390582", "Download Gameplay", "box_MultipleOR_23.Out", "box_Test_if_Nil_48.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|61978495", "61978495", "Download Gameplay", "box_Ordered_Output_31.Out", "CustomRatioReached", clone, self)
  self:CustomRatioReached()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|623947559", "623947559", "Download Gameplay", "box_Ordered_Output_31.Out", "box_MultipleOR_42.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_46_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1628766542", "1628766542", "Download Gameplay", "box_Ordered_Output_46.Out", "Ratio1Reached PostReset", clone, self)
  self:Ratio1Reached_PostReset()
end
function export:f_box_Ordered_Output_46_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_38"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1667812205"
  l0.Out = self.f_box_Simple_Node_38_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|28556256", "28556256", "Download Gameplay", "box_Ordered_Output_46.Out", "box_Simple_Node_38.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_6()
  l0 = self.box_MultipleOR_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|613382262", "613382262", "Download Gameplay", "box_Ordered_Output_10.Out", "box_MultipleOR_6.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1875103163"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1318006972", "1318006972", "Download Gameplay", "box_Ordered_Output_10.Out", "box_Get_Player_ID_2.In", clone, l0)
  l0:In()
end
function export:f_box_AISquadStateMonitor_12_ArrestState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_AISquadStateMonitor_12
  l1 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|541200711", "541200711", "Download Gameplay", "box_AISquadStateMonitor_12.ArrestState", "box_MultipleOR_28.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_AISquadStateMonitor_12_CombatState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_AISquadStateMonitor_12
  l1 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|66687732", "66687732", "Download Gameplay", "box_AISquadStateMonitor_12.CombatState", "box_MultipleOR_28.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_12_None()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_AISquadStateMonitor_12
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1709609507", "1709609507", "Download Gameplay", "box_AISquadStateMonitor_12.None", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_AISquadStateMonitor_12_SearchState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_28()
  l0 = self.box_AISquadStateMonitor_12
  l1 = self.box_MultipleOR_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1861428966", "1861428966", "Download Gameplay", "box_AISquadStateMonitor_12.SearchState", "box_MultipleOR_28.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_AISquadStateMonitor_12_VanishState()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_35()
  l0 = self.box_AISquadStateMonitor_12
  l1 = self.box_MultipleOR_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1185898822", "1185898822", "Download Gameplay", "box_AISquadStateMonitor_12.VanishState", "box_MultipleOR_35.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_AISquadStateMonitor_12()
  l0 = self.box_MultipleOR_18
  l1 = self.box_AISquadStateMonitor_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\MissionIngredients.domino|@Download Gameplay|1605357328", "1605357328", "Download Gameplay", "box_MultipleOR_18.Out", "box_AISquadStateMonitor_12.Disable", l0, l1)
  l1:Disable()
end
function export:OnEnter_box_MultipleOR_13()
end
function export:OnEnter_box_MultipleOR_17()
end
function export:OnEnter_box_MultipleOR_35()
end
function export:OnEnter_box_VehicleMonitor_v3_4()
  local l0
  l0 = self.box_VehicleMonitor_v3_4
  l0.Pawn = self.TargetEntity
  l0.CheckNow = 1
end
function export:OnEnter_box_DownloadGameplayController_1()
  local l0
  l0 = self.box_DownloadGameplayController_1
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
function export:OnEnter_box_MultipleOR_6()
end
function export:OnEnter_box_MultipleOR_34()
end
function export:OnEnter_box_MultipleOR_49()
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_29()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_29
  l0.Affiliation = self.Affiliation
  l0.CheckNow = 1
end
function export:OnEnter_box_ReinforcementSystemMonitor_v2_27()
  local l0
  l0 = self.box_ReinforcementSystemMonitor_v2_27
  l0.Affiliation = self.Affiliation
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_MultipleOR_28()
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_AISquadStateMonitor_12()
  local l0
  l0 = self.box_AISquadStateMonitor_12
  l0.Affiliation = self.Affiliation
  l0.CheckStateNow = 1
end
function export:OnEnter_box_MultipleOR_18()
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
