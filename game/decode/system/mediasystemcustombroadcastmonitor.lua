MediaSystemCustomBroadcastMonitor = {}
function MediaSystemCustomBroadcastMonitor:Create(cbox)
end
function MediaSystemCustomBroadcastMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidResLoaded = nil
end
function MediaSystemCustomBroadcastMonitor:ShutDown()
  if self.callidResLoaded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnCustomBroadcastResourceLoaded", self.callidResLoaded)
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnBinkLoopCompleted", self.callidBinkLoopCompleted)
    self.callidResLoaded = nil
  end
end
function MediaSystemCustomBroadcastMonitor:OnCustomBroadcastResourceLoaded(entityId, entityName)
  if self.callidResLoaded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnCustomBroadcastResourceLoaded", self.callidResLoaded)
    self.callidResLoaded = nil
  end
  self:CustomBroadcastResourceLoaded()
end
function MediaSystemCustomBroadcastMonitor:OnBinkLoopCompleted()
  if HasMediaSystemChannelLoopedOnce(0) == 1 then
    self:ChannelGenericLoopedOnce()
  end
  if HasMediaSystemChannelLoopedOnce(1) == 1 then
    self:ChannelShopLoopedOnce()
  end
  if HasMediaSystemChannelLoopedOnce(2) == 1 then
    self:ChannelBarLoopedOnce()
  end
end
function MediaSystemCustomBroadcastMonitor:Enable()
  if self.callidResLoaded == nil then
    self.callidResLoaded = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback("OnCustomBroadcastResourceLoaded", self, "OnCustomBroadcastResourceLoaded", self.missionId)
  end
  if self.callidBinkLoopCompleted == nil then
    self.callidBinkLoopCompleted = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback("OnBinkLoopCompleted", self, "OnBinkLoopCompleted", self.missionId)
  end
  if IsBroadcastBufferLoaded() == 1 then
    self:OnCustomBroadcastResourceLoaded(nil, nil)
  end
  self:Enabled()
  self:Out()
end
function MediaSystemCustomBroadcastMonitor:Disable()
  if self.callidResLoaded ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnCustomBroadcastResourceLoaded", self.callidResLoaded)
    self.callidResLoaded = nil
  end
  if self.callidBinkLoopCompleted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnBinkLoopCompleted", self.callidBinkLoopCompleted)
    self.callidBinkLoopCompleted = nil
  end
  self:Disabled()
  self:Out()
end
export = MediaSystemCustomBroadcastMonitor
MediaSystemCustomBroadcastMonitor = nil
