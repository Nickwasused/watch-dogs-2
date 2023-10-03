EnableUnlockedLoadingBox = {}
function EnableUnlockedLoadingBox:Create(cbox)
end
function EnableUnlockedLoadingBox:Init(cbox)
end
function EnableUnlockedLoadingBox:ShutDown()
end
function EnableUnlockedLoadingBox:Enable()
  EnableUnlockedLoading(1)
  self:Enabled()
  self:Out()
end
function EnableUnlockedLoadingBox:Disable()
  EnableUnlockedLoading(0)
  self:Disabled()
  self:Out()
end
export = EnableUnlockedLoadingBox
EnableUnlockedLoadingBox = nil
