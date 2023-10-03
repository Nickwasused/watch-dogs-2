PropController = {PropDBObject = nil}
function PropController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PropController:Init(cbox)
end
function PropController:ShutDown()
end
function PropController:Add()
  local Added = self.Added
  if self.PropDBObject ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") then
      AddProp(self.Pawn, self.PropDBObject)
    end
    Added(self)
  end
end
function PropController:Drop()
  local Dropped = self.Dropped
  if self.PropDBObject ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") then
      RemoveProp(self.Pawn, self.PropDBObject, false)
    end
    Dropped(self)
  end
end
function PropController:Delete()
  local Deleted = self.Deleted
  if self.PropDBObject ~= nil then
    if LuaLibCore:VerifyDataInputEntity(self.Pawn, "Pawn") then
      RemoveProp(self.Pawn, self.PropDBObject, true)
    end
    Deleted(self)
  end
end
export = PropController
PropController = nil
