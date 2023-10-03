PatrolPointMonitor = {}
function PatrolPointMonitor:Create(cbox)
end
function PatrolPointMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidPatrolPoint = nil
  self.callendPatrolPoint = nil
end
function PatrolPointMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PatrolPointMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  if self.NPC ~= nil and self.callidPatrolPoint == nil then
    self.callidPatrolPoint = instance:RegisterMissionEventCallback(self.NPC, self, "Event_PatrolPointReached", "DominoPatrolPointReached", self.missionId)
  end
  if self.NPC ~= nil and self.callendPatrolPoint == nil then
    self.callendPatrolPoint = instance:RegisterMissionEventCallback(self.NPC, self, "Event_EndPatrolPointReached", "DominoEndPatrolPointReached", self.missionId)
  end
  self:Enabled()
end
function PatrolPointMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PatrolPointMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.NPC ~= nil and self.callidPatrolPoint ~= nil then
    instance:RemoveCallback(self.NPC, self.callidPatrolPoint)
    self.callidPatrolPoint = nil
  end
  if self.NPC ~= nil and self.callendPatrolPoint ~= nil then
    instance:RemoveCallback(self.NPC, self.callendPatrolPoint)
    self.callendPatrolPoint = nil
  end
end
function PatrolPointMonitor:Event_PatrolPointReached(event)
  self.CurrentPoint = tonumber(event)
  self:CurrentPointReached()
  if self.SpecificPoint ~= nil and self.SpecificPoint == self.CurrentPoint then
    self:SpecificPointReached()
  end
end
function PatrolPointMonitor:Event_EndPatrolPointReached(event)
  self:EndPointReached()
end
export = PatrolPointMonitor
PatrolPointMonitor = nil
