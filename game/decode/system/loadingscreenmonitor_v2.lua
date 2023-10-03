LoadingScreenController = {}
function LoadingScreenController:Create(cbox)
end
function LoadingScreenController:Init(cbox)
  self.callidLoadingEnded = nil
  self.callidLoadingStarted = nil
end
function LoadingScreenController:ShutDown()
  if self.callidLoadingEnded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenHide", self.callidLoadingEnded)
    self.callidLoadingEnded = nil
  end
  if self.callidLoadingStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenDisplay", self.callidLoadingStarted)
    self.callidLoadingStarted = nil
  end
end
function LoadingScreenController:Enable()
  if IsLoadingScreenDisplayed() ~= 1 then
    self:LoadingScreenEnded()
    if self.callidLoadingStarted == nil then
      self.callidLoadingStarted = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnLoadingScreenDisplay", self, "CBOnLoadingStarted")
    end
  else
    self:LoadingScreenStarted()
    if self.callidLoadingEnded == nil then
      self.callidLoadingEnded = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnLoadingScreenHide", self, "CBOnLoadingEnded")
    end
  end
  self:Enabled()
  self:Out()
end
function LoadingScreenController:Disable()
  if self.callidLoadingEnded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenHide", self.callidLoadingEnded)
    self.callidLoadingEnded = nil
  end
  if self.callidLoadingStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenDisplay", self.callidLoadingStarted)
    self.callidLoadingStarted = nil
  end
  self:Disabled()
  self:Out()
end
function LoadingScreenController:CBOnLoadingEnded()
  if self.callidLoadingEnded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenHide", self.callidLoadingEnded)
    self.callidLoadingEnded = nil
  end
  if self.callidLoadingStarted == nil then
    self.callidLoadingStarted = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnLoadingScreenDisplay", self, "CBOnLoadingStarted")
  end
  self:LoadingScreenEnded()
end
function LoadingScreenController:CBOnLoadingStarted()
  if self.callidLoadingStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnLoadingScreenDisplay", self.callidLoadingStarted)
    self.callidLoadingStarted = nil
  end
  if self.callidLoadingEnded == nil then
    self.callidLoadingEnded = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnLoadingScreenHide", self, "CBOnLoadingEnded")
  end
  self:LoadingScreenStarted()
end
export = LoadingScreenController
LoadingScreenController = nil
