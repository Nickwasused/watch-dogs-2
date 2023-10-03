AgentStateMonitor = {}
function AgentStateMonitor:Create(cbox)
end
function AgentStateMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.NPCList = {}
  self.callidPauseStateList = {}
  self.callidDeadStateList = {}
  self.callidUnawareStateList = {}
  self.callidAwareStateList = {}
  self.callidAlertSoftStateList = {}
  self.callidAlertHardStateList = {}
  self.callidFleeStateList = {}
  self.callidCombatStateList = {}
  self.callidScriptedStateList = {}
  self.callidPostCombatSearchStateList = {}
  self.callidCinematicMode_InterruptedList = {}
  self.callidDetectionIntuitionStartedList = {}
  self.callidDetectionIntuitionStoppedList = {}
  self.callidDetectionIntuitionFullList = {}
  self.callidDetectionAlertStartedList = {}
  self.callidDetectionAlertStoppedList = {}
  self.callidDetectionAlertFullList = {}
  self.callidIsDistractedList = {}
end
function AgentStateMonitor:IsNPCListAllInState(targetState)
  local allInState = false
  if self.NPCList ~= nil then
    allInState = true
    for index, value in ipairs(self.NPCList) do
      if value ~= nil then
        local state = GetAIState(value)
        if state ~= targetState and state ~= "Dead" and state ~= "Undefined" then
          allInState = false
          break
        end
      end
    end
  end
  return allInState
end
function AgentStateMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function AgentStateMonitor:Enable()
  if self.NPC ~= nil and self.NPCList ~= nil then
    table.insert(self.NPCList, #self.NPCList + 1, self.NPC)
  end
  if self.NPCList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for index, value in ipairs(self.NPCList) do
      if value ~= nil then
        if self.callidPauseStateList[index] == nil then
          self.callidPauseStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInPause", "CAIAgentStatePause", self.missionId)
        end
        if self.callidDeadStateList[index] == nil then
          self.callidDeadStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInDead", "CAIAgentStateDead", self.missionId)
        end
        if self.callidUnawareStateList[index] == nil then
          self.callidUnawareStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInUnaware", "CAIAgentStateWander", self.missionId)
        end
        if self.callidAwareStateList[index] == nil then
          self.callidAwareStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInAware", "CAIAgentStateAware", self.missionId)
        end
        if self.callidAlertSoftStateList[index] == nil then
          self.callidAlertSoftStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInAlertSoft", "CAIAgentStateAlertSoft", self.missionId)
        end
        if self.callidAlertHardStateList[index] == nil then
          self.callidAlertHardStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInAlertHard", "CAIAgentStateAlertHard", self.missionId)
        end
        if self.callidFleeStateList[index] == nil then
          self.callidFleeStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInFlee", "CAIAgentStateFlee", self.missionId)
        end
        if self.callidCombatStateList[index] == nil then
          self.callidCombatStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInCombat", "CAIAgentStateCombat", self.missionId)
        end
        if self.callidScriptedStateList[index] == nil then
          self.callidScriptedStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInScripted", "CAIAgentStateDominoManaged", self.missionId)
        end
        if self.callidPostCombatSearchStateList[index] == nil then
          self.callidPostCombatSearchStateList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInHunt", "CAIAgentStateSearch", self.missionId)
        end
        if self.callidCinematicMode_InterruptedList[index] == nil then
          self.callidCinematicMode_InterruptedList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentInterruptCinematicMode", "AgentInterruptCinematicMode", self.missionId)
        end
        if self.callidDetectionIntuitionStartedList[index] == nil then
          self.callidDetectionIntuitionStartedList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentDetectionIntuitionStarted", "AgentDetectionIntuitionStarted", self.missionId)
        end
        if self.callidDetectionIntuitionStoppedList[index] == nil then
          self.callidDetectionIntuitionStoppedList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentDetectionIntuitionStopped", "AgentDetectionIntuitionStopped", self.missionId)
        end
        if self.callidDetectionIntuitionFullList[index] == nil then
          self.callidDetectionIntuitionFullList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentDetectionIntuitionFull", "AgentDetectionIntuitionFull", self.missionId)
        end
        if self.callidDetectionAlertStartedList[index] == nil then
          self.callidDetectionAlertStartedList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentDetectionAlertStarted", "AgentDetectionAlertStarted", self.missionId)
        end
        if self.callidDetectionAlertStoppedList[index] == nil then
          self.callidDetectionAlertStoppedList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentDetectionAlertStopped", "AgentDetectionAlertStopped", self.missionId)
        end
        if self.callidDetectionAlertFullList[index] == nil then
          self.callidDetectionAlertFullList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentDetectionAlertFull", "AgentDetectionAlertFull", self.missionId)
        end
        if self.callidIsDistractedList[index] == nil then
          self.callidIsDistractedList[index] = instance:RegisterMissionEventCallback(value, self, "Event_AgentIsDistracted", "AgentIsDistracted", self.missionId)
        end
        if self.CheckStateNow == 1 then
          local state = GetAIState(value)
          if state == "Pause" then
            self:PauseState()
          elseif state == "Wander" then
            self:UnawareState()
          elseif state == "Aware" then
            self:AwareState()
          elseif state == "AlertSoft" then
            self:AlertSoftState()
          elseif state == "Combat" then
            self:CombatState()
          elseif state == "Investigate" then
            self:InvestigateState()
          elseif state == "Hunt" then
            self:PostCombatSearchState()
          elseif state == "AlertHard" then
            self:AlertHardState()
          elseif state == "InterruptibleCinematic" then
            self:InterruptibleCinematicState()
          elseif state == "Scripted" then
            self:ScriptedState()
          elseif state == "Flee" then
            self:FleeState()
          end
        end
        if self.CheckDetectionNow == 1 then
          if IsDetectionIntuitionStarted(value) == 1 then
            self:DetectionIntuitionStarted()
          end
          if IsDetectionIntuitionFull(value) == 1 then
            self:DetectionIntuitionFull()
          end
          if IsDetectionAlertStarted(value) == 1 then
            self:DetectionAlertStarted()
          end
          if IsDetectionAlertFull(value) == 1 then
            self:DetectionAlertFull()
          end
        end
      end
    end
  end
  if self.CheckStateNow == 1 then
    if self:IsNPCListAllInState("Wander") then
      self:AllInUnawareState()
    end
    if self:IsNPCListAllInState("Aware") then
      self:AllInAwareState()
    end
    if self:IsNPCListAllInState("Flee") then
      self:AllInFleeState()
    end
  end
  self:Enabled()
end
function AgentStateMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function AgentStateMonitor:UnregisterCallback()
  if self.NPCList ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    for index, value in ipairs(self.NPCList) do
      if value ~= nil then
        if self.callidCinematicMode_InterruptedList[index] ~= nil then
          instance:RemoveCallback(value, self.callidCinematicMode_InterruptedList[index])
          self.callidCinematicMode_InterruptedList[index] = nil
        end
        if self.callidDetectionIntuitionStartedList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDetectionIntuitionStartedList[index])
          self.callidDetectionIntuitionStartedList[index] = nil
        end
        if self.callidDetectionIntuitionStoppedList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDetectionIntuitionStoppedList[index])
          self.callidDetectionIntuitionStoppedList[index] = nil
        end
        if self.callidDetectionIntuitionFullList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDetectionIntuitionFullList[index])
          self.callidDetectionIntuitionFullList[index] = nil
        end
        if self.callidDetectionAlertStartedList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDetectionAlertStartedList[index])
          self.callidDetectionAlertStartedList[index] = nil
        end
        if self.callidDetectionAlertStoppedList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDetectionAlertStoppedList[index])
          self.callidDetectionAlertStoppedList[index] = nil
        end
        if self.callidDetectionAlertFullList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDetectionAlertFullList[index])
          self.callidDetectionAlertFullList[index] = nil
        end
        if self.callidIsDistractedList[index] ~= nil then
          instance:RemoveCallback(value, self.callidIsDistractedList[index])
          self.callidIsDistractedList[index] = nil
        end
        if self.callidPauseStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidPauseStateList[index])
          self.callidPauseStateList[index] = nil
        end
        if self.callidDeadStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidDeadStateList[index])
          self.callidDeadStateList[index] = nil
        end
        if self.callidUnawareStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidUnawareStateList[index])
          self.callidUnawareStateList[index] = nil
        end
        if self.callidAwareStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidAwareStateList[index])
          self.callidAwareStateList[index] = nil
        end
        if self.callidAlertSoftStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidAlertSoftStateList[index])
          self.callidAlertSoftStateList[index] = nil
        end
        if self.callidAlertHardStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidAlertHardStateList[index])
          self.callidAlertHardStateList[index] = nil
        end
        if self.callidFleeStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidFleeStateList[index])
          self.callidFleeStateList[index] = nil
        end
        if self.callidCombatStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidCombatStateList[index])
          self.callidCombatStateList[index] = nil
        end
        if self.callidScriptedStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidScriptedStateList[index])
          self.callidScriptedStateList[index] = nil
        end
        if self.callidPostCombatSearchStateList[index] ~= nil then
          instance:RemoveCallback(value, self.callidPostCombatSearchStateList[index])
          self.callidPostCombatSearchStateList[index] = nil
        end
      end
    end
  end
end
function AgentStateMonitor:Event_AgentInPause(event)
  self:PauseState()
end
function AgentStateMonitor:Event_AgentInDead(event)
  if self:IsNPCListAllInState("Flee") then
    self:AllInFleeState()
  end
end
function AgentStateMonitor:Event_AgentInInterruptibleCinematic(event)
  self:InterruptibleCinematicState()
end
function AgentStateMonitor:Event_AgentInUnaware(event)
  self:UnawareState()
  if self:IsNPCListAllInState("Wander") then
    self:AllInUnawareState()
  end
end
function AgentStateMonitor:Event_AgentInAware(event)
  self:AwareState()
  if self:IsNPCListAllInState("Aware") then
    self:AllInAwareState()
  end
end
function AgentStateMonitor:Event_AgentInAlertSoft(event)
  self:AlertSoftState()
end
function AgentStateMonitor:Event_AgentInAlertHard(event)
  self:AlertHardState()
end
function AgentStateMonitor:Event_AgentInFlee(event)
  self:FleeState()
  if self:IsNPCListAllInState("Flee") then
    self:AllInFleeState()
  end
end
function AgentStateMonitor:Event_AgentInCombat(event)
  self:CombatState()
end
function AgentStateMonitor:Event_AgentInScripted(event)
  self:ScriptedState()
end
function AgentStateMonitor:Event_AgentInInvestigate(event)
  self:InvestigateState()
end
function AgentStateMonitor:Event_AgentInHunt(event)
  self:PostCombatSearchState()
end
function AgentStateMonitor:Event_AgentInterruptCinematicMode(event)
  self:CinematicMode_Interrupted()
end
function AgentStateMonitor:Event_AgentDetectionIntuitionStarted(event)
  self:DetectionIntuitionStarted()
end
function AgentStateMonitor:Event_AgentDetectionIntuitionStopped(event)
  self:DetectionIntuitionStopped()
end
function AgentStateMonitor:Event_AgentDetectionIntuitionFull(event)
  self:DetectionIntuitionFull()
end
function AgentStateMonitor:Event_AgentDetectionAlertStarted(event)
  self:DetectionAlertStarted()
end
function AgentStateMonitor:Event_AgentDetectionAlertStopped(event)
  self:DetectionAlertStopped()
end
function AgentStateMonitor:Event_AgentDetectionAlertFull(event)
  self:DetectionAlertFull()
end
function AgentStateMonitor:Event_AgentIsDistracted(event)
  self:IsDistracted()
end
export = AgentStateMonitor
AgentStateMonitor = nil
