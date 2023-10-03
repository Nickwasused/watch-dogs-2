ConvoyMonitor = {}
function ConvoyMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function ConvoyMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.callidDestinationReached = nil
  self.callidConvoyStarted = nil
  self.callidVIPDied = nil
  self.callidVIPVehicleDestroyed = nil
  self.callidVIPHijacked = nil
  self.callidEscortDied = nil
  self.callidEscortVehicleDestroyed = nil
  self.callidEscortHijacked = nil
  self.callidStuck = nil
  self.callidStopped = nil
  self.callidSoftDisturbance = nil
  self.callidHardDisturbance = nil
  self.isVipDead = 0
  self.isConvoyStuck = 0
end
function ConvoyMonitor:ShutDown()
  self._type.UnregisterCallback(self)
end
function ConvoyMonitor:Enable()
  self._type.UnregisterCallback(self)
  local localPlayer = GetLocalPlayerEntityId()
  if localPlayer ~= nil and self.callidDestinationReached == nil then
    local callbackSystem = CScriptCallbackSystem_GetInstance()
    self.callidDestinationReached = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_DestinationReached", "ConvoyDestinationReached", self.missionId)
    self.callidConvoyStarted = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_ConvoyStartMoving", "ConvoyStartMoving", self.missionId)
    self.callidVIPDied = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_VIPDied", "ConvoyVIPDied", self.missionId)
    self.callidVIPVehicleDestroyed = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_VIPVehicleDestroyed", "ConvoyVIPVehicleDestroyed", self.missionId)
    self.callidVIPHijacked = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_VIPHijacked", "ConvoyVIPHijacked", self.missionId)
    self.callidEscortDied = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_EscortDied", "ConvoyEscortDied", self.missionId)
    self.callidEscortVehicleDestroyed = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_EscortVehicleDestroyed", "ConvoyEscortVehicleDestroyed", self.missionId)
    self.callidEscortHijacked = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_EscortHijacked", "ConvoyEscortHijacked", self.missionId)
    self.callidStuck = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_Stuck", "ConvoyStuck", self.missionId)
    self.callidStopped = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_Stopped", "ConvoyStopped", self.missionId)
    self.callidSoftDisturbance = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_SoftDisturbance", "ConvoySoftDisturbance", self.missionId)
    self.callidHardDisturbance = callbackSystem:RegisterMissionEventCallback(localPlayer, self, "Event_HardDisturbance", "ConvoyHardDisturbance", self.missionId)
  end
  self:Enabled()
end
function ConvoyMonitor:Disable()
  self._type.UnregisterCallback(self)
  self:Disabled()
end
function ConvoyMonitor:UnregisterCallback()
  local localPlayer = GetLocalPlayerEntityId()
  if localPlayer ~= nil and self.callidDestinationReached ~= nil then
    local callbackSystem = CScriptCallbackSystem_GetInstance()
    callbackSystem:RemoveCallback(localPlayer, self.callidDestinationReached)
    self.callidDestinationReached = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidConvoyStarted)
    self.callidConvoyStarted = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidVIPDied)
    self.callidVIPDied = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidVIPVehicleDestroyed)
    self.callidVIPVehicleDestroyed = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidVIPHijacked)
    self.callidVIPHijacked = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidEscortDied)
    self.callidEscortDied = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidEscortVehicleDestroyed)
    self.callidEscortVehicleDestroyed = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidEscortHijacked)
    self.callidEscortHijacked = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidStuck)
    self.callidStuck = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidStopped)
    self.callidStopped = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidSoftDisturbance)
    self.callidSoftDisturbance = nil
    callbackSystem:RemoveCallback(localPlayer, self.callidHardDisturbance)
    self.callidHardDisturbance = nil
  end
end
function ConvoyMonitor:ConvoysMatch(eventConvoyId)
  local monitoredConvoy = self.ConvoyId or -1
  if monitoredConvoy == -1 or monitoredConvoy == eventConvoyId then
    return true
  end
  return false
end
function ConvoyMonitor:UpdateDataOut(victimId, vehicleVictimId, instigatorId)
  if victimId ~= -1 then
    self.Victim = victimId
  end
  if vehicleVictimId ~= -1 then
    self.VictimVehicle = vehicleVictimId
  end
  if instigatorId ~= -1 then
    self.Instigator = GetPawnInstigator(instigatorId)
  end
end
function ConvoyMonitor:Event_DestinationReached(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    return self:DestinationReached()
  end
end
function ConvoyMonitor:Event_ConvoyStartMoving(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    return self:StartMoving()
  end
end
function ConvoyMonitor:Event_VIPDied(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true and self.isVipDead == 0 then
    self.isVipDead = 1
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:VIPDied()
  end
end
function ConvoyMonitor:Event_VIPVehicleDestroyed(eventConvoyId, vehicleVictimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(-1, vehicleVictimId, instigatorId)
    return self:VIPVehicleDestroyed()
  end
end
function ConvoyMonitor:Event_VIPHijacked(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:VIPHijacked()
  end
end
function ConvoyMonitor:Event_EscortDied(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:EscortDied()
  end
end
function ConvoyMonitor:Event_EscortVehicleDestroyed(eventConvoyId, vehicleVictimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(-1, vehicleVictimId, instigatorId)
    return self:EscortVehicleDestroyed()
  end
end
function ConvoyMonitor:Event_EscortHijacked(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:EscortHijacked()
  end
end
function ConvoyMonitor:Event_Stuck(eventConvoyId, vehicleVictimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true and self.isConvoyStuck == 0 then
    self:UpdateDataOut(-1, vehicleVictimId, -1)
    return self:ConvoyStuck()
  end
end
function ConvoyMonitor:Event_Stopped(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:ConvoyStopped()
  end
end
function ConvoyMonitor:Event_SoftDisturbance(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:SoftDisturbance()
  end
end
function ConvoyMonitor:Event_HardDisturbance(eventConvoyId, victimId, instigatorId)
  if self:ConvoysMatch(eventConvoyId) == true then
    self:UpdateDataOut(victimId, -1, instigatorId)
    return self:HardDisturbance()
  end
end
export = ConvoyMonitor
ConvoyMonitor = nil
