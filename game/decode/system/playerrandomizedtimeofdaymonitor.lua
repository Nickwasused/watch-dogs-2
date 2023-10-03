PlayerRandomizedTimeOfDayMonitor = {}
function PlayerRandomizedTimeOfDayMonitor:Create(cbox)
end
function PlayerRandomizedTimeOfDayMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function PlayerRandomizedTimeOfDayMonitor:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function PlayerRandomizedTimeOfDayMonitor:UnregisterCallbacks()
  if self.callidOnTimeOfDayReached ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback(self.CallbackName, self.callidOnTimeOfDayReached)
    self.callidOnTimeOfDayReached = nil
  end
end
function PlayerRandomizedTimeOfDayMonitor:Enable()
  if self.callidOnTimeOfDayReached == nil then
    self.CallbackName = "OnPlayerRandomizedTimeOfDay"
    self.callidOnTimeOfDayReached = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback(self.CallbackName, self, "OnPlayerRandomizedTimeOfDay", self.missionId)
  end
  self:GetTimeOfDay()
  self:Enabled()
end
function PlayerRandomizedTimeOfDayMonitor:Disable()
  self._type.UnregisterCallbacks(self)
  self:Disabled()
end
function PlayerRandomizedTimeOfDayMonitor:GetTimeOfDay()
  self:CheckTimeOfDay()
  self:GotTimeOfDay()
end
function PlayerRandomizedTimeOfDayMonitor:CheckTimeOfDay()
  self.HourTen = GetPlayerRandomizedTimeOfDay(0)
  self.HourUnit = GetPlayerRandomizedTimeOfDay(1)
  self.MinuteTen = GetPlayerRandomizedTimeOfDay(2)
  self.MinuteUnit = GetPlayerRandomizedTimeOfDay(3)
  self.IsCurrentlyTimeOfDay = IsCurrentlyThePlayerRandomizedTimeOfDay()
end
function PlayerRandomizedTimeOfDayMonitor:OnPlayerRandomizedTimeOfDay()
  self:CheckTimeOfDay()
  self:OnTimeOfDayReached()
end
export = PlayerRandomizedTimeOfDayMonitor
PlayerRandomizedTimeOfDayMonitor = nil
