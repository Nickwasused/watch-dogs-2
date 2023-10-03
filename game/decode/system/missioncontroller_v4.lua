MissionController = {}
function MissionController:Create(cbox)
end
function MissionController:Init(cbox)
  self.SilentAbort = false
  self.missionId = cbox:GetParentMissionId()
end
function MissionController:ShutDown()
end
function MissionController:Succeed()
  SucceedMission_v2(self.missionId)
end
function MissionController:Fail()
  local endReason = "-1"
  if self.EndReason ~= nil then
    endReason = self.EndReason.id
  end
  ScriptUIMissionFail_v2(self.missionId, endReason, self, "")
  FailMission_v2(self.missionId)
end
function MissionController:Abort()
  local endReason = "-1"
  if self.EndReason ~= nil then
    endReason = self.EndReason.id
  end
  if self.SilentAbort == false then
    ScriptUIMissionAbort_v2(self.missionId, endReason, self, "")
  end
  AbortMission_v2(self.missionId)
end
export = MissionController
MissionController = nil
