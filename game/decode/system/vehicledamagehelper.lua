VehicleDamageHelperBox = {}
function VehicleDamageHelperBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function VehicleDamageHelperBox:Init(cbox)
  self.Message = "VehicleDamage"
end
function VehicleDamageHelperBox:ShutDown()
end
function VehicleDamageHelperBox:Enable()
  local Enabled = self.Enabled
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.MaxVehicleValue = self.MaxVehicleValue or 100
    self.MinHealthForReward = self.MinHealthForReward or 0
    self.Message = self.Message or "Vehicle Damage"
    RegisterVehicleForDamageBarUpdate(self.Vehicle, self.MinHealthForReward, self.MaxVehicleValue, self.Message)
  end
  Enabled(self)
  Out(self)
end
function VehicleDamageHelperBox:Disable()
  local Disabled = self.Disabled
  local Out = self.Out
  UnregisterVehicleForDamageBarUpdate()
  Disabled(self)
  Out(self)
end
function VehicleDamageHelperBox:RegisterVehicle()
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.MaxVehicleValue = self.MaxVehicleValue or 100
    self.MinHealthForReward = self.MinHealthForReward or 0
    self.Message = self.Message or "Vehicle Damage"
    RegisterVehicleForDamageBarUpdate(self.Vehicle, self.MinHealthForReward, self.MaxVehicleValue, self.Message)
  end
  Out(self)
end
function VehicleDamageHelperBox:GetHealth()
  local GotHealth = self.GotHealth
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.Health = GetVehicleHealthPercentage(self.Vehicle)
  end
  GotHealth(self)
  Out(self)
end
function VehicleDamageHelperBox:GetRewardPercentage()
  local GotRewardPercentage = self.GotRewardPercentage
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.MinHealthForReward = self.MinHealthForReward or 0
    self.RewardPercentage = GetVehicleValuePercentage(self.Vehicle, self.MinHealthForReward)
  end
  GotRewardPercentage(self)
  Out(self)
end
function VehicleDamageHelperBox:GetVehicleValue()
  local GotVehicleValue = self.GotVehicleValue
  local Out = self.Out
  if LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    self.MinHealthForReward = self.MinHealthForReward or 0
    self.MaxVehicleValue = self.MaxVehicleValue or 100
    self.VehicleValue = GetVehicleValue(self.Vehicle, self.MinHealthForReward, self.MaxVehicleValue)
  end
  GotVehicleValue(self)
  Out(self)
end
export = VehicleDamageHelperBox
VehicleDamageHelperBox = nil
