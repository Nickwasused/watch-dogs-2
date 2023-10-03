AIAgentZoneBox = {}
function AIAgentZoneBox:Create(cbox)
end
function AIAgentZoneBox:Init(cbox)
end
function AIAgentZoneBox:ShutDown()
end
function AIAgentZoneBox:Enable()
  if self.TargetZone ~= nil then
    EnableAIAgentZone(self.TargetZone, 1)
  end
  self:Out()
end
function AIAgentZoneBox:Assign()
  if self.TargetZone ~= nil and self.NPC ~= nil then
    AssignZoneToAgent(self.NPC, self.TargetZone)
  end
  self:Out()
end
function AIAgentZoneBox:Disable()
  if self.TargetZone ~= nil then
    EnableAIAgentZone(self.TargetZone, 0)
  end
  self:Out()
end
export = AIAgentZoneBox
AIAgentZoneBox = nil
