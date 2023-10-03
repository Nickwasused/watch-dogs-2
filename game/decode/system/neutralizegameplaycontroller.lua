NeutralizeGameplayController = {}
function NeutralizeGameplayController:Create(cbox)
end
function NeutralizeGameplayController:Init(cbox)
  if self.UseStoryIcon == nil then
    self.UseStoryIcon = 0
  end
  self.instanceId = -1
  self.missionId = cbox:GetParentMissionId()
end
function NeutralizeGameplayController:ShutDown()
  self:DestroyGameplay()
end
function NeutralizeGameplayController:Start()
  self:DestroyGameplay()
  if self.Entity ~= nil or self.CLO ~= nil then
    if self.BreakableSpawnedEffectsCount == nil then
      self.BreakableSpawnedEffectsCount = 1
    end
    if self.Entity == nil then
      self.Entity = "-1"
    end
    if self.CLO == nil then
      self.CLO = "-1"
    end
    if self.MarkerEntity == nil then
      self.MarkerEntity = "-1"
    end
    local markerLocId = "267208"
    if self.MarkerLocId ~= nil then
      markerLocId = self.MarkerLocId.id
    end
    self.instanceId = CreateNeutralizeGameplay_v3(self.missionId, self.UseStoryIcon, self.MarkerEntity, markerLocId, self.Entity, self.CLO, self.BreakableSpawnedEffectsCount, self, "OnCompleted")
  end
  self:Started()
end
function NeutralizeGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function NeutralizeGameplayController:OnCompleted()
  self:DestroyGameplay()
  return self:Completed()
end
function NeutralizeGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = NeutralizeGameplayController
NeutralizeGameplayController = nil
