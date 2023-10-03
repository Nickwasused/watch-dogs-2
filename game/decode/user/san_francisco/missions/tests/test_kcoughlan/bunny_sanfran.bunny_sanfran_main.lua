export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("domino/System/HackableDoorController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.collider = nil
  self.someList = {}
  self.doAutoDisable = 0
  self.Pablo = nil
  self.vehicle = nil
  self.hour = 0
  self.minute = 0
  self[111] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[111]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_111_Added
  l0.Removed = self.f_111_Removed
  l0.Out = self.f_111_Out
  self[108] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[108]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_108_Executed
  self[110] = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self[110]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_110_Executed
  self[107] = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self[107]
  l0._graph = self
  l0.AiAccessEnabled = DummyFunction
  l0.AiAccessDisabled = DummyFunction
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_109_Out_0
  l0.Out[1] = self.f_109_Out_1
  l0.Out[2] = self.f_109_Out_2
  l0:In()
end
function export:f_111_Added()
  local l0
  self = self._graph
  l0 = self[111]
  self.someList = l0.Target
end
function export:f_111_Out()
  local l0
  self = self._graph
  l0 = self[111]
  self.someList = l0.Target
end
function export:f_111_Removed()
  local l0
  self = self._graph
  l0 = self[111]
  self.someList = l0.Target
end
function export:f_108_Executed()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:EnableAiAccess()
end
function export:f_109_Out_0()
  local l0
  self = self._graph
  l0 = self[108]
  l0.Command = "1"
  l0:Enable()
end
function export:f_109_Out_1()
  local l0
  self = self._graph
  l0 = self[110]
  l0.Command = "2"
  l0:Enable()
end
function export:f_109_Out_2()
  local l0
  self = self._graph
  l0 = self[111]
  l0.Input = self.someList
  l0.Data[0] = "9223372059224539270"
  l0.Data[1] = "9223372059460980777"
  l0:Add()
end
function export:f_110_Executed()
  local l0
  self = self._graph
  self:en_107()
  l0 = self[107]
  l0:DisableAiAccess()
end
function export:en_107()
  local l0
  l0 = self[107]
  l0.Entity = "9223372059224539270"
end
_compilerVersion = 4
