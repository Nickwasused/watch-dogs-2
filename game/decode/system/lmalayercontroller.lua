LMALayerController = {}
function LMALayerController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function LMALayerController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidLoad = nil
  self.callidUnload = nil
end
function LMALayerController:ShutDown()
end
function LMALayerController:Load()
  self.Interior = self.Interior or 0
  LoadLMALayer(self.LMALayerName, self.missionId, self.Interior, self, "OnLoad")
end
function LMALayerController:Unload()
  UnloadLMALayer(self.LMALayerName, self, "OnUnload")
end
function LMALayerController:OnLoad()
  self:Loaded()
end
function LMALayerController:OnUnload()
  self:Unloaded()
end
export = LMALayerController
LMALayerController = nil
