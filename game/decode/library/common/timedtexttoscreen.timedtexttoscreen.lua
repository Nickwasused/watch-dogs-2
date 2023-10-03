export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/InputListenerMonitor.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("Domino/System/ShowOrHideAllUI.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("Domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.TimeElapsed = DummyFunction
  self.Started = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[1] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[13] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_13_Out
  l0.ResetOut = DummyFunction
  self[2] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_2_PostOut
  self[4] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = self.f_4_PreOut
  l0.PostOut = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/InputListenerMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InputReceived = self.f_12_InputReceived
  self[8] = cbox:CreateBox("Domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = self.f_8_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
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
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FadeToBlack
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_3_A_is_True
  l0.A_is_False = self.f_3_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Start()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = self.Text
  l0.Duration = self.Seconds
  l0.Color = nil
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_14_Out_0()
  self = self._graph
  self:Started()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = self.f_16_Pushed
  l0.Popped = DummyFunction
  l0:Push()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_17_Out_1()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Stop()
end
function export:f_17_Out_2()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(0)
end
function export:f_10_Hidden()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_3_A_is_False()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_3_A_is_True()
  local l0
  self = self._graph
  l0 = self[4]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PreCinematic()
end
function export:f_1_Out()
  self = self._graph
  self:TimeElapsed()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "domino_input_monitor"
  l0.ActionMapName = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_9_Popped
  l0:Pop()
end
function export:f_2_PostOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_11_Shown
  l0.Hidden = DummyFunction
  l0:Show()
end
function export:f_4_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ShowOrHideAllUI.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_10_Hidden
  l0:Hide()
end
function export:f_12_InputReceived()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_17_Out_0
  l0.Out[1] = self.f_17_Out_1
  l0.Out[2] = self.f_17_Out_2
  l0:In()
end
function export:f_11_Shown()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_18_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_18_Out_1()
  local l0
  self = self._graph
  l0 = self[13]
  l0:In(1)
end
function export:f_16_Pushed()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_8_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_18_Out_0
  l0.Out[1] = self.f_18_Out_1
  l0:In()
end
function export:f_9_Popped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FadeFromBlack
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_5_A_is_True
  l0.A_is_False = self.f_5_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_5_A_is_False()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_5_A_is_True()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PostCinematic()
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.Input = "Domino_B_Press"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.Seconds = self.Seconds
end
function export:TimeElapsed()
end
function export:Started()
end
_compilerVersion = 4
