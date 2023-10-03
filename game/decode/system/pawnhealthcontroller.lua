PawnHealthController = {}
function PawnHealthController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PawnHealthController:Init(cbox)
end
function PawnHealthController:ShutDown()
end
function PawnHealthController:SetInvincible()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      ActivateInvincibility(v)
    end
  end
  Out(self)
end
function PawnHealthController:UnsetInvincible()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      RemoveInvincibility(v)
    end
  end
  Out(self)
end
function PawnHealthController:SetImmune()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      ActivateImmunity(v)
    end
  end
  Out(self)
end
function PawnHealthController:UnsetImmune()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      RemoveImmunity(v)
    end
  end
  Out(self)
end
function PawnHealthController:SetCannotDie()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      SetPawnImmuneToDeath(v, 1)
    end
  end
  Out(self)
end
function PawnHealthController:SetCanDie()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      SetPawnImmuneToDeath(v, 0)
    end
  end
  Out(self)
end
function PawnHealthController:SetInfiniteDBNO()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      SetCanRevive(v, 0)
    end
  end
  Out(self)
end
function PawnHealthController:UnsetInfiniteDBNO()
  local Out = self.Out
  self:Combinelist()
  if self.combinedPawnList ~= nil then
    for i, v in ipairs(self.combinedPawnList) do
      SetCanRevive(v, 1)
    end
  end
  Out(self)
end
function PawnHealthController:Combinelist()
  self.combinedPawnList = {}
  if self.Pawn ~= nil and LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") then
    table.insert(self.combinedPawnList, self.Pawn)
  end
  if self.PawnList ~= nil and LuaLibCore:VerifyDataInputEntityList(self.PawnList, "PawnList") then
    for i, v in ipairs(self.PawnList) do
      table.insert(self.combinedPawnList, self.PawnList[i])
    end
  end
end
export = PawnHealthController
PawnHealthController = nil
