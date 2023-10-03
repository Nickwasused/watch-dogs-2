MediaSystemCustomBroadcastController = {}
function MediaSystemCustomBroadcastController:Create(cbox)
end
function MediaSystemCustomBroadcastController:Init(cbox)
end
function MediaSystemCustomBroadcastController:ShutDown()
end
function MediaSystemCustomBroadcastController:LoadAndPlayCustomBroadcast()
  if self.OnGenericChannel == nil and self.OnShopChannel == nil and self.OnBarChannel == nil then
    self.OnGenericChannel = 1
  else
    self.OnGenericChannel = self.OnGenericChannel or 0
  end
  self.OnShopChannel = self.OnShopChannel or 0
  self.OnBarChannel = self.OnBarChannel or 0
  self.PlayOnLoad = self.PlayOnLoad or 1
  self.ApplyOnLoad = self.ApplyOnLoad or 1
  LoadCustomMediaBroadcastConfig(self.BroadcastInfo, self.OnGenericChannel, self.OnShopChannel, self.OnBarChannel, self.PlayOnLoad, self.ApplyOnLoad)
  self:LoadAndPlayRequested()
  self:Out()
end
function MediaSystemCustomBroadcastController:EndAllCustomMediaBroadcasts()
  EndAllCustomMediaBroadcasts()
  self:EndedAllCustomMediaBroadcasts()
  self:Out()
end
function MediaSystemCustomBroadcastController:ApplyLoadedBufferOnChannels()
  ApplyLoadedBufferOnChannels()
  self:AppliedLoadedBufferOnChannels()
  self:Out()
end
function MediaSystemCustomBroadcastController:ActivatePlayOnBinkChannel()
  if self.OnGenericChannel == nil and self.OnShopChannel == nil and self.OnBarChannel == nil then
    self.OnGenericChannel = 1
  else
    self.OnGenericChannel = self.OnGenericChannel or 0
  end
  self.OnShopChannel = self.OnShopChannel or 0
  self.OnBarChannel = self.OnBarChannel or 0
  self.PlayOnLoad = self.PlayOnLoad or 1
  ActivatePlayOnBinkChannel(self.OnGenericChannel, self.OnShopChannel, self.OnBarChannel)
  self:ActivatedPlayOnBinkChannel()
  self:Out()
end
export = MediaSystemCustomBroadcastController
MediaSystemCustomBroadcastController = nil
