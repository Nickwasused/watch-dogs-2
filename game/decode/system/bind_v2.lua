BindBox = {}
function BindBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function BindBox:Bind()
  local Parent = self.Parent
  local Child = self.Child
  local BoneName = self.BoneName or self.BoneNameStr or ""
  local RemoveOffset = self.RemoveOffset or 0
  local Bound = self.Bound
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(Parent, "Parent") and LuaLibCore:VerifyDataInputEntity(Child, "Child") then
    Bind(Parent, Child, self:GetActualBoneName(BoneName), RemoveOffset)
  end
  Bound(self)
  Out(self)
end
function BindBox:GetActualBoneName(source)
  if source == "Hips" then
    return "Pelvis"
  elseif source == "LeftUpLeg" then
    return "L Thigh"
  elseif source == "LeftLeg" then
    return "L Calf"
  elseif source == "LeftFoot" then
    return "L Foot"
  elseif source == "RightUpLeg" then
    return "R Thigh"
  elseif source == "RightLeg" then
    return "R Calf"
  elseif source == "RightFoot" then
    return "R Foot"
  elseif source == "LeftShoulder" then
    return "L Clavicle"
  elseif source == "LeftArm" then
    return "L UpperArm"
  elseif source == "LeftForeArm" then
    return "L Forearm"
  elseif source == "LeftHand" then
    return "L Hand"
  elseif source == "RightShoulder" then
    return "R Clavicle"
  elseif source == "RightArm" then
    return "R UpperArm"
  elseif source == "RightForeArm" then
    return "R Forearm"
  elseif source == "RightHand" then
    return "R Hand"
  end
  return source
end
function BindBox:UnBind()
  local Child = self.Child
  local Out = self.Out
  local UnBound = self.UnBound
  if LuaLibCore:VerifyDataInputEntity(Child, "Child") then
    UnBind(Child)
  end
  UnBound(self)
  Out(self)
end
export = BindBox
BindBox = nil
