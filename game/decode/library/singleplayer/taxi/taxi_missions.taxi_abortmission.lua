export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TaxiStrategiesController.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.AbortRequested = 0
  self[6] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_6_Unloaded
  l0.Reseted = DummyFunction
  self[29] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0.SetTrue = self.f_29_SetTrue
  l0.SetFalse = self.f_29_SetFalse
  l0.Toggled = self.f_29_Toggled
  l0.SetFromBool = self.f_29_SetFromBool
  self[39] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_39_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_11_Out
  self[35] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0.SetTrue = self.f_35_SetTrue
  l0.SetFalse = self.f_35_SetFalse
  l0.Toggled = self.f_35_Toggled
  l0.SetFromBool = self.f_35_SetFromBool
  self[7] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.AllCheckpointsDisabled = self.f_7_AllCheckpointsDisabled
  self[32] = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[19]
  l0._graph = self
  self[18] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[18]
  l0._graph = self
  self[20] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[20]
  l0._graph = self
  self[4] = cbox:CreateBox("Domino/System/TaxiStrategiesController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_4_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
  self[17] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_17_Out
  self[23] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.SetTrue = self.f_23_SetTrue
  l0.SetFalse = self.f_23_SetFalse
  l0.Toggled = self.f_23_Toggled
  l0.SetFromBool = self.f_23_SetFromBool
  self[10] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_10_Out
  self[27] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.SetTrue = self.f_27_SetTrue
  l0.SetFalse = self.f_27_SetFalse
  l0.Toggled = self.f_27_Toggled
  l0.SetFromBool = self.f_27_SetFromBool
  self[25] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.SetTrue = self.f_25_SetTrue
  l0.SetFalse = self.f_25_SetFalse
  l0.Toggled = self.f_25_Toggled
  l0.SetFromBool = self.f_25_SetFromBool
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 5}
  l0.Out = self.f_12_Out
  self[9] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_9_Out
  self[37] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_37_Out
  self[8] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[31] = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Failed = DummyFunction
  l0.Finished = DummyFunction
  self[38] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[38]
  l0._graph = self
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:ClientBailedOut()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_34_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:ClientDead()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_26_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:ClientLeft()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:PlayerAbandonedVehicle()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_24_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:VehicleUnusable()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.AbortRequested
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_22_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_Unloaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0.Out[3] = self.f_21_Out_3
  l0.Out[4] = self.f_21_Out_4
  l0:In()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[29]
  self.AbortRequested = l0.Target
end
function export:f_29_SetFalse()
  local l0
  self = self._graph
  l0 = self[29]
  self.AbortRequested = l0.Target
end
function export:f_29_SetFromBool()
  local l0
  self = self._graph
  l0 = self[29]
  self.AbortRequested = l0.Target
end
function export:f_29_SetTrue()
  local l0
  self = self._graph
  l0 = self[29]
  self.AbortRequested = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_29_Toggled()
  local l0
  self = self._graph
  l0 = self[29]
  self.AbortRequested = l0.Target
end
function export:f_39_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_1_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailClientDead",
    id = "337821"
  }
  l0:Fail()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[35]
  self.AbortRequested = l0.Target
end
function export:f_35_SetFalse()
  local l0
  self = self._graph
  l0 = self[35]
  self.AbortRequested = l0.Target
end
function export:f_35_SetFromBool()
  local l0
  self = self._graph
  l0 = self[35]
  self.AbortRequested = l0.Target
end
function export:f_35_SetTrue()
  local l0
  self = self._graph
  l0 = self[35]
  self.AbortRequested = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_36_Out_0
  l0.Out[1] = self.f_36_Out_1
  l0:In()
end
function export:f_35_Toggled()
  local l0
  self = self._graph
  l0 = self[35]
  self.AbortRequested = l0.Target
end
function export:f_7_AllCheckpointsDisabled()
  local l0
  self = self._graph
  l0 = self[6]
  l0.LayerName = self.LayerName
  l0:Unload()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_1_Shown()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Config = self.StrategyConfig
  l0:Stop()
end
function export:f_28_A_is_False()
  local l0
  self = self._graph
  l0 = self[29]
  l0:True()
end
function export:f_4_Stopped()
  local l0
  self = self._graph
  l0 = self[7]
  l0:DisableAllCheckpoints()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailAwayFromCar",
    id = "337824"
  }
  l0:Fail()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[23]
  self.AbortRequested = l0.Target
end
function export:f_23_SetFalse()
  local l0
  self = self._graph
  l0 = self[23]
  self.AbortRequested = l0.Target
end
function export:f_23_SetFromBool()
  local l0
  self = self._graph
  l0 = self[23]
  self.AbortRequested = l0.Target
end
function export:f_23_SetTrue()
  local l0
  self = self._graph
  l0 = self[23]
  self.AbortRequested = l0.Target
  l0 = self[31]
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Conversation = self.Conversation
  l0:Start()
end
function export:f_23_Toggled()
  local l0
  self = self._graph
  l0 = self[23]
  self.AbortRequested = l0.Target
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailAwayFromCar",
    id = "337824"
  }
  l0:Fail()
end
function export:f_15_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Condition(0)
end
function export:f_15_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(2)
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[27]
  self.AbortRequested = l0.Target
end
function export:f_27_SetFalse()
  local l0
  self = self._graph
  l0 = self[27]
  self.AbortRequested = l0.Target
end
function export:f_27_SetFromBool()
  local l0
  self = self._graph
  l0 = self[27]
  self.AbortRequested = l0.Target
end
function export:f_27_SetTrue()
  local l0
  self = self._graph
  l0 = self[27]
  self.AbortRequested = l0.Target
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_15_Out_0
  l0.Out[1] = self.f_15_Out_1
  l0:In()
end
function export:f_27_Toggled()
  local l0
  self = self._graph
  l0 = self[27]
  self.AbortRequested = l0.Target
end
function export:f_22_A_is_False()
  local l0
  self = self._graph
  l0 = self[23]
  l0:True()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Condition(0)
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[25]
  self.AbortRequested = l0.Target
end
function export:f_25_SetFalse()
  local l0
  self = self._graph
  l0 = self[25]
  self.AbortRequested = l0.Target
end
function export:f_25_SetFromBool()
  local l0
  self = self._graph
  l0 = self[25]
  self.AbortRequested = l0.Target
end
function export:f_25_SetTrue()
  local l0
  self = self._graph
  l0 = self[25]
  self.AbortRequested = l0.Target
  l0 = self[32]
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Conversation = self.Conversation
  l0:Start()
end
function export:f_25_Toggled()
  local l0
  self = self._graph
  l0 = self[25]
  self.AbortRequested = l0.Target
end
function export:f_24_A_is_False()
  local l0
  self = self._graph
  l0 = self[25]
  l0:True()
end
function export:f_26_A_is_False()
  local l0
  self = self._graph
  l0 = self[27]
  l0:True()
end
function export:f_36_Out_0()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Condition(0)
end
function export:f_36_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(4)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Condition(1)
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Condition(1)
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Condition(1)
end
function export:f_21_Out_3()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Condition(1)
end
function export:f_21_Out_4()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Condition(1)
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Condition(0)
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(3)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailVehicleTotaled",
    id = "337822"
  }
  l0:Fail()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[38]
  l0.EndReason = {
    section = "BUCHAREST_SPECIFIC.TAXI.Taxi_objectives",
    item = "FailClientBailedOut",
    id = "606652"
  }
  l0:Fail()
end
function export:f_34_A_is_False()
  local l0
  self = self._graph
  l0 = self[35]
  l0:True()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Condition(0)
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
_compilerVersion = 4
