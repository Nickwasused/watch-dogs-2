ReloadWeaponPlayerBox = {}
function ReloadWeaponPlayerBox:Create(cbox)
end
function ReloadWeaponPlayerBox:Init(cbox)
end
function ReloadWeaponPlayerBox:ShutDown()
end
function ReloadWeaponPlayerBox:In()
  local Out = self.Out
  if self.PlayerID then
    ReloadWeaponPlayer(self.PlayerID)
  end
  Out(self)
end
export = ReloadWeaponPlayerBox
ReloadWeaponPlayerBox = nil
