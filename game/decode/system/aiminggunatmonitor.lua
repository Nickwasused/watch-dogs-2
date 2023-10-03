AimingGunAtMonitor = {}
function AimingGunAtMonitor:Create(cbox)
end
function AimingGunAtMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidTargetAimed = nil
  self.localPlayerEntityId = nil
  self.targetAimed = 0
end
function AimingGunAtMonitor:ShutDown()
  if self.callidTargetAimed ~= nil then
    self.localPlayerEntityId = GetLocalPlayerEntityId()
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.localPlayerEntityId, self.callidTargetAimed)
  end
end
function AimingGunAtMonitor:CheckNow()
  self.localPlayerEntityId = GetLocalPlayerEntityId()
  self.targetAimed = 0
  local isAimingActionValid = 1
  if self.CheckAimingAction == 1 and PlayerIsDoingAction(4) ~= 1 then
    isAimingActionValid = 0
  end
  local hitLocation = GetReticleHitLocation()
  if self.callidTargetAimed ~= nil then
    if GetReticleHitEntity() == self.TargetId and isAimingActionValid == 1 then
      self.targetAimed = 1
      self.xLocation = hitLocation[1]
      self.yLocation = hitLocation[2]
      self.zLocation = hitLocation[3]
      self:AimingTargetNow()
    else
      self:NotAimingTargetNow()
    end
  else
    self.xLocation = hitLocation[1]
    self.yLocation = hitLocation[2]
    self.zLocation = hitLocation[3]
    self:NotAimingTargetNow()
  end
  self:OutCheckNow()
end
function AimingGunAtMonitor:Enable()
  if self.TargetId ~= nil then
    self.targetAimed = 0
    self.localPlayerEntityId = GetLocalPlayerEntityId()
    if self.callidTargetAimed == nil then
      self.callidTargetAimed = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.localPlayerEntityId, self, "Event_TargetAimed", "OnReticleHitEntity", self.missionId)
    end
  end
  self:Enabled()
end
function AimingGunAtMonitor:Disable()
  if self.callidTargetAimed ~= nil then
    self.localPlayerEntityId = GetLocalPlayerEntityId()
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.localPlayerEntityId, self.callidTargetAimed)
  end
  self:Disabled()
end
function AimingGunAtMonitor:Event_TargetAimed(entity)
  if self.TargetId ~= nil then
    local isAimingActionValid = 1
    if self.CheckAimingAction == 1 and PlayerIsDoingAction(4) ~= 1 then
      isAimingActionValid = 0
    end
    if entity == self.TargetId and isAimingActionValid == 1 then
      self.targetAimed = 1
      self:OnStartAimingTarget()
    elseif self.targetAimed == 1 then
      self.targetAimed = 0
      self:OnStopAimingTarget()
    end
  end
end
export = AimingGunAtMonitor
AimingGunAtMonitor = nil
