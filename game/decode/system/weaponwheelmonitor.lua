WeaponWheelMonitor = {}
function WeaponWheelMonitor:Create(cbox)
end
function WeaponWheelMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnWeaponOpened = nil
  self.callidOnWeaponClosed = nil
  self.callidOnIndexSelected = nil
end
function WeaponWheelMonitor:ShutDown()
  self:UnregisterCallback()
end
function WeaponWheelMonitor:Enable()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnWeaponOpened == nil then
    self.callidOnWeaponOpened = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnWeaponWheelOpened", "OnWeaponWheelOpened", self.missionId)
  end
  if self.callidOnWeaponClosed == nil then
    self.callidOnWeaponClosed = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnWeaponWheelClosed", "OnWeaponWheelClosed", self.missionId)
  end
  if self.callidOnIndexSelected == nil then
    self.callidOnIndexSelected = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnIndexSelected", "OnWeaponWheelIndexSelected", self.missionId)
  end
  self:Enabled()
end
function WeaponWheelMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function WeaponWheelMonitor:UnregisterCallback()
  if self.pawn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnWeaponOpened ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnWeaponOpened)
      self.callidOnWeaponOpened = nil
    end
    if self.callidOnWeaponClosed ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnWeaponClosed)
      self.callidOnWeaponClosed = nil
    end
    if self.callidOnIndexSelected ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnIndexSelected)
      self.callidOnIndexSelected = nil
    end
  end
end
function WeaponWheelMonitor:Event_OnWeaponWheelOpened()
  self:OnWeaponWheelOpened()
end
function WeaponWheelMonitor:Event_OnWeaponWheelClosed()
  self:OnWeaponWheelClosed()
end
function WeaponWheelMonitor:Event_OnIndexSelected(selectedWeaponIndex)
  if GetStringID(self.WheelPos) == selectedWeaponIndex then
    self:OnWheelPosSelected()
  else
    self:OnWheelPosUnselected()
  end
end
function WeaponWheelMonitor:GetItemCountAtWheelPos()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  self.ItemCountAtWheelPos = GetItemCountAtWheelPos(self.pawn, self.WheelPos)
  self:GotItemCountAtWheelPos()
end
function WeaponWheelMonitor:IsItemInWheel()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  if IsInventoryItemInWheel(self.pawn, self.ItemDB) == 0 then
    self:InWheelFalse()
  else
    self:InWheelTrue()
  end
end
export = WeaponWheelMonitor
WeaponWheelMonitor = nil
