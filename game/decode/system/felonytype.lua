FelonyType = {}
function FelonyType:Create(cbox)
end
function FelonyType:Init(cbox)
end
function FelonyType:ShutDown()
end
function FelonyType:GetFelonyType()
  self.Player = self.Player or GetLocalPlayerEntityId()
  if self.Player ~= nil then
    self.IsCopFelony = FelonyIsCopFelony(self.Player)
    local felonyType = FelonyGetType(self.Player)
    if felonyType == 0 then
      return self:Police()
    elseif felonyType == 1 then
      return self:Club()
    elseif felonyType == 2 then
      return self:Viceroy()
    elseif felonyType == 3 then
      return self:Fixer()
    elseif felonyType == 4 then
      return self:Pawnee()
    elseif felonyType == 5 then
      return self:MadnessPill()
    elseif felonyType == 6 then
      return self:SpiderPill()
    elseif felonyType == 7 then
      return self:CTOS()
    elseif felonyType == 8 then
      return self:None()
    end
  end
end
export = FelonyType
FelonyType = nil
