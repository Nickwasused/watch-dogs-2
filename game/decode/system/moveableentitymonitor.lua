MoveableEntityMonitor = {}
function MoveableEntityMonitor:Create(cbox)
end
function MoveableEntityMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidMovementStarted = nil
  self.callidFwdMovementStarted = nil
  self.callidFwdMovementStarted = nil
  self.callidMovementFinished = nil
  self.callidFwdMovementFinished = nil
  self.callidBkwMovementFinished = nil
  self.callidMovementBlocked = nil
  self.callidMovementUnblocked = nil
  self.callidMovementPaused = nil
  self.callidMovementUnpaused = nil
end
function MoveableEntityMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function MoveableEntityMonitor:Enable()
  if self.MoveableEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidMovementStarted == nil then
      self.callidMovementStarted = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnMovementStarted", "MoveEntity", self.missionId)
    end
    if self.callidFwdMovementStarted == nil then
      self.callidFwdMovementStarted = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnFwdMovementStarted", "FwdMoveEntity", self.missionId)
    end
    if self.callidBkwMovementStarted == nil then
      self.callidBkwMovementStarted = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnBkwMovementStarted", "BkwMoveEntity", self.missionId)
    end
    if self.callidMovementFinished == nil then
      self.callidMovementFinished = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnMovementFinished", "OnMovementStopped", self.missionId)
    end
    if self.callidFwdMovementFinished == nil then
      self.callidFwdMovementFinished = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnFwdMovementFinished", "OnFwdMovementStopped", self.missionId)
    end
    if self.callidBkwMovementFinished == nil then
      self.callidBkwMovementFinished = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnBkwMovementFinished", "OnBkwMovementStopped", self.missionId)
    end
    if self.callidMovementBlocked == nil then
      self.callidMovementBlocked = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnMovementBlocked", "BlockMoveEntity", self.missionId)
    end
    if self.callidMovementUnblocked == nil then
      self.callidMovementUnblocked = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnMovementUnblocked", "UnblockMoveEntity", self.missionId)
    end
    if self.callidMovementPaused == nil then
      self.callidMovementPaused = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnMovementPaused", "PauseMoveEntity", self.missionId)
    end
    if self.callidMovementUnpaused == nil then
      self.callidMovementUnpaused = instance:RegisterMissionEventCallback(self.MoveableEntity, self, "Event_OnMovementUnpaused", "UnpauseMoveEntity", self.missionId)
    end
  end
  if self.CheckNow == 1 then
    if IsMoveableEntityBlocked(self.MoveableEntity) == 1 then
      self:OnMovementBlocked()
    else
      self:OnMovementUnblocked()
    end
    if IsMoveableEntityPaused(self.MoveableEntity) == 1 then
      self:OnMovementPaused()
    else
      self:OnMovementUnpaused()
      local dir = GetMoveableEntityMovementDirection(self.MoveableEntity)
      if IsMoveableEntityMoving(self.MoveableEntity) == 1 then
        self:OnMovementStarted()
        if dir == -1 then
          self:OnBkwMovementStarted()
        elseif dir == 1 then
          self:OnFwdMovementStarted()
        end
      else
        self:OnMovementFinished()
        if dir == -1 then
          self:OnBkwMovementFinished()
        elseif dir == 1 then
          self:OnFwdMovementFinished()
        end
      end
    end
  end
  self:Enabled()
end
function MoveableEntityMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function MoveableEntityMonitor:UnregisterCallback()
  if self.MoveableEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidMovementStarted ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidMovementStarted)
      self.callidMovementStarted = nil
    end
    if self.callidFwdMovementStarted ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidFwdMovementStarted)
      self.callidFwdMovementStarted = nil
    end
    if self.callidBkwMovementStarted ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidBkwMovementStarted)
      self.callidBkwMovementStarted = nil
    end
    if self.callidMovementFinished ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidMovementFinished)
      self.callidMovementFinished = nil
    end
    if self.callidFwdMovementFinished ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidFwdMovementFinished)
      self.callidFwdMovementFinished = nil
    end
    if self.callidBkwMovementFinished ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidBkwMovementFinished)
      self.callidBkwMovementFinished = nil
    end
    if self.callidMovementBlocked ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidMovementBlocked)
      self.callidMovementBlocked = nil
    end
    if self.callidMovementUnblocked ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidMovementUnblocked)
      self.callidMovementUnblocked = nil
    end
    if self.callidMovementPaused ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidMovementPaused)
      self.callidMovementPaused = nil
    end
    if self.callidMovementUnpaused ~= nil then
      instance:RemoveCallback(self.MoveableEntity, self.callidMovementUnpaused)
      self.callidMovementUnpaused = nil
    end
  end
end
function MoveableEntityMonitor:Event_OnMovementStarted()
  self:OnMovementStarted()
  local dir = GetMoveableEntityMovementDirection(self.MoveableEntity)
  if dir == -1 then
    self:OnBkwMovementStarted()
  elseif dir == 1 then
    self:OnFwdMovementStarted()
  end
end
function MoveableEntityMonitor:Event_OnFwdMovementStarted()
  self:OnMovementStarted()
  self:OnFwdMovementStarted()
end
function MoveableEntityMonitor:Event_OnBkwMovementStarted()
  self:OnMovementStarted()
  self:OnBkwMovementStarted()
end
function MoveableEntityMonitor:Event_OnMovementFinished()
  self:OnMovementFinished()
end
function MoveableEntityMonitor:Event_OnFwdMovementFinished()
  self:OnFwdMovementFinished()
end
function MoveableEntityMonitor:Event_OnBkwMovementFinished()
  self:OnBkwMovementFinished()
end
function MoveableEntityMonitor:Event_OnMovementBlocked()
  self:OnMovementBlocked()
end
function MoveableEntityMonitor:Event_OnMovementUnblocked()
  self:OnMovementUnblocked()
end
function MoveableEntityMonitor:Event_OnMovementPaused()
  self:OnMovementPaused()
end
function MoveableEntityMonitor:Event_OnMovementUnpaused()
  self:OnMovementUnpaused()
end
export = MoveableEntityMonitor
MoveableEntityMonitor = nil
