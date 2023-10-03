ProgressionTagMonitor = {}
function ProgressionTagMonitor:Create(cbox)
end
function ProgressionTagMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function ProgressionTagMonitor:ShutDown()
  self:UnregisterCallback()
end
function ProgressionTagMonitor:HasProgressionTag()
  if self.ProgressionTag ~= nil then
    if HasProgressionTag(self.ProgressionTag) ~= 0 then
      self:Has()
    else
      self:HasNOT()
    end
  end
end
function ProgressionTagMonitor:Enable()
  self:Enabled()
  if HasProgressionTag(self.ProgressionTag) ~= 0 then
    self:TagIsOwned()
  else
    self.pawn = self.pawn or GetLocalPlayerEntityId()
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnProgressionTagOwnership == nil then
      self.callidOnProgressionTagOwnership = instance:RegisterMissionEventCallback(self.pawn, self, "Event_OnProgressionTagOwnership", "OnProgressionTagOwnership", self.missionId)
    end
  end
end
function ProgressionTagMonitor:Disable()
  self:UnregisterCallback()
  self:Disabled()
end
function ProgressionTagMonitor:Event_OnProgressionTagOwnership(ownedTag)
  if GetProgressionTagId(self.ProgressionTag) == ownedTag then
    self:TagIsOwned()
    self:UnregisterCallback()
  end
end
function ProgressionTagMonitor:UnregisterCallback()
  if self.pawn ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    if self.callidOnProgressionTagOwnership ~= nil then
      instance:RemoveCallback(self.pawn, self.callidOnProgressionTagOwnership)
      self.callidOnProgressionTagOwnership = nil
    end
  end
end
export = ProgressionTagMonitor
ProgressionTagMonitor = nil
