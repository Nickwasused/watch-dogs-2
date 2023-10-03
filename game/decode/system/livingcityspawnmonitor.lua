LivingCitySpawnMonitorBox = {}
function LivingCitySpawnMonitorBox:Create(cbox)
end
function LivingCitySpawnMonitorBox:Init(cbox)
  self.callidDone = nil
end
function LivingCitySpawnMonitorBox:ShutDown()
  self:RemoveCallback()
end
function LivingCitySpawnMonitorBox:In()
  local isDone = IsInitialSpawnDone()
  if isDone == 1 then
    self:InitialSpawnDone()
  elseif self.callidDone == nil then
    self.callidDone = CScriptCallbackSystem_GetInstance():RegisterNoEntityCallback("OnTriggerInitialSpawnDone", self, "CBOnTriggerInitialSpawnDone")
  end
  self:Out()
end
function LivingCitySpawnMonitorBox:CBOnTriggerInitialSpawnDone()
  self:RemoveCallback()
  self:InitialSpawnDone()
end
function LivingCitySpawnMonitorBox:RemoveCallback()
  if self.callidDone ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnTriggerInitialSpawnDone", self.callidDone)
    self.callidDone = nil
  end
end
export = LivingCitySpawnMonitorBox
LivingCitySpawnMonitorBox = nil
