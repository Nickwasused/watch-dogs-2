TargetTagMonitor = {}
function TargetTagMonitor:Create(cbox)
end
function TargetTagMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidOnEntityTagAdded = nil
  self.callidOnEntityTagRemoved = nil
end
function TargetTagMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function TargetTagMonitor:Enable()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  self.CheckNow = self.CheckNow or 0
  if self.TargetEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnEntityTagAdded == nil then
      self.callidOnEntityTagAdded = instance:RegisterMissionEventCallback(self.TargetEntity, self, "Event_OnEntityTagAdded", "OnEntityTagAdded", self.missionId)
    end
    if self.callidOnEntityTagRemoved == nil then
      self.callidOnEntityTagRemoved = instance:RegisterMissionEventCallback(self.TargetEntity, self, "Event_OnEntityTagRemoved", "OnEntityTagRemoved", self.missionId)
    end
  end
  if self.CheckNow == 1 then
    if IsTargetEntityTagged(self.PlayerEntity, self.TargetEntity) == 1 then
      self:TagAdded()
    else
      self:TagRemoved()
    end
  end
  self:Enabled()
  self:Out()
end
function TargetTagMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
  self:Out()
end
function TargetTagMonitor:UnregisterCallback()
  if self.TargetEntity ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnEntityTagAdded ~= nil then
      instance:RemoveCallback(self.TargetEntity, self.callidOnEntityTagAdded)
      self.callidOnEntityTagAdded = nil
    end
    if self.callidOnEntityTagRemoved ~= nil then
      instance:RemoveCallback(self.TargetEntity, self.callidOnEntityTagRemoved)
      self.callidOnEntityTagRemoved = nil
    end
  end
end
function TargetTagMonitor:Event_OnEntityTagAdded(entity)
  return self:TagAdded()
end
function TargetTagMonitor:Event_OnEntityTagRemoved(entity)
  return self:TagRemoved()
end
export = TargetTagMonitor
TargetTagMonitor = nil
