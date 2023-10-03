FelonySystemController = {}
function FelonySystemController:Create(cbox)
end
function FelonySystemController:Init(cbox)
end
function FelonySystemController:ShutDown()
end
function FelonySystemController:Enable()
  local Out = self.Out
  local Enabled = self.Enabled
  Out(self)
  Enabled(self)
end
function FelonySystemController:Disable()
  local Out = self.Out
  local Disabled = self.Disabled
  Out(self)
  Disabled(self)
end
function FelonySystemController:StartScan()
  local Out = self.Out
  local ScanStarted = self.ScanStarted
  Out(self)
  ScanStarted(self)
end
function FelonySystemController:StartChase()
  local Out = self.Out
  local ChaseStarted = self.ChaseStarted
  Out(self)
  ChaseStarted(self)
end
function FelonySystemController:SetHeat()
  local Out = self.Out
  local HeatSet = self.HeatSet
  Out(self)
  HeatSet(self)
end
function FelonySystemController:AddScripted()
  local Out = self.Out
  local AddScriptedSucceeded = self.AddScriptedSucceeded
  local AddScriptedFailed = self.AddScriptedFailed
  AddScriptedSucceeded(self)
  Out(self)
end
function FelonySystemController:AdoptScriptedAgents()
  local Out = self.Out
  local ScriptedAgentsAdopted = self.ScriptedAgentsAdopted
  ScriptedAgentsAdopted(self)
  Out(self)
end
function FelonySystemController:ForceArrest()
  local Out = self.Out
  local ArrestForced = self.ArrestForced
  Out(self)
  ArrestForced(self)
end
function FelonySystemController:AddVehicleExclusionZone()
  local Out = self.Out
  local VehicleExclusionZoneAdded = self.VehicleExclusionZoneAdded
  Out(self)
  VehicleExclusionZoneAdded(self)
end
function FelonySystemController:RemoveVehicleExclusionZone()
  local Out = self.Out
  local VehicleExclusionZoneRemoved = self.VehicleExclusionZoneRemoved
  Out(self)
  VehicleExclusionZoneRemoved(self)
end
export = FelonySystemController
FelonySystemController = nil
