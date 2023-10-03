FollowPathMonitor = {}
function FollowPathMonitor:Create(cbox)
end
function FollowPathMonitor:Init(cbox)
  self.callidPointReached = nil
  self.callidEndPointReached = nil
  self.callidOutOfRange = nil
  self.callidBackInRange = nil
end
function FollowPathMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function FollowPathMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  if self.Entity ~= nil then
    if self.callidPointReached == nil then
      self.callidPointReached = instance:RegisterEventCallback(self.Entity, self, "Event_FollowPathPointReached", "DominoFollowPathPointReached")
    end
    if self.callidEndPointReached == nil then
      self.callidEndPointReached = instance:RegisterEventCallback(self.Entity, self, "Event_FollowPathEndReached", "DominoFollowPathEndReached")
    end
    if self.callidOutOfRange == nil then
      self.callidOutOfRange = instance:RegisterEventCallback(self.Entity, self, "Event_FollowPathOutOfRange", "DominoFollowPathOutOfRange")
    end
    if self.callidBackInRange == nil then
      self.callidBackInRange = instance:RegisterEventCallback(self.Entity, self, "Event_FollowPathBackInRange", "DominoFollowPathBackInRange")
    end
  end
  self:Enabled()
end
function FollowPathMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function FollowPathMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.Entity ~= nil then
    if self.callidPointReached ~= nil then
      instance:RemoveCallback(self.Entity, self.callidPointReached)
      self.callidPointReached = nil
    end
    if self.callidEndPointReached ~= nil then
      instance:RemoveCallback(self.Entity, self.callidEndPointReached)
      self.callidEndPointReached = nil
    end
    if self.callidOutOfRange ~= nil then
      instance:RemoveCallback(self.Entity, self.callidOutOfRange)
      self.callidOutOfRange = nil
    end
    if self.callidBackInRange ~= nil then
      instance:RemoveCallback(self.Entity, self.callidBackInRange)
      self.callidBackInRange = nil
    end
  end
end
function FollowPathMonitor:Event_FollowPathPointReached(event)
  self.CurrentPoint = tonumber(event)
  self:CurrentPointReached()
  if self.SpecificPoint ~= nil and self.SpecificPoint == self.CurrentPoint then
    self:SpecificPointReached()
  end
end
function FollowPathMonitor:Event_FollowPathEndReached(event)
  self.EndPoint = tonumber(event)
  self:EndPointReached()
end
function FollowPathMonitor:Event_FollowPathOutOfRange(event)
  self:OutOfRange()
end
function FollowPathMonitor:Event_FollowPathBackInRange(event)
  self:BackInRange()
end
export = FollowPathMonitor
FollowPathMonitor = nil
