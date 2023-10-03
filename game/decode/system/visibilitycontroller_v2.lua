VisibilityController = {}
function VisibilityController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function VisibilityController:Init(cbox)
end
function VisibilityController:ShutDown()
end
function VisibilityController:Set()
  local IsSet = self.IsSet
  local Out = self.Out
  self.InternalVisible = self.Visible or 1
  self.AffectChildren = self.AffectChildren or 1
  self:SetInternal()
  IsSet(self)
  Out(self)
end
function VisibilityController:Show()
  local Shown = self.Shown
  local Out = self.Out
  self.InternalVisible = 1
  self.AffectChildren = self.AffectChildren or 1
  self:SetInternal()
  Shown(self)
  Out(self)
end
function VisibilityController:Hide()
  local Hidden = self.Hidden
  local Out = self.Out
  self.InternalVisible = 0
  self.AffectChildren = self.AffectChildren or 1
  self:SetInternal()
  Hidden(self)
  Out(self)
end
function VisibilityController:SetInternal()
  if self.EntityList == nil and LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    self:SetInternalOnEntity(self.Entity)
  elseif LuaLibCore:VerifyDataInputEntityList(self.EntityList, "EntityList") then
    for i, v in ipairs(self.EntityList) do
      self:SetInternalOnEntity(v)
    end
  end
end
function VisibilityController:SetInternalOnEntity(InternalEntityId)
  if self.InternalVisible == 0 then
    if self.AffectChildren == 0 then
      HideEntity(InternalEntityId)
    else
      HideCameraClippedEntity(InternalEntityId)
    end
  elseif self.AffectChildren == 0 then
    ShowEntity(InternalEntityId)
  else
    ShowCameraClippedEntity(InternalEntityId)
  end
end
export = VisibilityController
VisibilityController = nil
