CLOController = {}
function CLOController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function CLOController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnActivateCLO = nil
  self.callidOnUserInPlace = nil
  self.CLO = {}
  self.UserID = {}
  self.callIdCloListActivate = {}
  self.callIdCloListInPlace = {}
  self.activatedCloCount = 0
  self.callIdCloListInPlaceCount = 0
  self.callIdCloListActivateCount = 0
end
function CLOController:ShutDown()
  self:UnregisterCallback()
end
function CLOController:UnregisterCallback()
  self:UnregisterCallbackList("OnActivateCLO", "callIdCloListActivate")
  self:UnregisterCallbackList("OnCLOUserInPlace", "callIdCloListInPlace")
end
function CLOController:Activate()
  self.UserIDList = {}
  local scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  for i = 0, self._DynamicAnchors.CLO - 1 do
    if self.CLO[i] ~= nil and LuaLibCore:VerifyDataInputEntity(self.CLO[i], "CLO" .. i, true) then
      local cloID = self.CLO[i]
      self.callIdCloListInPlace[cloID] = scriptCallbackSystem:RegisterCLOCallback(cloID, self, "OnCLOUserInPlace", "OnCLOUserInPlace", self.missionId)
      self.callIdCloListInPlaceCount = self.callIdCloListInPlaceCount + 1
      self.callIdCloListActivate[cloID] = scriptCallbackSystem:RegisterCLOCallback(cloID, self, "OnActivateCLO", "OnActivateCLO", self.missionId)
      self.callIdCloListActivateCount = self.callIdCloListActivateCount + 1
      if LuaLibCore:VerifyDataInputEntityList(self.RestrictedToUserList, "RestrictedToUserList") then
        AddCLOEntitiesRestriction(cloID, self.RestrictedToUserList)
      elseif self.RestrictedToUser ~= nil and LuaLibCore:VerifyDataInputEntity(self.RestrictedToUser, "RestrictedToUser") then
        local restrictedToUserList = {
          self.RestrictedToUser
        }
        AddCLOEntitiesRestriction(cloID, restrictedToUserList)
      end
      if self.SpawnOutsideLoadingRing == 1 then
        WakeUpCLOMonitored(cloID, 1)
      else
        ActivateCLO(cloID, 1)
      end
    end
  end
end
function CLOController:OnActivateCLO()
  self.activatedCloCount = self.activatedCloCount + 1
  if self.activatedCloCount == self.callIdCloListActivateCount then
    self.activatedCloCount = 0
    self:UnregisterCallbackList("OnActivateCLO", "callIdCloListActivate")
    self:Activated()
  end
end
function CLOController:OnCLOUserInPlace(entity, clo)
  local scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  for i = 0, self._DynamicAnchors.CLO - 1 do
    if clo == self.CLO[i] then
      self.UserID[i] = entity
      if self.callIdCloListInPlace[clo] ~= nil then
        scriptCallbackSystem:RemoveCLOCallback(clo, "OnCLOUserInPlace", self.callIdCloListInPlace[clo])
        self.callIdCloListInPlaceCount = self.callIdCloListInPlaceCount - 1
        self.callIdCloListInPlace[clo] = nil
        break
      end
    end
  end
  if self.callIdCloListInPlaceCount == 0 then
    for i = 0, self._DynamicAnchors.CLO - 1 do
      table.insert(self.UserIDList, self.UserID[i])
    end
    self:OnUserInPlace()
  end
end
function CLOController:Deactivate()
  for i = 0, self._DynamicAnchors.CLO - 1 do
    if self.CLO[i] ~= nil and LuaLibCore:VerifyDataInputEntity(self.CLO[i], "CLO" .. i, true) then
      ActivateCLO(self.CLO[i], 0)
    end
  end
  self:Deactivated()
end
function CLOController:Quit()
  for i = 0, self._DynamicAnchors.CLO - 1 do
    if self.CLO[i] ~= nil and LuaLibCore:VerifyDataInputEntity(self.CLO[i], "CLO" .. i, true) then
      TriggerQuitCLOOnMonitoredCLO(self.CLO[i])
    end
  end
  self:OnQuit()
end
function CLOController:TriggerBhv()
  for i = 0, self._DynamicAnchors.CLO - 1 do
    if self.CLO[i] ~= nil and LuaLibCore:VerifyDataInputEntity(self.CLO[i], "CLO" .. i, true) then
      TriggerCLOBhvOnMonitoredCLO(CLO[i])
    end
  end
  self:BhvTriggered()
end
function CLOController:UnregisterCallbackList(event, clolist)
  local scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  for i = 0, self._DynamicAnchors.CLO - 1 do
    local clo = self.CLO[i]
    if clo ~= nil and self[clolist][clo] ~= nil then
      scriptCallbackSystem:RemoveCLOCallback(clo, event, self[clolist][clo])
      self[clolist][clo] = nil
    end
  end
  self[clolist] = {}
end
export = CLOController
CLOController = nil
