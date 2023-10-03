ObjectiveMonitor = {}
function ObjectiveMonitor:Create(cbox)
end
function ObjectiveMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.AutoDisable = 1
  self.objectiveCompletedScriptCallbackId = -1
  self.onShowObjectiveCompletedScriptCallbackId = -1
  self.onHideObjectiveCompletedScriptCallbackId = -1
  self.CheckedObjective = "Objective"
  self.IncrementToReach = 1
end
function ObjectiveMonitor:ShutDown()
  if self.objectiveCompletedScriptCallbackId ~= -1 then
    UnregisterObjectiveUpdatedScriptCallback(self.missionId, self.objectiveUpdatedScriptCallbackId)
    UnregisterObjectiveCompletedScriptCallback_v2(self.missionId, self.objectiveCompletedScriptCallbackId)
    UnregisterOnShowObjectiveCompletedScriptCallback_v2(self.missionId, self.onShowObjectiveCompletedScriptCallbackId)
    UnregisterOnHideObjectiveCompletedScriptCallback_v2(self.missionId, self.onHideObjectiveCompletedScriptCallbackId)
  end
end
function ObjectiveMonitor:Enable()
  self.hasReachedIncrement = false
  self.CurrentIncrement = 0
  self.objectiveUpdatedScriptCallbackId = RegisterObjectiveUpdatedScriptCallback(self.missionId, self.Objective.id, self, "OnObjectiveUpdated")
  self.objectiveCompletedScriptCallbackId = RegisterObjectiveCompletedScriptCallback_v2(self.missionId, self.Objective.id, self, "OnObjectiveCompleted")
  self.onShowObjectiveCompletedScriptCallbackId = RegisterOnShowObjectiveCompletedScriptCallback_v2(self.missionId, self.Objective.id, self, "OnShowObjectiveCompleted")
  self.onHideObjectiveCompletedScriptCallbackId = RegisterOnHideObjectiveCompletedScriptCallback_v2(self.missionId, self.Objective.id, self, "OnHideObjectiveCompleted")
  self:Enabled()
end
function ObjectiveMonitor:Disable()
  if self.objectiveCompletedScriptCallbackId ~= -1 then
    UnregisterObjectiveUpdatedScriptCallback(self.missionId, self.objectiveUpdatedScriptCallbackId)
    UnregisterObjectiveCompletedScriptCallback_v2(self.missionId, self.objectiveCompletedScriptCallbackId)
    UnregisterOnShowObjectiveCompletedScriptCallback_v2(self.missionId, self.onShowObjectiveCompletedScriptCallbackId)
    UnregisterOnHideObjectiveCompletedScriptCallback_v2(self.missionId, self.onHideObjectiveCompletedScriptCallbackId)
  end
  self:Disabled()
end
function ObjectiveMonitor:GetIncrement()
  self.CurrentIncrement = tonumber(GetObjectiveIncrement(self.missionId, self.Objective.id, self:GetLinkedObjective(self.CheckedObjective)))
  self:GotIncrement()
end
function ObjectiveMonitor:OnObjectiveUpdated()
  self:CheckIncrementCount()
end
function ObjectiveMonitor:OnObjectiveCompleted()
  if self.AutoDisable == 1 then
    if self.objectiveUpdatedScriptCallbackId ~= -1 then
      UnregisterObjectiveUpdatedScriptCallback(self.missionId, self.objectiveUpdatedScriptCallbackId)
    end
    if self.objectiveCompletedScriptCallbackId ~= -1 then
      UnregisterObjectiveCompletedScriptCallback_v2(self.missionId, self.objectiveCompletedScriptCallbackId)
    end
  end
  return self:ObjectiveCompleted()
end
function ObjectiveMonitor:OnShowObjectiveCompleted()
  if self.AutoDisable == 1 and self.onShowObjectiveCompletedScriptCallbackId ~= -1 then
    UnregisterOnShowObjectiveCompletedScriptCallback_v2(self.missionId, self.onShowObjectiveCompletedScriptCallbackId)
  end
  return self:ObjectiveMessageStarted()
end
function ObjectiveMonitor:OnHideObjectiveCompleted()
  if self.AutoDisable == 1 and self.onHideObjectiveCompletedScriptCallbackId ~= -1 then
    UnregisterOnHideObjectiveCompletedScriptCallback_v2(self.missionId, self.onHideObjectiveCompletedScriptCallbackId)
  end
  return self:ObjectiveMessageFinished()
end
function ObjectiveMonitor:CheckIncrementCount()
  self.CurrentIncrement = tonumber(GetObjectiveIncrement(self.missionId, self.Objective.id, self:GetLinkedObjective(self.CheckedObjective)))
  if self.CurrentIncrement >= self.IncrementToReach and self.hasReachedIncrement == false then
    self.hasReachedIncrement = true
    self:IncrementReached()
  elseif self.hasReachedIncrement == false then
    self:IncrementNotReached()
  end
end
function ObjectiveMonitor:GetLinkedObjective(objective)
  if objective == "Objective" then
    return 0
  elseif objective == "ObjectiveSub1" then
    return 1
  elseif objective == "ObjectiveSub2" then
    return 2
  elseif objective == "ObjectiveSub3" then
    return 3
  end
  return 0
end
export = ObjectiveMonitor
ObjectiveMonitor = nil
