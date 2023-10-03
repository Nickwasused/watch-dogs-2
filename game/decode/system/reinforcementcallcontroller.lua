ReinforcementCallController = {}
function ReinforcementCallController:Create(cbox)
end
function ReinforcementCallController:Init(cbox)
end
function ReinforcementCallController:ShutDown()
end
function ReinforcementCallController:EnableCallers()
  if self.Mission ~= nil then
    EnableReinforcementCalls(self.Mission, 1)
  end
  self:Out()
  self:EnabledCallers()
end
function ReinforcementCallController:DisableCallers()
  if self.Mission ~= nil then
    EnableReinforcementCalls(self.Mission, 0)
  end
  self:Out()
  self:DisabledCallers()
end
function ReinforcementCallController:Register()
  if self.EntityList ~= nil and self.Mission ~= nil then
    for index, var in ipairs(self.EntityList) do
      RegisterReinforcementCaller(self.Mission, var)
    end
  end
  if self.Entity ~= nil and self.Mission ~= nil then
    RegisterReinforcementCaller(self.Mission, self.Entity)
  end
  self:Out()
  self:Registered()
end
function ReinforcementCallController:Unregister()
  local Out = self.Out
  local Unregistered = self.Unregistered
  if self.EntityList ~= nil then
    for index, var in ipairs(self.EntityList) do
      UnregisterReinforcementCaller(var)
    end
  end
  if self.Entity ~= nil then
    UnregisterReinforcementCaller(self.Entity)
  end
  self:Out()
  self:Unregistered()
end
export = ReinforcementCallController
ReinforcementCallController = nil
