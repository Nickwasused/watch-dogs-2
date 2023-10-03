export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/FelonyTargetMonitor.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/TextToScreen_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.IsEvaded = 0
  self.PlayerEntity = nil
  self[7] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.SetTrue = self.f_7_SetTrue
  l0.SetFalse = self.f_7_SetFalse
  l0.Toggled = self.f_7_Toggled
  l0.SetFromBool = self.f_7_SetFromBool
  self[3] = cbox:CreateBox("domino/System/FelonyTargetMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = DummyFunction
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = self.f_3_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[5] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_5_Out
  l0.ResetOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self[5]
  l0:In(0)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[7]
  self.IsEvaded = l0.Target
end
function export:f_7_SetFalse()
  local l0
  self = self._graph
  l0 = self[7]
  self.IsEvaded = l0.Target
end
function export:f_7_SetFromBool()
  local l0
  self = self._graph
  l0 = self[7]
  self.IsEvaded = l0.Target
end
function export:f_7_SetTrue()
  local l0
  self = self._graph
  l0 = self[7]
  self.IsEvaded = l0.Target
  l0 = Boxes[PathID("domino/System/TextToScreen_v2.lua")]
  l0.Text = "Felony escaped"
  l0.Duration = 5
  l0.Color = nil
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_7_Toggled()
  local l0
  self = self._graph
  l0 = self[7]
  self.IsEvaded = l0.Target
end
function export:f_3_Evaded()
  local l0
  self = self._graph
  l0 = self[7]
  l0:True()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = 4
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_2_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:StartChase()
end
function export:f_1_Out()
  self = self._graph
  self:Out()
end
function export:f_2_ChaseStarted()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Start()
end
function export:Out()
end
_compilerVersion = 4
