SecurityCamController = {}
function SecurityCamController:Create(cbox)
end
function SecurityCamController:Init(cbox)
end
function SecurityCamController:ShutDown()
end
function SecurityCamController:SetCanEnter()
  local EnterSet = self.EnterSet
  if self.SecurityCamEntity ~= nil then
    SetSecurityCamCanEnter(self.SecurityCamEntity, self.CanEnter)
  end
  if self.CameraEntityList ~= nil then
    for i, v in ipairs(self.CameraEntityList) do
      if v ~= nil then
        SetSecurityCamCanEnter(v, self.CanEnter)
      end
    end
  end
  EnterSet(self)
end
function SecurityCamController:SetCanExit()
  local CanExitSet = self.CanExitSet
  self.PowerUserEntity = self.PowerUserEntity or GetLocalPlayerEntityId()
  if self.CanExit ~= nil and self.CanExit == 0 then
    self.ExitBlocked = 1
  else
    self.ExitBlocked = 0
  end
  if self.PowerUserEntity ~= nil then
    SetIsSecurityCamExitBlockedForPlayer(self.PowerUserEntity, self.ExitBlocked)
  end
  CanExitSet(self)
end
function SecurityCamController:ResetCameraPosition()
  local PositionReset = self.PositionReset
  if self.SecurityCamEntity ~= nil then
    ResetCameraPosition(self.SecurityCamEntity)
  end
  PositionReset(self)
end
function SecurityCamController:ForceUserOutOfCamera()
  local UserForcedOutOfCamera = self.UserForcedOutOfCamera
  self.PowerUserEntity = self.PowerUserEntity or GetLocalPlayerEntityId()
  if self.PowerUserEntity ~= nil and (self.SecurityCamEntity == nil or self.PowerUserEntity == GetSecurityCameraUser(self.SecurityCamEntity)) then
    ForceUserOutOfCamera(self.PowerUserEntity)
  end
  UserForcedOutOfCamera(self)
end
function SecurityCamController:ForceEnter()
  self.PowerUserEntity = self.PowerUserEntity or GetLocalPlayerEntityId()
  if self.SecurityCamEntity ~= nil and self.PowerUserEntity ~= nil then
    SecurityCameraForceEnter(self.PowerUserEntity, self.SecurityCamEntity)
  end
  self:EnterForced()
end
function SecurityCamController:SetInitialTarget()
  if self.TargetEntity ~= nil then
    if self.SecurityCamEntity ~= nil then
      SetSecurityCamInitialTarget(self.SecurityCamEntity, self.TargetEntity)
    end
    if self.CameraEntityList ~= nil then
      for i, v in ipairs(self.CameraEntityList) do
        if v ~= nil then
          SetSecurityCamInitialTarget(v, self.TargetEntity)
        end
      end
    end
  end
  self:InitialTargetSet()
end
function SecurityCamController:ResetInitialTarget()
  local invalidEntityId = GetInvalidEntityId()
  if self.SecurityCamEntity ~= nil then
    SetSecurityCamInitialTarget(self.SecurityCamEntity, invalidEntityId)
  end
  if self.CameraEntityList ~= nil then
    for i, v in ipairs(self.CameraEntityList) do
      if v ~= nil then
        SetSecurityCamInitialTarget(v, invalidEntityId)
      end
    end
  end
  self:InitialTargetReset()
end
function SecurityCamController:PlayDisconnectedAnimation()
  CameraPlayDisconnectedAnimation(self.DisconnectedHeader.id, self.DisconnectedText.id)
  self:DisconnectedAnimationPlayed()
end
function SecurityCamController:HideDisconnectedAnimation()
  CameraHideDisconnectedAnimation()
  self:DisconnectedAnimationHidden()
end
export = SecurityCamController
SecurityCamController = nil
