InventoryMonitor = {ItemDB = nil}
function InventoryMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function InventoryMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnItemAdded = nil
  self.callidOnItemRemoved = nil
  self.wd2WeaponList = {
    "$#9223372047058962344",
    "$#9223372047058962347",
    "$#9223372047058962424",
    "$#9223372047058962425",
    "$#9223372047058962428",
    "$#9223372047058962429",
    "$#9223372047058962345",
    "$#9223372047058962350",
    "$#9223372047058962351",
    "$#9223372047058962351",
    "$#9223372047058962427",
    "$#9223372047058962359",
    "$#9223372047058962431",
    "$#9223372047058962430",
    "$#9223372047058962360",
    "$#9223372047058962361",
    "$#9223372047058962363",
    "$#9223372047058962367",
    "$#9223372047058962709",
    "$#9223372047058962710",
    "$#9223372047058962370",
    "$#9223372056267743677"
  }
  self.wd2WeaponList2 = {
    "$#9223372047058962449",
    "$#9223372047058962365",
    "$#9223372052410513450",
    "$#9223372047058962384",
    "$#9223372047058962386",
    "$#9223372047058962459",
    "$#9223372047058962457",
    "$#9223372047058962458",
    "$#9223372047058962388",
    "$#9223372047058962389",
    "$#9223372047058962395",
    "$#9223372047058962400",
    "$#9223372047058962401",
    "$#9223372047058962409",
    "$#9223372047058962411",
    "$#9223372047058962468",
    "$#9223372047058962466",
    "$#9223372047058962469",
    "$#9223372047058962413",
    "$#9223372047058962467",
    "$#9223372047058962432",
    "$#9223372047058962437"
  }
end
function InventoryMonitor:ShutDown()
  self:UnregisterCallback()
end
function InventoryMonitor:Enable()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.pawn, "Pawn") then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnItemAdded == nil then
      self.callidOnItemAdded = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnItemAdded", "OnInventoryItemAdded", self.missionId)
    end
    if self.callidOnItemRemoved == nil then
      self.callidOnItemRemoved = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnItemRemoved", "OnInventoryItemRemoved", self.missionId)
    end
    if self.callidOnItemEquipped == nil then
      self.callidOnItemEquipped = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnItemEquipped", "OnInventorySelected", self.missionId)
    end
  end
  self:Enabled()
end
function InventoryMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function InventoryMonitor:UnregisterCallback()
  if self.pawn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnItemAdded ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnItemAdded)
      self.callidOnItemAdded = nil
    end
    if self.callidOnItemRemoved ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnItemRemoved)
      self.callidOnItemRemoved = nil
    end
    if self.callidOnItemEquipped ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnItemEquipped)
      self.callidOnItemEquipped = nil
    end
  end
end
function InventoryMonitor:Event_OnItemAdded(itemId)
  self:OnAnyItemAdded()
  if self.ItemDB ~= nil and GetItemId(self.ItemDB) == itemId then
    self:OnItemAdded()
  end
  if self.ItemDB ~= nil and GetItemId(self.ItemDB) ~= itemId then
    self:OnItemNotAdded()
  end
  for i, v in ipairs(self.wd2WeaponList) do
    if v == itemId then
      self:OnWeaponAdded()
    end
  end
  for i, v in ipairs(self.wd2WeaponList2) do
    if v == itemId then
      self:OnWeaponAdded()
    end
  end
end
function InventoryMonitor:Event_OnItemEquipped(itemId)
  if GetItemId(self.ItemDB) == itemId then
    self:OnItemEquipped()
  end
end
function InventoryMonitor:Event_OnItemRemoved(itemId)
  if GetItemId(self.ItemDB) == itemId then
    self:OnItemRemoved()
  end
end
function InventoryMonitor:HasItem()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.pawn, "Pawn") then
    self.ItemCount = GetItemCount(self.pawn, self.ItemDB)
    if self.ItemCount == 0 then
      return self:HasItemFalse()
    else
      return self:HasItemTrue()
    end
  end
end
function InventoryMonitor:IsItemInWheel()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  if LuaLibCore:VerifyDataInputEntity(self.pawn, "Pawn") then
    if IsInventoryItemInWheel(self.pawn, self.ItemDB) == 0 then
      self:InWheelFalse()
    else
      self:InWheelTrue()
    end
  end
end
export = InventoryMonitor
InventoryMonitor = nil
