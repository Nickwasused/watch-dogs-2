ProximityMonitor = {}
function ProximityMonitor:Create(cbox)
end
function ProximityMonitor:Init(cbox)
  self.instanceID = nil
end
function ProximityMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function ProximityMonitor:IsValidID()
  return self.instanceID ~= nil
end
function ProximityMonitor:Enable()
  self._type.UnregisterCallback(self)
  if self.Entity1 ~= nil and self.Entity2 ~= nil and self.Radius ~= nil then
    self:Enabled()
    self.CheckDistance3D = self.CheckDistance3D or 0
    self.CheckNow = self.CheckNow or 0
    self.instanceID = CProximityManager_GetInstance():AddLuaProximityEntry(self.Radius, self.Entity1, self.Entity2, self.CheckDistance3D, self, "Event_EnterRadius", "Event_ExitRadius", self.CheckNow)
  end
end
function ProximityMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function ProximityMonitor:UnregisterCallback()
  if self.Entity1 ~= nil and self.Entity2 ~= nil and self.Radius ~= nil and self:IsValidID() == true then
    CProximityManager_GetInstance():RemoveProximityEntry(self.instanceID)
    self.instanceID = nil
  end
end
function ProximityMonitor:Event_EnterRadius()
  return self:EnterRadius()
end
function ProximityMonitor:Event_ExitRadius()
  return self:ExitRadius()
end
export = ProximityMonitor
ProximityMonitor = nil
