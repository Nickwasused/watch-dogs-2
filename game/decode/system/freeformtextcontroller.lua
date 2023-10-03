FreeFormTextController = {}
function FreeFormTextController:Create(cbox)
end
function FreeFormTextController:Init(cbox)
end
function FreeFormTextController:ShutDown()
end
function FreeFormTextController:Open()
  if self.FreeFormText ~= nil then
    RequestFreeFormText(self.FreeFormText, self, "OnDisplayed")
    self:OnFreeFormTextRequested()
  end
end
function FreeFormTextController:OnDisplayed()
  return self:OnFreeFormTextHidden()
end
export = FreeFormTextController
FreeFormTextController = nil
