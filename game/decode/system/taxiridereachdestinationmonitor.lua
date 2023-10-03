TaxiRideReachDestinationMonitor = {}
function TaxiRideReachDestinationMonitor:Create(cbox)
end
function TaxiRideReachDestinationMonitor:Init(cbox)
  self.instanceId = -1
end
function TaxiRideReachDestinationMonitor:ShutDown()
  DestroyTaxiRideController(self.instanceId)
  self.instanceId = -1
end
function TaxiRideReachDestinationMonitor:Enable()
  self.LastDestination = self.LastDestination or 0
  self.ShowGps = self.ShowGps or 0
  self.ManageObjective = self.ManageObjective or 0
  local customObjectiveText = "-1"
  if self.CustomObjective ~= nil then
    customObjectiveText = self.CustomObjective.id
  end
  self.instanceId = CreateTaxiRideReachDestinationController(self, self.Client, self.DropOffIcon, self.LastDestination, self.ShowGps, self.ManageObjective, customObjectiveText, self.Config)
  self:Enabled()
end
function TaxiRideReachDestinationMonitor:Disable()
  DestroyTaxiRideController(self.instanceId)
  self.instanceId = -1
  self:Disabled()
end
function TaxiRideReachDestinationMonitor:Event_TaxiReachDestination()
  self:ReachDestination()
end
function TaxiRideReachDestinationMonitor:Event_TaxiClientDropOff()
  self:ClientDropOff()
end
export = TaxiRideReachDestinationMonitor
TaxiRideReachDestinationMonitor = nil
