VehicleWheelsHelper = {}
function VehicleWheelsHelper:Create(cbox)
end
function VehicleWheelsHelper:Init(cbox)
end
function VehicleWheelsHelper:ShutDown()
end
function VehicleWheelsHelper:In()
  local Out = self.Out
  self.NbWheelInContact = GetNbrWheelWithContact(self.Vehicle)
  Out(self)
end
export = VehicleWheelsHelper
VehicleWheelsHelper = nil
