FelonyChaseMonitor = {}
function FelonyChaseMonitor:Create(cbox)
end
function FelonyChaseMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidNone = nil
  self.callidDenunciatorStarted = nil
  self.callidDenunciatorInterrupted = nil
  self.callidDenunciatorFinished = nil
  self.callidScanStarted = nil
  self.callidScanSuccess = nil
  self.callidScanFailure = nil
  self.callidChasing = nil
  self.callidSearching = nil
  self.callidEvaded = nil
  self.callidTargetKilled = nil
  self.callidLevelChanged = nil
  self.callidTargetArrested = nil
end
function FelonyChaseMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function FelonyChaseMonitor:Start()
  self._type.UnregisterCallback(self)
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    if self.callidNone == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidNone = instance:RegisterMissionEventCallback(self.Player, self, "Event_None", "DominoFelonyChaseMonitorNone", self.missionId)
      self.callidDenunciatorStarted = instance:RegisterMissionEventCallback(self.Player, self, "Event_DenunciatorStarted", "DominoFelonyChaseMonitorDenunciatorStarted", self.missionId)
      self.callidDenunciatorInterrupted = instance:RegisterMissionEventCallback(self.Player, self, "Event_DenunciatorInterrupted", "DominoFelonyChaseMonitorDenunciatorInterrupted", self.missionId)
      self.callidDenunciatorFinished = instance:RegisterMissionEventCallback(self.Player, self, "Event_DenunciatorFinished", "DominoFelonyChaseMonitorDenunciatorFinished", self.missionId)
      self.callidScanStarted = instance:RegisterMissionEventCallback(self.Player, self, "Event_ScanStarted", "DominoFelonyChaseMonitorScanStarted", self.missionId)
      self.callidScanSuccess = instance:RegisterMissionEventCallback(self.Player, self, "Event_ScanSuccess", "DominoFelonyChaseMonitorScanSuccess", self.missionId)
      self.callidScanFailure = instance:RegisterMissionEventCallback(self.Player, self, "Event_ScanFailure", "DominoFelonyChaseMonitorScanFailure", self.missionId)
      self.callidChasing = instance:RegisterMissionEventCallback(self.Player, self, "Event_Chasing", "DominoFelonyChaseMonitorChasing", self.missionId)
      self.callidSearching = instance:RegisterMissionEventCallback(self.Player, self, "Event_Searching", "DominoFelonyChaseMonitorSearching", self.missionId)
      self.callidEvaded = instance:RegisterMissionEventCallback(self.Player, self, "Event_Evaded", "DominoFelonyChaseMonitorEvaded", self.missionId)
      self.callidTargetKilled = instance:RegisterMissionEventCallback(self.Player, self, "Event_TargetKilled", "DominoFelonyChaseMonitorTargetKilled", self.missionId)
      self.callidLevelChanged = instance:RegisterMissionEventCallback(self.Player, self, "Event_LevelChanged", "DominoFelonyChaseMonitorLevelChanged", self.missionId)
      self.callidThreatEliminated = instance:RegisterMissionEventCallback(self.Player, self, "Event_ThreatEliminated", "DominoFelonyChaseMonitorThreatEliminated", self.missionId)
      self.callidTargetArrested = instance:RegisterMissionEventCallback(self.Player, self, "Event_TargetArrested", "DominoFelonyChaseMonitorTargetArrested", self.missionId)
    end
    if self.CheckNow ~= nil and self.CheckNow == 1 then
      FelonyCheckFelonyState(self.Player)
    end
  end
  self:UpdateDataOut(false)
  self:Started()
end
function FelonyChaseMonitor:Stop()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    self._type.UnregisterCallback(self)
  end
  self:Stopped()
end
function FelonyChaseMonitor:UnregisterCallback()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil and self.callidScanSuccess ~= nil and self.callidScanFailure ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Player, self.callidNone)
    instance:RemoveCallback(self.Player, self.callidDenunciatorStarted)
    instance:RemoveCallback(self.Player, self.callidDenunciatorInterrupted)
    instance:RemoveCallback(self.Player, self.callidDenunciatorFinished)
    instance:RemoveCallback(self.Player, self.callidScanStarted)
    instance:RemoveCallback(self.Player, self.callidScanSuccess)
    instance:RemoveCallback(self.Player, self.callidScanFailure)
    instance:RemoveCallback(self.Player, self.callidChasing)
    instance:RemoveCallback(self.Player, self.callidSearching)
    instance:RemoveCallback(self.Player, self.callidEvaded)
    instance:RemoveCallback(self.Player, self.callidTargetKilled)
    instance:RemoveCallback(self.Player, self.callidLevelChanged)
    instance:RemoveCallback(self.Player, self.callidThreatEliminated)
    instance:RemoveCallback(self.Player, self.callidTargetArrested)
    self.callidNone = nil
    self.callidScanDenunciatorStarted = nil
    self.callidScanDenunciatorInterrupted = nil
    self.callidScanDenunciatorFinished = nil
    self.callidScanStarted = nil
    self.callidScanSuccess = nil
    self.callidScanFailure = nil
    self.callidChasing = nil
    self.callidSearching = nil
    self.callidEvaded = nil
    self.callidTargetKilled = nil
    self.callidLevelChanged = nil
    self.callidThreatEliminated = nil
    self.callidTargetArrested = nil
  end
end
function FelonyChaseMonitor:Event_None(event)
  self:UpdateDataOut(false)
  return self:None()
end
function FelonyChaseMonitor:Event_DenunciatorStarted(event)
  self:UpdateDataOut(false)
  return self:DenunciatorStarted()
end
function FelonyChaseMonitor:Event_DenunciatorInterrupted(event)
  self:UpdateDataOut(false)
  return self:DenunciatorInterrupted()
end
function FelonyChaseMonitor:Event_DenunciatorFinished(event)
  self:UpdateDataOut(false)
  return self:DenunciatorFinished()
end
function FelonyChaseMonitor:Event_ScanStarted(event)
  self:UpdateDataOut(false)
  return self:ScanStarted()
end
function FelonyChaseMonitor:Event_ScanSuccess(event)
  self:UpdateDataOut(false)
  return self:ScanSuccess()
end
function FelonyChaseMonitor:Event_ScanFailure(event)
  self:UpdateDataOut(false)
  return self:ScanFailure()
end
function FelonyChaseMonitor:Event_Chasing(event)
  self:UpdateDataOut(false)
  return self:Chasing()
end
function FelonyChaseMonitor:Event_Searching(event)
  self:UpdateDataOut(false)
  return self:Searching()
end
function FelonyChaseMonitor:Event_Evaded(event)
  self:UpdateDataOut(false)
  return self:Evaded()
end
function FelonyChaseMonitor:Event_TargetKilled(event)
  self:UpdateDataOut(false)
  return self:TargetKilled()
end
function FelonyChaseMonitor:Event_LevelChanged(event)
  self:UpdateDataOut(false)
  return self:LevelChanged()
end
function FelonyChaseMonitor:Event_ThreatEliminated(event)
  self:UpdateDataOut(true)
  return self:Evaded()
end
function FelonyChaseMonitor:Event_TargetArrested(event)
  self:UpdateDataOut(false)
  return self:TargetArrested()
end
function FelonyChaseMonitor:UpdateDataOut(wasThreatEliminated)
  self.Player = self.Player or GetLocalPlayerEntityId()
  self.Level = -1
  if wasThreatEliminated ~= nil then
    if wasThreatEliminated == true or wasThreatEliminated == 1 then
      self.ThreatEliminated = 1
    else
      self.ThreatEliminated = 0
    end
  end
end
export = FelonyChaseMonitor
FelonyChaseMonitor = nil
