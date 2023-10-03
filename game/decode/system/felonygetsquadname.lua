FelonyGetSquadName = {}
function FelonyGetSquadName:Create(cbox)
end
function FelonyGetSquadName:Init(cbox)
end
function FelonyGetSquadName:ShutDown()
end
function FelonyGetSquadName:GetName()
  self.SquadName = FelonyGetSquadNameFromType(self:GetFelonyTypeID(self.FelonyType))
  self:GotName()
end
function FelonyGetSquadName:GetFelonyTypeID(felonyTypeName)
  return -1
end
export = FelonyGetSquadName
FelonyGetSquadName = nil
