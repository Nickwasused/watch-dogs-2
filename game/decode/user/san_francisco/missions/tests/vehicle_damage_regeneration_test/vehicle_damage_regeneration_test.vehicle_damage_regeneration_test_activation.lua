export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Vehicle_Damage_Regeneration_Test/Vehicle_Damage_Regeneration_Test.Vehicle_Damage_Regeneration_Test_Main.lua")
end
function export:Init(cbox)
  local l0
  self[1] = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Vehicle_Damage_Regeneration_Test/Vehicle_Damage_Regeneration_Test.Vehicle_Damage_Regeneration_Test_Main.lua")
  l0 = self[1]
  l0._graph = self
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
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_3_Out_0
  l0.Out[1] = self.f_3_Out_1
  l0:In()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In()
end
function export:f_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Running"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
_compilerVersion = 4
