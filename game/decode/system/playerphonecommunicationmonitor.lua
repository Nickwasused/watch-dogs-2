PhoneCommunicationMonitor = {}
function PhoneCommunicationMonitor:Create(cbox)
end
function PhoneCommunicationMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.cbCommunicationStarted = nil
  self.cbCommunicationFinished = nil
  self.PlayerEntity = nil
  self.dbKey = ""
end
function PhoneCommunicationMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function PhoneCommunicationMonitor:Enable()
  self.PlayerEntity = GetLocalPlayerEntityId()
  if self.cbCommunicationStarted == nil then
    self.cbCommunicationStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationStarted", "PhoneCommunicationStarted", self.missionId)
  end
  if self.cbCommunicationFinished == nil then
    self.cbCommunicationFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_OnCommunicationFinished", "PhoneCommunicationFinished", self.missionId)
  end
  self.dbKey = string.match(self.PhoneCommunicationDb, "%d+")
  self:Enabled()
end
function PhoneCommunicationMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function PhoneCommunicationMonitor:Event_OnCommunicationStarted(dbItemName)
  if self.dbKey == dbItemName then
    self:OnCommunicationStarted()
  end
end
function PhoneCommunicationMonitor:Event_OnCommunicationFinished(dbItemName)
  if self.dbKey == dbItemName then
    self:OnCommunicationFinished()
  end
end
function PhoneCommunicationMonitor:UnregisterCallback()
  if self.cbCommunicationStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbCommunicationStarted)
    self.cbCommunicationStarted = nil
  end
  if self.cbCommunicationFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbCommunicationFinished)
    self.cbCommunicationFinished = nil
  end
end
export = PhoneCommunicationMonitor
PhoneCommunicationMonitor = nil
