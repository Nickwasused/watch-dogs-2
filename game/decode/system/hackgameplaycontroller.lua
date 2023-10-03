HackGameplayController = {}
function HackGameplayController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function HackGameplayController:Init(cbox)
  if self.IsManagingInteraction == nil then
    self.IsManagingInteraction = 1
  end
  if self.UseStoryIcon == nil then
    self.UseStoryIcon = 0
  end
  if self.DisplayObjectiveDistance == nil then
    self.DisplayObjectiveDistance = 1
  end
  if self.MarkerEntity == nil then
    self.MarkerEntity = "-1"
  end
  self.instanceId = -1
  self.missionId = cbox:GetParentMissionId()
end
function HackGameplayController:ShutDown()
  self:DestroyGameplay()
end
function HackGameplayController:Start()
  self:DestroyGameplay()
  self.Entity = self.Entity or "-1"
  self.CLO = self.CLO or "-1"
  self:CreateGameplay()
end
function HackGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function HackGameplayController:OnCompleted()
  self:DestroyGameplay()
  return self:Completed()
end
function HackGameplayController:CreateGameplay()
  local markerLocId = "167936"
  if self.MarkerLocId ~= nil then
    markerLocId = self.MarkerLocId.id
  end
  self.HackCategoryType = self.HackCategoryType or "Any"
  self.instanceId = CreateHackGameplay_v5(self.missionId, self.UseStoryIcon, self.DisplayObjectiveDistance, self.MarkerEntity, markerLocId, self.Entity, self.CLO, self.HackCategoryType, self.IsManagingInteraction, self, "OnCompleted")
  self:Started()
end
function HackGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = HackGameplayController
HackGameplayController = nil
