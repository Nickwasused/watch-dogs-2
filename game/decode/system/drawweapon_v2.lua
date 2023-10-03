DrawWeapon = {}
function DrawWeapon:Create(cbox)
end
function DrawWeapon:Init(cbox)
end
function DrawWeapon:ShutDown()
end
function DrawWeapon:Holster()
  local Out = self.Out
  local Holstered = self.Holstered
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.Pawn ~= nil then
    AgentDrawWeaponType(self.Pawn, -1)
  end
  Out(self)
  Holstered(self)
end
function DrawWeapon:Handgun()
  local Out = self.Out
  local HandgunEquipped = self.HandgunEquipped
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.Pawn ~= nil then
    AgentDrawWeaponType(self.Pawn, 0)
  end
  Out(self)
  HandgunEquipped(self)
end
function DrawWeapon:Assault()
  local Out = self.Out
  local AssaultEquipped = self.AssaultEquipped
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.Pawn ~= nil then
    AgentDrawWeaponType(self.Pawn, 1)
  end
  Out(self)
  AssaultEquipped(self)
end
function DrawWeapon:ShotGun()
  local Out = self.Out
  local ShotGunEquipped = self.ShotGunEquipped
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.Pawn ~= nil then
    AgentDrawWeaponType(self.Pawn, 2)
  end
  Out(self)
  ShotGunEquipped(self)
end
function DrawWeapon:Sniper()
  local Out = self.Out
  local SniperEquipped = self.SniperEquipped
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.Pawn ~= nil then
    AgentDrawWeaponType(self.Pawn, 3)
  end
  Out(self)
  SniperEquipped(self)
end
function DrawWeapon:GrenadeLauncher()
  local Out = self.Out
  local GrenadeLauncherEquipped = self.GrenadeLauncherEquipped
  self.Pawn = self.Pawn or GetLocalPlayerEntityId()
  if self.Pawn ~= nil then
    AgentDrawWeaponShootingType(self.Pawn, 4)
  end
  Out(self)
  GrenadeLauncherEquipped(self)
end
export = DrawWeapon
DrawWeapon = nil
