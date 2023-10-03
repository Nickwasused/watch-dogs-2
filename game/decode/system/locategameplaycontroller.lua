LocateGameplayController = {}
function LocateGameplayController:Create(cbox)
end
function LocateGameplayController:Init(cbox)
  if self.UseStoryIcon == nil then
    self.UseStoryIcon = 0
  end
  if self.MarkerEntity == nil then
    self.MarkerEntity = "-1"
  end
  self.instanceId = -1
  self.missionId = cbox:GetParentMissionId()
end
function LocateGameplayController:ShutDown()
  self:DestroyGameplay()
end
function LocateGameplayController:Start()
  self:DestroyGameplay()
  if self.TargetEntity ~= nil or self.TargetCLO ~= nil then
    if self.TargetEntity == nil then
      self.TargetEntity = "-1"
    end
    if self.TargetCLO == nil then
      self.TargetCLO = "-1"
    end
    if self.MissionAreaEntity == nil then
      self.MissionAreaEntity = "-1"
    end
    if self.DistrictDB == nil then
      self.DistrictDB = ""
    end
    local markerLocId = "165448"
    if self.MarkerLocId ~= nil then
      markerLocId = self.MarkerLocId.id
    end
    self.instanceId = CreateLocateGameplay_v3(self.missionId, self.UseStoryIcon, self.MarkerEntity, markerLocId, self.TargetEntity, self.TargetCLO, self.MissionAreaEntity, self.DistrictDB, self, "OnCompleted")
  end
  self:Started()
end
function LocateGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function LocateGameplayController:OnCompleted()
  self:DestroyGameplay()
  return self:Completed()
end
function LocateGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = LocateGameplayController
LocateGameplayController = nil
