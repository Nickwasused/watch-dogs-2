DiscoveryController = {}
function DiscoveryController:Create(cbox)
end
function DiscoveryController:Init(cbox)
end
function DiscoveryController:ShutDown()
end
function DiscoveryController:StopDiscovery()
  local DiscoveryStopped = self.DiscoveryStopped
  local cloID = self.CLO or ""
  local entityID = self.Entity or ""
  StopDiscovery(cloID, entityID)
  DiscoveryStopped(self)
end
export = DiscoveryController
DiscoveryController = nil
