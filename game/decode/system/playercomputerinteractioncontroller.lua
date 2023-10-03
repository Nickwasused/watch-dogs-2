PlayerComputerInteractionController = {}
function PlayerComputerInteractionController:Create(cbox)
end
function PlayerComputerInteractionController:Init(cbox)
  self.callidStarted = nil
  self.callidCompleted = nil
end
function PlayerComputerInteractionController:ShutDown()
  self._type.UnregisterCallback(self)
end
function PlayerComputerInteractionController:Event_InGameComputerStarted()
  self._type.UnregisterCallback(self)
  self:Started()
end
function PlayerComputerInteractionController:Event_InGameComputerCompleted()
  self._type.UnregisterCallback(self)
  self:Completed()
end
function PlayerComputerInteractionController:Start()
  self.PlayerID = self.PlayerID or GetLocalPlayerId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidStarted == nil then
    self.callidStarted = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_InGameComputerStarted", "OnInGameComputerStarted")
  end
  if self.TargetEntity ~= nil and self.ResourceFile ~= nil then
    if self.PageNumber ~= nil then
      InitUIRenderToTexture(self.TargetEntity, self.ResourceFile, self.PageNumber)
    else
      PreloadIngameComputerScreenResource(self.TargetEntity, self.ResourceFile)
    end
  end
end
function PlayerComputerInteractionController:Stop()
  if self.PageNumber ~= nil then
    ResetUIRenderToTexture()
  else
    UnloadIngameComputerScreenResource()
  end
  self._type.UnregisterCallback(self)
  self:Stopped()
end
function PlayerComputerInteractionController:SetPage()
  self.PlayerID = self.PlayerID or GetLocalPlayerId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidCompleted == nil then
    self.callidCompleted = instance:RegisterPlayerEventCallback(self.PlayerID, self, "Event_InGameComputerCompleted", "OnInGameComputerCompleted")
  end
  if self.PageNumber ~= nil then
    SetIngameComputerScreenPage(self.PageNumber)
  end
  self:PageSet()
end
function PlayerComputerInteractionController:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.PlayerID ~= nil then
    if self.callidStarted ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidStarted)
      self.callidStarted = nil
    end
    if self.callidCompleted ~= nil then
      instance:RemovePlayerEventCallback(self.PlayerID, self.callidCompleted)
      self.callidCompleted = nil
    end
  end
end
export = PlayerComputerInteractionController
PlayerComputerInteractionController = nil
