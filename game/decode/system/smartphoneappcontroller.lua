SmartphoneAppController = {}
function SmartphoneAppController:Create(cbox)
end
function SmartphoneAppController:Init(cbox)
end
function SmartphoneAppController:ShutDown()
end
function SmartphoneAppController:SetHidden()
  local HiddenSet = self.HiddenSet
  if self.App ~= nil then
    SmartphoneAppSetHidden(self.App)
  end
  HiddenSet(self)
end
function SmartphoneAppController:SetNew()
  local NewSet = self.NewSet
  if self.App ~= nil then
    SmartphoneAppSetNew(self.App)
  end
  NewSet(self)
end
function SmartphoneAppController:SetAvailable()
  local AvailableSet = self.AvailableSet
  if self.App ~= nil then
    SmartphoneAppSetAvailable(self.App)
  end
  AvailableSet(self)
end
function SmartphoneAppController:SetInstalled()
  local InstalledSet = self.InstalledSet
  if self.App ~= nil then
    SmartphoneAppSetInstalled(self.App)
  end
  InstalledSet(self)
end
function SmartphoneAppController:ActivateOverride()
  local OverrideActivated = self.OverrideActivated
  if self.OverrideSettings ~= nil then
    SmartphoneActivateOverride(self.OverrideSettings)
  end
  OverrideActivated(self)
end
function SmartphoneAppController:ClearOverride()
  local OverrideCleared = self.OverrideCleared
  SmartphoneClearOverride()
  OverrideCleared(self)
end
export = SmartphoneAppController
SmartphoneAppController = nil
