export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/PGTController_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_8_Out
  self[2] = cbox:CreateBox("Domino/System/PGTController_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/PGTController_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:GameFlow()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PGT_Marcus_Beats
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_1_A_is_True
  l0.A_is_False = self.f_1_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_8_Out()
  self = self._graph
  self:Out()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(0)
end
function export:f_4_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Input(1)
end
function export:f_11_A_is_True()
  local l0
  self = self._graph
  l0 = self[4]
  l0.PGTMissionArea = "9223372047852844055"
  l0:Start()
end
function export:f_1_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.PGT_Spider_Beats
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_11_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_A_is_True()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PGTMissionArea = "9223372047852805528"
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
