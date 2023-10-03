SendDamageBox = {}
function SendDamageBox:Create(cbox)
end
function SendDamageBox:Init(cbox)
end
function SendDamageBox:ShutDown()
end
function SendDamageBox:Send()
  local Out = self.DamageSent
  if self.PlayerEntity ~= nil then
    if self.DamageSource == nil then
      self.DamageSource = ""
    end
    if self.DamageType == nil then
      self.DamageType = ""
    end
    if self.DamageLevel == nil then
      self.DamageLevel = 0
    end
    if self.DamageLocation == nil then
      self.DamageLocation = ""
    end
    SendDamageToEntity(self.PlayerEntity, self.DamageSource, self:GetDamageTypeValue(self.DamageType), self.DamageLevel, self:GetDamageLocationValue(self.DamageLocation))
  end
  Out(self)
end
function SendDamageBox:GetDamageTypeValue(damageTypeName)
  if damageTypeName == "Bullet" then
    return 3
  elseif damageTypeName == "Explosion" then
    return 4
  elseif damageTypeName == "Cut" then
    return 5
  elseif damageTypeName == "Burn" then
    return 7
  elseif damageTypeName == "InstantKill" then
    return 16
  elseif damageTypeName == 16 then
    return 16
  end
  return 0
end
function SendDamageBox:GetDamageLocationValue(damageLocationName)
  if damageLocationName == "Torso" then
    return 1
  elseif damageLocationName == "Pelvis" then
    return 2
  elseif damageLocationName == "Shoulders" then
    return 4
  elseif damageLocationName == "LUpperArm" then
    return 8
  elseif damageLocationName == "LForearm" then
    return 16
  elseif damageLocationName == "LHand" then
    return 32
  elseif damageLocationName == "RUpperArm" then
    return 64
  elseif damageLocationName == "RForearm" then
    return 128
  elseif damageLocationName == "RHand" then
    return 256
  elseif damageLocationName == "Head" then
    return 512
  elseif damageLocationName == "LeftLeg" then
    return 1024
  elseif damageLocationName == "LeftFoot" then
    return 2048
  elseif damageLocationName == "RightLeg" then
    return 4086
  elseif damageLocationName == "RightFoot" then
    return 8192
  end
  return 0
end
export = SendDamageBox
SendDamageBox = nil
