export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/System/FreeFormTextController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.RunningFestival_Sitara = nil
  self.RunningFestival_Josh = nil
  self.RunningFestival_Wrench = nil
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[4] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {
    SPOut = {"Text"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_4_Skipped
  l0.Finished = self.f_4_Finished
  l0.SPOut.Text = self.f_4_SPOut__Text_
  self[2] = cbox:CreateBox("domino/System/FreeFormTextController.lua")
  l0 = self[2]
  l0._graph = self
  l0.OnFreeFormTextRequested = DummyFunction
  l0.OnFreeFormTextHidden = DummyFunction
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
  l0 = self[4]
  l0.SceneEntity = "9223372047235789144"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_TripToNowhere_CIN/s07_triptonowhere_cin.seq"
  l0:Start()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491195"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_3_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_1_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162902"
  l0.Channel = "Bar"
  l0._graph = self
  l0.ChannelChanged = self.f_15_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_4_Finished()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_4_Skipped()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_4_SPOut__Text_()
  local l0
  self = self._graph
  l0 = self[2]
  l0.FreeFormText = "FreeFormTextDB.9223372070165474113"
  l0:Open()
end
function export:f_17_ChannelChanged()
  self = self._graph
  self:Out()
end
function export:f_10_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162900"
  l0.Channel = "Bar"
  l0._graph = self
  l0.ChannelChanged = self.f_17_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_3_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062567734418"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0.ByIndexSet = self.f_1_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0:SetByIndex()
end
function export:f_15_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372069285162901"
  l0.Channel = "Bar"
  l0._graph = self
  l0.ChannelChanged = self.f_10_ChannelChanged
  l0.Out = DummyFunction
  l0:ChangeBroadcastChannelOnEntity()
end
function export:Out()
end
_compilerVersion = 4
