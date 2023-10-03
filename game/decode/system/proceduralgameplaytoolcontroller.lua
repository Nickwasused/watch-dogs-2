ProceduralGameplayToolController = {}
function ProceduralGameplayToolController:Create(cbox)
end
function ProceduralGameplayToolController:Init(cbox)
  self.callidPGTMissionStarted = nil
  self.callidPGTMissionStopped = nil
  self.callidPGTMissionAborted = nil
end
function ProceduralGameplayToolController:ShutDown()
end
function ProceduralGameplayToolController:Start()
  if self.PGTMissionArea == nil then
    return
  end
  self:RegisterStartCallback()
  self:RegisterStopCallback()
  self:RegisterAbortCallback()
  StartPGTMissionArea(self.PGTMissionArea)
end
function ProceduralGameplayToolController:Abort()
  if self.PGTMissionArea == nil then
    return
  end
  AbortPGTMissionArea(self.PGTMissionArea)
end
function ProceduralGameplayToolController:RegisterStartCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStarted == nil then
    self.callidPGTMissionStarted = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTMissionAreaStarted", "PGTMissionAreaStartedEvent")
  end
end
function ProceduralGameplayToolController:UnregisterStartCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTMissionStarted)
    self.callidPGTMissionStarted = nil
  end
end
function ProceduralGameplayToolController:RegisterStopCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStopped == nil then
    self.callidPGTMissionStopped = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTMissionAreaStopped", "PGTMissionAreaStoppedEvent")
  end
end
function ProceduralGameplayToolController:UnregisterStopCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStopped ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTMissionStopped)
    self.callidPGTMissionStopped = nil
  end
end
function ProceduralGameplayToolController:RegisterAbortCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionAborted == nil then
    self.callidPGTMissionAborted = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTMissionAreaAborted", "PGTMissionAreaAbortedEvent")
  end
end
function ProceduralGameplayToolController:UnregisterAbortCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionAborted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTMissionAborted)
    self.callidPGTMissionAborted = nil
  end
end
function ProceduralGameplayToolController:Event_PGTMissionAreaStarted()
  self._type.UnregisterStartCallback(self)
  return self:Started()
end
function ProceduralGameplayToolController:Event_PGTMissionAreaAborted()
  self._type.UnregisterStartCallback(self)
  self._type.UnregisterAbortCallback(self)
  return self:Aborted()
end
function ProceduralGameplayToolController:Event_PGTMissionAreaStopped()
  self._type.UnregisterStartCallback(self)
  self._type.UnregisterStopCallback(self)
  self._type.UnregisterAbortCallback(self)
  return self:Stopped()
end
export = ProceduralGameplayToolController
ProceduralGameplayToolController = nil
