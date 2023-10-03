LayerMonitor = {}
function LayerMonitor:Create(cbox)
end
function LayerMonitor:Init(cbox)
  self.callidLoad = nil
end
function LayerMonitor:ShutDown()
  self:UnregisterCallbacks()
end
function LayerMonitor:Enable()
  if self.HmaLayer ~= nil then
    self.callidLoad = WaitForStandaloneLayerToLoad(self.HmaLayer, self, "OnLoad")
  else
    local name = GetLayerNameFromProgressionLayerItem(self.ProgressionLayer)
    self.callidLoad = WaitForProgressionLayerToLoad(name, self, "OnLoad")
  end
  self.Enabled()
end
function LayerMonitor:Disable()
  self:UnregisterCallbacks()
  self:Disabled()
end
function LayerMonitor:OnLoad()
  self:Loaded()
end
function LayerMonitor:UnregisterCallbacks()
  if self.callidLoad ~= nil then
    if self.HmaLayer ~= nil then
      WaitForStandaloneLayerToLoadUnregister(self.HmaLayer)
    else
      WaitForProgressionLayerToLoadUnregister(self.callidLoad)
    end
    self.callidLoad = nil
  end
end
export = LayerMonitor
LayerMonitor = nil
