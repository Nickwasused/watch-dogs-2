PickupMonitor = {}
function PickupMonitor:Create(cbox)
end
function PickupMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidPickup = nil
end
function PickupMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PickupMonitor:Enable()
  if self.Pickup ~= nil and self.callidPickup == nil then
    instance = CScriptCallbackSystem_GetInstance()
    self.callidPickup = instance:RegisterMissionEventCallback(self.Pickup, self, "Event_PickedUp", "DominoCallbackPickupPicked", self.missionId)
    self:Enabled()
  end
end
function PickupMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PickupMonitor:UnregisterCallback()
  if self.Pickup ~= nil and self.callidPickup ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Pickup, self.callidPickup)
    self.callidPickup = nil
  end
end
function PickupMonitor:Event_PickedUp()
  self._type.UnregisterCallback(self)
  return self:PickedUp()
end
export = PickupMonitor
PickupMonitor = nil
