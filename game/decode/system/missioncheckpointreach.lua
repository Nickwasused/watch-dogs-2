MissionCheckpointReach = {}
function MissionCheckpointReach:Create(cbox)
end
function MissionCheckpointReach:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnCheckPointActivated = nil
end
function MissionCheckpointReach:ShutDown()
  if self.callidOnCheckPointActivated ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnCheckPointActivated", self.callidOnCheckPointActivated)
    self.callidOnCheckPointActivated = nil
  end
end
function MissionCheckpointReach:In()
  local checkpoint = self.Checkpoint or self.CheckpointList
  if checkpoint ~= nil and self.callidOnCheckPointActivated == nil then
    self.callidOnCheckPointActivated = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback("OnCheckPointActivated", self, "Event_CheckPointActivated", self.missionId)
    if self.SoftSave == nil then
      self.SoftSave = 0
    end
    MissionCheckpoint_v2(self.missionId, checkpoint)
  end
end
function MissionCheckpointReach:Event_CheckPointActivated()
  if self.callidOnCheckPointActivated ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnCheckPointActivated", self.callidOnCheckPointActivated)
    self.callidOnCheckPointActivated = nil
    self:Out()
  end
end
function MissionCheckpointReach:DisableAllCheckpoints()
  local AllCheckpointsDisabled = self.AllCheckpointsDisabled
  DisableCheckpointsControllers()
  AllCheckpointsDisabled(self)
end
export = MissionCheckpointReach
MissionCheckpointReach = nil
