PhysZoneState = {}
function PhysZoneState:Create(cbox)
end
function PhysZoneState:Init(cbox)
end
function PhysZoneState:ShutDown()
end
function PhysZoneState:Activate()
  if self.TargetZone ~= nil then
    SendPhysZoneCleanupEvent(self.TargetZone)
  end
  self:Out()
end
export = PhysZoneState
PhysZoneState = nil
