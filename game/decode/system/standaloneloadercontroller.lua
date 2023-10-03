StandaloneLoaderController = {}
function StandaloneLoaderController:Create(cbox)
end
function StandaloneLoaderController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidLoaded = nil
  self.callidUnloaded = nil
end
function StandaloneLoaderController:ShutDown()
end
function StandaloneLoaderController:Load()
  if self.StandaloneLoader ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    self.callidLoaded = instance:RegisterMissionEventCallback(self.StandaloneLoader, self, "Event_Loaded", "Loaded", self.missionId)
    self.callidUnloaded = instance:RegisterMissionEventCallback(self.StandaloneLoader, self, "Event_Unloaded", "Unloaded", self.missionId)
    if self.LayerName == nil then
      self.LayerName = ""
    end
    LoadStandaloneLayer(self.StandaloneLoader, self.LayerName)
    self:LoadingStarted()
  end
end
function StandaloneLoaderController:UnregisterCallback()
  if self.StandaloneLoader ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.StandaloneLoader, self.callidLoaded)
    self.callidLoaded = nil
    instance:RemoveCallback(self.StandaloneLoader, self.callidUnloaded)
    self.callidUnloaded = nil
  end
end
function StandaloneLoaderController:Event_Loaded(entity)
  self:UnregisterCallback()
  return self:Loaded()
end
function StandaloneLoaderController:Event_Unloaded(entity)
  if self.LayerName == nil then
    self:UnregisterCallback()
  end
  return self:PreviousZoneUnloaded()
end
export = StandaloneLoaderController
StandaloneLoaderController = nil
