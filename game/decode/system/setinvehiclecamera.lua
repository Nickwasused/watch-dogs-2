SetInVehicleCameraBox = {}
function SetInVehicleCameraBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetInVehicleCameraBox:Init(cbox)
end
function SetInVehicleCameraBox:ShutDown()
end
function SetInVehicleCameraBox:GetCameraTypeID()
  if self.VehicleCamera == "Normal" then
    return 0
  elseif self.VehicleCamera == "Classic" then
    return 1
  elseif self.VehicleCamera == "Bumper" then
    return 2
  elseif self.VehicleCamera == "Interior" then
    return 3
  elseif self.VehicleCamera == "Hollywood" then
    return 4
  end
  return 0
end
function SetInVehicleCameraBox:Set()
  if LuaLibCore:VerifyDataInputEntity(self.PlayerId, "PlayerId") then
    SetInVehicleCamera(self.PlayerId, self:GetCameraTypeID())
  end
  self:Out()
end
export = SetInVehicleCameraBox
SetInVehicleCameraBox = nil
