BinkMaterial = {}
function BinkMaterial:Create(cbox)
end
function BinkMaterial:Init(cbox)
end
function BinkMaterial:ShutDown()
end
function BinkMaterial:Start()
  local Started = self.Started
  local Out = self.Out
  if self.MaterialName ~= nil then
    StartBink(self.MaterialName)
  end
  Started(self)
  Out(self)
end
function BinkMaterial:Stop()
  local Stopped = self.Stopped
  local Out = self.Out
  if self.MaterialName ~= nil then
    StopBink(self.MaterialName)
  end
  Stopped(self)
  Out(self)
end
function BinkMaterial:Pause()
  local Paused = self.Paused
  local Out = self.Out
  if self.MaterialName ~= nil then
    PauseBink(self.MaterialName)
  end
  Paused(self)
  Out(self)
end
function BinkMaterial:Resume()
  local Resumed = self.Resumed
  local Out = self.Out
  if self.MaterialName ~= nil then
    ResumeBink(self.MaterialName)
  end
  Resumed(self)
  Out(self)
end
export = BinkMaterial
BinkMaterial = nil
