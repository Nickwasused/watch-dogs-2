EnableVehicleRadioSystem = {}
function EnableVehicleRadioSystem:Create(cbox)
end
function EnableVehicleRadioSystem:Init(cbox)
end
function EnableVehicleRadioSystem:ShutDown()
end
function EnableVehicleRadioSystem:In()
  local Out = self.Out
  EnableVehicleRadioSystemDomino(self.Enable)
  Out(self)
end
export = EnableVehicleRadioSystem
EnableVehicleRadioSystem = nil
