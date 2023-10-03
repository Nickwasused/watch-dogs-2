FelonyExclusionZone = {}
function FelonyExclusionZone:Create(cbox)
end
function FelonyExclusionZone:Init(cbox)
end
function FelonyExclusionZone:ShutDown()
end
function FelonyExclusionZone:AddZone()
  self:ZoneAdded()
  self:Out()
end
function FelonyExclusionZone:RemoveZone()
  self:ZoneRemoved()
  self:Out()
end
export = FelonyExclusionZone
FelonyExclusionZone = nil
