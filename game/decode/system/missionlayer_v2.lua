MissionLayer = {}
function MissionLayer:Create(cbox)
end
function MissionLayer:Init(cbox)
  self.callidLoad = nil
  self.callidUnload = nil
  self.callidResetLoad = nil
  self.callidResetUnload = nil
  self.missionId = cbox:GetParentMissionId()
end
function MissionLayer:ShutDown()
end
function MissionLayer:Load()
  if self.LayerName ~= nil then
    self.callidLoad = LoadMissionLayer2(self.missionId, self, "OnLoad", self.LayerName)
  end
end
function MissionLayer:Unload()
  if self.LayerName ~= nil then
    self.callidUnload = UnloadMissionLayer2(self.missionId, self, "OnUnload", self.LayerName)
  end
end
function MissionLayer:Reset()
  if self.LayerName ~= nil then
    self.callidResetUnload = UnloadMissionLayer2(self.missionId, self, "OnResetUnload", self.LayerName)
  end
end
function MissionLayer:OnLoad()
  self.callidLoad = nil
  return self:Loaded()
end
function MissionLayer:OnUnload()
  self.callidUnload = nil
  return self:Unloaded()
end
function MissionLayer:OnResetLoad()
  self.callidResetLoad = nil
  return self:Reseted()
end
function MissionLayer:OnResetUnload()
  self.callidResetUnload = nil
  if self.LayerName ~= nil then
    self.callidResetLoad = LoadMissionLayer2(self.missionId, self, "OnResetLoad", self.LayerName)
  end
end
export = MissionLayer
MissionLayer = nil
