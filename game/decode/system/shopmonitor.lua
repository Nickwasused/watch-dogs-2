ShopMonitor = {Shop = nil}
function ShopMonitor:Create(cbox)
end
function ShopMonitor:Init(cbox)
  self.callidOnEnteredShop = nil
  self.callidOnExitedShop = nil
  self.callidOnClothingBought = nil
end
function ShopMonitor:ShutDown()
  self:UnregisterCallback()
end
function ShopMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  self.PlayerID = self.PlayerID or GetLocalPlayerId()
  if self.PlayerID ~= nil then
    if self.callidOnEnteredShop == nil then
      self.callidOnEnteredShop = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_OnEnteredShop", "OnEnteredShop")
    end
    if self.callidOnExitedShop == nil then
      self.callidOnExitedShop = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_OnExitedShop", "OnExitedShop")
    end
    if self.callidOnClothingBought == nil then
      self.callidOnClothingBought = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_OnClothingBought", "OnClothingBought")
    end
    if self.CheckNow ~= nil then
    end
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
    if self.callidOnEnteredShop ~= nil then
      instance:RemoveCallback(self.callidOnEnteredShop)
      self.callidOnEnteredShop = nil
    end
    if self.callidOnExitedShop ~= nil then
      instance:RemoveCallback(self.callidOnExitedShop)
      self.callidOnExitedShop = nil
    end
    if self.callidOnClothingBought ~= nil then
      instance:RemoveCallback(self.callidOnClothingBought)
      self.callidOnClothingBought = nil
    end
  end
end
function ShopMonitor:Event_OnEnteredShop()
  self:OnEnteredShop()
end
function ShopMonitor:Event_OnExitedShop()
  self:OnExitedShop()
end
function ShopMonitor:Event_OnClothingBought()
  self:OnClothingBought()
end
export = ShopMonitor
ShopMonitor = nil
