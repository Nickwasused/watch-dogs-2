CLOMonitor = {}
function CLOMonitor:Create(cbox)
end
function CLOMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnUserInPlace = nil
  self.callidOnReserve = nil
  self.callidOnAnimBegin = nil
  self.callidOnAnimEnd = nil
  self.callidOnProxyActionAnimBegin = nil
  self.callidOnUserQuit = nil
  self.callidOnUserUnspawn = nil
end
function CLOMonitor:ShutDown()
  self:UnregisterCallback()
end
function CLOMonitor:UnregisterCallback()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  if self.callidOnUserInPlace ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOUserInPlace", self.callidOnUserInPlace)
    self.callidOnUserInPlace = nil
  end
  if self.callidOnReserve ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOReserve", self.callidOnReserve)
    self.callidOnReserve = nil
  end
  if self.callidOnAnimBegin ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOAnimBegin", self.callidOnAnimBegin)
    self.callidOnAnimBegin = nil
  end
  if self.callidOnProxyActionAnimBegin ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOProximityActionAnimBegin", self.callidOnProxyActionAnimBegin)
    self.callidOnProxyActionAnimBegin = nil
  end
  if self.callidOnAnimEnd ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOAnimEnd", self.callidOnAnimEnd)
    self.callidOnAnimEnd = nil
  end
  if self.callidOnUserQuit ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOQuit", self.callidOnUserQuit)
    self.callidOnUserQuit = nil
  end
  if self.callidOnUserUnspawn ~= nil then
    scriptCallbackSystem:RemoveCLOCallback(self.CLO, "OnCLOUserUspawn", self.callidOnUserUnspawn)
    self.callidOnUserUnspawn = nil
  end
end
function CLOMonitor:Enable()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    self.callidOnUserInPlace = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOUserInPlace", "OnCLOUserInPlace", self.missionId)
    self.callidOnReserve = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOReserve", "OnCLOReserve", self.missionId)
    self.callidOnAnimBegin = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOAnimBegin", "OnCLOAnimBegin", self.missionId)
    self.callidOnProxyActionAnimBegin = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOProximityActionAnimBegin", "OnCLOProximityActionAnimBegin", self.missionId)
    self.callidOnAnimEnd = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOAnimEnd", "OnCLOAnimEnd", self.missionId)
    self.callidOnUserQuit = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOQuit", "OnCLOQuit", self.missionId)
    self.callidOnUserUnspawn = scriptCallbackSystem:RegisterCLOCallback(self.CLO, self, "OnCLOUserUspawn", "OnCLOUserUspawn", self.missionId)
  end
  self:Enabled()
end
function CLOMonitor:Disable()
  self:Disabled()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    self:UnregisterCallback()
  end
end
function CLOMonitor:GetUser()
  if LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    self.UserID = GetMonitoredCLOUser(self.CLO)
    if self.UserID == GetInvalidEntityId() then
      self:NotGotUser()
    else
      self:GotUser()
    end
  end
end
function CLOMonitor:OnCLOUserInPlace(entity)
  self.UserID = entity
  self:OnUserInPlace()
end
function CLOMonitor:OnCLOReserve(entity)
  self:OnReserve()
end
function CLOMonitor:OnCLOAnimBegin(entity)
  self:OnAnimBegin()
end
function CLOMonitor:OnCLOProximityActionAnimBegin(entity)
  self:OnProximityActionAnimBegin()
end
function CLOMonitor:OnCLOAnimEnd(entity)
  self:OnAnimEnd()
end
function CLOMonitor:OnCLOQuit(entity)
  self:OnUserQuit()
end
function CLOMonitor:OnCLOUserUspawn(entity)
  self:OnUserUnspawn()
end
export = CLOMonitor
CLOMonitor = nil
