export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
end
function export:Init(cbox)
  self.Started = DummyFunction
  self.Ended = DummyFunction
  self.PlayerEntity = nil
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
  self:en_1()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0:LoadAndPlayCustomBroadcast()
end
function export:Off()
  local l0
  self:en_1()
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_1_EndedAllCustomMediaBroadcasts()
  self = self._graph
  self:Ended()
end
function export:f_1_LoadAndPlayRequested()
  self = self._graph
  self:Started()
end
function export:en_1()
  local l0
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372047457491104"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = 1
  l0.ApplyOnLoad = 1
  l0._graph = self
  l0.LoadAndPlayRequested = self.f_1_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = self.f_1_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
end
function export:Started()
end
function export:Ended()
end
_compilerVersion = 4
