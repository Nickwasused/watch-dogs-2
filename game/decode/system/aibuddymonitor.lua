AIBuddyMonitor = {}
function AIBuddyMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function AIBuddyMonitor:Init(cbox)
  self.callidCombatState = nil
  self.missionId = cbox:GetParentMissionId()
end
function AIBuddyMonitor:ShutDown()
end
function AIBuddyMonitor:Enable()
  if LuaLibCore:VerifyDataInputEntity(self.BuddyNPC, "BuddyNPC") then
    CBuddyAIManager_GetInstance():AddMonitorOnBuddy(self, self.BuddyNPC)
    if self.callidCombatState == nil then
      self.callidCombatState = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.BuddyNPC, self, "BuddyInCombat", "CAIAgentStateCombat", self.missionId)
    end
  end
  self:Enabled()
end
function AIBuddyMonitor:Disable()
  if LuaLibCore:VerifyDataInputEntity(self.BuddyNPC, "BuddyNPC") then
    CBuddyAIManager_GetInstance():RemoveMonitorFromBuddy(self, self.BuddyNPC)
    if self.callidCombatState ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(self.BuddyNPC, self.callidCombatState)
      self.callidCombatState = nil
    end
  end
  self:Disabled()
end
function AIBuddyMonitor:BuddyResumeFollow()
  self:OnBuddyFollowing()
end
function AIBuddyMonitor:BuddyTooFar()
  self:OnBuddyTooFar()
end
function AIBuddyMonitor:BuddyInCombat()
  self:OnBuddyInCombat()
end
function AIBuddyMonitor:BuddyHasNoSeat()
  self:OnBuddyHasNoSeat()
end
function AIBuddyMonitor:BuddyCantReach()
  self:OnBuddyCantReach()
end
function AIBuddyMonitor:BuddyNormalRange()
  self:OnBuddyNormalRange()
end
function AIBuddyMonitor:BuddyTooFarBarkRange()
  self:OnBuddyTooFarBarkRange()
end
function AIBuddyMonitor:BuddyTooFarUnspawnRange()
  self:OnBuddyTooFarUnspawnRange()
end
export = AIBuddyMonitor
AIBuddyMonitor = nil
