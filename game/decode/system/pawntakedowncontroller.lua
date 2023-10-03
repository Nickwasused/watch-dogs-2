PawnTakedownController = {}
function PawnTakedownController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PawnTakedownController:Init(cbox)
end
function PawnTakedownController:ShutDown()
end
function PawnTakedownController:Enable()
  if LuaLibCore:VerifyDataInputEntity(self.TargetEntity, "TargetEntity") then
    EnableTakedownOnPawn(self.TargetEntity)
  end
  return self:Enabled()
end
function PawnTakedownController:Disable()
  if LuaLibCore:VerifyDataInputEntity(self.TargetEntity, "TargetEntity") then
    DisableTakedownOnPawn(self.TargetEntity)
  end
  return self:Disabled()
end
export = PawnTakedownController
PawnTakedownController = nil
