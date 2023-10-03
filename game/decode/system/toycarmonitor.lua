ToyCarMonitor = {}
function ToyCarMonitor:Create(cbox)
end
function ToyCarMonitor:Init(cbox)
  self.callidDetected = nil
  self.callidHidden = nil
  self.callidSpawned = nil
  self.callidUnSpawned = nil
  self.callidDestroyed = nil
  self.callidIsConnected = nil
  self.callidIsDisconnected = nil
  self.callidIsPickUp = nil
  self.callidStunWasUsed = nil
end
function ToyCarMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function ToyCarMonitor:Enable()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidDetected == nil then
    self.callidDetected = instance:RegisterNoEntityCallback("ToyCarDetected", self, "Event_OnDetected")
  end
  if self.callidHidden == nil then
    self.callidHidden = instance:RegisterNoEntityCallback("ToyCarHidden", self, "Event_OnHidden")
  end
  if self.callidSpawned == nil then
    self.callidSpawned = instance:RegisterNoEntityCallback("ToyCarSpawned", self, "Event_OnSpawned")
  end
  if self.callidUnSpawned == nil then
    self.callidUnSpawned = instance:RegisterNoEntityCallback("ToyCarUnSpawned", self, "Event_OnUnSpawned")
  end
  if self.callidDestroyed == nil then
    self.callidDestroyed = instance:RegisterNoEntityCallback("ToyCarDestroyed", self, "Event_OnDestroyed")
  end
  if self.callidIsConnected == nil then
    self.callidIsConnected = instance:RegisterNoEntityCallback("ToyCarIsConnected", self, "Event_IsConnected")
  end
  if self.callidIsDisconnected == nil then
    self.callidIsDisconnected = instance:RegisterNoEntityCallback("ToyCarIsDisconnected", self, "Event_IsDisconnected")
  end
  if self.callidIsPickUp == nil then
    self.callidIsPickUp = instance:RegisterNoEntityCallback("PickUpToyCar", self, "Event_IsPickUp")
  end
  if self.callidStunWasUsed == nil then
    self.callidStunWasUsed = instance:RegisterNoEntityCallback("StunWasUsed", self, "Event_StunWasUsed")
  end
  if self.CheckNow and self.CheckNow == 1 then
    local toyCarStatus = GetToyCarStatus()
    if toyCarStatus == 0 then
      self:OnUnSpawned()
    else
      self.ToyCarID = GetToyCarId()
      if toyCarStatus == 2 then
        self:IsConnected()
      else
        self:OnSpawned()
      end
    end
  end
  self:Enabled()
end
function ToyCarMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function ToyCarMonitor:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidDetected ~= nil then
    instance:RemoveNoEntityCallback("ToyCarDetected", self.callidDetected)
    self.callidMovementStarted = nil
  end
  if self.callidHidden ~= nil then
    instance:RemoveNoEntityCallback("ToyCarHidden", self.callidHidden)
    self.callidHidden = nil
  end
  if self.callidSpawned ~= nil then
    instance:RemoveNoEntityCallback("ToyCarSpawned", self.callidSpawned)
    self.callidSpawned = nil
  end
  if self.callidUnSpawned ~= nil then
    instance:RemoveNoEntityCallback("ToyCarUnSpawned", self.callidUnSpawned)
    self.callidUnSpawned = nil
  end
  if self.callidDestroyed ~= nil then
    instance:RemoveNoEntityCallback("ToyCarDestroyed", self.callidDestroyed)
    self.callidDestroyed = nil
  end
  if self.callidIsConnected ~= nil then
    instance:RemoveNoEntityCallback("ToyCarIsConnected", self.callidIsConnected)
    self.callidIsConnected = nil
  end
  if self.callidIsDisconnected ~= nil then
    instance:RemoveNoEntityCallback("ToyCarIsDisconnected", self.callidIsDisconnected)
    self.callidIsDisconnected = nil
  end
  if self.callidIsPickUp ~= nil then
    instance:RemoveNoEntityCallback("PickUpToyCar", self.callidIsPickUp)
    self.callidIsPickUp = nil
  end
  if self.callidStunWasUsed ~= nil then
    instance:RemoveNoEntityCallback("StunWasUsed", self.callidStunWasUsed)
    self.callidStunWasUsed = nil
  end
end
function ToyCarMonitor:Event_OnDetected()
  self:OnDetected()
end
function ToyCarMonitor:Event_OnHidden()
  self:OnHidden()
end
function ToyCarMonitor:Event_OnSpawned()
  self.ToyCarID = GetToyCarId()
  self:OnSpawned()
end
function ToyCarMonitor:Event_OnUnSpawned()
  self.ToyCarID = GetInvalidEntityId()
  self:OnUnSpawned()
end
function ToyCarMonitor:Event_OnDestroyed()
  self:OnDestroyed()
end
function ToyCarMonitor:Event_IsConnected()
  self:IsConnected()
end
function ToyCarMonitor:Event_IsDisconnected()
  self:IsDisconnected()
end
function ToyCarMonitor:Event_IsPickUp()
  self:IsPickUp()
end
function ToyCarMonitor:Event_StunWasUsed()
  self:StunWasUsed()
end
export = ToyCarMonitor
ToyCarMonitor = nil
