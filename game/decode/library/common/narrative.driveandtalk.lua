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
  self[27] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.SetTrue = self.f_27_SetTrue
  l0.SetFalse = self.f_27_SetFalse
  l0.Toggled = self.f_27_Toggled
  l0.SetFromBool = self.f_27_SetFromBool
  self[12] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_12_Out
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[9] = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_9_Started
  l0.Stopped = self.f_9_Stopped
  l0.Paused = self.f_9_Paused
  l0.Resumed = self.f_9_Resumed
  l0.Failed = self.f_9_Failed
  l0.Finished = self.f_9_Finished
  self[16] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_16_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = self.f_15_Enabled
  l0.Disabled = self.f_15_Disabled
  l0.Enter = self.f_15_Enter
  l0.Entered = self.f_15_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_15_Leave
  l0.Exiting = self.f_15_Exiting
  l0.ChangeSeat = self.f_15_ChangeSeat
  l0.BailedOut = self.f_15_BailedOut
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
  self[4] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[23] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[5] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[31] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[19] = cbox:CreateBox("Domino/System/VehicleMonitor_v3.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_19_Enter
  l0.Entered = self.f_19_Entered
  l0.PassangerEntered = DummyFunction
  l0.Leave = self.f_19_Leave
  l0.Exiting = self.f_19_Exiting
  l0.ChangeSeat = self.f_19_ChangeSeat
  l0.BailedOut = self.f_19_BailedOut
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
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[30] = cbox:CreateBox("Domino/System/PlayerProximityMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_30_EnterRadius
  l0.ExitRadius = self.f_30_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[22] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[22]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_22_Out
  self[3] = cbox:CreateBox("Domino/System/GameplayConversationController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_3_Started
  l0.Stopped = self.f_3_Stopped
  l0.Paused = self.f_3_Paused
  l0.Resumed = self.f_3_Resumed
  l0.Failed = self.f_3_Failed
  l0.Finished = self.f_3_Finished
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[8] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
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
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:f_17_A_is_False()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Stop()
end
function export:f_17_A_is_True()
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
  l0.DBObject = self.RuleConfig
  l0._graph = self
  l0.Is_nil = self.f_13_Is_nil
  l0.Is_not_nil = self.f_13_Is_not_nil
  l0:In()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[27]
  self.CvFinished = l0.Target
end
function export:f_27_SetFalse()
  local l0
  self = self._graph
  l0 = self[27]
  self.CvFinished = l0.Target
end
function export:f_27_SetFromBool()
  local l0
  self = self._graph
  l0 = self[27]
  self.CvFinished = l0.Target
end
function export:f_27_SetTrue()
  local l0
  self = self._graph
  l0 = self[27]
  self.CvFinished = l0.Target
  self:TalkFinished()
end
function export:f_27_Toggled()
  local l0
  self = self._graph
  l0 = self[27]
  self.CvFinished = l0.Target
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(1)
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Disable()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_11_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:True()
end
function export:f_29_Is_nil()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(0)
end
function export:f_29_Is_not_nil()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:f_9_Failed()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_9_Finished()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_9_Paused()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_9_Resumed()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_9_Started()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_9_Stopped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_18_A_is_False()
  local l0
  self = self._graph
  self:en_16()
  l0 = self[16]
  l0:Start()
end
function export:f_13_Is_nil()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Stop()
end
function export:f_13_Is_not_nil()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Stop()
end
function export:f_16_TimeElapsed()
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
  l0.DBObject = self.RuleConfig
  l0._graph = self
  l0.Is_nil = self.f_6_Is_nil
  l0.Is_not_nil = self.f_6_Is_not_nil
  l0:In()
end
function export:f_2_Out_0()
  self = self._graph
  self:Started()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
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
  l0.Is_nil = self.f_21_Is_nil
  l0.Is_not_nil = self.f_21_Is_not_nil
  l0:In()
end
function export:f_1_Out_0()
  self = self._graph
  self:Stopped()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CvStarted
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_17_A_is_True
  l0.A_is_False = self.f_17_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_15_BailedOut()
  local l0
  self = self._graph
  l0 = self[15]
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_15_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[15]
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_15_Disabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Disable()
end
function export:f_15_Enabled()
  local l0
  self = self._graph
  self:en_19()
  l0 = self[19]
  l0:Enable()
end
function export:f_15_Enter()
  local l0
  self = self._graph
  l0 = self[15]
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_15_Entered()
  local l0
  self = self._graph
  l0 = self[15]
  self.VehiclePawn1 = l0.VehicleID
  l0 = self[22]
  l0:Input(1)
end
function export:f_15_Exiting()
  local l0
  self = self._graph
  l0 = self[15]
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_15_Leave()
  local l0
  self = self._graph
  l0 = self[15]
  self.VehiclePawn1 = l0.VehicleID
end
function export:f_6_Is_nil()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Start()
end
function export:f_6_Is_not_nil()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Start()
end
function export:f_4_Out()
  self = self._graph
  self:TalkResumed()
end
function export:f_23_Out()
  local l0
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
  l0.Is_nil = self.f_29_Is_nil
  l0.Is_not_nil = self.f_29_Is_not_nil
  l0:In()
end
function export:f_11_Out_0()
  local l0
  self = self._graph
  l0 = self[27]
  l0:True()
end
function export:f_28_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CvStarted
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_18_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_5_Out()
  self = self._graph
  self:TalkPaused()
end
function export:f_20_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CvFinished
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
function export:f_19_BailedOut()
  local l0
  self = self._graph
  l0 = self[19]
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_19_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[19]
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_19_Enter()
  local l0
  self = self._graph
  l0 = self[19]
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_19_Entered()
  local l0
  self = self._graph
  l0 = self[19]
  self.VehiclePawn2 = l0.VehicleID
  l0 = self[22]
  l0:Input(0)
end
function export:f_19_Exiting()
  local l0
  self = self._graph
  l0 = self[19]
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_19_Leave()
  local l0
  self = self._graph
  l0 = self[19]
  self.VehiclePawn2 = l0.VehicleID
end
function export:f_10_Out()
  self = self._graph
  self:Stopped()
end
function export:f_30_EnterRadius()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_30_ExitRadius()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(1)
end
function export:f_21_Is_nil()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_21_Is_not_nil()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Enable()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.VehiclePawn1
  l0.Entity2 = self.VehiclePawn2
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_20_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_3_Failed()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_3_Paused()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_3_Resumed()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_3_Started()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_3_Stopped()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_14_Out()
  self = self._graph
  self:TalkFailed()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.CvStarted = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.CvStarted = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.CvStarted = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.CvStarted = l0.Target
  self:TalkStarted()
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.CvStarted = l0.Target
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Users = self.PawnList
  l0.Conversation = self.Conversation
  l0.RuleConfig = "GameplayConversationSettings.9223372049814796295"
end
function export:en_16()
  local l0
  l0 = self[16]
  l0.Seconds = self.StartDelay
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.Pawn = self.Pawn1
  l0.CheckNow = 1
end
function export:en_19()
  local l0
  l0 = self[19]
  l0.Pawn = self.Pawn2
  l0.CheckNow = 1
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.TargetEntity = self.StartLimit_Destination
  l0.Radius = self.StartLimit_Radius
  l0.CheckNow = 1
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.User1 = self.Pawn1
  l0.User2 = self.Pawn2
  l0.Users = self.PawnList
  l0.Conversation = self.Conversation
  l0.RuleConfig = self.RuleConfig
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
