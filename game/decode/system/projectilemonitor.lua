ProjectileThrowingMonitor = {}
function ProjectileThrowingMonitor:Create(cbox)
end
function ProjectileThrowingMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnProjectileLanded = nil
end
function ProjectileThrowingMonitor:ShutDown()
  self:UnregisterCallback()
end
function ProjectileThrowingMonitor:Enable()
  self.pawn = GetLocalPlayerEntityId()
  instance = CScriptCallbackSystem_GetInstance()
  if self.callidOnProjectileLanded == nil then
    self.callidOnProjectileLanded = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnProjectileLanded", "ProjectileLanded", self.missionId)
  end
  self:Enabled()
end
function ProjectileThrowingMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function ProjectileThrowingMonitor:UnregisterCallback()
  self.pawn = GetLocalPlayerEntityId()
  if self.pawn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnProjectileLanded ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnProjectileLanded)
      self.callidOnProjectileLanded = nil
    end
  end
end
function ProjectileThrowingMonitor:Event_OnProjectileLanded(ProjectileItemId, ProjectileEntity)
  self:OnProjectileLanded()
  self.ThrownEntity = ProjectileEntity
  if GetItemId(self.ItemDB) == ProjectileItemId then
    self:OnMonitoredItemThrown()
  end
end
export = ProjectileThrowingMonitor
ProjectileThrowingMonitor = nil
