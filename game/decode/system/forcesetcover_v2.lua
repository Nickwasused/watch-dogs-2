ForceSetCover = {}
function ForceSetCover:Create(cbox)
end
function ForceSetCover:Init(cbox)
end
function ForceSetCover:ShutDown()
end
function ForceSetCover:Start()
  local Out = self.Out
  local Started = self.Started
  if self.NPC ~= nil and self.CoverPos ~= nil then
    self.commandID = ForceSetCoverFunction(self.NPC, self.CoverPos, self.CoverRadius or 2, self.AllowCoverCombat or 1)
  end
  Started(self)
  Out(self)
end
function ForceSetCover:Stop()
  local Out = self.Out
  local Stopped = self.Stopped
  if self.NPC ~= nil then
    AbortSetCoverFunction(self.NPC)
  end
  Stopped(self)
  Out(self)
end
export = ForceSetCover
ForceSetCover = nil
