GetPositionBox = {}
function GetPositionBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function GetPositionBox:In()
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    if self.BoneName == nil then
      self.xPos = GetEntityPosition(self.Entity, 0)
      self.yPos = GetEntityPosition(self.Entity, 1)
      self.zPos = GetEntityPosition(self.Entity, 2)
      self.xRot = GetEntityAngle(self.Entity, 0)
      self.yRot = GetEntityAngle(self.Entity, 1)
      self.zRot = GetEntityAngle(self.Entity, 2)
    else
      local localBonePosition = self.LocalBonePostion or 0
      self.xPos = GetEntityBonePosition(self.Entity, self.BoneName, 0, localBonePosition)
      self.yPos = GetEntityBonePosition(self.Entity, self.BoneName, 1, localBonePosition)
      self.zPos = GetEntityBonePosition(self.Entity, self.BoneName, 2, localBonePosition)
      self.xRot = GetEntityBoneAngle(self.Entity, self.BoneName, 0)
      self.yRot = GetEntityBoneAngle(self.Entity, self.BoneName, 1)
      self.zRot = GetEntityBoneAngle(self.Entity, self.BoneName, 2)
    end
  end
  Out(self)
end
export = GetPositionBox
GetPositionBox = nil
