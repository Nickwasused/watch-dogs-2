HealthBarController = {}
function HealthBarController:Create(cbox)
end
function HealthBarController:Init(cbox)
end
function HealthBarController:ShutDown()
end
function HealthBarController:Display()
  local Displayed = self.Displayed
  ShowHealthBar(1, self.NPC_ID, self.NPC_Name.id)
  Displayed(self)
end
function HealthBarController:Hide()
  local Hidden = self.Hidden
  ShowHealthBar(0, self.NPC_ID, self.NPC_Name.id)
  Hidden(self)
end
export = HealthBarController
HealthBarController = nil
