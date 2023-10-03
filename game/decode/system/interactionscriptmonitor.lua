InteractionScriptMonitor = {}
function InteractionScriptMonitor:Create(cbox)
end
function InteractionScriptMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidPlayerFinishedAutonavigation = nil
  self.callidPlayerInteractionStarted = nil
  self.callidPlayerInteractionFinished = nil
  self.callidPlayerAnimationStartedOnPlayer = nil
  self.callidPlayerAnimationFinishedOnPlayer = nil
end
function InteractionScriptMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function InteractionScriptMonitor:Enable()
  self._type.UnregisterCallback(self)
  if self.InteractionScriptEntity ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    self.callidPlayerFinishedAutonavigation = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnPlayerFinishedAutonavigation", "FinishAutomaticNavigation", self.missionId)
    self.callidPlayerInteractionStarted = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnInteractionStarted", "OnInteractionStarted", self.missionId)
    self.callidPlayerInteractionFinished = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnInteractionFinished", "OnInteractionFinished", self.missionId)
    self.callidPlayerAnimationStartedOnPlayer = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnAnimationStartedOnPlayer", "OnAnimationStartedOnPlayer", self.missionId)
    self.callidPlayerAnimationFinishedOnPlayer = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnAnimationFinishedOnPlayer", "OnAnimationFinishedOnPlayer", self.missionId)
  end
  self:Out()
  self:Enabled()
end
function InteractionScriptMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Out()
  self:Disabled()
end
function InteractionScriptMonitor:UnregisterCallback()
  if self.InteractionScriptEntity ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    if self.callidPlayerFinishedAutonavigation ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerFinishedAutonavigation)
      self.callidPlayerFinishedAutonavigation = nil
    end
    if self.callidPlayerInteractionStarted ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerInteractionStarted)
      self.callidPlayerInteractionStarted = nil
    end
    if self.callidPlayerInteractionFinished ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerInteractionFinished)
      self.callidPlayerInteractionFinished = nil
    end
    if self.callidPlayerAnimationStartedOnPlayer ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerAnimationStartedOnPlayer)
      self.callidPlayerAnimationStartedOnPlayer = nil
    end
    if self.callidPlayerAnimationFinishedOnPlayer ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerAnimationFinishedOnPlayer)
      self.callidPlayerAnimationFinishedOnPlayer = nil
    end
  end
end
function InteractionScriptMonitor:Event_OnPlayerFinishedAutonavigation(success, playerEntity)
  if self.InteractionScriptEntity ~= nil then
    self.Player = playerEntity
    if success == 1 then
      return self:OnSuccess()
    else
      return self:OnFail()
    end
    if self.AutoDisable == 1 then
      self._type.UnregisterCallback(self)
    end
  end
end
function InteractionScriptMonitor:Event_OnInteractionStarted()
  if self.InteractionScriptEntity ~= nil then
    self:InteractionStarted()
    if self.AutoDisable == 1 then
      self._type.UnregisterCallback(self)
    end
  end
end
function InteractionScriptMonitor:Event_OnInteractionFinished()
  if self.InteractionScriptEntity ~= nil then
    self:InteractionFinished()
    if self.AutoDisable == 1 then
      self._type.UnregisterCallback(self)
    end
  end
end
function InteractionScriptMonitor:Event_OnAnimationStartedOnPlayer()
  if self.InteractionScriptEntity ~= nil then
    self:AnimationStarted()
    if self.AutoDisable == 1 then
      self._type.UnregisterCallback(self)
    end
  end
end
function InteractionScriptMonitor:Event_OnAnimationFinishedOnPlayer()
  if self.InteractionScriptEntity ~= nil then
    self:AnimationFinished()
    if self.AutoDisable == 1 then
      self._type.UnregisterCallback(self)
    end
  end
end
export = InteractionScriptMonitor
InteractionScriptMonitor = nil
