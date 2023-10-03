TalkerController = {}
function TalkerController:Create(cbox)
end
function TalkerController:Init(cbox)
  self.Allow = 1
end
function TalkerController:ShutDown()
end
function TalkerController:SetConversationOnEntity()
  if self.Talker ~= nil and self.Conversation ~= nil then
    SetConversationInteractionSettings(self.Talker, self.Conversation, 0)
  end
  self:Out()
end
function TalkerController:SetConversationAllowed()
  if self.Talker ~= nil then
    SetConversationInteractionAllowed(self.Talker, self.Allow)
  end
  self:Out()
end
export = TalkerController
TalkerController = nil
