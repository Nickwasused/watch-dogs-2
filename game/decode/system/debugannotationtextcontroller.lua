DebugAnnotationTextController = {}
function DebugAnnotationTextController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function DebugAnnotationTextController:Init(cbox)
end
function DebugAnnotationTextController:ShutDown()
end
function DebugAnnotationTextController:Enable()
  local outValue = self.Enabled
  local entityId = self.EntityId
  if LuaLibCore:VerifyDataInputEntity(entityId, "EntityId") then
    if self.Text ~= nil then
      self:SetTextInternal(entityId, self.Text, "Enable")
    end
    EnableDebugAnnotationEntity(entityId)
  end
  outValue(self)
end
function DebugAnnotationTextController:Disable()
  local outValue = self.Disabled
  if LuaLibCore:VerifyDataInputEntity(self.EntityId, "EntityId") then
    DisableDebugAnnotationEntity(self.EntityId)
  end
  outValue(self)
end
function DebugAnnotationTextController:SetText()
  local outValue = self.TextSet
  self:SetTextInternal(self.EntityId, self.Text, "SetText")
  outValue(self)
end
function DebugAnnotationTextController:SetTextInternal(localEntityId, localText, pinName)
  if LuaLibCore:VerifyDataInputEntity(localEntityId, "EntityId") then
    if localText ~= nil then
      SetDebugAnnotationEntityText(localEntityId, localText)
    else
      LuaLibCore:ShowErrorMessage("DebugAnnotationTextController", pinName, "Data input anchor 'Text' is nil.")
    end
  end
end
export = DebugAnnotationTextController
DebugAnnotationTextController = nil
