export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self[7] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_7_MessageCompleted
  self[2] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[8] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[4] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_4_Out
  self[3] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_3_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[9]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_9_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[10] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[11] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_11_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:End()
  local l0
  l0 = self[10]
  l0.CheckpointList = self.Checkpoint
  l0:In()
end
function export:FromCheckpoint()
  local l0
  l0 = self[4]
  l0:Input(2)
end
function export:f_7_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_5_Is_nil()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(0)
end
function export:f_5_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.BypassObjectiveCompleteMessage
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_6_A_is_True
  l0.A_is_False = self.f_6_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_13_A_is_False()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_13_A_is_True()
  local l0
  self = self._graph
  l0 = self[7]
  l0:ShowMissionComplete()
end
function export:f_1_Is_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_1_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[9]
  l0.PhoneCommunicationDb = self.Teamspeak
  l0:StartCommunication()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Seconds = 2
  l0:Start()
end
function export:f_14_Is_nil()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_14_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ShowMissionComplete
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_13_A_is_True
  l0.A_is_False = self.f_13_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_3_TimeElapsed()
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
  l0.DBObject = self.Teamspeak
  l0._graph = self
  l0.Is_nil = self.f_1_Is_nil
  l0.Is_not_nil = self.f_1_Is_not_nil
  l0:In()
end
function export:f_9_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.ShowMissionComplete
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_14_Is_nil
  l0.Is_not_nil = self.f_14_Is_not_nil
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.BypassObjectiveCompleteMessage
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_5_Is_nil
  l0.Is_not_nil = self.f_5_Is_not_nil
  l0:In()
end
function export:f_6_A_is_False()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Input(1)
end
function export:f_6_A_is_True()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:ShowLastObjectiveComplete()
end
_compilerVersion = 4
