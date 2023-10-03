NetworkSurfingMonitor = {}
function NetworkSurfingMonitor:Create(cbox)
end
function NetworkSurfingMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnNetworkSurfingActivated = nil
  self.callidOnNetworkSurfingDeactivated = nil
end
function NetworkSurfingMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function NetworkSurfingMonitor:Enable()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnNetworkSurfingActivated == nil then
    self.callidOnNetworkSurfingActivated = instance:RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnNetworkSurfingActivated", "NetworkSurfingActivated", self.missionId)
  end
  if self.callidOnNetworkSurfingDeactivated == nil then
    self.callidOnNetworkSurfingDeactivated = instance:RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnNetworkSurfingDeactivated", "NetworkSurfingDeactivated", self.missionId)
  end
  if self.CheckNow == 1 then
    local state = GetNetworkSurfingState(self.PlayerEntity)
    if state == 1 then
      self:OnNetworkSurfingActivated()
    else
      self:OnNetworkSurfingDeactivated()
    end
  end
  self:Enabled()
end
function NetworkSurfingMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function NetworkSurfingMonitor:UnregisterCallback()
  if self.PlayerEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnNetworkSurfingActivated ~= nil then
      instance:RemoveCallback(self.PlayerEntity, self.callidOnNetworkSurfingActivated)
      self.callidOnNetworkSurfingActivated = nil
    end
    if self.callidOnNetworkSurfingDeactivated ~= nil then
      instance:RemoveCallback(self.PlayerEntity, self.callidOnNetworkSurfingDeactivated)
      self.callidOnNetworkSurfingDeactivated = nil
    end
  end
end
function NetworkSurfingMonitor:Event_OnNetworkSurfingActivated(entity)
  self:OnNetworkSurfingActivated()
end
function NetworkSurfingMonitor:Event_OnNetworkSurfingDeactivated(entity)
  self:OnNetworkSurfingDeactivated()
end
export = NetworkSurfingMonitor
NetworkSurfingMonitor = nil
