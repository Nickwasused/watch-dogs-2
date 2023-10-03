CameraLockController = {}
function CameraLockController:Create(cbox)
end
function CameraLockController:Init(cbox)
  self.Player = nil
  self.BlendInTime = 1
  self.BlendOutTime = 1
  self.Target = nil
  self.Bone = -1
  self.XOffset = 0
  self.YOffset = 0
  self.ZOffset = 0
  self.Duration = 5
  self.Timer = nil
  self.PauseLockOnInput = 0
  self.KillLockOnSpeed = 0
  self.KillLockOnSpeedLimit = 0.5
  self.LockKeyIn = -1
  self.KillLockOnInput = 0
end
function CameraLockController:ShutDown()
  if self.Timer ~= nil then
    CDominoDelayManager_GetInstance():RemoveDelay(self.Timer)
  end
end
function CameraLockController:Start()
  self.Player = self.Player or GetLocalPlayerEntityId()
  self.Target = self.Target or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    if self.Bone == -1 then
      self.Bone = 255
    end
    self.LockKeyOut = StartCameraLock(self.Player, self.BlendInTime, self.BlendOutTime, self.Target, self.Bone, self.XOffset, self.YOffset, self.ZOffset, self.PauseLockOnInput, self.KillLockOnSpeed, self.KillLockOnSpeedLimit, self.KillLockOnInput)
  end
  if self.Duration > 0 then
    if self.Timer == nil then
      self.Timer = CDominoDelayManager_GetInstance():CreateDelay(self.Duration, self, "Event_TimeElapsed", 0, 1)
    else
      CDominoDelayManager_GetInstance():SetDelay(self.Timer, self.Duration)
    end
    if self.Timer ~= nil then
      CDominoDelayManager_GetInstance():SendCommand(self.Timer, "start")
    end
  end
  self:Started()
  self:Out()
end
function CameraLockController:Stop()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    if self.LockKeyIn ~= -1 then
      StopCameraLock(self.Player, self.BlendOutTime, self.LockKeyIn)
    else
      StopCameraLock(self.Player, self.BlendOutTime, self.LockKeyOut)
    end
  end
  self:Stopped()
  self:Out()
end
function CameraLockController:Event_TimeElapsed()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    StopCameraLock(self.Player, self.BlendOutTime, self.LockKeyOut)
  end
  self:Finished()
  self:Out()
end
export = CameraLockController
CameraLockController = nil
