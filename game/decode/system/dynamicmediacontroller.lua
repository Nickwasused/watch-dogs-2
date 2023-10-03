DynamicMediaController = {}
function DynamicMediaController:Create(cbox)
end
function DynamicMediaController:Init(cbox)
end
function DynamicMediaController:ShutDown()
end
function DynamicMediaController:ChangeBroadcastChannelOnEntity()
  ChangeBroadcastChannelOnEntity(self.EntityId, self.Channel)
  self:ChannelChanged()
  self:Out()
end
export = DynamicMediaController
DynamicMediaController = nil
