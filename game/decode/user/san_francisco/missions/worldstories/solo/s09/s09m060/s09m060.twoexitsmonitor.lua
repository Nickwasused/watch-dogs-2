export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/MoveableEntityMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
end
function export:Init(cbox)
  local l0
  self.FirstDoorExit = DummyFunction
  self.SecondDoorExit = DummyFunction
  self.NoExit = DummyFunction
  self.ExitChanged = DummyFunction
  self.Disabled = DummyFunction
  self.Enabled = DummyFunction
  self.FirstMovableState = 0
  self.SecondMovableState = 0
  self.TempInteger = 0
  self[5] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_5_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_5_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MoveableEntityMonitor.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = self.f_10_Disabled
  l0.OnMovementStarted = DummyFunction
  l0.OnMovementFinished = DummyFunction
  l0.OnFwdMovementStarted = DummyFunction
  l0.OnFwdMovementFinished = self.f_10_OnFwdMovementFinished
  l0.OnBkwMovementStarted = DummyFunction
  l0.OnBkwMovementFinished = self.f_10_OnBkwMovementFinished
  l0.OnMovementBlocked = DummyFunction
  l0.OnMovementUnblocked = DummyFunction
  l0.OnMovementPaused = DummyFunction
  l0.OnMovementUnpaused = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_12_Out
  self[4] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.SetTrue = self.f_4_SetTrue
  l0.SetFalse = self.f_4_SetFalse
  l0.Toggled = self.f_4_Toggled
  l0.SetFromBool = self.f_4_SetFromBool
  self[11] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[11]
  l0._graph = self
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_11_Out
  self[8] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[7] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.SetTrue = self.f_7_SetTrue
  l0.SetFalse = self.f_7_SetFalse
  l0.Toggled = self.f_7_Toggled
  l0.SetFromBool = self.f_7_SetFromBool
  self[6] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.SetTrue = self.f_6_SetTrue
  l0.SetFalse = self.f_6_SetFalse
  l0.Toggled = self.f_6_Toggled
  l0.SetFromBool = self.f_6_SetFromBool
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = self.CurrentExitNo
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromInteger()
end
function export:Enable()
  local l0
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = self.CurrentExitNo
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:FromInteger()
end
function export:f_3_Out_0()
  self = self._graph
  self:FirstDoorExit()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_5_Disabled()
  self = self._graph
  self:Disabled()
end
function export:f_5_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_5_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = self[7]
  l0:False()
end
function export:f_5_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:True()
end
function export:f_10_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_10_OnBkwMovementFinished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:False()
end
function export:f_10_OnFwdMovementFinished()
  local l0
  self = self._graph
  l0 = self[8]
  l0:True()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_1_A_xor_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:FromInteger()
end
function export:f_2_Out_0()
  self = self._graph
  self:SecondDoorExit()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_12_Out()
  self = self._graph
  self:ExitChanged()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[4]
  self.SecondMovableState = l0.Target
end
function export:f_4_SetFalse()
  local l0
  self = self._graph
  l0 = self[4]
  self.SecondMovableState = l0.Target
end
function export:f_4_SetFromBool()
  local l0
  self = self._graph
  l0 = self[4]
  self.SecondMovableState = l0.Target
end
function export:f_4_SetTrue()
  local l0
  self = self._graph
  l0 = self[4]
  self.SecondMovableState = l0.Target
  l0 = self[11]
  l0:Input(2)
end
function export:f_4_Toggled()
  local l0
  self = self._graph
  l0 = self[4]
  self.SecondMovableState = l0.Target
end
function export:f_13_Out_0()
  self = self._graph
  self:NoExit()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(2)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMovableState
  l0.B = self.SecondMovableState
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_9_A_is_True
  l0.A_is_False = self.f_9_A_is_False
  l0.A_and_B = self.f_9_A_and_B
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_9_A_and_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:FromInteger()
end
function export:f_9_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:FromInteger()
end
function export:f_9_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMovableState
  l0.B = self.SecondMovableState
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = self.f_1_A_xor_B
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.FirstMovableState = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.FirstMovableState = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.FirstMovableState = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.FirstMovableState = l0.Target
  l0 = self[11]
  l0:Input(0)
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.FirstMovableState = l0.Target
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  self.SecondMovableState = l0.Target
end
function export:f_7_SetFalse()
  local l0
  self = self._graph
  l0 = self[7]
  self.SecondMovableState = l0.Target
  l0 = self[11]
  l0:Input(3)
end
function export:f_7_SetFromBool()
  local l0
  self = self._graph
  l0 = self[7]
  self.SecondMovableState = l0.Target
end
function export:f_7_SetTrue()
  local l0
  self = self._graph
  l0 = self[7]
  self.SecondMovableState = l0.Target
end
function export:f_7_Toggled()
  local l0
  self = self._graph
  l0 = self[7]
  self.SecondMovableState = l0.Target
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.ExitNo = l0.Target
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[6]
  self.FirstMovableState = l0.Target
end
function export:f_6_SetFalse()
  local l0
  self = self._graph
  l0 = self[6]
  self.FirstMovableState = l0.Target
  l0 = self[11]
  l0:Input(1)
end
function export:f_6_SetFromBool()
  local l0
  self = self._graph
  l0 = self[6]
  self.FirstMovableState = l0.Target
end
function export:f_6_SetTrue()
  local l0
  self = self._graph
  l0 = self[6]
  self.FirstMovableState = l0.Target
end
function export:f_6_Toggled()
  local l0
  self = self._graph
  l0 = self[6]
  self.FirstMovableState = l0.Target
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MoveableEntity = self.SecondDoor
  l0.CheckNow = 1
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.MoveableEntity = self.FirstDoor
  l0.CheckNow = 1
end
function export:FirstDoorExit()
end
function export:SecondDoorExit()
end
function export:NoExit()
end
function export:ExitChanged()
end
function export:Disabled()
end
function export:Enabled()
end
_compilerVersion = 4
