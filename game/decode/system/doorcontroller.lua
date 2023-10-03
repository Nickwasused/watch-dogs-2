DoorController = {}
function DoorController:Create(cbox)
end
function DoorController:Init(cbox)
end
function DoorController:ShutDown()
end
function DoorController:Lock()
  local Locked = self.Locked
  local Out = self.Out
  SetDoorLockState(self.Door, 1)
  Locked(self)
  Out(self)
end
function DoorController:Unlock()
  local Unlocked = self.Unlocked
  local Out = self.Out
  SetDoorLockState(self.Door, 0)
  Unlocked(self)
  Out(self)
end
function DoorController:SetLockState()
  local LockStateSet = self.LockStateSet
  local Out = self.Out
  SetDoorLockState(self.Door, self.LockState)
  LockStateSet(self)
  Out(self)
end
function DoorController:Open()
  local Opened = self.Opened
  local Out = self.Out
  self.Instant = self.Instant or 1
  self.OpenToMaxAngle = self.OpenToMaxAngle or 1
  OpenDoor(self.Door, self.Instant, self.OpenToMaxAngle)
  Opened(self)
  Out(self)
end
function DoorController:Close()
  local Closed = self.Closed
  local Out = self.Out
  self.Instant = self.Instant or 1
  CloseDoor(self.Door, self.Instant)
  Closed(self)
  Out(self)
end
export = DoorController
DoorController = nil
