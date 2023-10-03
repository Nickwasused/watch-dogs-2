InteractGameplayController = {}
function InteractGameplayController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function InteractGameplayController:Init(cbox)
  if self.IsManagingInteraction == nil then
    self.IsManagingInteraction = 1
  end
  if self.UseStoryIcon == nil then
    self.UseStoryIcon = 0
  end
  self.instanceId = -1
  self.missionId = cbox:GetParentMissionId()
end
function InteractGameplayController:ShutDown()
  self:DestroyGameplay()
end
function InteractGameplayController:Start()
  self:DestroyGameplay()
  self.Entity = self.Entity or "-1"
  self.CLO = self.CLO or "-1"
  self.MarkerEntity = self.MarkerEntity or "-1"
  self:CreateGameplay()
end
function InteractGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function InteractGameplayController:OnCompleted()
  self:DestroyGameplay()
  return self:Completed()
end
function InteractGameplayController:CreateGameplay()
  local markerLocId = "-1"
  if self.MarkerLocId ~= nil and self.MarkerLocId.id ~= "259134" then
    markerLocId = self.MarkerLocId.id
  end
  self.instanceId = CreateInteractGameplay_v3(self.missionId, self.UseStoryIcon, self.MarkerEntity, markerLocId, self.Entity, self.CLO, self.IsManagingInteraction, self, "OnCompleted")
  self:Started()
end
function InteractGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = InteractGameplayController
InteractGameplayController = nil
