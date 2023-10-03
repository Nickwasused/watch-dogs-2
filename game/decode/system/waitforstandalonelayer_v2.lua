WaitForStandaloneLayer_v2 = {}
function WaitForStandaloneLayer_v2:Create(cbox)
end
function WaitForStandaloneLayer_v2:Init(cbox)
  self.callidLoaded = nil
end
function WaitForStandaloneLayer_v2:ShutDown()
  if self.callidLoad ~= nil then
    WaitForStandaloneLayerToLoadUnregister(self.LayerName)
  end
end
function WaitForStandaloneLayer_v2:Enable()
  if self.LayerName ~= nil then
    self.callidLoad = WaitForStandaloneLayerToLoad(self.LayerName, self, "OnLoad")
  end
end
function WaitForStandaloneLayer_v2:OnLoad()
  return self:Loaded()
end
export = WaitForStandaloneLayer_v2
WaitForStandaloneLayer_v2 = nil
