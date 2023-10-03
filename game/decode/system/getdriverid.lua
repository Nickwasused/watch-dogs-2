GetDriverIDBox = {}
function GetDriverIDBox:Create(cbox)
end
function GetDriverIDBox:Init(cbox)
end
function GetDriverIDBox:ShutDown()
end
function GetDriverIDBox:In()
  local Out = self.Out
  self.DriverId = GetDriverID(self.VehicleId)
  Out(self)
end
export = GetDriverIDBox
GetDriverIDBox = nil
