ReinforcementSystemMonitor = {}
function ReinforcementSystemMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibAI.lua")
end
function ReinforcementSystemMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidNone = nil
  self.callidReinforcing = nil
  self.callidCallingNextWave = nil
  self.callidCallingNextWaveSucceeded = nil
  self.callidReachedWaveChangeThreshold = nil
  self.callidWaveChanged = nil
  self.callidEntitySpawned = nil
  self.callidFinished = nil
end
function ReinforcementSystemMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function ReinforcementSystemMonitor:Enable()
  self._type.UnregisterCallback(self)
  local target = self.Target or GetLocalPlayerEntityId()
  local affiliation = LuaLibAI:GetAffiliationID(self.Affiliation)
  if target ~= nil then
    if self.callidCallingNextWave == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.callidNone = instance:RegisterMissionEventCallback(target, self, "Event_None", "DominoReinforcementMonitorNone", self.missionId)
      self.callidReinforcing = instance:RegisterMissionEventCallback(target, self, "Event_Reinforcing", "DominoReinforcementMonitorReinforcing", self.missionId)
      self.callidCallingNextWave = instance:RegisterMissionEventCallback(target, self, "Event_CallingNextWave", "DominoReinforcementMonitorCallingNextWave", self.missionId)
      self.callidCallingNextWaveSucceeded = instance:RegisterMissionEventCallback(target, self, "Event_CallingNextWaveSucceeded", "DominoReinforcementMonitorCallingNextWaveSucceeded", self.missionId)
      self.callidReachedWaveChangeThreshold = instance:RegisterMissionEventCallback(target, self, "Event_ReachedWaveChangeThreshold", "DominoReinforcementMonitorReachedWaveChangeThreshold", self.missionId)
      self.callidWaveChanged = instance:RegisterMissionEventCallback(target, self, "Event_WaveChanged", "DominoReinforcementMonitorWaveChanged", self.missionId)
      self.callidEntitySpawned = instance:RegisterMissionEventCallback(target, self, "Event_EntitySpawned", "DominoReinforcementMonitorEntitySpawned", self.missionId)
      self.callidFinished = instance:RegisterMissionEventCallback(target, self, "Event_Finished", "DominoReinforcementMonitorFinished", self.missionId)
    end
    if self.CheckNow ~= nil and self.CheckNow == 1 then
      ReinforcementCheckState_v2(affiliation, target)
    end
  end
  self:Enabled()
end
function ReinforcementSystemMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function ReinforcementSystemMonitor:UnregisterCallback()
  local target = self.Target or GetLocalPlayerEntityId()
  if target ~= nil and self.callidCallingNextWave ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(target, self.callidNone)
    instance:RemoveCallback(target, self.callidReinforcing)
    instance:RemoveCallback(target, self.callidCallingNextWave)
    instance:RemoveCallback(target, self.callidCallingNextWaveSucceeded)
    instance:RemoveCallback(target, self.callidReachedWaveChangeThreshold)
    instance:RemoveCallback(target, self.callidWaveChanged)
    instance:RemoveCallback(target, self.callidEntitySpawned)
    instance:RemoveCallback(target, self.callidFinished)
    self.callidReinforcing = nil
    self.callidCallingNextWave = nil
    self.callidCallingNextWaveSucceeded = nil
    self.callidReachedWaveChangeThreshold = nil
    self.callidEntitySpawned = nil
    self.callidFinished = nil
  end
end
function ReinforcementSystemMonitor:Event_None(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  return self:None()
end
function ReinforcementSystemMonitor:Event_Reinforcing(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:Reinforcing()
  end
end
function ReinforcementSystemMonitor:Event_CallingNextWave(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:CallingNextWave()
  end
end
function ReinforcementSystemMonitor:Event_CallingNextWaveSucceeded(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:CallingNextWaveSucceeded()
  end
end
function ReinforcementSystemMonitor:Event_ReachedWaveChangeThreshold(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:ReachedWaveChangeThreshold()
  end
end
function ReinforcementSystemMonitor:Event_WaveChanged(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:WaveChanged()
  end
end
function ReinforcementSystemMonitor:Event_EntitySpawned(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:EntitySpawned()
  end
end
function ReinforcementSystemMonitor:Event_Finished(squadName, affiliation, waveNumber, vehicleList, boatList, chopperList, npcList)
  if self:AffiliationMatch(affiliation) == true then
    self:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
    return self:Finished()
  end
end
function ReinforcementSystemMonitor:UpdateDataOut(waveNumber, vehicleList, boatList, chopperList, npcList)
  self.EventWaveNumber = waveNumber
  self.EventVehicleList = vehicleList
  self.EventBoatList = boatList
  self.EventChopperList = chopperList
  self.EventNPCList = npcList
end
function ReinforcementSystemMonitor:AffiliationMatch(affiliation)
  if affiliation == LuaLibAI:GetAffiliationID(self.Affiliation) then
    return true
  end
  return false
end
export = ReinforcementSystemMonitor
ReinforcementSystemMonitor = nil
