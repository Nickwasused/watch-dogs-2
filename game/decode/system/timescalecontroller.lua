TimeScaleController = {}
function TimeScaleController:Create(cbox)
end
function TimeScaleController:Init(cbox)
end
function TimeScaleController:ShutDown()
end
function TimeScaleController:Set()
  local WasSet = self.WasSet
  local Out = self.Out
  if self.TimeScale ~= nil then
    SetTimeScale(self.TimeScale)
  else
    SetTimeScale(-1)
  end
  WasSet(self)
  Out(self)
end
function TimeScaleController:Reset()
  local WasReset = self.WasReset
  local Out = self.Out
  SetTimeScale(-1)
  WasReset(self)
  Out(self)
end
function TimeScaleController:Lock()
  local Locked = self.Locked
  local Out = self.Out
  SetTimeScale(0)
  Locked(self)
  Out(self)
end
function TimeScaleController:Unlock()
  local Unlocked = self.Unlocked
  local Out = self.Out
  SetTimeScale(-1)
  Unlocked(self)
  Out(self)
end
export = TimeScaleController
TimeScaleController = nil
