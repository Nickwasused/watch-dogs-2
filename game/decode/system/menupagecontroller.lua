MenuPageController = {}
function MenuPageController:Create(cbox)
end
function MenuPageController:Init(cbox)
end
function MenuPageController:ShutDown()
end
function MenuPageController:Open()
  if self.MenuPage ~= nil then
    OpenMenuPage2(self.MenuPage, self, "OnOpened")
    MenuClosed(self.MenuPage, self, "OnClosed")
  end
end
function MenuPageController:OnOpened()
  return self:MenuPageOpened()
end
function MenuPageController:OnClosed()
  return self:OnMenuClosed()
end
export = MenuPageController
MenuPageController = nil
