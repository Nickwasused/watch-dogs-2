TargetTagController = {}
function TargetTagController:Create(cbox)
end
function TargetTagController:Init(cbox)
end
function TargetTagController:ShutDown()
end
function TargetTagController:GetTagEntityTypeIndex(tagEntityType)
  if tagEntityType == "Default" then
    return 0
  elseif tagEntityType == "ObjectiveTarget" then
    return 1
  end
  return 0
end
function TargetTagController:ModifyTagEntity(addTag)
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  local success = 0
  if self.TargetEntity ~= nil then
    success = SetTargetTagEntity(self.PlayerEntity, self.TargetEntity, addTag, self:GetTagEntityTypeIndex(self.TaggingColorType))
  end
  if self.TargetEntities ~= nil then
    for i, currentTargetEntity in ipairs(self.TargetEntities) do
      if currentTargetEntity ~= nil and SetTargetTagEntity(self.PlayerEntity, currentTargetEntity, addTag, self:GetTagEntityTypeIndex(self.TaggingColorType)) == 1 then
        success = 1
      end
    end
  end
  if addTag == 1 then
    if success == 1 then
      self:TagAdded()
    else
      self:ErrorAdding()
    end
  elseif success == 1 then
    self:TagRemoved()
  else
    self:ErrorRemoving()
  end
  self:Out()
end
function TargetTagController:AddTagEntity()
  self:ModifyTagEntity(1)
end
function TargetTagController:RemoveTagEntity()
  self:ModifyTagEntity(0)
end
function TargetTagController:EnableTagging()
  if self.TargetEntity ~= nil then
    ForceHideTagIndicator(self.TargetEntity, 0)
  end
  if self.TargetEntities ~= nil then
    for i, currentTargetEntity in ipairs(self.TargetEntities) do
      if currentTargetEntity ~= nil then
        ForceHideTagIndicator(currentTargetEntity, 0)
      end
    end
  end
  self:TaggingEnabled()
  self:Out()
end
function TargetTagController:DisableTagging()
  if self.TargetEntity ~= nil then
    ForceHideTagIndicator(self.TargetEntity, 1)
  end
  if self.TargetEntities ~= nil then
    for i, currentTargetEntity in ipairs(self.TargetEntities) do
      if currentTargetEntity ~= nil then
        ForceHideTagIndicator(currentTargetEntity, 1)
      end
    end
  end
  self:TaggingDisabled()
  self:Out()
end
function TargetTagController:EnableProfilerlessTagging()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  SetProfilerlessTaggingEnabled(self.PlayerEntity, 1)
  self:ProfilerlessTaggingEnabled()
  self:Out()
end
function TargetTagController:DisableProfilerlessTagging()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  SetProfilerlessTaggingEnabled(self.PlayerEntity, 0)
  self:ProfilerlessTaggingDisabled()
  self:Out()
end
function TargetTagController:EnableTaggerComponent()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if self.PlayerEntity ~= nil then
    SetTaggerComponentStatus(self.PlayerEntity, 1)
    self:TaggerComponentEnabled()
    self:Out()
  end
end
function TargetTagController:DisableTaggerComponent()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if self.PlayerEntity ~= nil then
    SetTaggerComponentStatus(self.PlayerEntity, 0)
    self:TaggerComponentDisabled()
    self:Out()
  end
end
export = TargetTagController
TargetTagController = nil
