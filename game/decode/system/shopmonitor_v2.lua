ShopMonitor = {}
function ShopMonitor:Create(cbox)
end
function ShopMonitor:Init(cbox)
  self.callidOnClothingBought = nil
end
function ShopMonitor:ShutDown()
  self:UnregisterCallback()
end
function ShopMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  self.PlayerID = self.PlayerID or GetLocalPlayerId()
  if self.PlayerID ~= nil and self.callidOnClothingBought == nil then
    self.callidOnClothingBought = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_OnClothingBought", "OnClothingBought")
  end
  self:Enabled()
end
function ShopMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function ShopMonitor:UnregisterCallback()
  if self.PlayerID ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnClothingBought ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidOnClothingBought)
      self.callidOnClothingBought = nil
    end
  end
end
function ShopMonitor:Event_OnClothingBought(part)
  local partTypeID = string.match(self.PartType, "%d+")
  local partTypeBoughtID = string.match(part, "%d+")
  self:OnClothingBought()
  if partTypeBoughtID == partTypeID then
    self:OnPartBought()
  end
end
export = ShopMonitor
ShopMonitor = nil
