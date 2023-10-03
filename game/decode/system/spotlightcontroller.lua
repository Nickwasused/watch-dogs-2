SpotlightController = {}
function SpotlightController:Create(cbox)
end
function SpotlightController:Init(cbox)
end
function SpotlightController:ShutDown()
end
function SpotlightController:Start()
  if self.Vehicle then
    if self.SpotlightTarget == nil then
      self.SpotlightTarget = GetInvalidEntityId()
    end
    SetSpotlightBehavior(1, self.Vehicle, self.SpotlightTarget, 0)
  end
  self:Started()
end
function SpotlightController:Stop()
  if self.Vehicle then
    if self.SpotlightTarget == nil then
      self.SpotlightTarget = GetInvalidEntityId()
    end
    SetSpotlightBehavior(0, self.Vehicle, self.SpotlightTarget, 0)
  end
  self:Stopped()
end
export = SpotlightController
SpotlightController = nil
