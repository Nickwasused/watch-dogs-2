RemoveLoadingScreenBox = {}
function RemoveLoadingScreenBox:Create(cbox)
end
function RemoveLoadingScreenBox:Init(cbox)
  self.callidLoadingEnded = nil
end
function RemoveLoadingScreenBox:ShutDown()
  if self.callidLoadingEnded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenHide", self.callidLoadingEnded)
    self.callidLoadingEnded = nil
  end
end
function RemoveLoadingScreenBox:In()
  self.SkipPostFx = self.SkipPostFx or 0
  if IsLoadingScreenDisplayed() ~= 1 then
    self:LoadingScreenAlreadyRemoved()
  else
    if self.callidLoadingEnded == nil then
      self.callidLoadingEnded = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnLoadingScreenHide", self, "CBOnLoadingEnded")
    end
    RemoveLoadingScreen(self.SkipPostFx)
  end
  self:Out()
end
function RemoveLoadingScreenBox:CBOnLoadingEnded()
  if self.callidLoadingEnded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenHide", self.callidLoadingEnded)
    self.callidLoadingEnded = nil
  end
  self:LoadingScreenRemoved()
end
export = RemoveLoadingScreenBox
RemoveLoadingScreenBox = nil
