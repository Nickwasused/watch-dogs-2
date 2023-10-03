CollectibleController = {}
function CollectibleController:Create(cbox)
end
function CollectibleController:Init(cbox)
end
function CollectibleController:ShutDown()
end
function CollectibleController:DisplayCurrentStatus()
  if self.CollectibleList ~= nil then
    CollectibleDisplayCurrentStatus(self.CollectibleList)
  end
  self:StatusDisplayed()
end
function CollectibleController:ResetAllCollectibleData()
  ResetAllCollectibleData()
  self:Reset()
end
export = CollectibleController
CollectibleController = nil
