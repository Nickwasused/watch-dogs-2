export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/Tests/Vehicle_Damage_Regeneration_Test/Vehicle_Damage_Regeneration_Test.Vehicle_Damage_Regeneration_Test_Main.debug.lua")
end
function export:Init(cbox)
  local l0
  self._name = "Vehicle_Damage_Regeneration_Test_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation"
  self.box_Vehicle_Damage_Regeneration_Test_Main_1 = cbox:CreateBox("domino/user/san_francisco/missions/Tests/Vehicle_Damage_Regeneration_Test/Vehicle_Damage_Regeneration_Test.Vehicle_Damage_Regeneration_Test_Main.debug.lua")
  l0 = self.box_Vehicle_Damage_Regeneration_Test_Main_1
  l0._graph = self
  l0._name = "box_Vehicle_Damage_Regeneration_Test_Main_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation|1319525425"
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
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation|291059617"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation|1991413097", "1991413097", "Vehicle_Damage_Regeneration_Test_Activation", "In", "box_Ordered_Output_3.In", self, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Vehicle_Damage_Regeneration_Test_Main_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation|542689737", "542689737", "Vehicle_Damage_Regeneration_Test_Activation", "box_Ordered_Output_3.Out", "box_Vehicle_Damage_Regeneration_Test_Main_1.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Running"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0._name = "box_TextToScreen_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation|1706595185"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\Vehicle_Damage_Regeneration_Test\\Vehicle_Damage_Regeneration_Test.domino|@Vehicle_Damage_Regeneration_Test_Activation|513539356", "513539356", "Vehicle_Damage_Regeneration_Test_Activation", "box_Ordered_Output_3.Out", "box_TextToScreen_v2_2.In", clone, l0)
  l0:In()
end
_compilerVersion = 4
