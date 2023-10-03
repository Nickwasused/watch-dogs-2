export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("domino/System/StimEmitterController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VehicleMonitor_v3.lua")
end
function export:Init(cbox)
  local l0
  self.IsUnderwater = 0
  self[6] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[2] = cbox:CreateBox("domino/System/VehicleMonitor_v3.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.Enter = DummyFunction
  l0.Entered = DummyFunction
  l0.PassangerEntered = DummyFunction
  l0.Leave = DummyFunction
  l0.Exiting = DummyFunction
  l0.ChangeSeat = DummyFunction
  l0.BailedOut = DummyFunction
  l0.IsPawnHiding = DummyFunction
  l0.PawnIsNotHiding = DummyFunction
  l0.StateChange = DummyFunction
  l0.TakenDamage = DummyFunction
  l0.IsUnusable = DummyFunction
  l0.IsUnderwater = self.f_2_IsUnderwater
  l0.NoMoveTimer = DummyFunction
  l0.OnMoveTimer = DummyFunction
  l0.IsSlowEnoughToExit = DummyFunction
  l0.VehicleJump = self.f_2_VehicleJump
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
  self[8] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.SetTrue = self.f_8_SetTrue
  l0.SetFalse = self.f_8_SetFalse
  l0.Toggled = self.f_8_Toggled
  l0.SetFromBool = self.f_8_SetFromBool
  self[1] = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[1]
  l0._graph = self
  l0.Attached = self.f_1_Attached
  self[3] = cbox:CreateBox("domino/System/Timer_v2.lua")
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
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self[1]
  l0.Parent = self.Car
  l0.Child = self.StimEmitor
  l0:Attach()
end
function export:f_6_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_4_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0:SetEnabled()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Seconds = 3
  l0:Start()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_2_IsUnderwater()
  local l0
  self = self._graph
  l0 = self[8]
  l0:True()
end
function export:f_2_VehicleJump()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Reset()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsUnderwater = l0.Target
end
function export:f_8_SetFalse()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsUnderwater = l0.Target
end
function export:f_8_SetFromBool()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsUnderwater = l0.Target
end
function export:f_8_SetTrue()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsUnderwater = l0.Target
  l0 = self[4]
  l0:In(0)
end
function export:f_8_Toggled()
  local l0
  self = self._graph
  l0 = self[8]
  self.IsUnderwater = l0.Target
end
function export:f_1_Attached()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_5_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsUnderwater
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_5_Enabled()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_3_TimeElapsed()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0:SetDisabled()
end
function export:f_11_A_is_False()
  local l0
  self = self._graph
  l0 = self[6]
  l0.Seconds = 8
  l0:Start()
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Vehicle = self.Car
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("domino/System/StimEmitterController.lua")]
  l0.StimEmitter = self.StimEmitor
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = self.f_5_Enabled
  l0.Disabled = self.f_5_Disabled
end
_compilerVersion = 4
