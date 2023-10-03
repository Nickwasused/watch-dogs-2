TeleportPlayerInsideHmaBox = {}
function TeleportPlayerInsideHmaBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function TeleportPlayerInsideHmaBox:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidDone = nil
  self.SpawnPoint = nil
  self.StandaloneLoader = nil
  self.LayerName = nil
  self.BinkLoadingScreen = ""
end
function TeleportPlayerInsideHmaBox:ShutDown()
  self._type.UnregisterCallback(self)
end
function TeleportPlayerInsideHmaBox:In()
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.StandaloneLoader, "StandaloneLoader") then
    self:RegisterCallback()
    if self.LayerName == nil then
      self.LayerName = ""
    end
    self.KeepBlackScreenOnExit = self.KeepBlackScreenOnExit or 0
    TeleportPlayerInsideHMA(self.SpawnPoint, self.StandaloneLoader, self.LayerName, self.KeepBlackScreenOnExit, self.BinkLoadingScreen)
  end
  Out(self)
end
function TeleportPlayerInsideHmaBox:RegisterCallback()
  if self.callidDone == nil then
    self.callidDone = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("TeleportInsideHmaDone", self, "CBTeleportInsideHmaDone")
  end
end
function TeleportPlayerInsideHmaBox:UnregisterCallback()
  if self.callidDone ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("TeleportInsideHmaDone", self.callidDone)
    self.callidDone = nil
  end
end
function TeleportPlayerInsideHmaBox:CBTeleportInsideHmaDone()
  self._type.UnregisterCallback(self)
  return self:Done()
end
export = TeleportPlayerInsideHmaBox
TeleportPlayerInsideHmaBox = nil
