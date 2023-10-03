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
  self.Out_Annotations = DummyFunction
  self.PlayerEntity = nil
  self[2] = cbox:CreateBox("Domino/System/ConsoleCommand_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = DummyFunction
  l0.Executed = self.f_2_Executed
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
  l0.ChannelChanged = self.f_10_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:In()
  local l0
  l0 = self[2]
  l0.Command = "Narrative"
  l0:Enable()
end
function export:f_2_Enabled()
  self = self._graph
  self:Out_Annotations()
end
function export:f_2_Executed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0.Out[2] = self.f_6_Out_2
  l0.Out[3] = self.f_6_Out_3
  l0.Out[4] = self.f_6_Out_4
  l0.Out[5] = self.f_6_Out_5
  l0.Out[6] = DummyFunction
  l0:In()
end
function export:f_10_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491197"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048341490643"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048289385789"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_6_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048341450789"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_6_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445236017"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_6_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445236018"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:f_6_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/DebugAnnotationTextController.lua")]
  l0.EntityId = "9223372048445236019"
  l0.Text = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TextSet = DummyFunction
  l0:Enable()
end
function export:Out_Annotations()
end
_compilerVersion = 4
