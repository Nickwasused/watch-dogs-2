TeleportToSpawnPointBox = {}
function TeleportToSpawnPointBox:Create(cbox)
end
function TeleportToSpawnPointBox:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.BinkLoadingScreen = ""
end
function TeleportToSpawnPointBox:ShutDown()
end
function TeleportToSpawnPointBox:In()
  local RequestFailed = self.RequestFailed
  local Out = self.Out
  self.UseFadeToBlack = self.UseFadeToBlack or 1
  self.KeepBlackScreenOnExit = self.KeepBlackScreenOnExit or 0
  self.MountInstallPackage = self.MountInstallPackage or 0
  self.Player = self.Player or GetLocalPlayerId()
  if self.Player ~= nil and self.SpawnPoint ~= nil then
    TeleportToSpawnPoint_v2(self.Player, self.SpawnPoint, self.UseFadeToBlack, self.KeepBlackScreenOnExit, self.BinkLoadingScreen, self.MountInstallPackage, self, "Event_TeleportDone")
  else
    RequestFailed(self)
  end
  Out(self)
end
function TeleportToSpawnPointBox:Event_TeleportDone()
  return self:TeleportDone()
end
export = TeleportToSpawnPointBox
TeleportToSpawnPointBox = nil
