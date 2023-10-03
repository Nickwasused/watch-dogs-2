SetIsHidingInVehicleBox = {}
function SetIsHidingInVehicleBox:Create(cbox)
end
function SetIsHidingInVehicleBox:Init(cbox)
end
function SetIsHidingInVehicleBox:ShutDown()
end
function SetIsHidingInVehicleBox:Hide()
  local player = self.User or GetLocalPlayerEntityId()
  if player ~= nil then
    HideUserInCar(player, 1)
  end
  self:Out()
  self:Hidden()
end
function SetIsHidingInVehicleBox:UnHide()
  local player = self.User or GetLocalPlayerEntityId()
  if player ~= nil then
    HideUserInCar(player, 0)
  end
  self:Out()
  self:Unhidden()
end
function SetIsHidingInVehicleBox:SetCanHideInVehicle()
  local player = self.User or GetLocalPlayerEntityId()
  local canHideInVehicle = self.CanHideInVehicle or 1
  if player ~= nil then
    SetCanHideInVehicle(player, canHideInVehicle)
  end
  self:Out()
  if canHideInVehicle == true or canHideInVehicle == 1 then
    self:HideInVehicleEnabled()
  else
    self:HideInVehicleDisabled()
  end
end
export = SetIsHidingInVehicleBox
SetIsHidingInVehicleBox = nil
