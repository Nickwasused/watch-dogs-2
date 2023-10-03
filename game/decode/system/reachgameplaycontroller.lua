ReachGameplayController = {}
function ReachGameplayController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ReachGameplayController:Init(cbox)
  if self.AreaRadius == nil then
    self.AreaRadius = 0
  end
  if self.UseStoryIcon == nil then
    self.UseStoryIcon = 0
  end
  self.instanceId = -1
  self.missionId = cbox:GetParentMissionId()
end
function ReachGameplayController:ShutDown()
  self:DestroyGameplay()
end
function ReachGameplayController:Start()
  self:DestroyGameplay()
  if self.MarkerEntity == nil then
    self.MarkerEntity = "-1"
  end
  local markerLocId = "165448"
  if self.MarkerLocId ~= nil then
    markerLocId = self.MarkerLocId.id
  end
  if self.Entity == nil then
    self.Entity = self.MissionAreaEntity
  end
  if self.AutoSetGPS == nil then
    self.AutoSetGPS = 1
  end
  if self.MissionAreaEntity == nil then
    self.MissionAreaEntity = "-1"
  end
  self.instanceId = CreateReachGameplay_v4(self.missionId, self.UseStoryIcon, self.MarkerEntity, markerLocId, self.Entity, self.AreaRadius, self.MissionAreaEntity, self.AutoSetGPS, self, "OnCompleted")
  self:Started()
end
function ReachGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function ReachGameplayController:OnCompleted()
  self:DestroyGameplay()
  return self:Completed()
end
function ReachGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = ReachGameplayController
ReachGameplayController = nil
