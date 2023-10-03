TeleportPlayerOutsideHmaBox = {}
function TeleportPlayerOutsideHmaBox:Create(cbox)
end
function TeleportPlayerOutsideHmaBox:Init(cbox)
  System:Trace("TeleportPlayerOutsideHmaBox:Init")
  self.missionId = cbox:GetParentMissionId()
  self.callidDone = nil
  self.SpawnPoint = nil
  self.StandaloneLoader = nil
  self.BinkLoadingScreen = ""
end
function TeleportPlayerOutsideHmaBox:ShutDown()
  self._type.UnregisterCallback(self)
end
function TeleportPlayerOutsideHmaBox:In()
  local Out = self.Out
  self:RegisterCallback()
  TeleportPlayerOutsideHMA(self.SpawnPoint, self.StandaloneLoader, self.BinkLoadingScreen)
  Out(self)
end
function TeleportPlayerOutsideHmaBox:RegisterCallback()
  if self.callidDone == nil then
    self.callidDone = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("TeleportOutsideHmaDone", self, "CBTeleportOutsideHmaDone")
  end
end
function TeleportPlayerOutsideHmaBox:UnregisterCallback()
  if self.callidDone ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("TeleportOutsideHmaDone", self.callidDone)
    self.callidDone = nil
  end
end
function TeleportPlayerOutsideHmaBox:CBTeleportOutsideHmaDone()
  self._type.UnregisterCallback(self)
  return self:Done()
end
export = TeleportPlayerOutsideHmaBox
TeleportPlayerOutsideHmaBox = nil
