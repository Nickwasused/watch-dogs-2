PlayerStateController = {}
function PlayerStateController:Create(cbox)
end
function PlayerStateController:Init(cbox)
end
function PlayerStateController:ShutDown()
end
function PlayerStateController:SetMaxSpeed()
  local GetLocomotionSpeedTypeID = self.GetLocomotionSpeedTypeID
  local MaxSpeedSet = self.MaxSpeedSet
  local Out = self.Out
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetPlayerMaxLocomotionSpeedTypeOverride(self.Entity, GetLocomotionSpeedTypeID(self, self.MaxSpeed))
    MaxSpeedSet(self)
    Out(self)
  end
end
function PlayerStateController:ResetMaxSpeed()
  local MaxSpeedReset = self.MaxSpeedReset
  local Out = self.Out
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    ResetPlayerMaxLocomotionSpeedTypeOverride(self.Entity)
    MaxSpeedReset(self)
    Out(self)
  end
end
function PlayerStateController:StartAiming()
  local GetAimingModeID = self.GetAimingModeID
  local AimingStarted = self.AimingStarted
  local Out = self.Out
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetForceAiming(self.Entity, GetAimingModeID(self, self.AimingMode))
    AimingStarted(self)
    Out(self)
  end
end
function PlayerStateController:StopAiming()
  local AimingStopped = self.AimingStopped
  local Out = self.Out
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetForceAiming(self.Entity, 0)
    AimingStopped(self)
    Out(self)
  end
end
function PlayerStateController:EnterCover()
  local CoverEntered = self.CoverEntered
  local Out = self.Out
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil and self.CoverEntity ~= nil then
    ForceEnterCover(self.Entity, self.CoverEntity)
    CoverEntered(self)
    Out(self)
  end
end
function PlayerStateController:ExitCover()
  local CoverExited = self.CoverExited
  local Out = self.Out
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    ForceExitCover(self.Entity)
    CoverExited(self)
    Out(self)
  end
end
function PlayerStateController:EnableFaceMask()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetFaceMaskAllowed(self.Entity, 1)
    self:FaceMaskEnabled()
    self:Out()
  end
end
function PlayerStateController:DisableFaceMask()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetFaceMaskAllowed(self.Entity, 0)
    self:FaceMaskDisabled()
    self:Out()
  end
end
function PlayerStateController:SetCombatAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetCombatAllowedOverride(self.Entity, self.CombatAllowed)
    self:CombatAllowedSet()
    self:Out()
  end
end
function PlayerStateController:ResetCombatAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    ResetCombatAllowedOverride(self.Entity)
    self:CombatAllowedReset()
    self:Out()
  end
end
function PlayerStateController:SetCoverAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetCoverAllowedOverride(self.Entity, self.CoverAllowed)
    self:CoverAllowedSet()
    self:Out()
  end
end
function PlayerStateController:ResetCoverAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    ResetCoverAllowedOverride(self.Entity)
    self:CoverAllowedReset()
    self:Out()
  end
end
function PlayerStateController:SetCoverToCoverAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetCoverToCoverAllowedOverride(self.Entity, self.CoverToCoverAllowed)
    self:CoverToCoverAllowedSet()
    self:Out()
  end
end
function PlayerStateController:ResetCoverToCoverAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    ResetCoverToCoverAllowedOverride(self.Entity)
    self:CoverToCoverAllowedReset()
    self:Out()
  end
end
function PlayerStateController:SetClimbInteractionAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    SetClimbInteractionAllowedOverride(self.Entity, self.ClimbInteractionAllowed)
    self:ClimbInteractionAllowedSet()
    self:Out()
  end
end
function PlayerStateController:ResetClimbInteractionAllowed()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    ResetClimbInteractionAllowedOverride(self.Entity)
    self:ClimbInteractionAllowedReset()
    self:Out()
  end
end
function PlayerStateController:GetLocomotionSpeedTypeID(locomotionSpeedTypeName)
  if locomotionSpeedTypeName == "Idle" then
    return 0
  elseif locomotionSpeedTypeName == "Walk" then
    return 1
  elseif locomotionSpeedTypeName == "Jog" then
    return 2
  elseif locomotionSpeedTypeName == "Sprint" then
    return 3
  end
  return 3
end
function PlayerStateController:GetAimingModeID(aimingModeName)
  if aimingModeName == "OneHanded" then
    return 1
  elseif aimingModeName == "OneHandedForced" then
    return 2
  elseif aimingModeName == "TwoHanded" then
    return 3
  end
  return 1
end
function PlayerStateController:AllowWeaponPickup()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    AllowWeaponPickup(self.Entity)
    self:WeaponPickupAllowed()
    self:Out()
  end
end
function PlayerStateController:PreventWeaponPickup()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  if self.Entity ~= nil then
    PreventWeaponPickup(self.Entity)
    self:WeaponPickupPrevented()
    self:Out()
  end
end
export = PlayerStateController
PlayerStateController = nil
