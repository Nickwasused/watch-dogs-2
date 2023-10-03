GamepadRumbleController = {}
function GamepadRumbleController:Create(cbox)
end
function GamepadRumbleController:Init(cbox)
  self.IntensityModifier = 1
end
function GamepadRumbleController:ShutDown()
end
function GamepadRumbleController:EnableRumble()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  SendSimpleEntityEvent(self.PlayerEntity, "EnableGamepadRumble")
  self:RumbleEnabled()
  self:Out()
end
function GamepadRumbleController:DisableRumble()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  SendSimpleEntityEvent(self.PlayerEntity, "DisableGamepadRumble")
  self:RumbleDisabled()
  self:Out()
end
export = GamepadRumbleController
GamepadRumbleController = nil
