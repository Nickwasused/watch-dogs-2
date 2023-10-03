MissionMessageController = {}
function MissionMessageController:Create(cbox)
end
function MissionMessageController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  if self.IncrementalObjectiveTotal == nil then
    self.IncrementalObjectiveTotal = 0
  end
  if self.IncrementalObjectiveTotalSub1 == nil then
    self.IncrementalObjectiveTotalSub1 = 0
  end
  if self.IncrementalObjectiveTotalSub2 == nil then
    self.IncrementalObjectiveTotalSub2 = 0
  end
  if self.IncrementalObjectiveTotalSub3 == nil then
    self.IncrementalObjectiveTotalSub3 = 0
  end
  if self.ShowPreviousObjectiveComplete == nil then
    self.ShowPreviousObjectiveComplete = 1
  end
  if self.HasObjectiveMarker == nil then
    self.HasObjectiveMarker = 1
  end
end
function MissionMessageController:ShutDown()
end
function MissionMessageController:ShowMissionComplete()
  local missionEndReason = "-1"
  if self.MissionEndReason ~= nil then
    missionEndReason = self.MissionEndReason.id
  end
  ScriptUIMissionSuccess_v2(self.missionId, missionEndReason, self, "OnMessageCompleted")
  self:Out()
  self:MessageRequested()
end
function MissionMessageController:ShowNewObjective()
  if self.ShowPreviousObjectiveComplete == 1 then
    self:ShowLastObjectiveCompleteInternal(self, "")
  end
  self:UpdateObjectiveInternal(self, "OnMessageCompleted")
  self:Out()
  self:MessageRequested()
end
function MissionMessageController:HideObjective()
  ScriptUIObjectiveHide(self.missionId)
  self:Out()
  self:MessageRequested()
end
function MissionMessageController:ShowLastObjectiveComplete()
  self:ShowLastObjectiveCompleteInternal(self, "OnMessageCompleted")
  self:Out()
  self:MessageRequested()
end
function MissionMessageController:UpdateObjective()
  self:UpdateObjectiveInternal(self, "OnMessageCompleted")
  self:Out()
  self:MessageRequested()
end
function MissionMessageController:IncrementObjective()
  self:IncrementObjectiveInternal()
  self:Out()
  self:MessageRequested()
end
function MissionMessageController:UpdateObjectiveInternal(scriptRef, scriptFunction)
  if self.Objective ~= nil then
    ScriptUIMainObjectiveUpdate(self.missionId, self.Objective.id, self.IncrementalObjectiveTotal, self.HasObjectiveMarker, scriptRef, scriptFunction)
    scriptFunction = ""
  elseif self.DebugObjective ~= nil then
    ScriptUIMainObjectiveUpdateDebugText(self.missionId, self.DebugObjective, self.IncrementalObjectiveTotal, self.HasObjectiveMarker, scriptRef, scriptFunction)
    scriptFunction = ""
  end
  if self.ObjectiveSub1 ~= nil then
    ScriptUISubObjectiveUpdate(self.missionId, 1, self.ObjectiveSub1.id, self.IncrementalObjectiveTotalSub1, scriptRef, scriptFunction)
    scriptFunction = ""
  elseif self.DebugObjectiveSub1 ~= nil then
    ScriptUISubObjectiveUpdateDebugText(self.missionId, 1, self.DebugObjectiveSub1, self.IncrementalObjectiveTotalSub1, scriptRef, scriptFunction)
    scriptFunction = ""
  end
  if self.ObjectiveSub2 ~= nil then
    ScriptUISubObjectiveUpdate(self.missionId, 2, self.ObjectiveSub2.id, self.IncrementalObjectiveTotalSub2, scriptRef, scriptFunction)
    scriptFunction = ""
  elseif self.DebugObjectiveSub2 ~= nil then
    ScriptUISubObjectiveUpdateDebugText(self.missionId, 2, self.DebugObjectiveSub2, self.IncrementalObjectiveTotalSub2, scriptRef, scriptFunction)
    scriptFunction = ""
  end
  if self.ObjectiveSub3 ~= nil then
    ScriptUISubObjectiveUpdate(self.missionId, 3, self.ObjectiveSub3.id, self.IncrementalObjectiveTotalSub3, scriptRef, scriptFunction)
    scriptFunction = ""
  elseif self.DebugObjectiveSub3 ~= nil then
    ScriptUISubObjectiveUpdateDebugText(self.missionId, 3, self.DebugObjectiveSub3, self.IncrementalObjectiveTotalSub3, scriptRef, scriptFunction)
    scriptFunction = ""
  end
end
function MissionMessageController:IncrementObjectiveInternal()
  if self.ObjectiveSub1 == nil and self.ObjectiveSub2 == nil and self.ObjectiveSub3 == nil then
    if self.Objective ~= nil then
      ScriptUIIncrementCompletion(self.missionId, 0)
    end
  else
    if self.ObjectiveSub1 ~= nil then
      ScriptUIIncrementCompletion(self.missionId, 1)
    end
    if self.ObjectiveSub2 ~= nil then
      ScriptUIIncrementCompletion(self.missionId, 2)
    end
    if self.ObjectiveSub3 ~= nil then
      ScriptUIIncrementCompletion(self.missionId, 3)
    end
  end
end
function MissionMessageController:ShowLastObjectiveCompleteInternal(scriptRef, scriptFunction)
  ScriptUIObjectiveSuccess(self.missionId, scriptRef, scriptFunction)
end
function MissionMessageController:OnMessageCompleted()
  return self:MessageCompleted()
end
export = MissionMessageController
MissionMessageController = nil
