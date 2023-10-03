PlayDialog = {}
function PlayDialog:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PlayDialog:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.combinedDialogsList = {}
  self.playIndex = nil
  self.firstDialogStarted = nil
end
function PlayDialog:Start()
  self.Entity = self.Entity or GetLocalPlayerEntityId()
  self.DialogPriority = self.DialogPriority or "ForcePlay"
  self.Supersede = self.Supersede or 0
  self.Queue = self.Queue or 0
  self.UseFacial = self.UseFacial or 1
  self.playIndex = 1
  self.firstDialogStarted = 0
  self.combinedDialogsList = {}
  if self.SoundId ~= nil then
    table.insert(self.combinedDialogsList, self.SoundId)
  end
  if self.SoundIdList ~= nil then
    for i, v in ipairs(self.SoundIdList) do
      if self.SoundIdList[i] ~= nil then
        table.insert(self.combinedDialogsList, self.SoundIdList[i])
      end
    end
  end
  if self.combinedDialogsList ~= nil and LuaLibCore:VerifyDataInputEntity(self.Entity, "Entity") then
    if self.cbDominoDialogStarted == nil then
      self.cbDominoDialogStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_DialogStarted", "DialogStarted", self.missionId)
    end
    if self.cbDominoDialogFinished == nil then
      self.cbDominoDialogFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_DialogFinished", "DialogFinished", self.missionId)
    end
    if self.cbDominoDialogFailedPriority == nil then
      self.cbDominoDialogFailedPriority = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_DialogFailedPriority", "DialogFailedPriority", self.missionId)
    end
    if self.cbDominoDialogInterrupted == nil then
      self.cbDominoDialogInterrupted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_DialogInterrupted", "DialogInterrupted", self.missionId)
    end
    if self.cbDominoDialogQueued == nil then
      self.cbDominoDialogQueued = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_DialogQueued", "DialogQueued", self.missionId)
    end
    if self.cbDominoDialogStopped == nil then
      self.cbDominoDialogStopped = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.Entity, self, "Event_DialogStopped", "DialogStopped", self.missionId)
    end
    self:PlayNextDialogInList()
  end
  self:Out()
end
function PlayDialog:PlayNextDialogInList()
  if self.playIndex <= #self.combinedDialogsList then
    soundToPlay = self.combinedDialogsList[self.playIndex]
    self.playIndex = self.playIndex + 1
    PlayDominoDialogControlFacial(self.Entity, tostring(soundToPlay), self.UseFacial, self.DialogPriority, self.Supersede, self.Queue)
  else
    self:ListFinished()
    self:Unregister()
  end
end
function PlayDialog:ListContainsElement(list, element)
  for i, v in ipairs(list) do
    if PathID(v) == element then
      return true
    end
  end
  return false
end
function PlayDialog:Event_DialogStarted(sound)
  if self:ListContainsElement(self.combinedDialogsList, sound) then
    if self.firstDialogStarted == 0 then
      self.firstDialogStarted = 1
      self:ListStarted()
    end
    self:Started()
  end
end
function PlayDialog:Event_DialogFinished(sound)
  if self:ListContainsElement(self.combinedDialogsList, sound) then
    self:Finished()
    self:PlayNextDialogInList()
  end
end
function PlayDialog:Event_DialogFailedPriority(sound)
  if self:ListContainsElement(self.combinedDialogsList, sound) then
    self:PriorityFailed()
    self:PlayNextDialogInList()
  end
end
function PlayDialog:Event_DialogInterrupted(sound)
  if self:ListContainsElement(self.combinedDialogsList, sound) then
    self:Interrupted()
    self:PlayNextDialogInList()
  end
end
function PlayDialog:Event_DialogQueued(sound)
  if self:ListContainsElement(self.combinedDialogsList, sound) then
    if self.cbDominoDialogQueued ~= nil then
      CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogQueued)
      self.cbDominoDialogQueued = nil
    end
    self:Queued()
  end
end
function PlayDialog:Event_DialogStopped(sound)
  if self:ListContainsElement(self.combinedDialogsList, sound) then
    self:Finished()
    self:PlayNextDialogInList()
  end
end
function PlayDialog:ShutDown()
  self:Unregister()
end
function PlayDialog:Unregister()
  self.playIndex = nil
  if self.cbDominoDialogStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogStarted)
    self.cbDominoDialogStarted = nil
  end
  if self.cbDominoDialogFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogFinished)
    self.cbDominoDialogFinished = nil
  end
  if self.cbDominoDialogFailedPriority ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogFailedPriority)
    self.cbDominoDialogFailedPriority = nil
  end
  if self.cbDominoDialogInterrupted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogInterrupted)
    self.cbDominoDialogInterrupted = nil
  end
  if self.cbDominoDialogQueued ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogQueued)
    self.cbDominoDialogQueued = nil
  end
  if self.cbDominoDialogStopped ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.cbDominoDialogStopped)
    self.cbDominoDialogStopped = nil
  end
end
export = PlayDialog
PlayDialog = nil
