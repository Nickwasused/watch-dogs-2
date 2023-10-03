ParallelScriptLockController = {}
function ParallelScriptLockController:Create(cbox)
end
function ParallelScriptLockController:Init(cbox)
  self.callidUnlocked = nil
  self.Locked = 0
end
function ParallelScriptLockController:ShutDown()
  if self.callidUnlocked ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("ParallelScriptUnlocked", self.callidUnlocked)
    self.callidUnlocked = nil
  end
  if self.Locked == 1 then
    local result = ParallelScriptLock(0)
    self.Locked = 0
  end
end
function ParallelScriptLockController:Lock()
  if self.Locked == 1 then
    System:Trace("[DOMINO SCRIPT][CRITICAL ERROR] ParallelScriptLockController - Trying to double lock!!! Script will be potentialy blocked after this.")
  elseif ParallelScriptLock(1) == 1 then
    self.Locked = 1
    self:LockSuccess()
  else
    self.Locked = 0
    self.callidUnlocked = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("ParallelScriptUnlocked", self, "CBUnlocked")
    self:LockFailed()
  end
  self:Out()
end
function ParallelScriptLockController:CBUnlocked()
  CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("ParallelScriptUnlocked", self.callidUnlocked)
  self.callidUnlocked = nil
  self:Lock()
end
function ParallelScriptLockController:Unlock()
  if self.callidUnlocked ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("ParallelScriptUnlocked", self.callidUnlocked)
    self.callidUnlocked = nil
  end
  if self.Locked == 1 then
    local result = ParallelScriptLock(0)
    self.Locked = 0
  end
  self:Out()
  self:Unlocked()
end
export = ParallelScriptLockController
ParallelScriptLockController = nil
