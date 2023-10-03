DeliveryGameplayController = {}
function DeliveryGameplayController:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function DeliveryGameplayController:Init(cbox)
  self.CombinedVehicleList = {}
  self.CombinedDestinationList = {}
  self.DestinationEntityList = {}
  self.VehicleEntityList = {}
  if self.UseStoryIcon == nil then
    self.UseStoryIcon = 0
  end
  if self.NeedsToGetOutOfVehicleToComplete == nil then
    self.NeedsToGetOutOfVehicleToComplete = 1
  end
  if self.MarkerEntity == nil then
    self.MarkerEntity = "-1"
  end
  self.instanceId = -1
  self.missionId = cbox:GetParentMissionId()
end
function DeliveryGameplayController:ShutDown()
  self:DestroyGameplay()
end
function DeliveryGameplayController:Start()
  self:DestroyGameplay()
  local destinationmarkerLocId = "165448"
  if self.DestinationMarkerLocId ~= nil then
    destinationmarkerLocId = self.DestinationMarkerLocId.id
  end
  local vehiclemarkerLocId = "185984"
  if self.VehicleMarkerLocId ~= nil then
    vehiclemarkerLocId = self.VehicleMarkerLocId.id
  end
  if self.VehicleFlag == nil then
    self.VehicleFlag = 2
  end
  if self.NbToDeliver == nil then
    self.NbToDeliver = 1
  end
  self:CombineLists(self.CombinedVehicleList, self.VehicleEntity, self.VehicleEntityList)
  self:CombineLists(self.CombinedDestinationList, self.DestinationEntity, self.DestinationEntityList)
  if self.CombinedDestinationList ~= nil then
    self.instanceId = CreateDeliveryGameplay_v4(self.missionId, self.UseStoryIcon, self.MarkerEntity, destinationmarkerLocId, vehiclemarkerLocId, self.VehicleFlag, self:GetAcceptedReliability(self.AcceptedReliability), self.NbToDeliver, self.CombinedDestinationList, self.CombinedVehicleList, self.NeedsToGetOutOfVehicleToComplete, self, "OnDeliveryCompleted", "OnAllDeliveryCompleted", "OnSpecificVehicleDamagedFailure")
  end
  self:Started()
end
function DeliveryGameplayController:Stop()
  self:DestroyGameplay()
  self:Stopped()
end
function DeliveryGameplayController:OnDeliveryCompleted()
  return self:ADeliveryHasCompleted()
end
function DeliveryGameplayController:OnAllDeliveryCompleted()
  self:DestroyGameplay()
  return self:AllDeliveryCompleted()
end
function DeliveryGameplayController:OnSpecificVehicleDamagedFailure()
  self:DestroyGameplay()
  return self:SpecificVehicleDamagedFailure()
end
function DeliveryGameplayController:CombineLists(combinedlist, entity, entitylist)
  if entity ~= nil then
    table.insert(combinedlist, entity)
  end
  if entitylist ~= nil then
    for i, v in ipairs(entitylist) do
      if entitylist[i] ~= nil then
        table.insert(combinedlist, entitylist[i])
      end
    end
  end
end
function DeliveryGameplayController:GetAcceptedReliability(reliability)
  if reliability == "Mint" then
    return 0
  elseif reliability == "MinorDamage" then
    return 1
  elseif reliability == "MajorDamage" then
    return 2
  elseif reliability == "Broken" then
    return 3
  end
  return 1
end
function DeliveryGameplayController:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
export = DeliveryGameplayController
DeliveryGameplayController = nil
