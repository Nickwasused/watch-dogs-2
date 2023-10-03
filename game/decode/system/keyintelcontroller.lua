KeyIntelController = {}
function KeyIntelController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function KeyIntelController:Init(cbox)
end
function KeyIntelController:ShutDown()
end
function KeyIntelController:SetKeyIntel()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    SetKeyIntelId(self.Entity, self.KeyIntelInfo.id)
    self:Set()
  end
end
function KeyIntelController:ResetKeyIntel()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    ResetKeyIntel(self.Entity)
    self:Reset()
  end
end
export = KeyIntelController
KeyIntelController = nil
