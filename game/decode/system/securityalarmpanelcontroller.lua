SecurityAlarmPanelController = {}
function SecurityAlarmPanelController:Create(cbox)
  self.AlarmEntity = nil
  self.AlarmEntityList = {}
end
function SecurityAlarmPanelController:Init(cbox)
end
function SecurityAlarmPanelController:ShutDown()
end
function SecurityAlarmPanelController:ActivateAlarm()
  local instigator = not self.Instigator and GetLocalPlayerEntityId()
  local isValid = false
  if self.AlarmEntity == nil then
    if self.AlarmEntityList ~= nil then
      for i, v in ipairs(self.AlarmEntityList) do
        SendActivateAlarmEvent(v, instigator)
      end
      isValid = true
    end
  else
    SendActivateAlarmEvent(self.AlarmEntity, instigator)
    isValid = true
  end
  if isValid then
    if self.AutoDisable then
      self._type.UnregisterCallback(self)
    end
    self:Activated()
  end
end
function SecurityAlarmPanelController:DeactivateAlarm()
  local instigator = not self.Instigator and GetLocalPlayerEntityId()
  local isValid = false
  if self.AlarmEntity == nil then
    if self.AlarmEntityList ~= nil then
      for i, v in ipairs(self.AlarmEntityList) do
        SendDectivateAlarmEvent(v, instigator)
      end
      isValid = true
    end
  else
    SendDectivateAlarmEvent(self.AlarmEntity, instigator)
    isValid = true
  end
  if isValid then
    if self.AutoDisable then
      self._type.UnregisterCallback(self)
    end
    self:Deactivated()
  end
end
export = SecurityAlarmPanelController
SecurityAlarmPanelController = nil
