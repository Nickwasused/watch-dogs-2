InteractionScriptMonitor = {}
function InteractionScriptMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function InteractionScriptMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidPlayerInteractionStarted = nil
  self.callidPlayerInteractionFailed = nil
  self.callidPlayerInteractionFinished = nil
  self.callidPlayerAnimationStartedOnPlayer = nil
  self.callidPlayerAnimationFinishedOnPlayer = nil
end
function InteractionScriptMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function InteractionScriptMonitor:Enable()
  self._type.UnregisterCallback(self)
  if LuaLibCore:VerifyDataInputEntity(self.InteractionScriptEntity, "InteractionScriptEntity") then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    self.callidPlayerInteractionStarted = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnInteractionStarted", "OnInteractionStarted", self.missionId)
    self.callidPlayerInteractionFailed = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnInteractionFailed", "OnInteractionFailed", self.missionId)
    self.callidPlayerInteractionFinished = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnInteractionFinished", "OnInteractionFinished", self.missionId)
    self.callidPlayerAnimationStartedOnPlayer = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnAnimationStartedOnPlayer", "OnAnimationStartedOnPlayer", self.missionId)
    self.callidPlayerAnimationFinishedOnPlayer = scriptCallbackSystem:RegisterMissionEventCallback(self.InteractionScriptEntity, self, "Event_OnAnimationFinishedOnPlayer", "OnAnimationFinishedOnPlayer", self.missionId)
  end
  self:Out()
  self:Enabled()
end
function InteractionScriptMonitor:Disable()
  if LuaLibCore:VerifyDataInputEntity(self.InteractionScriptEntity, "InteractionScriptEntity") then
    self._type.UnregisterCallback(self)
  end
  self:Out()
  self:Disabled()
end
function InteractionScriptMonitor:UnregisterCallback()
  if self.InteractionScriptEntity ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    if self.callidPlayerInteractionStarted ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerInteractionStarted)
      self.callidPlayerInteractionStarted = nil
    end
    if self.callidPlayerInteractionFailed ~= nil then
      scriptCallbackSystem:RemoveCallback(self.InteractionScriptEntity, self.callidPlayerInteractionFailed)
      self.callidPlayerInteractionFailed = nil
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
function InteractionScriptMonitor:Event_OnInteractionStarted()
  if self.InteractionScriptEntity ~= nil then
    self.IsUserRcVehicle = IsInteractionUserRcVehicle(self.InteractionScriptEntity)
    self:InteractionStarted()
  end
end
function InteractionScriptMonitor:Event_OnInteractionFailed()
  if self.InteractionScriptEntity ~= nil then
    self:InteractionFailed()
  end
end
function InteractionScriptMonitor:Event_OnInteractionFinished()
  if self.InteractionScriptEntity ~= nil then
    self.IsUserRcVehicle = IsInteractionUserRcVehicle(self.InteractionScriptEntity)
    self:InteractionFinished()
    if self.AutoDisable == 1 then
      self._type.UnregisterCallback(self)
    end
  end
end
function InteractionScriptMonitor:Event_OnAnimationStartedOnPlayer()
  if self.InteractionScriptEntity ~= nil then
    self:AnimationStarted()
  end
end
function InteractionScriptMonitor:Event_OnAnimationFinishedOnPlayer()
  if self.InteractionScriptEntity ~= nil then
    self:AnimationFinished()
  end
end
export = InteractionScriptMonitor
InteractionScriptMonitor = nil
