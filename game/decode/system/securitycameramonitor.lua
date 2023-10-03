SecurityCameraMonitor = {}
function SecurityCameraMonitor:Create(cbox)
end
function SecurityCameraMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidStartAccessCamera = nil
  self.callidStartAccessCameraList = {}
  self.callidEndAccessCamera = nil
  self.callidEndAccessCameraList = {}
  self.callidStartExitCamera = nil
  self.callidStartExitCameraList = {}
  self.callidEndExitCamera = nil
  self.callidEndExitCameraList = {}
  self.isInCameraList = {}
end
function SecurityCameraMonitor:CheckCameraInControlByPlayer()
  if self.CameraEntity ~= nil then
    local user = GetSecurityCameraUser(self.CameraEntity)
    if user ~= GetInvalidEntityId() then
      self:Event_OnEndAccessCamera(self.CameraEntity, user)
    else
      return self:OnEndExitCamera()
    end
  end
  if self.CameraEntityList ~= nil then
    for i, v in ipairs(self.CameraEntityList) do
      if v ~= nil then
        local user = GetSecurityCameraUser(v)
        if user ~= GetInvalidEntityId() then
          return self:Event_OnEndAccessCamera(v, user)
        end
      end
    end
    return self:OnEndExitCamera()
  end
end
function SecurityCameraMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function SecurityCameraMonitor:Enable()
  if self.CameraEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidStartAccessCamera == nil then
      self.callidStartAccessCamera = instance:RegisterMissionEventCallback(self.CameraEntity, self, "Event_OnStartAccessCamera", "OnStartAccessCamera", self.missionId)
    end
    if self.callidEndAccessCamera == nil then
      self.callidEndAccessCamera = instance:RegisterMissionEventCallback(self.CameraEntity, self, "Event_OnEndAccessCamera", "OnEndAccessCamera", self.missionId)
    end
    if self.callidStartExitCamera == nil then
      self.callidStartExitCamera = instance:RegisterMissionEventCallback(self.CameraEntity, self, "Event_OnStartExitCamera", "OnStartExitCamera", self.missionId)
    end
    if self.callidEndExitCamera == nil then
      self.callidEndExitCamera = instance:RegisterMissionEventCallback(self.CameraEntity, self, "Event_OnEndExitCamera", "OnEndExitCamera", self.missionId)
    end
  end
  if self.CameraEntityList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.CameraEntityList) do
      if v ~= nil then
        if self.callidStartAccessCameraList[i] == nil then
          self.callidStartAccessCameraList[i] = instance:RegisterMissionEventCallback(v, self, "Event_OnStartAccessCamera", "OnStartAccessCamera", self.missionId)
        end
        if self.callidEndAccessCameraList[i] == nil then
          self.callidEndAccessCameraList[i] = instance:RegisterMissionEventCallback(v, self, "Event_OnEndAccessCamera", "OnEndAccessCamera", self.missionId)
        end
        if self.callidStartExitCameraList[i] == nil then
          self.callidStartExitCameraList[i] = instance:RegisterMissionEventCallback(v, self, "Event_OnStartExitCamera", "OnStartExitCamera", self.missionId)
        end
        if self.callidEndExitCameraList[i] == nil then
          self.callidEndExitCameraList[i] = instance:RegisterMissionEventCallback(v, self, "Event_OnEndExitCamera", "OnEndExitCamera", self.missionId)
        end
        self.isInCameraList[v] = false
      end
    end
  end
  if self.CheckNow == 1 then
    self:CheckCameraInControlByPlayer()
  end
  self:Enabled()
end
function SecurityCameraMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function SecurityCameraMonitor:UnregisterCallback()
  if self.CameraEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidStartAccessCamera ~= nil then
      instance:RemoveCallback(self.CameraEntity, self.callidStartAccessCamera)
      self.callidStartAccessCamera = nil
    end
    if self.callidEndAccessCamera ~= nil then
      instance:RemoveCallback(self.CameraEntity, self.callidEndAccessCamera)
      self.callidEndAccessCamera = nil
    end
    if self.callidStartExitCamera ~= nil then
      instance:RemoveCallback(self.CameraEntity, self.callidStartExitCamera)
      self.callidStartExitCamera = nil
    end
    if self.callidEndExitCamera ~= nil then
      instance:RemoveCallback(self.CameraEntity, self.callidEndExitCamera)
      self.callidEndExitCamera = nil
    end
  end
  if self.CameraEntityList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for i, v in ipairs(self.CameraEntityList) do
      if v ~= nil then
        if self.callidStartAccessCameraList[i] ~= nil then
          instance:RemoveCallback(v, self.callidStartAccessCameraList[i])
          self.callidStartAccessCameraList[i] = nil
        end
        if self.callidEndAccessCameraList[i] ~= nil then
          instance:RemoveCallback(v, self.callidEndAccessCameraList[i])
          self.callidEndAccessCameraList[i] = nil
        end
        if self.callidStartExitCameraList[i] ~= nil then
          instance:RemoveCallback(v, self.callidStartExitCameraList[i])
          self.callidStartExitCameraList[i] = nil
        end
        if self.callidEndExitCameraList[i] ~= nil then
          instance:RemoveCallback(v, self.callidEndExitCameraList[i])
          self.callidEndExitCameraList[i] = nil
        end
      end
    end
  end
end
function SecurityCameraMonitor:Event_OnStartAccessCamera(camera, user)
  local player = self.PlayerEntity or GetLocalPlayerEntityId()
  if user == player then
    self.isInCameraList[camera] = true
    self.Camera = camera
    return self:OnStartAccessCamera()
  end
end
function SecurityCameraMonitor:Event_OnEndAccessCamera(camera, user)
  local player = self.PlayerEntity or GetLocalPlayerEntityId()
  if user == player then
    self.Camera = camera
    return self:OnEndAccessCamera()
  end
end
function SecurityCameraMonitor:Event_OnStartExitCamera(camera, user)
  local player = self.PlayerEntity or GetLocalPlayerEntityId()
  if user == player then
    self.Camera = camera
    return self:OnStartExitCamera()
  end
end
function SecurityCameraMonitor:Event_OnEndExitCamera(camera, user)
  local player = self.PlayerEntity or GetLocalPlayerEntityId()
  if user == player then
    self.isInCameraList[camera] = false
    self:ValidateIsInCameraList()
    self.Camera = camera
    return self:OnEndExitCamera()
  end
end
function SecurityCameraMonitor:ValidateIsInCameraList()
  local isStillInCamera = false
  for k, v in pairs(self.isInCameraList) do
    if v == true then
      isStillInCamera = true
      break
    end
  end
  if isStillInCamera == false then
    self:OnEndExitAll()
  end
end
export = SecurityCameraMonitor
SecurityCameraMonitor = nil
