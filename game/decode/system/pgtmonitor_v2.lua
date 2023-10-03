PGTMonitor = {}
function PGTMonitor:Create(cbox)
  self.PGTCLO = {}
  self.EntityID = {}
end
function PGTMonitor:Init(cbox)
  self.callidPGTMissionStopped = nil
  self.callidPGTPatrolsAssigned = nil
end
function PGTMonitor:ShutDown()
  self:UnregisterPatrolsAssignedCallback()
  self:UnregisterStopCallback()
  self.EntityID = {}
end
function PGTMonitor:Enable()
  if self.PGTMissionArea == nil then
    return
  end
  self:RegisterStopCallback()
  self:RegisterPatrolsAssignedCallback()
  self:Enabled()
end
function PGTMonitor:Disable()
  if self.PGTMissionArea == nil then
    return
  end
  self:UnregisterPatrolsAssignedCallback()
  self:UnregisterStopCallback()
  self.EntityID = {}
  self:Disabled()
end
function PGTMonitor:GetEntityIDs()
  local lastIndex = self._DynamicAnchors.PGTCLO - 1
  local invalidEntity = GetInvalidEntityId()
  for i = 0, lastIndex do
    local spawnedEntityID = PGTGetSpawnedAiEntity(self.PGTMissionArea, self.PGTCLO[i])
    if spawnedEntityID == invalidEntity then
      self.EntityID[i] = nil
    else
      self.EntityID[i] = spawnedEntityID
    end
  end
  self:GotEntityIDs()
end
function PGTMonitor:RegisterStopCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStopped == nil then
    self.callidPGTMissionStopped = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTMissionAreaStopped", "PGTMissionAreaStoppedEvent")
  end
end
function PGTMonitor:UnregisterStopCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStopped ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTMissionStopped)
    self.callidPGTMissionStopped = nil
  end
end
function PGTMonitor:RegisterPatrolsAssignedCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTPatrolsAssigned == nil then
    self.callidPGTPatrolsAssigned = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTPatrolsAssigned", "PGTPatrolsAssignedEvent")
  end
end
function PGTMonitor:UnregisterPatrolsAssignedCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTPatrolsAssigned ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTPatrolsAssigned)
    self.callidPGTPatrolsAssigned = nil
  end
end
function PGTMonitor:Event_PGTMissionAreaStopped()
  return self:AllDead()
end
function PGTMonitor:Event_PGTPatrolsAssigned()
  return self:PatrolsAssigned()
end
export = PGTMonitor
PGTMonitor = nil
