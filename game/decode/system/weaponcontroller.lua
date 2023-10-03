WeaponController = {ItemDB = nil}
function WeaponController:Create(cbox)
end
function WeaponController:GetWeaponTypeID(weaponType)
  if weaponType == "Holster" then
    return -1
  elseif weaponType == "OneHanded" then
    return 0
  elseif weaponType == "Asault" then
    return 1
  elseif weaponType == "ShotGun" then
    return 2
  elseif weaponType == "Sniper" then
    return 3
  end
  return -1
end
function WeaponController:SetClipBullets()
  self.BulletCount = self.BulletCount or 0
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  ModifyBulletsInClip(self.pawn, self:GetWeaponTypeID(self.Weapontype), self.BulletCount, 0)
  self:Out()
end
function WeaponController:AddClipBullets()
  self.BulletCount = self.BulletCount or 0
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  ModifyBulletsInClip(self.pawn, self:GetWeaponTypeID(self.Weapontype), self.BulletCount, 1)
  self:Out()
end
export = WeaponController
WeaponController = nil
