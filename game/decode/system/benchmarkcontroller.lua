BenchmarkController = {}
function BenchmarkController:Create(cbox)
end
function BenchmarkController:Init(cbox)
end
function BenchmarkController:ShutDown()
end
function BenchmarkController:Start()
  local Out = self.Out
  local DisplayResults
  if self.DisplayResults ~= nil then
    DisplayResults = self.DisplayResults or 0
  else
    DisplayResults = 0
  end
  ConfigureBenchmark(self, "Event_ProfilingStarted", "start", DisplayResults)
  Out(self)
end
function BenchmarkController:Stop()
  local Out = self.Out
  local DisplayResults
  if self.DisplayResults ~= nil then
    DisplayResults = self.DisplayResults or 0
  else
    DisplayResults = 0
  end
  ConfigureBenchmark(self, "Event_ProfilingStopped", "stop", DisplayResults)
  Out(self)
end
function BenchmarkController:SetVars()
  local Out = self.Out
  local VarsSet = self.VarsSet
  local DisplayResults
  if self.DisplayResults ~= nil then
    DisplayResults = self.DisplayResults or 0
  else
    DisplayResults = 0
  end
  ConfigureBenchmark(self, "Event_DoesNotExist", "setvars", DisplayResults)
  Out(self)
  VarsSet(self)
end
function BenchmarkController:Event_ProfilingStarted()
  self:Started()
end
function BenchmarkController:Event_ProfilingStopped()
  self:Stopped()
end
export = BenchmarkController
BenchmarkController = nil
