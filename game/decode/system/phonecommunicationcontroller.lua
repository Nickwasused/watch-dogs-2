PhoneCommunicationController = {}
function PhoneCommunicationController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PhoneCommunicationController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.cbCommunicationStarted = nil
  self.cbCommunicationFinished = nil
  self.dbKey = ""
end
function PhoneCommunicationController:ShutDown()
  self._type.UnregisterCallback(self)
end
function PhoneCommunicationController:StartCommunication()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  local StartCommunicationOut = self.StartCommunicationOut
  local Out = self.Out
  if LuaLibCore:IsPlugged(self, "OnCommunicationStarted") and self.cbCommunicationStarted == nil then
    self.cbCommunicationStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationStarted", "PhoneCommunicationStarted", self.missionId)
  end
  if LuaLibCore:IsPlugged(self, "OnCommunicationFinished") and self.cbCommunicationFinished == nil then
    self.cbCommunicationFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationFinished", "PhoneCommunicationFinished", self.missionId)
  end
  self.dbKey = string.match(self.PhoneCommunicationDb, "%d+")
  StartPhoneCommunication_v2(self.PlayerEntity, self.PhoneCommunicationDb, self.missionId, 0)
  StartCommunicationOut(self)
  Out(self)
end
function PhoneCommunicationController:TryStartCommunication()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  local TryStartCommunicationOut = self.TryStartCommunicationOut
  local Out = self.Out
  if LuaLibCore:IsPlugged(self, "OnCommunicationStarted") and self.cbCommunicationStarted == nil then
    self.cbCommunicationStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationStarted", "PhoneCommunicationStarted", self.missionId)
  end
  if LuaLibCore:IsPlugged(self, "OnCommunicationFinished") and self.cbCommunicationFinished == nil then
    self.cbCommunicationFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationFinished", "PhoneCommunicationFinished", self.missionId)
  end
  if LuaLibCore:IsPlugged(self, "OnTryStartFailed") and self.cbCommunicationTryStartFailed == nil then
    self.cbCommunicationTryStartFailed = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationTryStartFailed", "PhoneCommunicationTryStartFailed", self.missionId)
  end
  self.dbKey = string.match(self.PhoneCommunicationDb, "%d+")
  StartPhoneCommunication_v2(self.PlayerEntity, self.PhoneCommunicationDb, self.missionId, 1)
  TryStartCommunicationOut(self)
  Out(self)
end
function PhoneCommunicationController:StopCommunication()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  local StopCommunicationOut = self.StopCommunicationOut
  local UnregisterCallback = self.UnregisterCallback
  local Out = self.Out
  StopCommunicationOut(self)
  StopPhoneCommunication(self.PlayerEntity, self.PhoneCommunicationDb)
  UnregisterCallback(self)
  Out(self)
end
function PhoneCommunicationController:Event_OnCommunicationStarted(dbItemName)
  if self.dbKey == dbItemName then
    if self.cbCommunicationStarted ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbCommunicationStarted)
      self.cbCommunicationStarted = nil
    end
    self:OnCommunicationStarted()
  end
end
function PhoneCommunicationController:Event_OnCommunicationFinished(dbItemName)
  local UnregisterCallback = self.UnregisterCallback
  local Out = self.Out
  if self.dbKey == dbItemName then
    UnregisterCallback(self)
    self:OnCommunicationFinished()
    Out(self)
  end
end
function PhoneCommunicationController:Event_OnCommunicationTryStartFailed(dbItemName)
  local UnregisterCallback = self.UnregisterCallback
  local Out = self.Out
  if self.dbKey == dbItemName then
    UnregisterCallback(self)
    self:OnTryStartFailed()
    Out(self)
  end
end
function PhoneCommunicationController:UnregisterCallback()
  if self.cbCommunicationStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbCommunicationStarted)
    self.cbCommunicationStarted = nil
  end
  if self.cbCommunicationFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbCommunicationFinished)
    self.cbCommunicationFinished = nil
  end
  if self.cbCommunicationTryStartFailed ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbCommunicationTryStartFailed)
    self.cbCommunicationTryStartFailed = nil
  end
end
export = PhoneCommunicationController
PhoneCommunicationController = nil
