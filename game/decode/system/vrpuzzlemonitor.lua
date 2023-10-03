VRPuzzleMonitor = {}
function VRPuzzleMonitor:Create(cbox)
end
function VRPuzzleMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidResLoaded = nil
end
function VRPuzzleMonitor:ShutDown()
  if self.callidResLoaded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("VRPuzzleReset", self.callidResLoaded)
    self.callidResLoaded = nil
  end
end
function VRPuzzleMonitor:OnVRPuzzleReset(entityId, entityName)
  if self.callidResLoaded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("VRPuzzleReset", self.callidResLoaded)
    self.callidResLoaded = nil
  end
  self:VRPuzzleReset()
end
function VRPuzzleMonitor:Enable()
  if self.callidResLoaded == nil then
    self.callidResLoaded = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback("VRPuzzleReset", self, "OnVRPuzzleReset", self.missionId)
  end
  self:Enabled()
  self:Out()
end
function VRPuzzleMonitor:Disable()
  if self.callidResLoaded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("VRPuzzleReset", self.callidResLoaded)
    self.callidResLoaded = nil
  end
  self:Disabled()
  self:Out()
end
export = VRPuzzleMonitor
VRPuzzleMonitor = nil
