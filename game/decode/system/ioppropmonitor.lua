IOPPropMonitor = {}
function IOPPropMonitor:Create(cbox)
end
function IOPPropMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function IOPPropMonitor:ShutDown()
  return self:UnregisterCallback()
end
function IOPPropMonitor:Disable()
  self:UnregisterCallback()
  self:Out()
  self:Disabled()
end
function IOPPropMonitor:Enable()
  instance = CScriptCallbackSystem_GetInstance()
  self.onPropSpawned = instance:RegisterMissionNoEntityCallback("Domino_IOP_PropSpawned", self, "Prop_Spawned", self.missionId)
  self:Out()
  self:Enabled()
end
function IOPPropMonitor:Prop_Spawned(entity, dominoId)
  if self.PropName == dominoId then
    self.PropEntity = entity
    return self:PropSpawned()
  end
end
function IOPPropMonitor:UnregisterCallback()
  instance = CScriptCallbackSystem_GetInstance()
  if self.onPropSpawned ~= nil then
    instance:RemoveNoEntityCallback("Domino_IOP_PropSpawned", self.onPropSpawned)
    self.onPropSpawned = nil
  end
end
export = IOPPropMonitor
IOPPropMonitor = nil
