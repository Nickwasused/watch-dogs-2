TaxiRideVehicleMonitor = {}
function TaxiRideVehicleMonitor:Create(cbox)
end
function TaxiRideVehicleMonitor:Init(cbox)
  self.instanceId = -1
end
function TaxiRideVehicleMonitor:ShutDown()
  DestroyTaxiRideController(self.instanceId)
  self.instanceId = -1
end
function TaxiRideVehicleMonitor:Enable()
  self.instanceId = CreateTaxiRideVehicleController(self, self.Client, self.Config)
  self:Enabled()
end
function TaxiRideVehicleMonitor:Disable()
  DestroyTaxiRideController(self.instanceId)
  self.instanceId = -1
  self:Disabled()
end
function TaxiRideVehicleMonitor:Event_TaxiClientDeath()
  self:ClientDeath()
end
function TaxiRideVehicleMonitor:Event_TaxiVehicleUnusable()
  self:VehicleUnusable()
end
function TaxiRideVehicleMonitor:Event_TaxiClientBailedOut()
  self:ClientBailedOut()
end
function TaxiRideVehicleMonitor:Event_TaxiPlayerAbandonedVehicle()
  self:PlayerAbandonedVehicle()
end
export = TaxiRideVehicleMonitor
TaxiRideVehicleMonitor = nil
