PerkController = {}
function PerkController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PerkController:Init(cbox)
end
function PerkController:ShutDown()
end
function PerkController:AddPerk()
  if self.PerkDB ~= nil then
    AddPerkWithDbObjToPlayer(self.PerkDB)
    self:PerkAdded()
  elseif self.PerkListDB ~= nil then
    AddPerkListWithDbObjToPlayer(self.PerkListDB)
    self:PerkListAdded()
  end
end
function PerkController:RemovePerk()
  if self.PerkDB ~= nil then
    RemovePerkWithDbObjFromPlayer(self.PerkDB)
    self:PerkRemoved()
  elseif self.PerkListDB ~= nil then
    RemovePerkListWithDbObjFromPlayer(self.PerkListDB)
    self:PerkListRemoved()
  end
end
function PerkController:ReplacePerkList()
  if self.PerkListDB ~= nil then
    ReplacePerkListWithDbObjToPlayer(self.PerkListDB)
    self:PerkListReplaced()
  end
end
function PerkController:ResetPerks()
  ResetPerkForPlayer()
  self:PerkReseted()
end
export = PerkController
PerkController = nil
