GateController = {}
function GateController:Create(cbox)
end
function GateController:Init(cbox)
end
function GateController:ShutDown()
end
function GateController:Open()
  local Opened = self.Opened
  local Out = self.Out
  if self.Instant == nil then
    self.Instant = 0
  end
  ForceHackOn(self.GateEntity)
  Out(self)
  Opened(self)
end
function GateController:Close()
  local Closed = self.Closed
  local Out = self.Out
  if self.Instant == nil then
    self.Instant = 0
  end
  ForceHackOff(self.GateEntity)
  Out(self)
  Closed(self)
end
function GateController:Set()
  local IsSet = self.IsSet
  local Out = self.Out
  if self.Instant == nil then
    self.Instant = 0
  end
  if self.SetOpen == 1 then
    ForceHackOn(self.GateEntity)
  else
    ForceHackOff(self.GateEntity)
  end
  Out(self)
  IsSet(self)
end
function GateController:Toggle()
  local Toggled = self.Toggled
  local Out = self.Out
  if self.Instant == nil then
    self.Instant = 0
  end
  if IsGateBlocked(self.GateEntity) == 1 then
    ForceHackOn(self.GateEntity)
  else
    ForceHackOff(self.GateEntity)
  end
  Out(self)
  Toggled(self)
end
export = GateController
GateController = nil
