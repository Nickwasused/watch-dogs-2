UIController = {}
function UIController:Create(cbox)
end
function UIController:Init(cbox)
end
function UIController:ShutDown()
end
function UIController:EnableDisplay()
  if self.UIElement ~= nil then
    EnableDisplay(self.UIElement, 1)
  end
  self:Enabled(self)
  self:Out(self)
end
function UIController:DisableDisplay()
  if self.UIElement ~= nil then
    EnableDisplay(self.UIElement, 0)
  end
  self:Disabled(self)
  self:Out(self)
end
function UIController:GetEnumContextValue()
  if self.UIContext ~= nil and self.UIContext == "SecurityCameraCinema" then
    return 51
  elseif self.UIContext ~= nil and self.UIContext == "HideMinimap" then
    return 73
  end
  return -1
end
function UIController:EnableUIContext()
  local contextIndex = self:GetEnumContextValue()
  if contextIndex > -1 then
    EnableUIContext(contextIndex, 1)
    self:ContextEnabled(self)
  else
    self:ContextEnabledFail(self)
  end
  self:Out(self)
end
function UIController:DisableUIContext()
  local contextIndex = self:GetEnumContextValue()
  if contextIndex > -1 then
    EnableUIContext(contextIndex, 0)
    self:ContextDisabled(self)
  else
    self:ContextDisabledFail(self)
  end
  self:Out(self)
end
export = UIController
UIController = nil
