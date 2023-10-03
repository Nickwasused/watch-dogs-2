export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.Out_Debug_Annotations = DummyFunction
  self.PlayerEntity = nil
  self[1] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = self.f_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_1_Executed
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
  l0.Command = "Narrative"
  l0:Enable()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372047054578713"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372047054578712"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048289385787"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237407"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237410"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237405"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237408"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237409"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_5_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237406"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_1_Enabled()
  self = self._graph
  self:Out_Debug_Annotations()
end
function export:f_1_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0.Out[2] = self.f_5_Out_2
  l0.Out[3] = self.f_5_Out_3
  l0.Out[4] = self.f_5_Out_4
  l0.Out[5] = self.f_5_Out_5
  l0.Out[6] = self.f_5_Out_6
  l0.Out[7] = self.f_5_Out_7
  l0.Out[8] = self.f_5_Out_8
  l0.Out[9] = DummyFunction
  l0:In()
end
function export:Out_Debug_Annotations()
end
_compilerVersion = 4
