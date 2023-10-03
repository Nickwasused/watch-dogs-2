FlashMonitor = {}
function FlashMonitor:Create(cbox)
end
function FlashMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidEventReceived = nil
end
function FlashMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function FlashMonitor:Enable()
  self.Player = self.Player or GetLocalPlayerEntityId()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  self.callidEventReceived = scriptCallbackSystem:RegisterMissionEventCallback(self.Player, self, "Event_EventReceived", "FakePowerTriggered", self.missionId)
  self:Out()
  self:Enabled()
end
function FlashMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Out()
  self:Disabled()
end
function FlashMonitor:UnregisterCallback()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.callidEventReceived ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    scriptCallbackSystem:RemoveCallback(self.Player, self.callidEventReceived)
    self.callidEventReceived = nil
  end
end
function FlashMonitor:Event_EventReceived(entity)
  return self:EventReceived()
end
export = FlashMonitor
FlashMonitor = nil
