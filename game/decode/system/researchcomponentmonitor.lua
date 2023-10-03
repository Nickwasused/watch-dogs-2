ResearchComponentMonitor = {ComponentDB = nil}
function ResearchComponentMonitor:Create(cbox)
end
function ResearchComponentMonitor:Init(cbox)
end
function ResearchComponentMonitor:ShutDown()
  self._type.UnregisterCallbacks(self)
end
function ResearchComponentMonitor:UnregisterCallbacks()
  if self.callidComponentAdded ~= nil then
    UnregisterResearchComponentAddedScriptCallback(self.callidComponentAdded)
    self.callidComponentAdded = nil
  end
end
function ResearchComponentMonitor:Enable()
  self.hasLess = false
  self.hasMore = false
  if self.callidComponentAdded == nil then
    self.callidComponentAdded = RegisterResearchComponentAddedScriptCallback(self.ComponentDB, self, "OnComponentAdded")
  end
  self:CheckComponentCount()
  self:Enabled()
end
function ResearchComponentMonitor:Disable()
  self._type.UnregisterCallbacks(self)
  self:Disabled()
end
function ResearchComponentMonitor:GetComponent()
  if self.ComponentDB ~= nil then
    self.ComponentCount = tonumber(GetLocalPlayerResearchComponent(self.ComponentDB))
    self:GotComponent()
  end
end
function ResearchComponentMonitor:CheckComponentCount()
  if self.ComponentDB ~= nil then
    self.ComponentCount = GetLocalPlayerResearchComponent(self.ComponentDB)
    if self.AmountToReach ~= nil then
      local playerComponentCount = tonumber(self.ComponentCount)
      if playerComponentCount >= self.AmountToReach then
        if self.hasMore == false then
          self.hasMore = true
          self.hasLess = false
          self:AmountReached()
        end
      elseif self.hasLess == false then
        self.hasMore = false
        self.hasLess = true
        self:AmountNotReached()
      end
    end
  end
end
function ResearchComponentMonitor:OnComponentAdded()
  self:CheckComponentCount()
  self:ComponentAdded()
end
export = ResearchComponentMonitor
ResearchComponentMonitor = nil
