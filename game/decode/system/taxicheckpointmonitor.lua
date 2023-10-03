TaxiCheckpointMonitor = {}
function TaxiCheckpointMonitor:Create(cbox)
end
function TaxiCheckpointMonitor:Init(cbox)
  self.callidCheckpointReached = nil
  self.callidDestinationReached = nil
end
function TaxiCheckpointMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function TaxiCheckpointMonitor:Enable()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidCheckpointReached == nil then
    self.callidCheckpointReached = instance:RegisterNoEntityCallback("TaxiCheckpointReached", self, "Event_TaxiCheckpointReached")
  end
  if self.callidDestinationReached == nil then
    self.callidDestinationReached = instance:RegisterNoEntityCallback("TaxiDestinationReached", self, "Event_TaxiDestinationReached")
  end
  self:Enabled()
end
function TaxiCheckpointMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function TaxiCheckpointMonitor:Event_TaxiCheckpointReached(checkpointId)
  self.CheckpointIndex = tonumber(checkpointId)
  self:OnCheckpointReached()
end
function TaxiCheckpointMonitor:Event_TaxiDestinationReached()
  self:OnDestinationReached()
end
function TaxiCheckpointMonitor:UnregisterCallback()
  local instance = CScriptCallbackSystem_GetInstance()
  if self.callidCheckpointReached ~= nil then
    instance:RemoveNoEntityCallback("TaxiCheckpointReached", self.callidCheckpointReached)
    self.callidCheckpointReached = nil
  end
  if self.callidDestinationReached ~= nil then
    instance:RemoveNoEntityCallback("TaxiDestinationReached", self.callidDestinationReached)
    self.callidDestinationReached = nil
  end
end
export = TaxiCheckpointMonitor
TaxiCheckpointMonitor = nil
