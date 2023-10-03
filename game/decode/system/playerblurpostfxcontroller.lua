PlayerBlurPostFxController = {}
function PlayerBlurPostFxController:Create(cbox)
end
function PlayerBlurPostFxController:Init(cbox)
end
function PlayerBlurPostFxController:ShutDown()
end
function PlayerBlurPostFxController:Lock()
  local Out = self.Out
  local Locked = self.Locked
  SetCameraMonitorPlayerBlurLockedByScript(1)
  Out(self)
  Locked(self)
end
function PlayerBlurPostFxController:SetIntensity()
  local Out = self.Out
  local IntensitySet = self.IntensitySet
  SetCameraMonitorPlayerBlurIntensity(self.Intensity)
  Out(self)
  IntensitySet(self)
end
function PlayerBlurPostFxController:Unlock()
  local Out = self.Out
  local Unlocked = self.Unlocked
  SetCameraMonitorPlayerBlurLockedByScript(0)
  Out(self)
  Unlocked(self)
end
export = PlayerBlurPostFxController
PlayerBlurPostFxController = nil
