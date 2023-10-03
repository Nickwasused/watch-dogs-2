AssignPatrol_v2 = {}
function AssignPatrol_v2:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function AssignPatrol_v2:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function AssignPatrol_v2:ShutDown()
  self:UnregisterCallback()
end
function AssignPatrol_v2:Assign()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") and LuaLibCore:VerifyDataInputEntity(self.Patrol, "Patrol") then
    self:Do(1)
  end
  self:Out()
end
function AssignPatrol_v2:Unassign()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") then
    self:Do(0)
  end
  self:Out()
end
function AssignPatrol_v2:Do(use)
  self:UnregisterCallback()
  if self.NPC ~= nil then
    self.assign = use
    if self.callidResult == nil then
      self.callidResult = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.NPC, self, "Event_Result", "AICommandResultEvent", self.missionId)
    end
    if use == 0 then
      self.commandID = UnAssignPatrolToAgent(self.NPC)
    elseif self.Speed ~= nil then
      self.commandID = AssignPatrolToAgent_v3(self.NPC, self.Patrol, self.Speed)
    else
      self.commandID = AssignPatrolToAgent_v2(self.NPC, self.Patrol, use)
    end
    if self.commandID == GetAICommand_InvalidID(0) and self.Aborted ~= nil then
      self:Aborted()
    end
  end
end
function AssignPatrol_v2:Cancel()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") and self.commandID ~= nil then
    CancelAICommand(self.NPC, self.commandID)
  end
end
function AssignPatrol_v2:UnregisterCallback()
  if self.NPC ~= nil and self.callidResult ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.NPC, self.callidResult)
    self.callidResult = nil
  end
end
function AssignPatrol_v2:Event_Result(commandID, result)
  if self.commandID == commandID then
    self:UnregisterCallback()
    if result == 2 then
      if self.assign == 1 then
        if self.Assigned ~= nil then
          self:Assigned()
          return
        end
      elseif self.assign == 0 and self.Unassigned ~= nil then
        self:Unassigned()
        return
      end
    elseif result == 3 then
      if self.Failed ~= nil then
        self:Failed()
        return
      end
    elseif result == 4 and self.Aborted ~= nil then
      self:Aborted()
      return
    end
  end
end
function AssignPatrol_v2:SetSpeed()
  self:SetSpeedFunction()
  self:SpeedSet()
  self:Out()
end
function AssignPatrol_v2:SetSpeedFunction()
  if LuaLibCore:VerifyDataInputEntity(self.NPC, "NPC") and LuaLibCore:VerifyDataInputEntity(self.Patrol, "Patrol") and LuaLibCore:AssertNotNil(self.Speed, "Speed") then
    SetPatrolSpeed_v2(self.NPC, self.Patrol, self.Speed)
  end
end
export = AssignPatrol_v2
AssignPatrol_v2 = nil
