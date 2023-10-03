SpawnerControllerlBox = {}
function SpawnerControllerlBox:Create(cbox)
end
function SpawnerControllerlBox:Init(cbox)
  self.callidDone = nil
end
function SpawnerControllerlBox:ShutDown()
  self:RemoveCallback()
end
function SpawnerControllerlBox:Enable()
  local Out = self.Out
  local Enabled = self.Enabled
  EnableSpawner(1)
  Enabled(self)
  Out(self)
end
function SpawnerControllerlBox:Disable()
  local Out = self.Out
  local Disabled = self.Disabled
  EnableSpawner(0)
  Disabled(self)
  Out(self)
end
function SpawnerControllerlBox:Toggle()
  local Out = self.Out
  local Enabled = self.Enabled
  local Disabled = self.Disabled
  local enabled = IsSpawnerEnabled()
  if enabled ~= 0 then
    self:Disable()
  else
    self:Enable()
  end
end
function SpawnerControllerlBox:TriggerInitialSpawn()
  local Out = self.Out
  local Triggered = self.Triggered
  TriggerInitialSpawn()
  if self.callidDone == nil then
    self.callidDone = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnTriggerInitialSpawnDone", self, "CBOnTriggerInitialSpawnDone")
  end
  Triggered(self)
  Out(self)
end
function SpawnerControllerlBox:CBOnTriggerInitialSpawnDone()
  self:RemoveCallback()
  self:InitialSpawnDone()
end
function SpawnerControllerlBox:RemoveCallback()
  if self.callidDone ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnTriggerInitialSpawnDone", self.callidDone)
    self.callidDone = nil
  end
end
export = SpawnerControllerlBox
SpawnerControllerlBox = nil
