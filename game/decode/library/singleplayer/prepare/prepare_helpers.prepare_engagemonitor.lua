export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PrepareEngageMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Enabled = DummyFunction
  self.Disabled = DummyFunction
  self.Engaged = DummyFunction
  self.isDisableCalled = 0
  self[12] = cbox:CreateBox("Domino/System/PrepareEngageMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = self.f_12_Disabled
  l0.Engaged = self.f_12_Engaged
  self[2] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.SetTrue = self.f_2_SetTrue
  l0.SetFalse = self.f_2_SetFalse
  l0.Toggled = self.f_2_Toggled
  l0.SetFromBool = self.f_2_SetFromBool
  self[1] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
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
  l0 = self[2]
  l0:True()
end
function export:Enable()
  local l0
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.isDisableCalled
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_11_A_is_True
  l0.A_is_False = self.f_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_12_Enabled()
  self = self._graph
  self:Enabled()
end
function export:f_12_Engaged()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[2]
  self.isDisableCalled = l0.Target
end
function export:f_2_SetFalse()
  local l0
  self = self._graph
  l0 = self[2]
  self.isDisableCalled = l0.Target
end
function export:f_2_SetFromBool()
  local l0
  self = self._graph
  l0 = self[2]
  self.isDisableCalled = l0.Target
end
function export:f_2_SetTrue()
  local l0
  self = self._graph
  l0 = self[2]
  self.isDisableCalled = l0.Target
  l0 = self[1]
  l0:Input(1)
end
function export:f_2_Toggled()
  local l0
  self = self._graph
  l0 = self[2]
  self.isDisableCalled = l0.Target
end
function export:f_1_Out()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_11_A_is_False()
  self = self._graph
  self:Engaged()
end
function export:f_11_A_is_True()
  self = self._graph
  self:Disabled()
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.InsideAreaText = self.HintEngageable
  l0.OutOfAreaText = self.HintOutOfArea
  l0.ProgressBarText = self.ProgressBarText
  l0.TextDelay = self.TextDelay
  l0.MissionArea = self.MissionArea
end
function export:Enabled()
end
function export:Disabled()
end
function export:Engaged()
end
_compilerVersion = 4
