MissionMonitor = {}
function MissionMonitor:Create(cbox)
end
function MissionMonitor:Init(cbox)
end
function MissionMonitor:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function MissionMonitor:UnregisterCallbacks()
  if self.callidMissionChange ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveMissionCallback(self.callidMissionChange)
    self.callidMissionChange = nil
  end
end
function MissionMonitor:Enable()
  if self.callidMissionChange == nil then
    self.callidMissionChange = CScriptCallbackSystem_GetInstance():RegisterMissionCallbackWithMissionDB(self.Mission, self, "OnMissionChange")
  end
  self:Enabled()
end
function MissionMonitor:Disable()
  self._type.UnregisterCallbacks(self)
  self:Disabled()
end
function MissionMonitor:CheckTracking()
  local isTrackedBool = 0
  if self.Mission ~= nil then
    isTrackedBool = IsMissionTracked(self.Mission)
  end
  if isTrackedBool == 1 then
    self:Tracked()
  else
    self:NotTracked()
  end
end
function MissionMonitor:CheckCompletion()
  local isPlayedBool = 0
  if self.Mission ~= nil then
    isPlayedBool = IsMissionPlayed(self.Mission)
  end
  if isPlayedBool == 1 then
    self:Completed()
  else
    self:NotCompleted()
  end
end
function MissionMonitor:OnMissionChange(eventTypeName)
  if eventTypeName == "OnMissionSucceeded" then
    self:OnMissionSucceeded()
  elseif eventTypeName == "OnMissionFailed" then
    self:OnMissionFailed()
  elseif eventTypeName == "OnMissionAborted" then
    self:OnMissionAborted()
  elseif eventTypeName == "OnMissionTracked" then
    self:Tracked()
  elseif eventTypeName == "OnMissionNotTracked" then
    self:NotTracked()
  end
end
export = MissionMonitor
MissionMonitor = nil
