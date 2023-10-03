export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/GameplayConversationController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
  cbox:RegisterBox("Domino/System/VehicleMonitor_v3.lua")
end
function export:Init(cbox)
  local l0
  self._name = "DriveAndTalk"
  self._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk"
  self.TalkStarted = DummyFunction
  self.TalkFinished = DummyFunction
  self.TalkPaused = DummyFunction
  self.TalkResumed = DummyFunction
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.TalkFailed = DummyFunction
  self.Pawn1_Vehicle = nil
  self.Pawn2_Vehicle = nil
  self.Pawn1_InVehicle = 0
  self.Pawn2_InVehicle = 0
  self.CvStarted = 0
  self.CvFinished = 0
  self.VehiclePawn1 = nil
  self.VehiclePawn2 = nil
  self.box_SetBoolean_v2_27 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_27
  l0._graph = self
  l0._name = "box_SetBoolean_v2_27"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|151792030"
  l0.Out = self.f_box_SetBoolean_v2_27_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_27_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_27_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_27_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_27_SetFromBool
  self.box_MultipleOR_12 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_12
  l0._graph = self
  l0._name = "box_MultipleOR_12"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|391332926"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_12_Out
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|424464196"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_GameplayConversationController_v3_9 = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_9
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_9"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|504069811"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayConversationController_v3_9_Started
  l0.Stopped = self.f_box_GameplayConversationController_v3_9_Stopped
  l0.Paused = self.f_box_GameplayConversationController_v3_9_Paused
  l0.Resumed = self.f_box_GameplayConversationController_v3_9_Resumed
  l0.Failed = self.f_box_GameplayConversationController_v3_9_Failed
  l0.Finished = self.f_box_GameplayConversationController_v3_9_Finished
  self.box_Timer_v2_16 = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_16
  l0._graph = self
  l0._name = "box_Timer_v2_16"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|688118248"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_VehicleMonitor_v3_15 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_15
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_15"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|725815121"
  l0.Enabled = self.f_box_VehicleMonitor_v3_15_Enabled
  l0.Disabled = self.f_box_VehicleMonitor_v3_15_Disabled
  l0.Enter = self.f_box_VehicleMonitor_v3_15_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_15_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_15_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v3_15_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v3_15_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v3_15_BailedOut
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
  self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|891663985"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_MultipleOR_23 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_23
  l0._graph = self
  l0._name = "box_MultipleOR_23"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1221781621"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_23_Out
  self.box_MultipleOR_5 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1330243578"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_MultipleOR_31 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_31
  l0._graph = self
  l0._name = "box_MultipleOR_31"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1349558119"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_31_Out
  self.box_VehicleMonitor_v3_19 = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self.box_VehicleMonitor_v3_19
  l0._graph = self
  l0._name = "box_VehicleMonitor_v3_19"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1434174982"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_VehicleMonitor_v3_19_Enter
  l0.Entered = self.f_box_VehicleMonitor_v3_19_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_box_VehicleMonitor_v3_19_Leave
  l0.Exiting = self.f_box_VehicleMonitor_v3_19_Exiting
  l0.ChangeSeat = self.f_box_VehicleMonitor_v3_19_ChangeSeat
  l0.BailedOut = self.f_box_VehicleMonitor_v3_19_BailedOut
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
  self.box_MultipleOR_10 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_10
  l0._graph = self
  l0._name = "box_MultipleOR_10"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1565302620"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_10_Out
  self.box_Player_Proximity_Monitor_30 = cbox:CreateBox("Domino/System/PlayerProximityMonitor.lua")
  l0 = self.box_Player_Proximity_Monitor_30
  l0._graph = self
  l0._name = "box_Player_Proximity_Monitor_30"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1644797446"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_box_Player_Proximity_Monitor_30_EnterRadius
  l0.ExitRadius = self.f_box_Player_Proximity_Monitor_30_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self.box_MultipleOR_22 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_22
  l0._graph = self
  l0._name = "box_MultipleOR_22"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1674543080"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_22_Out
  self.box_GameplayConversationController_v3_3 = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self.box_GameplayConversationController_v3_3
  l0._graph = self
  l0._name = "box_GameplayConversationController_v3_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1688469252"
  l0.Out = DummyFunction
  l0.Started = self.f_box_GameplayConversationController_v3_3_Started
  l0.Stopped = self.f_box_GameplayConversationController_v3_3_Stopped
  l0.Paused = self.f_box_GameplayConversationController_v3_3_Paused
  l0.Resumed = self.f_box_GameplayConversationController_v3_3_Resumed
  l0.Failed = self.f_box_GameplayConversationController_v3_3_Failed
  l0.Finished = self.f_box_GameplayConversationController_v3_3_Finished
  self.box_MultipleOR_14 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_14
  l0._graph = self
  l0._name = "box_MultipleOR_14"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1952475943"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_14_Out
  self.box_SetBoolean_v2_8 = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_8
  l0._graph = self
  l0._name = "box_SetBoolean_v2_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|2008646013"
  l0.Out = self.f_box_SetBoolean_v2_8_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_8_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_8_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_8_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_8_SetFromBool
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
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|698947497"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1571655983", "1571655983", "DriveAndTalk", "Start", "box_Ordered_Output_2.In", self, l0)
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|708107392"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_1_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_1_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1686121620", "1686121620", "DriveAndTalk", "Stop", "box_Ordered_Output_1.In", self, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_17_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_16()
  l0 = self.box_Timer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1273461504", "1273461504", "DriveAndTalk", "box_Compare_Boolean_v2_17.A_is_False", "box_Timer_v2_16.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Compare_Boolean_v2_17_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
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
  l0.DBObject = self.RuleConfig
  l0._graph = self
  l0._name = "box_Test_if_Nil_13"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|583579107"
  l0.Is_nil = self.f_box_Test_if_Nil_13_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_13_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|793132338", "793132338", "DriveAndTalk", "box_Compare_Boolean_v2_17.A_is_True", "box_Test_if_Nil_13.In", clone, l0)
  l0:In()
end
function export:f_box_SetBoolean_v2_27_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.CvFinished = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.CvFinished = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.CvFinished = l0.Target
end
function export:f_box_SetBoolean_v2_27_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.CvFinished = l0.Target
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|581552237", "581552237", "DriveAndTalk", "box_SetBoolean_v2_27.SetTrue", "TalkFinished", l0, self)
  self:TalkFinished()
end
function export:f_box_SetBoolean_v2_27_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_27
  self.CvFinished = l0.Target
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1143781358", "1143781358", "DriveAndTalk", "box_Ordered_Output_24.Out", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_15()
  l0 = self.box_VehicleMonitor_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|277904502", "277904502", "DriveAndTalk", "box_Ordered_Output_24.Out", "box_VehicleMonitor_v3_15.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MultipleOR_12_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_11"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1231811512"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_11_Out_0
  l0.Out[1] = DummyFunction
  l0 = self.box_MultipleOR_12
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1009746409", "1009746409", "DriveAndTalk", "box_MultipleOR_12.Out", "box_Ordered_Output_11.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_7
  l1 = self.box_SetBoolean_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|675119523", "675119523", "DriveAndTalk", "box_MultipleOR_7.Out", "box_SetBoolean_v2_8.True", l0, l1)
  l1:True()
end
function export:f_box_Test_if_Nil_29_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|879707298", "879707298", "DriveAndTalk", "box_Test_if_Nil_29.Is_nil", "box_MultipleOR_31.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_29_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_Proximity_Monitor_30()
  l0 = self.box_Player_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1030209670", "1030209670", "DriveAndTalk", "box_Test_if_Nil_29.Is_not_nil", "box_Player_Proximity_Monitor_30.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_GameplayConversationController_v3_9_Failed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_GameplayConversationController_v3_9
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|575520224", "575520224", "DriveAndTalk", "box_GameplayConversationController_v3_9.Failed", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_9_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_GameplayConversationController_v3_9
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1861964910", "1861964910", "DriveAndTalk", "box_GameplayConversationController_v3_9.Finished", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_9_Paused()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_GameplayConversationController_v3_9
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1932693412", "1932693412", "DriveAndTalk", "box_GameplayConversationController_v3_9.Paused", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_9_Resumed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_GameplayConversationController_v3_9
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1662191913", "1662191913", "DriveAndTalk", "box_GameplayConversationController_v3_9.Resumed", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_9_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_GameplayConversationController_v3_9
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1947154749", "1947154749", "DriveAndTalk", "box_GameplayConversationController_v3_9.Started", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_GameplayConversationController_v3_9_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_GameplayConversationController_v3_9
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|188346901", "188346901", "DriveAndTalk", "box_GameplayConversationController_v3_9.Stopped", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Compare_Boolean_v2_18_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Timer_v2_16()
  l0 = self.box_Timer_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1795270986", "1795270986", "DriveAndTalk", "box_Compare_Boolean_v2_18.A_is_False", "box_Timer_v2_16.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_13_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_9()
  l0 = self.box_GameplayConversationController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1377229077", "1377229077", "DriveAndTalk", "box_Test_if_Nil_13.Is_nil", "box_GameplayConversationController_v3_9.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Test_if_Nil_13_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_3()
  l0 = self.box_GameplayConversationController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|595644467", "595644467", "DriveAndTalk", "box_Test_if_Nil_13.Is_not_nil", "box_GameplayConversationController_v3_3.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Timer_v2_16_TimeElapsed()
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
  l0.DBObject = self.RuleConfig
  l0._graph = self
  l0._name = "box_Test_if_Nil_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|872518491"
  l0.Is_nil = self.f_box_Test_if_Nil_6_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_6_Is_not_nil
  l0 = self.box_Timer_v2_16
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1957687704", "1957687704", "DriveAndTalk", "box_Timer_v2_16.TimeElapsed", "box_Test_if_Nil_6.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|277674954", "277674954", "DriveAndTalk", "box_Ordered_Output_2.Out", "Started", clone, self)
  self:Started()
end
function export:f_box_Ordered_Output_2_Out_1()
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
  l0.Entity = self.Pawn1
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_21"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1669896290"
  l0.Is_nil = self.f_box_Test_if_Nil_21_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_21_Is_not_nil
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|270865983", "270865983", "DriveAndTalk", "box_Ordered_Output_2.Out", "box_Test_if_Nil_21.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1702370417", "1702370417", "DriveAndTalk", "box_Ordered_Output_1.Out", "Stopped", clone, self)
  self:Stopped()
end
function export:f_box_Ordered_Output_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CvStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_17"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|141391"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_17_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_17_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|2086071789", "2086071789", "DriveAndTalk", "box_Ordered_Output_1.Out", "box_Compare_Boolean_v2_17.In", clone, l0)
  l0:In()
end
function export:f_box_VehicleMonitor_v3_15_BailedOut()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_15
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_15_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_15
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_15_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_19()
  l0 = self.box_VehicleMonitor_v3_15
  l1 = self.box_VehicleMonitor_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1984684090", "1984684090", "DriveAndTalk", "box_VehicleMonitor_v3_15.Disabled", "box_VehicleMonitor_v3_19.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_VehicleMonitor_v3_15_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_VehicleMonitor_v3_19()
  l0 = self.box_VehicleMonitor_v3_15
  l1 = self.box_VehicleMonitor_v3_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|811298497", "811298497", "DriveAndTalk", "box_VehicleMonitor_v3_15.Enabled", "box_VehicleMonitor_v3_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_VehicleMonitor_v3_15_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_15
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_15_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_15
  self.VehiclePawn1 = l0.VehicleID
  self:OnEnter_box_MultipleOR_22()
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1126948460", "1126948460", "DriveAndTalk", "box_VehicleMonitor_v3_15.Entered", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_VehicleMonitor_v3_15_Exiting()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_15
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_15_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_15
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_box_Test_if_Nil_6_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_9()
  l0 = self.box_GameplayConversationController_v3_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|503522712", "503522712", "DriveAndTalk", "box_Test_if_Nil_6.Is_nil", "box_GameplayConversationController_v3_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Test_if_Nil_6_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_GameplayConversationController_v3_3()
  l0 = self.box_GameplayConversationController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1685324754", "1685324754", "DriveAndTalk", "box_Test_if_Nil_6.Is_not_nil", "box_GameplayConversationController_v3_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_4_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|139297853", "139297853", "DriveAndTalk", "box_MultipleOR_4.Out", "TalkResumed", l0, self)
  self:TalkResumed()
end
function export:f_box_MultipleOR_23_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.StartLimit_Destination
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0._name = "box_Test_if_Nil_29"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|430933186"
  l0.Is_nil = self.f_box_Test_if_Nil_29_Is_nil
  l0.Is_not_nil = self.f_box_Test_if_Nil_29_Is_not_nil
  l0 = self.box_MultipleOR_23
  l1 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1617009223", "1617009223", "DriveAndTalk", "box_MultipleOR_23.Out", "box_Test_if_Nil_29.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_11_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_SetBoolean_v2_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|468097309", "468097309", "DriveAndTalk", "box_Ordered_Output_11.Out", "box_SetBoolean_v2_27.True", clone, l0)
  l0:True()
end
function export:f_box_Compare_Boolean_v2_28_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CvStarted
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_18"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|541016934"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1068260576", "1068260576", "DriveAndTalk", "box_Compare_Boolean_v2_28.A_is_False", "box_Compare_Boolean_v2_18.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_5_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1052723724", "1052723724", "DriveAndTalk", "box_MultipleOR_5.Out", "TalkPaused", l0, self)
  self:TalkPaused()
end
function export:f_box_Compare_Entity_v2_20_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|373253430"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|126913296", "126913296", "DriveAndTalk", "box_Compare_Entity_v2_20.Equal", "box_Ordered_Output_24.In", clone, l0)
  l0:In()
end
function export:f_box_MultipleOR_31_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CvFinished
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_28"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1263848617"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_28_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_31
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|184967027", "184967027", "DriveAndTalk", "box_MultipleOR_31.Out", "box_Compare_Boolean_v2_28.In", l0, l1)
  l1:In()
end
function export:f_box_VehicleMonitor_v3_19_BailedOut()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_19
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_19_ChangeSeat()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_19
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_19_Enter()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_19
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_19_Entered()
  local l0, l1
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_19
  self.VehiclePawn2 = l0.VehicleID
  self:OnEnter_box_MultipleOR_22()
  l1 = self.box_MultipleOR_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1820534378", "1820534378", "DriveAndTalk", "box_VehicleMonitor_v3_19.Entered", "box_MultipleOR_22.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_VehicleMonitor_v3_19_Exiting()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_19
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_box_VehicleMonitor_v3_19_Leave()
  local l0
  self = self._graph
  l0 = self.box_VehicleMonitor_v3_19
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_box_MultipleOR_10_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|130626839", "130626839", "DriveAndTalk", "box_MultipleOR_10.Out", "Stopped", l0, self)
  self:Stopped()
end
function export:f_box_Player_Proximity_Monitor_30_EnterRadius()
  local l0
  self = self._graph
  self:OnEnter_box_Player_Proximity_Monitor_30()
  l0 = self.box_Player_Proximity_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|406998556", "406998556", "DriveAndTalk", "box_Player_Proximity_Monitor_30.EnterRadius", "box_Player_Proximity_Monitor_30.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Player_Proximity_Monitor_30_ExitRadius()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_31()
  l0 = self.box_Player_Proximity_Monitor_30
  l1 = self.box_MultipleOR_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1348499866", "1348499866", "DriveAndTalk", "box_Player_Proximity_Monitor_30.ExitRadius", "box_MultipleOR_31.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Test_if_Nil_21_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_23()
  l0 = self.box_MultipleOR_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|284144921", "284144921", "DriveAndTalk", "box_Test_if_Nil_21.Is_nil", "box_MultipleOR_23.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Test_if_Nil_21_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_VehicleMonitor_v3_15()
  l0 = self.box_VehicleMonitor_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1624372023", "1624372023", "DriveAndTalk", "box_Test_if_Nil_21.Is_not_nil", "box_VehicleMonitor_v3_15.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_22_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.VehiclePawn1
  l0.Entity2 = self.VehiclePawn2
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_20"
  l0._elementPathId = "DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1333508054"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_20_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_MultipleOR_22
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1004059891", "1004059891", "DriveAndTalk", "box_MultipleOR_22.Out", "box_Compare_Entity_v2_20.In", l0, l1)
  l1:In()
end
function export:f_box_GameplayConversationController_v3_3_Failed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_14()
  l0 = self.box_GameplayConversationController_v3_3
  l1 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|447089094", "447089094", "DriveAndTalk", "box_GameplayConversationController_v3_3.Failed", "box_MultipleOR_14.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_12()
  l0 = self.box_GameplayConversationController_v3_3
  l1 = self.box_MultipleOR_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|155810831", "155810831", "DriveAndTalk", "box_GameplayConversationController_v3_3.Finished", "box_MultipleOR_12.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_3_Paused()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_GameplayConversationController_v3_3
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1376644657", "1376644657", "DriveAndTalk", "box_GameplayConversationController_v3_3.Paused", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_3_Resumed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_GameplayConversationController_v3_3
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|33475681", "33475681", "DriveAndTalk", "box_GameplayConversationController_v3_3.Resumed", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_3_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_GameplayConversationController_v3_3
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|63884866", "63884866", "DriveAndTalk", "box_GameplayConversationController_v3_3.Started", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_GameplayConversationController_v3_3_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_10()
  l0 = self.box_GameplayConversationController_v3_3
  l1 = self.box_MultipleOR_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|188469520", "188469520", "DriveAndTalk", "box_GameplayConversationController_v3_3.Stopped", "box_MultipleOR_10.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MultipleOR_14_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|1605561922", "1605561922", "DriveAndTalk", "box_MultipleOR_14.Out", "TalkFailed", l0, self)
  self:TalkFailed()
end
function export:f_box_SetBoolean_v2_8_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.CvStarted = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.CvStarted = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.CvStarted = l0.Target
end
function export:f_box_SetBoolean_v2_8_SetTrue()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.CvStarted = l0.Target
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\common\\Narrative.domino|@DriveAndTalk|889500695", "889500695", "DriveAndTalk", "box_SetBoolean_v2_8.SetTrue", "TalkStarted", l0, self)
  self:TalkStarted()
end
function export:f_box_SetBoolean_v2_8_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_8
  self.CvStarted = l0.Target
end
function export:OnEnter_box_MultipleOR_12()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_GameplayConversationController_v3_9()
  local l0
  l0 = self.box_GameplayConversationController_v3_9
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Users = self.PawnList
  l0.Conversation = self.Conversation
  l0.RuleConfig = "GameplayConversationSettings.9223372049814796295"
end
function export:OnEnter_box_Timer_v2_16()
  local l0
  l0 = self.box_Timer_v2_16
  l0.Seconds = self.StartDelay
end
function export:OnEnter_box_VehicleMonitor_v3_15()
  local l0
  l0 = self.box_VehicleMonitor_v3_15
  l0.Pawn = self.Pawn1
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_MultipleOR_23()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_MultipleOR_31()
end
function export:OnEnter_box_VehicleMonitor_v3_19()
  local l0
  l0 = self.box_VehicleMonitor_v3_19
  l0.Pawn = self.Pawn2
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_10()
end
function export:OnEnter_box_Player_Proximity_Monitor_30()
  local l0
  l0 = self.box_Player_Proximity_Monitor_30
  l0.TargetEntity = self.StartLimit_Destination
  l0.Radius = self.StartLimit_Radius
  l0.CheckNow = 1
end
function export:OnEnter_box_MultipleOR_22()
end
function export:OnEnter_box_GameplayConversationController_v3_3()
  local l0
  l0 = self.box_GameplayConversationController_v3_3
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Users = self.PawnList
  l0.Conversation = self.Conversation
  l0.RuleConfig = self.RuleConfig
end
function export:OnEnter_box_MultipleOR_14()
end
function export:TalkStarted()
end
function export:TalkFinished()
end
function export:TalkPaused()
end
function export:TalkResumed()
end
function export:Started()
end
function export:Stopped()
end
function export:TalkFailed()
end
_compilerVersion = 4
