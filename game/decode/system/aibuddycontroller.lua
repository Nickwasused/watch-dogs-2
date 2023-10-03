AIBuddyController = {}
function AIBuddyController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function AIBuddyController:Init(cbox)
end
function AIBuddyController:ShutDown()
end
function AIBuddyController:Update()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") then
    CBuddyAIManager_GetInstance():UpdateBuddyAISettings(self.NPC, self.BuddyAISettingsDB)
  end
  self:Updated()
  self:Out()
end
function AIBuddyController:Follow()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") then
    CBuddyAIManager_GetInstance():RequestFollow(self.NPC)
  end
  self:IsFollowing()
  self:Out()
end
function AIBuddyController:Wait()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") then
    CBuddyAIManager_GetInstance():RequestIdle(self.NPC)
  end
  self:IsWaiting()
  self:Out()
end
function AIBuddyController:AssignPatrol()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") and LuaLibCore:VerifyDataInputEntity(self.Patrol, "Patrol") then
    CBuddyAIManager_GetInstance():RequestPatrol(self.NPC, self.Patrol)
  end
  self:Assigned()
  self:Out()
end
function AIBuddyController:GotoCLO()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") and LuaLibCore:VerifyDataInputEntity(self.CLO, "CLO", true) then
    CBuddyAIManager_GetInstance():GoToMonitoredCLO(self.NPC, self.CLO)
  end
  self:IsGoingToCLO()
  self:Out()
end
export = AIBuddyController
AIBuddyController = nil
