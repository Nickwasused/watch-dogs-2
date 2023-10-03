CollectibleMonitor = {CollectibleList = nil}
function CollectibleMonitor:Create(cbox)
end
function CollectibleMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnItemAdded = nil
end
function CollectibleMonitor:ShutDown()
  self:UnregisterCallback()
end
function CollectibleMonitor:EnableMonitoringItem()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnItemAdded == nil then
    self.callidOnItemAdded = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnCollectibleItemAdded", "OnCollectibleItemAdded", self.missionId)
  end
  self:Enabled()
end
function CollectibleMonitor:DisableMonitoringItem()
  self:UnregisterCallback()
  self:Disabled()
end
function CollectibleMonitor:UnregisterCallback()
  if self.pawn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnItemAdded ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnItemAdded)
      self.callidOnItemAdded = nil
    end
  end
end
function CollectibleMonitor:GetCurrentAmount()
  if self.CollectibleList ~= nil then
    self.currentAmount = CollectibleGetCurrentAmount(self.CollectibleList)
  elseif self.CollectibleItem ~= nil then
    self.currentAmount = CollectibleGetItemCount(self.CollectibleItem)
  end
  self:GotCurrentAmount()
  self:Out()
end
function CollectibleMonitor:GetRemainingAmount()
  if self.CollectibleList ~= nil then
    self.remainingAmount = CollectibleGetRemainingAmount(self.CollectibleList)
  end
  self:GotRemainingAmount()
  self:Out()
end
function CollectibleMonitor:GetTotalAmount()
  if self.CollectibleList ~= nil then
    self.totalAmount = CollectibleGetTotalAmount(self.CollectibleList)
  end
  self:GotTotalAmount()
  self:Out()
end
function CollectibleMonitor:HasCollectible()
  if self.CollectibleItem ~= nil then
    self.currentAmount = CollectibleGetItemCount(self.CollectibleItem)
    if self.currentAmount > 0 then
      self:Has()
    else
      self:HasNot()
    end
  end
  self:Out()
end
function CollectibleMonitor:Event_OnCollectibleItemAdded(itemId)
  if GetItemId(self.CollectibleItem) == itemId then
    self:CollectibleGot()
  end
end
export = CollectibleMonitor
CollectibleMonitor = nil
