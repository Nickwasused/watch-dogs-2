BreakableEntityMonitor = {}
function BreakableEntityMonitor:Create(cbox)
end
function BreakableEntityMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidBreak = nil
  self.callidBreakList = {}
  self.BrokenCount = nil
end
function BreakableEntityMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function BreakableEntityMonitor:Enable()
  self.BrokenCount = 0
  if self.BreakableEntity ~= nil and self.callidBreak == nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    self.callidBreak = scriptCallbackSystem:RegisterMissionEventCallback(self.BreakableEntity, self, "Event_Break", "InitialStateChange", self.missionId)
  end
  if self.BreakableEntitiesList ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.BreakableEntitiesList) do
      if v ~= nil and self.callidBreakList[i] == nil then
        self.callidBreakList[i] = scriptCallbackSystem:RegisterMissionEventCallback(v, self, "Event_Break", "InitialStateChange", self.missionId)
      end
    end
  end
  self:Enabled()
end
function BreakableEntityMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function BreakableEntityMonitor:UnregisterCallback()
  if self.BreakableEntity ~= nil and self.callidBreak ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    scriptCallbackSystem:RemoveCallback(self.BreakableEntity, self.callidBreak)
    self.callidBreak = nil
  end
  if self.BreakableEntitiesList ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.BreakableEntitiesList) do
      if v ~= nil and self.callidBreakList[i] == nil then
        scriptCallbackSystem:RemoveCallback(v, self.callidBreakList[i])
        self.callidBreakList[i] = nil
      end
    end
  end
end
function BreakableEntityMonitor:Event_Break(entity)
  self.BrokenEntity = entity
  if self.BreakableEntity == entity then
    return self:Breaking()
  end
  if self.BreakableEntitiesList ~= nil then
    local breakablefound = false
    for i, v in ipairs(self.BreakableEntitiesList) do
      if v == entity then
        breakablefound = true
        self.BrokenCount = self.BrokenCount + 1
      end
    end
    if breakablefound then
      self:Breaking()
    end
    if #self.BreakableEntitiesList == self.BrokenCount then
      self:AllBroken()
    end
  end
end
export = BreakableEntityMonitor
BreakableEntityMonitor = nil
