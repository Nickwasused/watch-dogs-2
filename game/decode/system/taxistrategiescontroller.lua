TaxiStrategiesController = {}
function TaxiStrategiesController:Create(cbox)
end
function TaxiStrategiesController:Init(cbox)
end
function TaxiStrategiesController:ShutDown()
  RemoveTaxiStrategiesController()
end
function TaxiStrategiesController:Start()
  CreateTaxiStrategiesController(self.Config)
  ResumeTaxiStrategiesController()
  self:Started()
end
function TaxiStrategiesController:Stop()
  RemoveTaxiStrategiesController()
  self:Stopped()
end
function TaxiStrategiesController:Pause()
  PauseTaxiStrategiesController()
  self:Paused()
end
function TaxiStrategiesController:Resume()
  ResumeTaxiStrategiesController()
  self:Resumed()
end
export = TaxiStrategiesController
TaxiStrategiesController = nil
