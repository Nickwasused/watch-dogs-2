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
  self._name = "S14M070_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main"
  self.Out_Debug_Annotations = DummyFunction
  self.PlayerEntity = nil
  self.box_ConsoleCommand_v2_1 = cbox:CreateBox("domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_1
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1380649857"
  l0.Enabled = self.f_box_ConsoleCommand_v2_1_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_1_Executed
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
  l0 = self.box_ConsoleCommand_v2_1
  l0.Command = "Narrative"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|979641435", "979641435", "S14M070_SCR_Main", "In", "box_ConsoleCommand_v2_1.Enable", self, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372047054578713"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1202318279"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|969435438", "969435438", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372047054578712"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1088863351"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|2140386910", "2140386910", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048289385787"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1713313681"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|247485788", "247485788", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237407"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1634947485"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1023478371", "1023478371", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237410"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|2023459949"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|741957557", "741957557", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237405"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1524781617"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|512140205", "512140205", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237408"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|558871136"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|656866361", "656866361", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_9.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237409"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1514741887"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|969658403", "969658403", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_10.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_5_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445237406"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1877804212"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|613262510", "613262510", "S14M070_SCR_Main", "box_Ordered_Output_5.Out", "box_Display_a_debug_annotation_text_entity_11.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ConsoleCommand_v2_1_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1836209467", "1836209467", "S14M070_SCR_Main", "box_ConsoleCommand_v2_1.Enabled", "Out Debug Annotations", l0, self)
  self:Out_Debug_Annotations()
end
function export:f_box_ConsoleCommand_v2_1_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|198907510"
  l0._DynamicAnchors = {Out = 10}
  l0.Out[0] = self.f_box_Ordered_Output_5_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_5_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_5_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_5_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_5_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_5_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_5_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_5_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_5_Out_8
  l0.Out[9] = DummyFunction
  l0 = self.box_ConsoleCommand_v2_1
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M070\\s14m070_scr.domino|@S14M070_SCR_Main|1956175035", "1956175035", "S14M070_SCR_Main", "box_ConsoleCommand_v2_1.Executed", "box_Ordered_Output_5.In", l0, l1)
  l1:In()
end
function export:Out_Debug_Annotations()
end
_compilerVersion = 4
