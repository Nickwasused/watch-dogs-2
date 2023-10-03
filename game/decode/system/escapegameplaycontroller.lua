EscapeGameplayController = {}
function EscapeGameplayController:Create(cbox)
end
function EscapeGameplayController:Init(cbox)
  if self.AreaRadius == nil then
    self.AreaRadius = 0
  end
  self.instanceId = -1
end
function EscapeGameplayController:ShutDown()
  self:DestroyGameplay()
end
function EscapeGameplayController:Start()
  self:DestroyGameplay()
  if self.Entity ~= nil or self.MissionAreaEntity ~= nil then
    local markerLocId = "267211"
    if self.MarkerLocId ~= nil then
      markerLocId = self.MarkerLocId.id
    end
    if self.Entity == nil then
      self.Entity = "-1"
    end
    if self.MissionAreaEntity == nil then
      self.MissionAreaEntity = "-1"
    end
    self.instanceId = CreateEscapeGameplay_v2(markerLocId, self.Entity, self.AreaRadius, self.MissionAreaEntity, self, "OnCompleted")
  end
  self:Started()
end
function EscapeGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function EscapeGameplayController:OnCompleted()
  self:DestroyGameplay()
  return self:Completed()
end
function EscapeGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = EscapeGameplayController
EscapeGameplayController = nil
