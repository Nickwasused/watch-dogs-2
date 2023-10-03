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
  self._name = "bunny_sanfran_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main"
  self.PlayerEntity = nil
  self.collider = nil
  self.someList = {}
  self.doAutoDisable = 0
  self.Pablo = nil
  self.vehicle = nil
  self.hour = 0
  self.minute = 0
  self.box_ListWriter_111 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_111
  l0._graph = self
  l0._name = "box_ListWriter_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|370582882"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_111_Added
  l0.Removed = self.f_box_ListWriter_111_Removed
  l0.Out = self.f_box_ListWriter_111_Out
  self.box_ConsoleCommand_v2_108 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_108
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|808877123"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_108_Executed
  self.box_ConsoleCommand_v2_110 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_110
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|1199176608"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_110_Executed
  self.box_Hackable_Door_Controller_107 = cbox:CreateBox("domino/System/HackableDoorController.lua")
  l0 = self.box_Hackable_Door_Controller_107
  l0._graph = self
  l0._name = "box_Hackable_Door_Controller_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|1938299513"
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
  l0._name = "box_Ordered_Output_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|849309623"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_109_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_109_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_109_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|82864446", "82864446", "bunny_sanfran_Main", "In", "box_Ordered_Output_109.In", self, l0)
  l0:In()
end
function export:f_box_ListWriter_111_Added()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_111
  self.someList = l0.Target
end
function export:f_box_ListWriter_111_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_111
  self.someList = l0.Target
end
function export:f_box_ListWriter_111_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_111
  self.someList = l0.Target
end
function export:f_box_ConsoleCommand_v2_108_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Door_Controller_107()
  l0 = self.box_ConsoleCommand_v2_108
  l1 = self.box_Hackable_Door_Controller_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|35074814", "35074814", "bunny_sanfran_Main", "box_ConsoleCommand_v2_108.Executed", "box_Hackable_Door_Controller_107.EnableAiAccess", l0, l1)
  l1:EnableAiAccess()
end
function export:f_box_Ordered_Output_109_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_108
  l0.Command = "1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|1268465660", "1268465660", "bunny_sanfran_Main", "box_Ordered_Output_109.Out", "box_ConsoleCommand_v2_108.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_109_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ConsoleCommand_v2_110
  l0.Command = "2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|1981141710", "1981141710", "bunny_sanfran_Main", "box_Ordered_Output_109.Out", "box_ConsoleCommand_v2_110.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_109_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_111
  l0.Input = self.someList
  l0.Data[0] = "9223372059224539270"
  l0.Data[1] = "9223372059460980777"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|2062130311", "2062130311", "bunny_sanfran_Main", "box_Ordered_Output_109.Out", "box_ListWriter_111.Add", clone, l0)
  l0:Add()
end
function export:f_box_ConsoleCommand_v2_110_Executed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Door_Controller_107()
  l0 = self.box_ConsoleCommand_v2_110
  l1 = self.box_Hackable_Door_Controller_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\Tests\\test_kcoughlan\\bunny_sanfran.domino|@bunny_sanfran_Main|1176832886", "1176832886", "bunny_sanfran_Main", "box_ConsoleCommand_v2_110.Executed", "box_Hackable_Door_Controller_107.DisableAiAccess", l0, l1)
  l1:DisableAiAccess()
end
function export:OnEnter_box_Hackable_Door_Controller_107()
  local l0
  l0 = self.box_Hackable_Door_Controller_107
  l0.Entity = "9223372059224539270"
end
_compilerVersion = 4
