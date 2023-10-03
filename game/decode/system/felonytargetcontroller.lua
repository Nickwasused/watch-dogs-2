FelonyTargetController = {}
function FelonyTargetController:Create(cbox)
end
function FelonyTargetController:Init(cbox)
end
function FelonyTargetController:ShutDown()
end
function FelonyTargetController:SetMinHeat()
  local target = self.Target or GetLocalPlayerEntityId()
  local heatValue = self.HeatValue or 0
  FelonySetMinHeat(target, heatValue)
  self:Out()
  self:MinHeatSet()
end
function FelonyTargetController:StartCall()
  self:Out()
  self:CallStarted()
end
function FelonyTargetController:StartScan()
  local target = self.Target or GetLocalPlayerEntityId()
  local felonyType = self:GetFelonyTypeID(self.FelonyType)
  local felonyLevel = self.FelonyLevel or -1
  local skipBark = self.ScanSkipDispatchBark or false
  local customIndex = self.CustomScanIndex
  local customRate = self.CustomScanDetectionRate or -1
  local customTriggerChase = self.CustomScanTriggerChase or true
  if customIndex ~= nil then
    FelonyStartCustomScan(target, felonyType, customIndex, skipBark, customRate, customTriggerChase)
  else
    FelonyStartScan(target, felonyType, felonyLevel, skipBark)
  end
  self:Out()
  self:ScanStarted()
end
function FelonyTargetController:StartChase()
  self:StartFelony("chase")
  self:Out()
  self:ChaseStarted()
end
function FelonyTargetController:StartSearch()
  self:StartFelony("search")
  self:Out()
  self:SearchStarted()
end
function FelonyTargetController:AddScripted()
  local target = self.Target or GetLocalPlayerEntityId()
  local felonyType = self:GetFelonyTypeID(self.FelonyType)
  local removeRestrictions = self.RemoveAgentRestrictions or 0
  if self.AgentList ~= nil then
    for index, var in ipairs(self.AgentList) do
      FelonyAddScriptedAgent(target, felonyType, var, removeRestrictions)
    end
  end
  self:Out()
  self:ScriptedAgentsAdded()
end
function FelonyTargetController:AdoptScriptedAgents()
  local target = self.Target or GetLocalPlayerEntityId()
  local felonyType = self:GetFelonyTypeID(self.FelonyType)
  local removeRestrictions = self.RemoveAgentRestrictions or 0
  FelonyTakeOverScriptedAgentControl(target, felonyType, removeRestrictions)
  self:Out()
  self:ScriptedAgentsAdopted()
end
function FelonyTargetController:StartFelony(behaviour)
  local target = self.Target or GetLocalPlayerEntityId()
  local felonyType = self:GetFelonyTypeID(self.FelonyType)
  local felonyLevel = self.FelonyLevel or 0
  local customChaseLevel = self.CustomChaseLevel or nil
  local startAction
  if behaviour == "search" then
    startAction = 3
  else
    startAction = 2
  end
  if customChaseLevel ~= nil then
    FelonyStartChaseObj(target, felonyType, customChaseLevel, startAction)
  else
    FelonyStartChase(target, felonyType, felonyLevel, startAction)
  end
end
function FelonyTargetController:GetFelonyTypeID(felonyTypeName)
  if felonyTypeName == "Police" then
    return 0
  elseif felonyTypeName == "AFI" then
    return 1
  elseif felonyTypeName == "P_8" then
    return 3
  elseif felonyTypeName == "T_13" then
    return 6
  elseif felonyTypeName == "Boys" then
    return 9
  elseif felonyTypeName == "Ridaz" then
    return 10
  elseif felonyTypeName == "UZulu" then
    return 11
  elseif felonyTypeName == "Bratva" then
    return 12
  elseif felonyTypeName == "Wolves" then
    return 15
  end
  return 0
end
export = FelonyTargetController
FelonyTargetController = nil
