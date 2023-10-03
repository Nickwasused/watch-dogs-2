BlackoutMonitor = {}
function BlackoutMonitor:Create(cbox)
end
function BlackoutMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidBlackout = nil
end
function BlackoutMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function BlackoutMonitor:Enable()
  self.localPlayerID = GetLocalPlayerEntityId()
  if self.SpecificEntity ~= nil then
    self.callidBlackout = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.SpecificEntity, self, "Event_Blackout", "CElectricPowerCallbackEvent", self.missionId)
  end
  self:Enabled()
end
function BlackoutMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function BlackoutMonitor:UnregisterCallback()
  if self.SpecificEntity ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.localPlayerID, self.callidBlackout)
    self.callidBlackout = nil
  end
end
function BlackoutMonitor:Event_Blackout(status)
  if status == 1 then
    if self.PowerOn ~= nil then
      self:PowerOn()
    end
  elseif self.PowerOff ~= nil then
    self:PowerOff()
  end
end
export = BlackoutMonitor
BlackoutMonitor = nil
