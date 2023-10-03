FelonyTargetMonitor = {}
function FelonyTargetMonitor:Create(cbox)
end
function FelonyTargetMonitor:Init(cbox)
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
function FelonyTargetMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function FelonyTargetMonitor:Start()
  self._type.UnregisterCallback(self)
  local target = self.Target or GetLocalPlayerEntityId()
  if target ~= nil then
    if self.callidNone == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidNone = instance:RegisterMissionEventCallback(target, self, "Event_None", "DominoFelonyChaseMonitorNone", self.missionId)
      self.callidDenunciatorStarted = instance:RegisterMissionEventCallback(target, self, "Event_DenunciatorStarted", "DominoFelonyChaseMonitorDenunciatorStarted", self.missionId)
      self.callidDenunciatorInterrupted = instance:RegisterMissionEventCallback(target, self, "Event_DenunciatorInterrupted", "DominoFelonyChaseMonitorDenunciatorInterrupted", self.missionId)
      self.callidDenunciatorFinished = instance:RegisterMissionEventCallback(target, self, "Event_DenunciatorFinished", "DominoFelonyChaseMonitorDenunciatorFinished", self.missionId)
      self.callidScanStarted = instance:RegisterMissionEventCallback(target, self, "Event_ScanStarted", "DominoFelonyChaseMonitorScanStarted", self.missionId)
      self.callidScanSuccess = instance:RegisterMissionEventCallback(target, self, "Event_ScanSuccess", "DominoFelonyChaseMonitorScanSuccess", self.missionId)
      self.callidScanFailure = instance:RegisterMissionEventCallback(target, self, "Event_ScanFailure", "DominoFelonyChaseMonitorScanFailure", self.missionId)
      self.callidChasing = instance:RegisterMissionEventCallback(target, self, "Event_Chasing", "DominoFelonyChaseMonitorChasing", self.missionId)
      self.callidSearching = instance:RegisterMissionEventCallback(target, self, "Event_Searching", "DominoFelonyChaseMonitorSearching", self.missionId)
      self.callidEvaded = instance:RegisterMissionEventCallback(target, self, "Event_Evaded", "DominoFelonyChaseMonitorEvaded", self.missionId)
      self.callidTargetKilled = instance:RegisterMissionEventCallback(target, self, "Event_TargetKilled", "DominoFelonyChaseMonitorTargetKilled", self.missionId)
      self.callidLevelChanged = instance:RegisterMissionEventCallback(target, self, "Event_LevelChanged", "DominoFelonyChaseMonitorLevelChanged", self.missionId)
      self.callidThreatEliminated = instance:RegisterMissionEventCallback(target, self, "Event_ThreatEliminated", "DominoFelonyChaseMonitorThreatEliminated", self.missionId)
      self.callidTargetArrested = instance:RegisterMissionEventCallback(target, self, "Event_TargetArrested", "DominoFelonyChaseMonitorTargetArrested", self.missionId)
    end
    if self.CheckNow == 1 then
      local boxFelonyType = self:GetFelonyTypeID(self.FelonyType)
      FelonyCheckFelonyState(self.Target, boxFelonyType)
    end
  end
  self:Started()
end
function FelonyTargetMonitor:Stop()
  self.Target = self.Target or GetLocalPlayerEntityId()
  if self.Target ~= nil then
    self._type.UnregisterCallback(self)
  end
  self:Stopped()
end
function FelonyTargetMonitor:UnregisterCallback()
  self.Target = self.Target or GetLocalPlayerEntityId()
  if self.Target ~= nil and self.callidNone ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.Target, self.callidNone)
    instance:RemoveCallback(self.Target, self.callidDenunciatorStarted)
    instance:RemoveCallback(self.Target, self.callidDenunciatorInterrupted)
    instance:RemoveCallback(self.Target, self.callidDenunciatorFinished)
    instance:RemoveCallback(self.Target, self.callidScanStarted)
    instance:RemoveCallback(self.Target, self.callidScanSuccess)
    instance:RemoveCallback(self.Target, self.callidScanFailure)
    instance:RemoveCallback(self.Target, self.callidChasing)
    instance:RemoveCallback(self.Target, self.callidSearching)
    instance:RemoveCallback(self.Target, self.callidEvaded)
    instance:RemoveCallback(self.Target, self.callidTargetKilled)
    instance:RemoveCallback(self.Target, self.callidLevelChanged)
    instance:RemoveCallback(self.Target, self.callidThreatEliminated)
    instance:RemoveCallback(self.Target, self.callidTargetArrested)
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
function FelonyTargetMonitor:Event_None(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:None()
  end
end
function FelonyTargetMonitor:Event_DenunciatorStarted(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:DenunciatorStarted()
  end
end
function FelonyTargetMonitor:Event_DenunciatorInterrupted(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:DenunciatorInterrupted()
  end
end
function FelonyTargetMonitor:Event_DenunciatorFinished(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:DenunciatorFinished()
  end
end
function FelonyTargetMonitor:Event_ScanStarted(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:ScanStarted()
  end
end
function FelonyTargetMonitor:Event_ScanSuccess(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:ScanSuccess()
  end
end
function FelonyTargetMonitor:Event_ScanFailure(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:ScanFailure()
  end
end
function FelonyTargetMonitor:Event_Chasing(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:Chasing()
  end
end
function FelonyTargetMonitor:Event_Searching(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:Searching()
  end
end
function FelonyTargetMonitor:Event_Evaded(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:Evaded()
  end
end
function FelonyTargetMonitor:Event_TargetKilled(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:TargetKilled()
  end
end
function FelonyTargetMonitor:Event_LevelChanged(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:LevelChanged()
  end
end
function FelonyTargetMonitor:Event_ThreatEliminated(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, true)
    return self:Evaded()
  end
end
function FelonyTargetMonitor:Event_TargetArrested(felonyTypeID)
  if self:FelonyTypeMatch(felonyTypeID) == true then
    self:UpdateDataOut(felonyTypeID, false)
    return self:TargetArrested()
  end
end
function FelonyTargetMonitor:UpdateDataOut(felonyTypeID, wasThreatEliminated)
  self.EventFelonyType = self:GetFelonyTypeString(felonyTypeID)
  self.Level = -1
  if wasThreatEliminated ~= nil then
    if wasThreatEliminated == true or wasThreatEliminated == 1 then
      self.ThreatEliminated = 1
    else
      self.ThreatEliminated = 0
    end
  end
end
function FelonyTargetMonitor:FelonyTypeMatch(felonyTypeID)
  local boxFelonyType = self:GetFelonyTypeID(self.FelonyType)
  if boxFelonyType == -1 or boxFelonyType == felonyTypeID then
    return true
  end
  return false
end
function FelonyTargetMonitor:GetFelonyTypeID(felonyTypeName)
  if felonyTypeName == "Police" then
    return 0
  elseif felonyTypeName == "AFI" then
    return 1
  elseif felonyTypeName == "P_8" then
    return 3
  elseif felonyTypeName == "T_13" then
    return 6
  elseif felonyTypeName == "Boys" then
    return 9
  elseif felonyTypeName == "Ridaz" then
    return 10
  elseif felonyTypeName == "UZulu" then
    return 11
  elseif felonyTypeName == "Bratva" then
    return 12
  elseif felonyTypeName == "Wolves" then
    return 15
  end
  return -1
end
function FelonyTargetMonitor:GetFelonyTypeString(felonyTypeID)
  if felonyTypeID == 0 then
    return "Police"
  elseif felonyTypeID == 1 then
    return "AFI"
  elseif felonyTypeID == 3 then
    return "P_8"
  elseif felonyTypeID == 6 then
    return "T_13"
  elseif felonyTypeID == 9 then
    return "Boys"
  elseif felonyTypeID == 10 then
    return "Ridaz"
  elseif felonyTypeID == 11 then
    return "UZulu"
  elseif felonyTypeID == 12 then
    return "Bratva"
  elseif felonyTypeID == 15 then
    return "Wolves"
  end
end
export = FelonyTargetMonitor
FelonyTargetMonitor = nil
