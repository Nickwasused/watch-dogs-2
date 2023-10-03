CounterHackerController = {}
function CounterHackerController:Create(cbox)
end
function CounterHackerController:Init(cbox)
end
function CounterHackerController:ShutDown()
end
function CounterHackerController:EnableProfilerDisruption()
  CCounterHackerManager_GetInstance():EnableProfilerDisruption()
  self:ProfilerDisruptionEnabled()
  self:Out()
end
function CounterHackerController:DisableProfilerDisruption()
  CCounterHackerManager_GetInstance():DisableProfilerDisruption()
  self:ProfilerDisruptionDisabled()
  self:Out()
end
function CounterHackerController:EnableRcDisruption()
  CCounterHackerManager_GetInstance():EnableRcDisruption()
  self:RcDisruptionEnabled()
  self:Out()
end
function CounterHackerController:DisableRcDisruption()
  CCounterHackerManager_GetInstance():DisableRcDisruption()
  self:RcDisruptionDisabled()
  self:Out()
end
function CounterHackerController:EnableNetHackDisruption()
  CCounterHackerManager_GetInstance():EnableNetHackDisruption()
  self:NetHackDisruptionEnabled()
  self:Out()
end
function CounterHackerController:DisableNetHackDisruption()
  CCounterHackerManager_GetInstance():DisableNetHackDisruption()
  self:NetHackDisruptionDisabled()
  self:Out()
end
function CounterHackerController:EnableHackingDisruption()
  CCounterHackerManager_GetInstance():EnableHackingDisruption()
  self:HackingDisruptionEnabled()
  self:Out()
end
function CounterHackerController:DisableHackingDisruption()
  CCounterHackerManager_GetInstance():DisableHackingDisruption()
  self:HackingDisruptionDisabled()
  self:Out()
end
export = CounterHackerController
CounterHackerController = nil
