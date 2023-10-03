export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/ConsoleCommand_v2.lua")
  cbox:RegisterBox("Domino/System/DebugAnnotationTextController.lua")
  cbox:RegisterBox("Domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("Domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14M030_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main"
  self.Out_Annotations = DummyFunction
  self.PlayerEntity = nil
  self.box_ConsoleCommand_v2_2 = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self.box_ConsoleCommand_v2_2
  l0._graph = self
  l0._name = "box_ConsoleCommand_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|174378138"
  l0.Enabled = self.f_box_ConsoleCommand_v2_2_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_box_ConsoleCommand_v2_2_Executed
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:HackingPCVID()
  local l0
  l0 = Boxes[PathID("Domino/System/DynamicMediaController.lua")]
  l0.EntityId = nil
  l0.Channel = "Bar"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|749915090"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_10_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|524063487", "524063487", "S14M030_SCR_Main", "HackingPCVID", "box_Dynamic_Media_Controller_10.ChangeBroadcastChannelOnEntity", self, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:In()
  local l0
  l0 = self.box_ConsoleCommand_v2_2
  l0.Command = "Narrative"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|442329257", "442329257", "S14M030_SCR_Main", "In", "box_ConsoleCommand_v2_2.Enable", self, l0)
  l0:Enable()
end
function export:f_box_ConsoleCommand_v2_2_Enabled()
  local l0
  self = self._graph
  l0 = self.box_ConsoleCommand_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|702985703", "702985703", "S14M030_SCR_Main", "box_ConsoleCommand_v2_2.Enabled", "Out Annotations", l0, self)
  self:Out_Annotations()
end
function export:f_box_ConsoleCommand_v2_2_Executed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1544270994"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_6_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_6_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_6_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_6_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_6_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_6_Out_5
  l0.Out[6] = DummyFunction
  l0 = self.box_ConsoleCommand_v2_2
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|135774727", "135774727", "S14M030_SCR_Main", "box_ConsoleCommand_v2_2.Executed", "box_Ordered_Output_6.In", l0, l1)
  l1:In()
end
function export:f_box_Dynamic_Media_Controller_10_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491197"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1173582201"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1055348936", "1055348936", "S14M030_SCR_Main", "box_Dynamic_Media_Controller_10.ChannelChanged", "box_Media_System_Custom_Broadcast_Controller_1.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048341490643"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1714935580"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|806854097", "806854097", "S14M030_SCR_Main", "box_Ordered_Output_6.Out", "box_Display_a_debug_annotation_text_entity_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048289385789"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1385063341"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1228077065", "1228077065", "S14M030_SCR_Main", "box_Ordered_Output_6.Out", "box_Display_a_debug_annotation_text_entity_4.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048341450789"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1748125666"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|714671968", "714671968", "S14M030_SCR_Main", "box_Ordered_Output_6.Out", "box_Display_a_debug_annotation_text_entity_5.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445236017"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|446966522"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|2093694618", "2093694618", "S14M030_SCR_Main", "box_Ordered_Output_6.Out", "box_Display_a_debug_annotation_text_entity_7.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445236018"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1914507507"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1805082871", "1805082871", "S14M030_SCR_Main", "box_Ordered_Output_6.Out", "box_Display_a_debug_annotation_text_entity_8.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_6_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445236019"
  l0.Text = nil
  l0._graph = self
  l0._name = "box_Display_a_debug_annotation_text_entity_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|270212840"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s14\\s14m030\\S14M030_SCR.domino|@S14M030_SCR_Main|1987330623", "1987330623", "S14M030_SCR_Main", "box_Ordered_Output_6.Out", "box_Display_a_debug_annotation_text_entity_9.Enable", clone, l0)
  l0:Enable()
end
function export:Out_Annotations()
end
_compilerVersion = 4
