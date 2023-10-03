export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/WitnessSytemController_v2.lua")
end
function export:Init(cbox)
  local l0
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[2] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[4]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[4]
  l0:Input(0)
end
function export:f_5_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/WitnessSytemController_v2.lua")]
  l0._graph = self
  l0.DenunciatorEnabled = DummyFunction
  l0.DenunciatorDisabled = self.f_3_DenunciatorDisabled
  l0.DetectorEnabled = DummyFunction
  l0.DetectorDisabled = DummyFunction
  l0.Out = DummyFunction
  l0:DisableDenunciator()
end
function export:f_3_DenunciatorDisabled()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "gkmodel_swap_on_player 9223372062360197428"
  l0._graph = self
  l0.Executed = self.f_5_Executed
  l0:Execute()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
_compilerVersion = 4
