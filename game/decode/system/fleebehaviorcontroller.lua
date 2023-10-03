FleeBehaviorController = {}
function FleeBehaviorController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function FleeBehaviorController:Init(cbox)
end
function FleeBehaviorController:ShutDown()
end
function FleeBehaviorController:Start()
  local outValue = self.Started
  local threat = self.Threat
  self:StartFlee(threat)
  outValue(self)
end
function FleeBehaviorController:Update()
  local outValue = self.Updated
  local threat = GetInvalidEntityId()
  self:StartFlee(threat)
  outValue(self)
end
function FleeBehaviorController:StartFlee(threat)
  local config = self.Config or ""
  local destination = self.Destination or GetInvalidEntityId()
  local vehicle = self.Vehicle or GetInvalidEntityId()
  if LuaLibCore:VerifyDataInputEntityList(self.TargetList, "TargetList") then
    for i, v in ipairs(self.TargetList) do
      StartFleeBehavior(v, threat, config, destination, vehicle)
    end
  elseif self.TargetList == nil and LuaLibCore:VerifyDataInputEntity(self.Target, "Target") then
    StartFleeBehavior(self.Target, threat, config, destination, vehicle)
  end
end
function FleeBehaviorController:Stop()
  local outValue = self.Stopped
  if LuaLibCore:VerifyDataInputEntityList(self.TargetList, "TargetList") then
    for i, v in ipairs(self.TargetList) do
      StopFleeBehavior(v)
    end
  elseif self.TargetList == nil and LuaLibCore:VerifyDataInputEntity(self.Target, "Target") then
    StopFleeBehavior(self.Target)
  end
  outValue(self)
end
export = FleeBehaviorController
FleeBehaviorController = nil
