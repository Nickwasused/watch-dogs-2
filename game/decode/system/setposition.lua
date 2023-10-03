SetPositionBox = {}
function SetPositionBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetPositionBox:In()
  local Out = self.Out
  self.Additive = self.Additive or 1
  self.Local = self.Local or 1
  if LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    if self.Additive == 1 then
      self.xPos = self.xPos or 0
      self.yPos = self.yPos or 0
      self.zPos = self.zPos or 0
      self.xRot = self.xRot or 0
      self.yRot = self.yRot or 0
      self.zRot = self.zRot or 0
      if self.Local == 1 then
        self.xRot = self.xRot + GetEntityAngle(self.Entity, 0)
        self.yRot = self.yRot + GetEntityAngle(self.Entity, 1)
        self.zRot = self.zRot + GetEntityAngle(self.Entity, 2)
        SetEntityOffset(self.Entity, self.xPos, self.yPos, self.zPos)
      else
        self.xPos = self.xPos + GetEntityPosition(self.Entity, 0)
        self.yPos = self.yPos + GetEntityPosition(self.Entity, 1)
        self.zPos = self.zPos + GetEntityPosition(self.Entity, 2)
        self.xRot = self.xRot + GetEntityAngle(self.Entity, 0)
        self.yRot = self.yRot + GetEntityAngle(self.Entity, 1)
        self.zRot = self.zRot + GetEntityAngle(self.Entity, 2)
        SetEntityPosition(self.Entity, self.xPos, self.yPos, self.zPos)
      end
    else
      self.xPos = self.xPos or GetEntityPosition(self.Entity, 0)
      self.yPos = self.yPos or GetEntityPosition(self.Entity, 1)
      self.zPos = self.zPos or GetEntityPosition(self.Entity, 2)
      self.xRot = self.xRot or GetEntityAngle(self.Entity, 0)
      self.yRot = self.yRot or GetEntityAngle(self.Entity, 1)
      self.zRot = self.zRot or GetEntityAngle(self.Entity, 2)
      SetEntityPosition(self.Entity, self.xPos, self.yPos, self.zPos)
    end
    SetEntityAngle(self.Entity, self.xRot, self.yRot, self.zRot)
  end
  Out(self)
end
export = SetPositionBox
SetPositionBox = nil
