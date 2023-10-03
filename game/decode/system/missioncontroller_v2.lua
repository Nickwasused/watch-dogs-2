MissionController = {}
function MissionController:Create(cbox)
end
function MissionController:Init(cbox)
end
function MissionController:ShutDown()
end
function MissionController:Abort()
  local Out = self.Out
  if self.Mission ~= nil then
    AbortMissionWithDbObj(self.Mission)
  end
  Out(self)
end
function MissionController:Stop()
  local Out = self.Out
  if self.Mission ~= nil then
    StopMissionWithDbObj(self.Mission)
  end
  Out(self)
end
function MissionController:Leave()
  local Out = self.Out
  if self.Mission ~= nil then
    LeaveMissionWithDbObj(self.Mission)
  end
  Out(self)
end
function MissionController:TerminateMission()
  if self.Mission ~= nil then
    TerminateMissionSequenceWithDbObj(self.Mission)
  end
  self:Out()
end
export = MissionController
MissionController = nil
