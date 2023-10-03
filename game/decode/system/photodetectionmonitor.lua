PhotoDetectionMonitor = {}
function PhotoDetectionMonitor:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PhotoDetectionMonitor:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.playerId = GetLocalPlayerEntityId()
  self.callidOnPhotoTaken = nil
  self.callidOnTargetDetected = nil
  self.PhotoType = self.PhotoType or "Any"
  self.targetVisible = false
end
function PhotoDetectionMonitor:ShutDown()
  if self.ScoutXTargetName ~= nil then
    RemovePhotoDetectionMissionTargetByLocId(self.ScoutXTargetName.id)
  elseif self.photoId ~= nil then
    RemovePhotoDetectionMissionTargetById(self.photoId)
  end
  if self.callidOnPhotoTaken ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.playerId, self.callidOnPhotoTaken)
    self.callidOnPhotoTaken = nil
  end
  if self.callidOnTargetDetected ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.playerId, self.callidOnTargetDetected)
    self.callidOnTargetDetected = nil
  end
end
function PhotoDetectionMonitor:Enable()
  if self.callidOnPhotoTaken == nil then
    self.callidOnPhotoTaken = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.playerId, self, "Event_OnPhotoTaken", "OnPhotoTakenOfEntity", self.missionId)
  end
  if self.callidOnTargetDetected == nil then
    self.callidOnTargetDetected = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.playerId, self, "Event_OnTargetDetected", "OnTargetDetectedDomino", self.missionId)
  end
  local textLocId = "-1"
  if self.TargetInViewText then
    textLocId = self.TargetInViewText.id
  end
  self.RetinaScan = self.RetinaScan or 0
  if self.TargetEntityList ~= nil and LuaLibCore:VerifyDataInputEntityList(self.TargetEntityList, "TargetEntityList") then
    self.photoId = AddPhotoDetectionTargetEntityGroup(self.TargetEntityList, textLocId, 30)
  elseif self.TargetEntity ~= nil and LuaLibCore:VerifyDataInputEntity(self.TargetEntity, "TargetEntity") then
    self.photoId = AddPhotoDetectionTargetNPCWithRetina(self.TargetEntity, textLocId, 30, self.RetinaScan)
  elseif self.ScoutXTargetName ~= nil then
    AddPhotoDetectionTargetByScoutXName(self.ScoutXTargetName.id)
  elseif self.LandmarkTargetName ~= nil then
    self.photoId = AddPhotoDetectionTargetLandmark(self.LandmarkTargetName.id)
  end
  self:Enabled()
end
function PhotoDetectionMonitor:Disable()
  if self.ScoutXTargetName ~= nil then
    RemovePhotoDetectionMissionTargetByLocId(self.ScoutXTargetName.id)
  elseif self.photoId ~= nil then
    RemovePhotoDetectionMissionTargetById(self.photoId)
  end
  if self.callidOnPhotoTaken ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.playerId, self.callidOnPhotoTaken)
    self.callidOnPhotoTaken = nil
  end
  if self.callidOnTargetDetected ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.playerId, self.callidOnTargetDetected)
    self.callidOnTargetDetected = nil
  end
  self:Disabled()
end
function PhotoDetectionMonitor:Event_OnPhotoTaken(id, targetLocId, photoType, visibilityPercentage)
  self.LandmarkRating = visibilityPercentage
  self.PhotoTypeTaken = self:ConvertToPhotoType(photoType)
  local isCorrectType = self.PhotoType == "Any" or self.PhotoType == self.PhotoTypeTaken
  local isCorrectTarget = self:IsCorrectTarget(id, targetLocId)
  if isCorrectType and isCorrectTarget then
    self:ValidPhotoTaken()
  end
end
function PhotoDetectionMonitor:Event_OnTargetDetected(id, targetLocId)
  local isCorrectTarget = self:IsCorrectTarget(id, targetLocId)
  if self.targetVisible then
    self.targetVisible = false
    self:TargetNotInView()
  elseif isCorrectTarget then
    self.targetVisible = true
    self:TargetInView()
  else
    self.targetVisible = false
  end
end
function PhotoDetectionMonitor:ConvertToPhotoType(pType)
  if pType == 0 then
    return "Any"
  elseif pType == 1 then
    return "Normal"
  elseif pType == 2 then
    return "Selfie"
  elseif pType == 3 then
    return "RC"
  end
  return 0
end
function PhotoDetectionMonitor:IsCorrectTarget(id, targetLocId)
  if self.ScoutXTargetName ~= nil then
    return self.ScoutXTargetName.id == targetLocId
  else
    return self.photoId == id
  end
end
export = PhotoDetectionMonitor
PhotoDetectionMonitor = nil
