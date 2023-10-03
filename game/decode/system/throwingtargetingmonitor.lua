ThrowingTargetingMonitor = {}
function ThrowingTargetingMonitor:Create(cbox)
end
function ThrowingTargetingMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnHumanProjectileThrowStateBegin = nil
  self.callidOnHumanProjectileThrowStateEnd = nil
  self.callidOnHumanProjectileThrowStateAiming = nil
  self.callidOnHumanProjectileThrowStateOnTarget = nil
  self.callidOnHumanProjectileThrowStateOffTarget = nil
  self.callidOnHumanProjectileThrowStateSuccess = nil
  self.callidOnHumanProjectileThrowStateFail = nil
end
function ThrowingTargetingMonitor:ShutDown()
  self:UnregisterCallback()
end
function ThrowingTargetingMonitor:Enable()
  self.pawn = self.pawn or GetLocalPlayerEntityId()
  self.radius = self.radius or 0
  self.height = self.height or 1
  self.duration = self.duration or 1
  self.preventThrow = self.preventThrow or 0
  if self.target ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnHumanProjectileThrowStateBegin == nil then
      self.callidOnHumanProjectileThrowStateBegin = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateBegin", "OnHumanProjectileThrowStateBegin", self.missionId)
    end
    if self.callidOnHumanProjectileThrowStateEnd == nil then
      self.callidOnHumanProjectileThrowStateEnd = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateEnd", "OnHumanProjectileThrowStateEnd", self.missionId)
    end
    if self.callidOnHumanProjectileThrowStateAiming == nil then
      self.callidOnHumanProjectileThrowStateAiming = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateAiming", "OnHumanProjectileThrowStateAiming", self.missionId)
    end
    if self.callidOnHumanProjectileThrowStateOnTarget == nil then
      self.callidOnHumanProjectileThrowStateOnTarget = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateOnTarget", "OnHumanProjectileThrowStateOnTarget", self.missionId)
    end
    if self.callidOnHumanProjectileThrowStateOffTarget == nil then
      self.callidOnHumanProjectileThrowStateOffTarget = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateOffTarget", "OnHumanProjectileThrowStateOffTarget", self.missionId)
    end
    if self.callidOnHumanProjectileThrowStateFail == nil then
      self.callidOnHumanProjectileThrowStateFail = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateFail", "OnHumanProjectileThrowStateFail", self.missionId)
    end
    if self.callidOnHumanProjectileThrowStateSuccess == nil then
      self.callidOnHumanProjectileThrowStateSuccess = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnHumanProjectileThrowStateSuccess", "OnHumanProjectileThrowStateSuccess", self.missionId)
    end
    BegingHumanProjectileThrowStateMonitoring(self.pawn, self.target, self.radius, self.height, self.duration, self.preventThrow)
    self:Enabled()
  end
end
function ThrowingTargetingMonitor:Disable()
  self:UnregisterCallback()
  if self.pawn ~= nil then
    EndHumanProjectileThrowStateMonitoring(self.pawn)
  end
  self:Disabled()
end
function ThrowingTargetingMonitor:UnregisterCallback()
  if self.pawn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnHumanProjectileThrowStateBegin ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateBegin)
      self.callidOnHumanProjectileThrowStateBegin = nil
    end
    if self.callidOnHumanProjectileThrowStateEnd ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateEnd)
      self.callidOnHumanProjectileThrowStateEnd = nil
    end
    if self.callidOnHumanProjectileThrowStateAiming ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateAiming)
      self.callidOnHumanProjectileThrowStateAiming = nil
    end
    if self.callidOnHumanProjectileThrowStateOnTarget ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateOnTarget)
      self.callidOnHumanProjectileThrowStateOnTarget = nil
    end
    if self.callidOnHumanProjectileThrowStateOffTarget ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateOffTarget)
      self.callidOnHumanProjectileThrowStateOffTarget = nil
    end
    if self.callidOnHumanProjectileThrowStateSuccess ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateSuccess)
      self.callidOnHumanProjectileThrowStateSuccess = nil
    end
    if self.callidOnHumanProjectileThrowStateFail ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnHumanProjectileThrowStateFail)
      self.callidOnHumanProjectileThrowStateFail = nil
    end
  end
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateBegin()
  self:OnThrowingBegin()
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateEnd()
  self:OnThrowingEnd()
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateAiming()
  self:OnAiming()
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateOnTarget()
  self:OnOnTarget()
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateOffTarget()
  self:OnOffTarget()
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateFail()
  self:OnThrowFail()
end
function ThrowingTargetingMonitor:Event_OnHumanProjectileThrowStateSuccess()
  self:OnThrowSuccess()
end
export = ThrowingTargetingMonitor
ThrowingTargetingMonitor = nil
