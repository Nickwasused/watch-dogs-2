WaitForQualitiesBox = {}
function WaitForQualitiesBox:Create(cbox)
end
function WaitForQualitiesBox:Init(cbox)
  System:Trace("WaitForQualitiesBox:Init")
  self.missionId = cbox:GetParentMissionId()
  self.callidDone = nil
end
function WaitForQualitiesBox:ShutDown()
  System:Trace("WaitForQualitiesBox:ShutDown")
  self._type.UnregisterCallback(self)
end
function WaitForQualitiesBox:In()
  System:Trace("WaitForQualitiesBox:In")
  local Out = self.Out
  self:RegisterCallback()
  local useLoadingScreen = self.LoadingScreen or 1
  if self.UnlockLoading ~= nil then
    WaitForQualitiesLoaded(useLoadingScreen, self.UnlockLoading)
  else
    WaitForQualities(useLoadingScreen)
  end
  Out(self)
end
function WaitForQualitiesBox:RegisterCallback()
  System:Trace("WaitForQualitiesBox:RegisterCallback")
  if self.callidDone == nil then
    self.callidDone = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("QualitiesLoaded", self, "CBQualitiesLoaded")
  end
end
function WaitForQualitiesBox:UnregisterCallback()
  if self.callidDone ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("QualitiesLoaded", self.callidDone)
    self.callidDone = nil
  end
end
function WaitForQualitiesBox:CBQualitiesLoaded()
  self._type.UnregisterCallback(self)
  return self:Loaded()
end
export = WaitForQualitiesBox
WaitForQualitiesBox = nil
