NPCSquad = {}
function NPCSquad:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function NPCSquad:Init(cbox)
end
function NPCSquad:ShutDown()
  if self.SquadName ~= nil and IsSquadStarted(self.SquadName) == 1 then
    StopSquad(self.SquadName)
  end
  self:ClearTimeEvent()
end
function NPCSquad:Event_TimeElapsed()
  if IsSquadStopping(self.SquadName) == 1 then
    if IsSquadStopped(self.SquadName) == 1 then
      RemoveSquad(self.SquadName)
      self:ClearTimeEvent()
      self:Stopped()
    else
      self:ClearTimeEvent()
      CDominoDelayManager_GetInstance():SendCommand(self.Trigger, "restart")
    end
  end
end
function NPCSquad:ClearTimeEvent()
  if self.Trigger ~= nil then
    CDominoDelayManager_GetInstance():RemoveDelay(self.Trigger)
    self.Trigger = nil
  end
end
function NPCSquad:AddConfig()
  if self.SquadName ~= nil and self.Config ~= nil then
    SetSquadAgentOverrideConfig(self.SquadName, self.Config)
    self:ConfigAdded()
  end
  self:Out()
end
function NPCSquad:RemoveConfig()
  if self.SquadName ~= nil then
    SetSquadAgentOverrideConfig(self.SquadName, "")
    self:ConfigRemoved()
  end
  self:Out()
end
function NPCSquad:AddNPC()
  if self.NPC ~= nil or self.NPCList ~= nil or self.LKPGroup then
    if self.LKPGroup ~= nil then
      AssignMainSquadLKPGroupName(self.SquadName, self.LKPGroup)
    end
    if self.NPC ~= nil then
      AddSquadAgent(self.SquadName, self.NPC)
    end
    if self.NPCList ~= nil then
      for i, v in ipairs(self.NPCList) do
        AddSquadAgent(self.SquadName, v)
      end
    end
    self:NPCAdded()
  end
  self:Out()
end
function NPCSquad:RemoveNPC()
  if self.NPC ~= nil or self.NPCList ~= nil then
    if self.NPC ~= nil then
      RemoveSquadAgent(self.SquadName, self.NPC)
    end
    if self.NPCList ~= nil then
      for i, v in ipairs(self.NPCList) do
        RemoveSquadAgent(self.SquadName, v)
      end
    end
    self:NPCRemoved()
  end
  self:Out()
end
function NPCSquad:AddLKPGroup()
  if self.LKPGroup ~= nil then
    AssignMainSquadLKPGroupName(self.SquadName, self.LKPGroup)
    self:LKPGroupAdded()
  end
  self:Out()
end
function NPCSquad:AddZone()
  if self.SquadName ~= nil then
    if self.Zone ~= nil then
      AddNPCZone(self.SquadName, self.Zone)
    end
    if self.ForbiddenZone ~= nil then
      AddNPCZone(self.SquadName, self.ForbiddenZone)
    end
    if self.WarningZone ~= nil then
      AddNPCZone(self.SquadName, self.WarningZone)
    end
    if self.ZoneList ~= nil then
      for i, v in ipairs(self.ZoneList) do
        AddNPCZone(self.SquadName, v)
      end
    end
    if self.ForbiddenZoneList ~= nil then
      for i, v in ipairs(self.ForbiddenZoneList) do
        AddNPCZone(self.SquadName, v)
      end
    end
    if self.WarningZoneList ~= nil then
      for i, v in ipairs(self.WarningZoneList) do
        AddNPCZone(self.SquadName, v)
      end
    end
  end
  self:ZoneAdded()
  self:Out()
end
function NPCSquad:RemoveZone()
  if self.SquadName ~= nil then
    if self.Zone ~= nil then
      RemoveNPCZone(self.SquadName, self.Zone)
    end
    if self.ForbiddenZone ~= nil then
      RemoveNPCZone(self.SquadName, self.ForbiddenZone)
    end
    if self.WarningZone ~= nil then
      RemoveNPCZone(self.SquadName, self.WarningZone)
    end
    if self.ZoneList ~= nil then
      for i, v in ipairs(self.ZoneList) do
        RemoveNPCZone(self.SquadName, v)
      end
    end
    if self.ForbiddenZoneList ~= nil then
      for i, v in ipairs(self.ForbiddenZoneList) do
        RemoveNPCZone(self.SquadName, v)
      end
    end
    if self.WarningZoneList ~= nil then
      for i, v in ipairs(self.WarningZoneList) do
        RemoveNPCZone(self.SquadName, v)
      end
    end
  end
  self:ZoneRemoved()
  self:Out()
end
function NPCSquad:AddDefendPoint()
  if self.SquadName ~= nil and self.DefendPoint ~= nil then
    AddDefendPoint(self.SquadName, self.DefendPoint)
    self:DefendPointAdded()
  end
  self:Out()
end
function NPCSquad:RemoveDefendPoint()
  if self.SquadName ~= nil then
    RemoveDefendPoint(self.SquadName)
    self:DefendPointRemoved()
  end
  self:Out()
end
function NPCSquad:AddAssaultPoint()
  if self.SquadName ~= nil and self.AssaultPoint ~= nil then
    AssignAssaultPoint(self.SquadName, self.AssaultPoint)
    self:AssaultPointAdded()
  end
  self:Out()
end
function NPCSquad:RemoveAssaultPoint()
  if self.SquadName ~= nil then
    RemoveAssaultPoint(self.SquadName)
    self:AssaultPointRemoved()
  end
  self:Out()
end
function NPCSquad:Start()
  if IsSquadStarted(self.SquadName) == 1 or IsSquadStopping(self.SquadName) == 1 then
    self:Out()
    return
  end
  self.SquadType = self.SquadType or "SquadRoot"
  if CreateSquad(self.SquadType, self.SquadName) == 1 then
    AssignMainSquadStrategy(self.SquadName, 0)
    if self.LKPGroup ~= nil then
      AssignMainSquadLKPGroupName(self.SquadName, self.LKPGroup)
    end
    if self.NPC ~= nil then
      AddSquadAgent(self.SquadName, self.NPC)
    end
    if self.NPCList ~= nil then
      for i, v in ipairs(self.NPCList) do
        AddSquadAgent(self.SquadName, v)
      end
    end
    if self.Config ~= nil then
      SetSquadAgentOverrideConfig(self.SquadName, self.Config)
    else
      SetSquadAgentOverrideConfig(self.SquadName, "")
    end
    if self.Zone ~= nil then
      AddNPCZone(self.SquadName, self.Zone)
    end
    if self.ForbiddenZone ~= nil then
      AddNPCZone(self.SquadName, self.ForbiddenZone)
    end
    if self.WarningZone ~= nil then
      AddNPCZone(self.SquadName, self.WarningZone)
    end
    if self.ZoneList ~= nil then
      for i, v in ipairs(self.ZoneList) do
        AddNPCZone(self.SquadName, v)
      end
    end
    if self.ForbiddenZoneList ~= nil then
      for i, v in ipairs(self.ForbiddenZoneList) do
        AddNPCZone(self.SquadName, v)
      end
    end
    if self.WarningZoneList ~= nil then
      for i, v in ipairs(self.WarningZoneList) do
        AddNPCZone(self.SquadName, v)
      end
    end
    if self.DefendPoint ~= nil then
      AddDefendPoint(self.SquadName, self.DefendPoint)
    end
    if self.AssaultPoint ~= nil then
      AssignAssaultPoint(self.SquadName, self.AssaultPoint)
    end
    if StartSquad(self.SquadName) == 1 then
      self:Started()
    end
  end
  self:Out()
end
function NPCSquad:Stop()
  if IsSquadStarted(self.SquadName) == 1 and StopSquad(self.SquadName) == 1 then
    self.Trigger = CDominoDelayManager_GetInstance():CreateDelay(1, self, "Event_TimeElapsed", 0, 1)
    if self.Trigger ~= nil then
      CDominoDelayManager_GetInstance():SendCommand(self.Trigger, "start")
    end
  end
  self:Out()
end
export = NPCSquad
NPCSquad = nil
