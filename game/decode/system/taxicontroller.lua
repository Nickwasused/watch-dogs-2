TaxiController = {}
function TaxiController:Create(cbox)
end
function TaxiController:Init(cbox)
  self.callidTaxiClientInVehicle = nil
  self.callidTaxiClientOutOfVehicle = nil
end
function TaxiController:ShutDown()
  if self.callidTaxiClientInVehicle ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("TaxiClientInVehicle", self.callidTaxiClientInVehicle)
    self.callidTaxiClientInVehicle = nil
  end
  if self.callidTaxiClientOutOfVehicle ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("TaxiClientOutOfVehicle", self.callidTaxiClientOutOfVehicle)
    self.callidTaxiClientOutOfVehicle = nil
  end
end
function TaxiController:PickupClient()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidTaxiClientInVehicle == nil then
    self.callidTaxiClientInVehicle = instance:RegisterNoEntityCallback("TaxiClientInVehicle", self, "Event_TaxiClientInVehicle")
  end
  SetTaxiClientInVehicle(self.Client, self.Vehicle)
  self:Out()
end
function TaxiController:DropOffClient()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidTaxiClientOutOfVehicle == nil then
    self.callidTaxiClientOutOfVehicle = instance:RegisterNoEntityCallback("TaxiClientOutOfVehicle", self, "Event_TaxiClientOutOfVehicle")
  end
  SetTaxiClientOutOfVehicle(self.Client, self.Vehicle)
  self:Out()
end
function TaxiController:Event_TaxiClientInVehicle()
  self:OnClientPickedUp()
end
function TaxiController:Event_TaxiClientOutOfVehicle()
  self:OnClientDroppedOff()
end
export = TaxiController
TaxiController = nil
