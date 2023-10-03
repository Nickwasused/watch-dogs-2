ClothController = {}
function ClothController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ClothController:Create(cbox)
end
function ClothController:Init(cbox)
  if self.AddOnEquip == nil then
    self.AddOnEquip = 1
  end
end
function ClothController:ShutDown()
end
function ClothController:Equip()
  if LuaLibCore:AssertNotNil(self.ItemDB, "ItemDB") then
    SetLocalPlayerClothing(self.ItemDB, self.AddOnEquip, 1)
  end
  self:Equipped()
end
function ClothController:Add()
  if LuaLibCore:AssertNotNil(self.ItemDB, "ItemDB") then
    SetLocalPlayerClothing(self.ItemDB, 1, 0)
  end
  self:Added()
end
export = ClothController
ClothController = nil
