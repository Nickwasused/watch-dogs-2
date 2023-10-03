NetworkSurfingController = {}
function NetworkSurfingController:Create(cbox)
end
function NetworkSurfingController:Init(cbox)
end
function NetworkSurfingController:ShutDown()
end
function NetworkSurfingController:Activate()
  ActivateNetworkSurfing()
  self:Activated()
end
function NetworkSurfingController:Deactivate()
  DeactivateNetworkSurfing()
  self:Deactivated()
end
export = NetworkSurfingController
NetworkSurfingController = nil
