PlaySequenceAndForceStop = {}
function PlaySequenceAndForceStop:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibEvents.lua")
end
function PlaySequenceAndForceStop:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.SPOut = {}
  self.EntityIn = {}
  self.EntityOut = {}
  self.Table = {}
  self.bRegistered = false
end
function PlaySequenceAndForceStop:ShutDown()
  self:Unregister()
end
function PlaySequenceAndForceStop:Register()
  if self.bRegistered == false then
    self.bRegistered = true
    self.pawn = self.pawn or GetLocalPlayerEntityId()
    local name = GetSequenceManager():GetSequenceDominoName(self.SceneEntity, self.SequenceFile)
    if self.missionId ~= nil then
      LuaLibEvents:RegisterMissionEvent(self, "Event_Started", self.pawn, name .. "Started", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_Stopped", self.pawn, name .. "Stopped", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_Paused", self.pawn, name .. "Paused", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_Resumed", self.pawn, name .. "Resumed", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_Skipped", self.pawn, name .. "Skipped", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_Finished", self.pawn, name .. "Finished", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_FinishedLoop", self.pawn, name .. "FinishedLoop", self.missionId)
      LuaLibEvents:RegisterMissionEvent(self, "Event_SyncPointReached", self.pawn, name .. "SyncPointReached", self.missionId)
    else
      LuaLibEvents:RegisterEvent(self, "Event_Started", self.pawn, name .. "Started")
      LuaLibEvents:RegisterEvent(self, "Event_Stopped", self.pawn, name .. "Stopped")
      LuaLibEvents:RegisterEvent(self, "Event_Paused", self.pawn, name .. "Paused")
      LuaLibEvents:RegisterEvent(self, "Event_Resumed", self.pawn, name .. "Resumed")
      LuaLibEvents:RegisterEvent(self, "Event_Skipped", self.pawn, name .. "Skipped")
      LuaLibEvents:RegisterEvent(self, "Event_Finished", self.pawn, name .. "Finished")
      LuaLibEvents:RegisterEvent(self, "Event_FinishedLoop", self.pawn, name .. "FinishedLoop")
      LuaLibEvents:RegisterEvent(self, "Event_SyncPointReached", self.pawn, name .. "SyncPointReached")
    end
  end
end
function PlaySequenceAndForceStop:Unregister()
  if self.bRegistered == true then
    self.bRegistered = false
    if self.missionId ~= nil then
      LuaLibEvents:UnregisterMissionEvent(self, "Event_Started", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_Stopped", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_Paused", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_Resumed", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_Skipped", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_Finished", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_FinishedLoop", self.pawn)
      LuaLibEvents:UnregisterMissionEvent(self, "Event_SyncPointReached", self.pawn)
    else
      LuaLibEvents:UnregisterEvent(self, "Event_Started", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_Stopped", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_Paused", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_Resumed", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_Skipped", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_Finished", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_FinishedLoop", self.pawn)
      LuaLibEvents:UnregisterEvent(self, "Event_SyncPointReached", self.pawn)
    end
  end
end
function PlaySequenceAndForceStop:Start()
  local errMsg = " Is nil! Started & Paused & Finished will not output for this box! "
  if LuaLibCore:VerifyDataInputEntity(self.SceneEntity, "SceneEntity") and LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile", errMsg) then
    self:Register()
    GetSequenceManager():ClearDominoEntityPool(self.SceneEntity, self.SequenceFile)
    if self._DynamicAnchors ~= nil then
      for i, anchor in pairs(self._DynamicAnchors) do
        if i == "EntityIn" and anchor ~= nil then
          for j, entityAnchor in pairs(anchor) do
            if self.EntityIn[entityAnchor] ~= nil then
              GetSequenceManager():AddDominoEntity(self.SceneEntity, self.SequenceFile, self.EntityIn[entityAnchor], entityAnchor)
            end
          end
        end
      end
    end
    if self.MetaSequenceID ~= nil then
      GetSequenceManager():DominoStartSequenceFromBeginningWithMetaId(self.MetaSequenceID, self.SceneEntity, self.SequenceFile)
    else
      GetSequenceManager():DominoStartSequenceFromBeginning(self.SceneEntity, self.SequenceFile)
    end
    if self.bRegistered == false then
      self:Register()
    end
  end
end
function PlaySequenceAndForceStop:Stop()
  local errMsg = " Is nil! Finished will not output for this box! "
  if LuaLibCore:VerifyDataInputEntity(self.SceneEntity, "SceneEntity") and LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile", errMsg) then
    self:Register()
    GetSequenceManager():DominoForceStopSequence(self.SceneEntity, self.SequenceFile)
  end
end
function PlaySequenceAndForceStop:Pause()
  local errMsg = " Is nil! Paused & Finished will not output for this box! "
  if LuaLibCore:VerifyDataInputEntity(self.SceneEntity, "SceneEntity") and LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile", errMsg) then
    self:Register()
    GetSequenceManager():DominoPauseSequence(self.SceneEntity, self.SequenceFile)
  end
end
function PlaySequenceAndForceStop:Resume()
  local errMsg = " Is nil! Paused & Finished will not output for this box! "
  if LuaLibCore:VerifyDataInputEntity(self.SceneEntity, "SceneEntity") and LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile", errMsg) then
    self:Register()
    GetSequenceManager():DominoResumeSequence(self.SceneEntity, self.SequenceFile)
  end
end
function PlaySequenceAndForceStop:Skip()
  local errMsg = " Is nil! Finished will not output for this box! "
  if LuaLibCore:VerifyDataInputEntity(self.SceneEntity, "SceneEntity") and LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile", errMsg) then
    self:Register()
    GetSequenceManager():DominoSkipSequence(self.SceneEntity, self.SequenceFile)
  end
end
function PlaySequenceAndForceStop:SendSyncPointOutput()
  local name = GetSequenceManager():DominoGetSequenceSyncPointName(self.SceneEntity, self.SequenceFile)
  local callme = self.SPOut[name]
  if callme == nil then
    LuaLibCore:DataError("" .. name .. "", "PlaySequence: ERROR!!  Output anchor with name: " .. name .. " is not found ! SyncPoint will do nothing. ")
    return nil
  end
  return callme(self)
end
function PlaySequenceAndForceStop:SPIn(index)
  local errMsg = " Is nil! Finished will not output for this box! "
  if LuaLibCore:VerifyDataInputEntity(self.SceneEntity, "SceneEntity") and LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile", errMsg) then
    self:Register()
    GetSequenceManager():ClearDominoEntityPool(self.SceneEntity, self.SequenceFile)
    if self._DynamicAnchors ~= nil then
      for i, anchor in pairs(self._DynamicAnchors) do
        if i == "EntityIn" and anchor ~= nil then
          for j, entityAnchor in pairs(anchor) do
            if self.EntityIn[entityAnchor] ~= nil then
              GetSequenceManager():AddDominoEntity(self.SceneEntity, self.SequenceFile, self.EntityIn[entityAnchor], entityAnchor)
            end
          end
        end
      end
    end
    if self.MetaSequenceID ~= nil then
      GetSequenceManager():DominoStartAtSyncPointWithMetaId(self.MetaSequenceID, self.SceneEntity, self.SequenceFile, index)
    else
      GetSequenceManager():DominoStartAtSyncPoint(self.SceneEntity, self.SequenceFile, index)
    end
  end
end
function PlaySequenceAndForceStop:Event_Started(entity, event)
  if LuaLibCore:AssertNotNil(self.SequenceFile, "SequenceFile") then
    if self._DynamicAnchors ~= nil then
      for i, anchor in pairs(self._DynamicAnchors) do
        if i == "EntityOut" and anchor ~= nil then
          for j, entityAnchor in pairs(anchor) do
            self.EntityOut[entityAnchor] = GetSequenceManager():DominoGetEntityAtAnchor(self.SceneEntity, self.SequenceFile, entityAnchor)
          end
        end
      end
    end
    if self.LoopAnim ~= nil then
      GetSequenceManager():DominoLoopSequence(self.SceneEntity, self.SequenceFile, self.LoopAnim)
    end
    self:Started()
  end
end
function PlaySequenceAndForceStop:Event_Stopped(entity, event)
  self:Unregister()
  self:Stopped()
end
function PlaySequenceAndForceStop:Event_Paused(entity, event)
  self:Paused()
end
function PlaySequenceAndForceStop:Event_Resumed(entity, event)
  self:Resumed()
end
function PlaySequenceAndForceStop:Event_Skipped(entity, event)
  self:Unregister()
  self:Skipped()
end
function PlaySequenceAndForceStop:Event_Finished(entity, event)
  self:Unregister()
  self:Finished()
end
function PlaySequenceAndForceStop:Event_FinishedLoop(entity, event)
  self:Finished()
end
function PlaySequenceAndForceStop:Event_SyncPointReached(entity, event)
  self:SendSyncPointOutput()
end
export = PlaySequenceAndForceStop
PlaySequenceAndForceStop = nil
