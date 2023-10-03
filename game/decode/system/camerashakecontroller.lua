CameraShakeController = {}
function CameraShakeController:Create(cbox)
end
function CameraShakeController:Init(cbox)
  self.Player = nil
  self.CameraAnim = nil
  self.TargetEntity = "0"
  self.Strength = 1
  self.Attenuation = 0.3
  self.Frequency = 0.5
  self.XRange = 0.01
  self.YRange = 0.02
  self.ZRange = 0.01
  self.Pitch = 0.035
  self.Roll = 0.01745
  self.Yaw = 0.01745
  self.Duration = 1
  self.FadeOutTime = 0.3
  self.Timer = nil
end
function CameraShakeController:ShutDown()
  if self.Timer ~= nil then
    CDominoDelayManager_GetInstance():RemoveDelay(self.Timer)
  end
end
function CameraShakeController:Start()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    if self.CameraAnim ~= nil then
      self.ShakeKey = StartCameraAnimatedShake(self.Player, self.CameraAnim, self.Strength, self.TargetEntity)
    else
      self.ShakeKey = StartCameraShake(self.Player, self.Strength, self.Attenuation, self.Frequency, self.XRange, self.YRange, self.ZRange, self.Pitch, self.Roll, self.Yaw, self.TargetEntity)
    end
  end
  if self.Timer == nil then
    self.Timer = CreateHUDDominoDelay(self.Duration, self, "Event_TimeElapsed", 1)
  else
    CDominoDelayManager_GetInstance():SetDelay(self.Timer, self.Duration)
  end
  if self.Timer ~= nil then
    CDominoDelayManager_GetInstance():SendCommand(self.Timer, "start")
  end
  self:Started()
  self:Out()
end
function CameraShakeController:Stop()
  self.Player = self.Player or GetLocalPlayerEntityId()
  self.ShakeKeyIn = self.ShakeKeyIn or self.ShakeKey
  if self.Player ~= nil then
    StopCameraShake(self.Player, self.ShakeKeyIn, self.FadeOutTime)
  end
  self:Stopped()
  self:Out()
end
function CameraShakeController:Event_TimeElapsed()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    StopCameraShake(self.Player, self.ShakeKey, self.FadeOutTime)
  end
  self:Finished()
  self:Out()
end
export = CameraShakeController
CameraShakeController = nil
