ShopController = {}
function ShopController:Enable()
  if self.GPIEntity ~= nil then
    ShopEnable(self.GPIEntity, 1)
    self:Enabled()
  end
end
function ShopController:Disable()
  if self.GPIEntity ~= nil then
    ShopEnable(self.GPIEntity, 0)
    self:Disabled()
  end
end
export = ShopController
ShopController = nil
