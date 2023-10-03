PickupController = {}
function PickupController:Create(cbox)
end
function PickupController:Init(cbox)
end
function PickupController:ShutDown()
end
function PickupController:SetAsPickable()
  if self.Pickup ~= nil then
    SetEnablePickup(self.Pickup, 1)
    self:Out()
  end
end
function PickupController:SetAsNotPickable()
  if self.Pickup ~= nil then
    SetEnablePickup(self.Pickup, 0)
    self:Out()
  end
end
function PickupController:PickupNow()
  if self.Pickup ~= nil then
    self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
    Pickup(self.PlayerEntity, self.Pickup)
    self:Out()
  end
end
export = PickupController
PickupController = nil
