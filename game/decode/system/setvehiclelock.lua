SetVehicleLock = {}
function SetVehicleLock:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function SetVehicleLock:Init(cbox)
end
function SetVehicleLock:ShutDown()
end
function SetVehicleLock:In()
  local Out = self.Out
  local lock = self.Lock or 0
  if LuaLibCore:VerifyDataInputEntity(self.Vehicle, "Vehicle") then
    SetVehicleLockState(self.Vehicle, lock)
  end
  Out(self)
end
export = SetVehicleLock
SetVehicleLock = nil
