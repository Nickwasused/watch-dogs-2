PGTController = {}
function PGTController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PGTController:Init(cbox)
  self.callidPGTMissionStarted = nil
  self.callidPGTMissionStopped = nil
  self.callidPGTMissionAborted = nil
  self.missionId = cbox:GetParentMissionId()
end
function PGTController:ShutDown()
  self:UnregisterStartCallback()
  self:UnregisterAbortCallback()
end
function PGTController:Start()
  if LuaLibCore:VerifyDataInputEntity(self.PGTMissionArea, "PGTMissionArea") then
    self:RegisterStartCallback()
    StartPGTMissionAreaWithMissionId(self.PGTMissionArea, self.missionId)
    self:Started()
  end
end
function PGTController:Abort()
  if LuaLibCore:VerifyDataInputEntity(self.PGTMissionArea, "PGTMissionArea") then
    self:RegisterAbortCallback()
    if AbortPGTMissionArea(self.PGTMissionArea) ~= 1 then
      self:UnregisterAbortCallback()
      self:Aborted()
    end
  end
end
function PGTController:AddScriptedAgents()
  if LuaLibCore:VerifyDataInputEntity(self.PGTMissionArea, "PGTMissionArea") then
    local agentList = self.AgentList or {}
    PGTAddScriptedAgent(self.PGTMissionArea, agentList)
    self:ScriptedAgentsAdded()
  end
end
function PGTController:RegisterStartCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStarted == nil then
    self.callidPGTMissionStarted = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTMissionAreaStarted", "PGTMissionAreaStartedEvent")
  end
end
function PGTController:UnregisterStartCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTMissionStarted)
    self.callidPGTMissionStarted = nil
  end
end
function PGTController:RegisterAbortCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionAborted == nil then
    self.callidPGTMissionAborted = CScriptCallbackSystem_GetInstance():RegisterEventCallback(self.PGTMissionArea, self, "Event_PGTMissionAreaAborted", "PGTMissionAreaAbortedEvent")
  end
end
function PGTController:UnregisterAbortCallback()
  if self.PGTMissionArea ~= nil and self.callidPGTMissionAborted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PGTMissionArea, self.callidPGTMissionAborted)
    self.callidPGTMissionAborted = nil
  end
end
function PGTController:Event_PGTMissionAreaStarted()
  self._type.UnregisterStartCallback(self)
  return self:AllSpawned()
end
function PGTController:Event_PGTMissionAreaAborted()
  self._type.UnregisterAbortCallback(self)
  return self:Aborted()
end
export = PGTController
PGTController = nil
