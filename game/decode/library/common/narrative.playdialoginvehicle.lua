export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("Domino/System/SetEntity.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Skipped = DummyFunction
  self.Started = DummyFunction
  self.Finished = DummyFunction
  self.VehicleIn = nil
  self.SetVehicle = nil
  self[7] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.SetTrue = self.f_7_SetTrue
  l0.SetFalse = self.f_7_SetFalse
  l0.Toggled = self.f_7_Toggled
  l0.SetFromBool = self.f_7_SetFromBool
  self[16] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = self.f_16_ListStarted
  l0.Finished = DummyFunction
  l0.ListFinished = self.f_16_ListFinished
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_2_Enter
  l0.Leave = self.f_2_Leave
  l0.ChangeSeat = self.f_2_ChangeSeat
  self[9] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[14] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[14]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_14_Out
  self[11] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.SetTrue = self.f_11_SetTrue
  l0.SetFalse = self.f_11_SetFalse
  l0.Toggled = self.f_11_Toggled
  l0.SetFromBool = self.f_11_SetFromBool
  self[1] = cbox:CreateBox("Domino/System/PlayDialog_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_1_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
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
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  self.HasFinished = l0.Target
end
function export:f_7_SetFalse()
  local l0
  self = self._graph
  l0 = self[7]
  self.HasFinished = l0.Target
end
function export:f_7_SetFromBool()
  local l0
  self = self._graph
  l0 = self[7]
  self.HasFinished = l0.Target
end
function export:f_7_SetTrue()
  local l0
  self = self._graph
  l0 = self[7]
  self.HasFinished = l0.Target
  self:Finished()
end
function export:f_7_Toggled()
  local l0
  self = self._graph
  l0 = self[7]
  self.HasFinished = l0.Target
end
function export:f_4_Equal()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(1)
end
function export:f_16_ListFinished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:True()
end
function export:f_16_ListStarted()
  self = self._graph
  self:Started()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  self.SetVehicle = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.SetVehicle
  l0.Entity2 = self.VehicleIn
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_4_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_8_Out_0()
  self = self._graph
  self:Skipped()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = self[14]
  l0:Input(0)
end
function export:f_13_Out_1()
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
  l0.Sound = self.SoundId
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_15_Is_nil
  l0.Is_not_nil = self.f_15_Is_not_nil
  l0:In()
end
function export:f_2_ChangeSeat()
  local l0
  self = self._graph
  l0 = self[2]
  self.VehicleIn = l0.Vehicle
end
function export:f_2_Enter()
  local l0
  self = self._graph
  l0 = self[2]
  self.VehicleIn = l0.Vehicle
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.SpecificVehicle
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_3_Is_nil
  l0.Is_not_nil = self.f_3_Is_not_nil
  l0:In()
end
function export:f_2_Leave()
  local l0
  self = self._graph
  l0 = self[2]
  self.VehicleIn = l0.Vehicle
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.SkipIfOut
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_6_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_6_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[11]
  self.HasFinished = l0.Target
end
function export:f_11_SetFalse()
  local l0
  self = self._graph
  l0 = self[11]
  self.HasFinished = l0.Target
end
function export:f_11_SetFromBool()
  local l0
  self = self._graph
  l0 = self[11]
  self.HasFinished = l0.Target
end
function export:f_11_SetTrue()
  local l0
  self = self._graph
  l0 = self[11]
  self.HasFinished = l0.Target
  self:Finished()
end
function export:f_11_Toggled()
  local l0
  self = self._graph
  l0 = self[11]
  self.HasFinished = l0.Target
end
function export:f_3_Is_nil()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_3_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetEntity.lua")]
  l0.Entity = self.SpecificVehicle
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:FromEntity()
end
function export:f_1_Finished()
  local l0
  self = self._graph
  l0 = self[11]
  l0:True()
end
function export:f_1_Started()
  self = self._graph
  self:Started()
end
function export:f_15_Is_nil()
  local l0
  self = self._graph
  l0 = self[16]
  l0.SoundIdList = self.SoundIdList
  l0.Queue = 1
  l0:Start()
end
function export:f_15_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SoundId = self.SoundId
  l0.Queue = 1
  l0:Start()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.CheckNow = 1
end
function export:Skipped()
end
function export:Started()
end
function export:Finished()
end
_compilerVersion = 4
