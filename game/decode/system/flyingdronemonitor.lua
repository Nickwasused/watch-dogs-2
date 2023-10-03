FlyingDroneMonitor = {}
function FlyingDroneMonitor:Create(cbox)
end
function FlyingDroneMonitor:Init(cbox)
  self.callidDetected = nil
  self.callidHidden = nil
  self.callidSpawned = nil
  self.callidUnSpawned = nil
  self.callidDestroyed = nil
  self.callidIsConnected = nil
  self.callidIsDisconnected = nil
  self.callidIsPickUp = nil
end
function FlyingDroneMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function FlyingDroneMonitor:Enable()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidDetected == nil then
    self.callidDetected = instance:RegisterNoEntityCallback("FlyingDroneDetected", self, "Event_OnDetected")
  end
  if self.callidHidden == nil then
    self.callidHidden = instance:RegisterNoEntityCallback("FlyingDroneHidden", self, "Event_OnHidden")
  end
  if self.callidSpawned == nil then
    self.callidSpawned = instance:RegisterNoEntityCallback("FlyingDroneSpawned", self, "Event_OnSpawned")
  end
  if self.callidUnSpawned == nil then
    self.callidUnSpawned = instance:RegisterNoEntityCallback("FlyingDroneUnSpawned", self, "Event_OnUnSpawned")
  end
  if self.callidDestroyed == nil then
    self.callidDestroyed = instance:RegisterNoEntityCallback("FlyingDroneDestroyed", self, "Event_OnDestroyed")
  end
  if self.callidIsConnected == nil then
    self.callidIsConnected = instance:RegisterNoEntityCallback("FlyingDroneIsConnected", self, "Event_IsConnected")
  end
  if self.callidIsDisconnected == nil then
    self.callidIsDisconnected = instance:RegisterNoEntityCallback("FlyingDroneIsDisconnected", self, "Event_IsDisconnected")
  end
  if self.callidIsPickUp == nil then
    self.callidIsPickUp = instance:RegisterNoEntityCallback("PickUpFlyingDrone", self, "Event_IsPickUp")
  end
  if self.CheckNow and self.CheckNow == 1 then
    local flyingDroneStatus = GetFlyingDroneStatus()
    if flyingDroneStatus == 0 then
      self:OnUnSpawned()
    else
      self.FlyingDroneID = GetFlyingDroneId()
      if flyingDroneStatus == 2 then
        self:IsConnected()
      else
        self:OnSpawned()
      end
    end
  end
  self:Enabled()
end
function FlyingDroneMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function FlyingDroneMonitor:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidDetected ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneDetected", self.callidDetected)
    self.callidMovementStarted = nil
  end
  if self.callidHidden ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneHidden", self.callidHidden)
    self.callidHidden = nil
  end
  if self.callidSpawned ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneSpawned", self.callidSpawned)
    self.callidSpawned = nil
  end
  if self.callidUnSpawned ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneUnSpawned", self.callidUnSpawned)
    self.callidUnSpawned = nil
  end
  if self.callidDestroyed ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneDestroyed", self.callidDestroyed)
    self.callidDestroyed = nil
  end
  if self.callidIsConnected ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneIsConnected", self.callidIsConnected)
    self.callidIsConnected = nil
  end
  if self.callidIsDisconnected ~= nil then
    instance:RemoveNoEntityCallback("FlyingDroneIsDisconnected", self.callidIsDisconnected)
    self.callidIsDisconnected = nil
  end
  if self.callidIsPickUp ~= nil then
    instance:RemoveNoEntityCallback("PickUpFlyingDrone", self.callidIsPickUp)
    self.callidIsPickUp = nil
  end
end
function FlyingDroneMonitor:Event_OnDetected()
  self:OnDetected()
end
function FlyingDroneMonitor:Event_OnHidden()
  self:OnHidden()
end
function FlyingDroneMonitor:Event_OnSpawned()
  self.FlyingDroneID = GetFlyingDroneId()
  self:OnSpawned()
end
function FlyingDroneMonitor:Event_OnUnSpawned()
  self.FlyingDroneID = GetInvalidEntityId()
  self:OnUnSpawned()
end
function FlyingDroneMonitor:Event_OnDestroyed()
  self:OnDestroyed()
end
function FlyingDroneMonitor:Event_IsConnected()
  self:IsConnected()
end
function FlyingDroneMonitor:Event_IsDisconnected()
  self:IsDisconnected()
end
function FlyingDroneMonitor:Event_IsPickUp()
  self:IsPickUp()
end
export = FlyingDroneMonitor
FlyingDroneMonitor = nil
