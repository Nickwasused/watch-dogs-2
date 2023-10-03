CraneController = {}
function CraneController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function CraneController:Init(cbox)
end
function CraneController:ShutDown()
end
function CraneController:SetPlatformPosition()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    ForceCranePlatformPosition(self.Entity, self.Rotation, self.PlatformHeight, self.SliderPosition)
  end
  return self:PlatformPositionSet()
end
function CraneController:SetCanMove()
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    SetCraneCanMove(self.Entity, self.CanMove)
  end
  self:CanMoveChanged()
end
export = CraneController
CraneController = nil
