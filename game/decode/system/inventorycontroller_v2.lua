InventoryController = {ItemDB = nil}
function InventoryController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function InventoryController:Set()
  local Out = self.Out
  local IsSet = self.IsSet
  self.ItemCount = self.ItemCount or 1
  if LuaLibCore:AssertNotNil(self.ItemDB, "ItemDB") and LuaLibCore:AssertNotNil(self.ItemCount, "ItemCount") then
    SetItem(self.ItemDB, self.ItemCount)
  end
  Out(self)
  IsSet(self)
end
function InventoryController:Add()
  local Out = self.Out
  local Added = self.Added
  self.ItemCount = self.ItemCount or 1
  if LuaLibCore:AssertNotNil(self.ItemDB, "ItemDB") and LuaLibCore:AssertNotNil(self.ItemCount, "ItemCount") then
    AddItem(self.ItemDB, self.ItemCount)
  end
  Out(self)
  Added(self)
end
function InventoryController:EquipItem()
  local ItemEquipped = self.ItemEquipped
  if LuaLibCore:AssertNotNil(self.ItemDB, "ItemDB") then
    EquipItem(self.ItemDB)
  end
  ItemEquipped(self)
end
function InventoryController:Remove()
  local Out = self.Out
  local Removed = self.Removed
  self.ItemCount = self.ItemCount or 1
  if LuaLibCore:AssertNotNil(self.ItemDB, "ItemDB") and LuaLibCore:AssertNotNil(self.ItemCount, "ItemCount") then
    RemoveItem(self.ItemDB, self.ItemCount)
  end
  Out(self)
  Removed(self)
end
function InventoryController:RemoveAllEquippable()
  local Out = self.Out
  local Removed = self.Removed
  SwitchLocalPlayerInventoryToEmpty()
  Out(self)
  Removed(self)
end
function InventoryController:SwitchLocalPlayerInventoryToNormal()
  local Out = self.Out
  local Switched = self.Switched
  SwitchLocalPlayerInventoryToNormal()
  Out(self)
  Switched(self)
end
function InventoryController:SwitchLocalPlayerInventoryToEmpty()
  local Out = self.Out
  local Switched = self.Switched
  SwitchLocalPlayerInventoryToEmpty()
  Out(self)
  Switched(self)
end
function InventoryController:SwitchLocalPlayerInventory()
  local Out = self.Out
  local Switched = self.Switched
  if self.FullWeaponWheelMode == nil then
    self.FullWeaponWheelMode = 0
  end
  if LuaLibCore:AssertNotNil(self.LoadoutItemListDB, "LoadoutItemListDB") then
    SwitchLocalPlayerInventoryList(self.LoadoutItemListDB, self.FullWeaponWheelMode)
  end
  Out(self)
  Switched(self)
end
function InventoryController:DisableWheelActionMap()
  InventoryWheel_DisableDefaultActionMap()
  if self.WheelActionMapDisabled ~= nil then
    self:WheelActionMapDisabled()
  end
end
function InventoryController:EnableWheelActionMap()
  InventoryWheel_EnableDefaultActionMap()
  if self.WheelActionMapEnabled ~= nil then
    self:WheelActionMapEnabled()
  end
end
function InventoryController:UnspawnReleasedProjectiles()
  local Out = self.Out
  local UnspawnedReleasedProjectiles = self.UnspawnedReleasedProjectiles
  self.ReturnProjectilesToPlayer = self.ReturnProjectilesToPlayer or 1
  UnspawnReleasedProjectiles(self.ReturnProjectilesToPlayer)
  Out(self)
  UnspawnedReleasedProjectiles(self)
end
export = InventoryController
InventoryController = nil
