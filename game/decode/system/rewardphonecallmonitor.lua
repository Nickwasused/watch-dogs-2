RewardPhoneCallMonitor = {}
function RewardPhoneCallMonitor:Create(cbox)
end
function RewardPhoneCallMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnPhoneCallEnded = nil
end
function RewardPhoneCallMonitor:ShutDown()
  self:UnregisterCallback()
end
function RewardPhoneCallMonitor:Enable()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnPhoneCallEnded == nil then
    self.callidOnPhoneCallEnded = instance:RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnPhoneCallEnded", "OnPhoneCallEnded", self.missionId)
  end
  self:Enabled()
end
function RewardPhoneCallMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function RewardPhoneCallMonitor:UnregisterCallback()
  if self.PlayerEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnPhoneCallEnded ~= nil then
      instance:RemoveCallback(self.PlayerEntity, self.callidOnPhoneCallEnded)
      self.callidOnPhoneCallEnded = nil
    end
  end
end
function RewardPhoneCallMonitor:Event_OnPhoneCallEnded(item, target)
  item = "Items." .. item
  if self.HackedEntity == target and self.ItemDb == nil or self.HackedEntity == nil and self.ItemDb == item or self.HackedEntity == nil and self.ItemDb == nil or self.HackedEntity == target and self.ItemDb == item then
    self:OnPhoneCallEnded()
  end
end
export = RewardPhoneCallMonitor
RewardPhoneCallMonitor = nil
