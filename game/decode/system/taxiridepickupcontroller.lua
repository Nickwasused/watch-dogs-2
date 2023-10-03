TaxiRidePickUpController = {}
function TaxiRidePickUpController:Create(cbox)
end
function TaxiRidePickUpController:Init(cbox)
  self.instanceId = -1
end
function TaxiRidePickUpController:ShutDown()
  DestroyTaxiRideController(self.instanceId)
  self.instanceId = -1
end
function TaxiRidePickUpController:Enable()
  self.ShowPickUpIcon = self.ShowPickUpIcon or 1
  self.instanceId = CreateTaxiPickUpController(self, self.ClientClo, self.PickUpIcon, self.ShowPickUpIcon, self.Config)
  self:Enabled()
end
function TaxiRidePickUpController:Disable()
  DestroyTaxiRideController(self.instanceId)
  self.instanceId = -1
  self:Disabled()
end
function TaxiRidePickUpController:Event_TaxiClientSpawned(client)
  self.Client = client
  self:ClientSpawned()
end
function TaxiRidePickUpController:Event_TaxiClientPickUp(vehicle)
  self.Vehicle = vehicle
  self:ClientPickedUp()
end
function TaxiRidePickUpController:Event_TaxiClientDialogFinished()
  self:ClientConversationFinised()
end
function TaxiRidePickUpController:Event_TaxiClientFailToAssign()
end
export = TaxiRidePickUpController
TaxiRidePickUpController = nil
