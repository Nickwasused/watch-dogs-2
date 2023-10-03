IntelController = {}
function IntelController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function IntelController:Init(cbox)
end
function IntelController:ShutDown()
end
function IntelController:Enable()
  if LuaLibCore:VerifyDataInputEntityList(self.EntityList, "EntityList") then
    for i, v in ipairs(self.EntityList) do
      SetEntityIsIntel(v, 1)
    end
  elseif self.EntityList == nil and LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    SetEntityIsIntel(self.Entity, 1)
  end
  return self:Enabled()
end
function IntelController:Disable()
  if LuaLibCore:VerifyDataInputEntityList(self.EntityList, "EntityList") then
    for i, v in ipairs(self.EntityList) do
      SetEntityIsIntel(v, 0)
    end
  elseif self.EntityList == nil and LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    SetEntityIsIntel(self.Entity, 0)
  end
  return self:Disabled()
end
export = IntelController
IntelController = nil
