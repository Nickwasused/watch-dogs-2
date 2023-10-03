PlayDialogOnSoundPoint = {}
function PlayDialogOnSoundPoint:Create(cbox)
end
function PlayDialogOnSoundPoint:Init(cbox)
end
function PlayDialogOnSoundPoint:ShutDown()
  if self.callidOnSpawnEntity ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.callidOnSpawnEntity)
    self.callidOnSpawnEntity = nil
  end
end
function PlayDialogOnSoundPoint:Play()
  if self.SoundId ~= nil then
    if self.Entity ~= nil then
      if IsEntityLoaded(self.Entity) ~= 1 then
        self.callidOnSpawnEntity = CScriptCallbackSystem_GetInstance():RegisterOnSpawnCallback(self.Entity, self, "Event_OnSpawnEntity")
      else
        CDominoSoundManager_GetInstance():PlayDialogWithSubtitle(self.Entity, self.SoundId, self, "Callback_Sound")
      end
    else
      CDominoSoundManager_GetInstance():PlayDialogWithSubtitle("18446744073709551615", self.SoundId, self, "Callback_Sound")
    end
  end
  return self:Out()
end
function PlayDialogOnSoundPoint:Event_OnSpawnEntity()
  CScriptCallbackSystem_GetInstance():RemoveCallback(self.Entity, self.callidOnSpawnEntity)
  self.callidOnSpawnEntity = nil
  CDominoSoundManager_GetInstance():PlayDialogOnSoundPoint(self.Entity, self.SoundId, self, "Callback_Sound")
end
function PlayDialogOnSoundPoint:Callback_Sound(reason)
  if reason == "started" then
    return self:Started()
  end
  if reason == "finished" then
    return self:Finished()
  end
end
export = PlayDialogOnSoundPoint
PlayDialogOnSoundPoint = nil
