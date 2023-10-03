GateMonitor = {}
function GateMonitor:Create(cbox)
end
function GateMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnBlock = nil
  self.callidOnUnblock = nil
end
function GateMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function GateMonitor:Enable()
  scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
  self.callidOnBlock = scriptCallbackSystem:RegisterMissionEventCallback(self.GateEntity, self, "Event_OnBlock", "OnBlock", self.missionId)
  self.callidOnUnblock = scriptCallbackSystem:RegisterMissionEventCallback(self.GateEntity, self, "Event_OnUnblock", "OnUnblock", self.missionId)
  if self.CheckNow == 1 then
    if IsGateBlocked(self.GateEntity) == 1 then
      self:OnBlock()
    else
      self:OnUnblock()
    end
  end
  self:Enabled()
end
function GateMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function GateMonitor:UnregisterCallback()
  if self.GateEntity ~= nil and self.callidOnBlock ~= nil then
    scriptCallbackSystem = CScriptCallbackSystem_GetInstance()
    scriptCallbackSystem:RemoveCallback(self.GateEntity, self.callidOnBlock)
    self.callidOnBlock = nil
    scriptCallbackSystem:RemoveCallback(self.GateEntity, self.callidOnUnblock)
    self.callidOnUnblock = nil
  end
end
function GateMonitor:Event_OnBlock(entity)
  return self:OnBlock()
end
function GateMonitor:Event_OnUnblock(entity)
  return self:OnUnblock()
end
export = GateMonitor
GateMonitor = nil
