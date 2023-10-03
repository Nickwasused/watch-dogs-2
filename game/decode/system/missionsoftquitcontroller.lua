MissionSoftQuitMonitor = {}
function MissionSoftQuitMonitor:Create(cbox)
end
function MissionSoftQuitMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function MissionSoftQuitMonitor:ShutDown()
  DisableMissionSoftQuit()
end
function MissionSoftQuitMonitor:Enable()
  if self.MissionArea ~= nil then
    EnableMissionSoftQuit(self.MissionArea, self.missionId, self, "OnSoftQuitStarted", "OnSoftQuitAborted", "OnSoftQuitCompleted")
  end
  self:Enabled()
end
function MissionSoftQuitMonitor:Disable()
  DisableMissionSoftQuit()
  self:Disabled()
end
function MissionSoftQuitMonitor:OnSoftQuitStarted()
  return self:SoftQuitStarted()
end
function MissionSoftQuitMonitor:OnSoftQuitAborted()
  return self:SoftQuitAborted()
end
function MissionSoftQuitMonitor:OnSoftQuitCompleted()
  return self:SoftQuitCompleted()
end
export = MissionSoftQuitMonitor
MissionSoftQuitMonitor = nil
