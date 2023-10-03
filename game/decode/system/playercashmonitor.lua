LocalPlayerCashMonitor = {}
function LocalPlayerCashMonitor:Create(cbox)
end
function LocalPlayerCashMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function LocalPlayerCashMonitor:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function LocalPlayerCashMonitor:UnregisterCallbacks()
  if self.callidCashChanged ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnCashChanged", self.callidCashChanged)
    self.callidCashChanged = nil
  end
end
function LocalPlayerCashMonitor:Enable()
  self.hasLess = false
  self.hasMore = false
  if self.callidCashChanged == nil then
    self.callidCashChanged = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback("OnCashChanged", self, "OnCashChanged", self.missionId)
  end
  self:CheckCash()
  self:Enabled()
end
function LocalPlayerCashMonitor:Disable()
  self._type.UnregisterCallbacks(self)
  self:Disabled()
end
function LocalPlayerCashMonitor:GetCash()
  self.CashAmount = GetLocalPlayerCash()
  self:GotCash()
end
function LocalPlayerCashMonitor:CheckCash()
  self.CashAmount = GetLocalPlayerCash()
  if self.AmountToReach ~= nil then
    local playerCash = tonumber(self.CashAmount)
    if playerCash >= self.AmountToReach then
      if self.hasMore == false then
        self.hasMore = true
        self.hasLess = false
        self:AmountReached()
      end
    elseif self.hasLess == false then
      self.hasMore = false
      self.hasLess = true
      self:AmountNotReached()
    end
  end
end
function LocalPlayerCashMonitor:OnCashChanged()
  self:CheckCash()
  self:CashChanged()
end
export = LocalPlayerCashMonitor
LocalPlayerCashMonitor = nil
