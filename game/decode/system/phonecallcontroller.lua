PhoneCallController = {}
function PhoneCallController:Create(cbox)
  cbox:LoadResource("soundbinary/560521424.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2914821859.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1410811521.bnk", "CSoundResource")
end
function PhoneCallController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.SoundID = {}
  self.cbDialogStarted = nil
  self.cbDialogFinished = nil
  self.cbOnShown = nil
  self.cbOnClosed = nil
  self.lastDialog = nil
  self.SoundIDList = {}
  self.combinedSoundIDList = {}
  self.index = nil
  self.phoneisout = nil
  self.hudisvisible = nil
  self.isvoicemail = 0
  self.PlayRingTone = 1
end
function PhoneCallController:ShutDown()
  self._type.UnregisterCallback(self)
end
function PhoneCallController:StartSMS()
  local CallStarted = self.CallStarted
  local Out = self.Out
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  self.Caller = self.Caller or "Unknown"
  self:ReplaceWithValidCallerName()
  if self.ChatID ~= nil and tonumber(self.ChatID.id) ~= nil then
    if self.cbOnShown == nil then
      self.cbOnShown = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_ApplicationShown", "DominoPhoneCallApplicationStarted", self.missionId)
    end
    if self.cbOnClosed == nil then
      self.cbOnClosed = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_ApplicationClosed", "DominoPhoneCallApplicationClosed", self.missionId)
    end
    StartPhoneCallChat(self.PlayerEntity, self.Caller, self.HeaderText.id, self.LineText.id, self.ChatID.id)
    self.hudisvisible = 1
    CallStarted(self)
    Out(self)
  end
end
function PhoneCallController:StartEMail()
  local CallStarted = self.CallStarted
  local Out = self.Out
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  self.Caller = self.Caller or "Jordie"
  self:ReplaceWithValidCallerName()
  if self.EmailID ~= nil and tonumber(self.EmailID.id) ~= nil then
    if self.cbOnShown == nil then
      self.cbOnShown = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_ApplicationShown", "DominoPhoneCallApplicationStarted", self.missionId)
    end
    if self.cbOnClosed == nil then
      self.cbOnClosed = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_ApplicationClosed", "DominoPhoneCallApplicationClosed", self.missionId)
    end
    StartPhoneCallEmail(self.PlayerEntity, self.Caller, self.EmailID.id)
    self.hudisvisible = 1
    CallStarted(self)
    Out(self)
  end
end
function PhoneCallController:StartVoiceMail()
  self.isvoicemail = 1
  self:StartCall()
end
function PhoneCallController:StartCall()
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  self.Caller = self.Caller or "Jordie"
  self:ReplaceWithValidCallerName()
  self.StayOnScreenUntilStopped = self.StayOnScreenUntilStopped or 0
  self.ShowCallerID = self.ShowCallerID or 1
  if self.isvoicemail == 0 then
    if self.PlayRingTone == 1 then
      if self.RingToneType == nil or self.RingToneType == "Incoming" then
        table.insert(self.combinedSoundIDList, "soundbinary/560521424.bnk")
      elseif self.RingToneType == "Outgoing" then
        table.insert(self.combinedSoundIDList, "soundbinary/2914821859.bnk")
      elseif self.RingToneType == "Custom" and self.CustomRingtoneSoundID ~= nil then
        table.insert(self.combinedSoundIDList, self.CustomRingtoneSoundID)
      end
    end
  else
    table.insert(self.combinedSoundIDList, "soundbinary/1410811521.bnk")
  end
  if self.SoundIDList ~= nil then
    for i = 0, #self.SoundIDList do
      if self.SoundIDList[i] ~= nil then
        table.insert(self.combinedSoundIDList, self.SoundIDList[i])
      end
    end
  end
  for i = 0, #self.SoundID do
    if self.SoundID[i] ~= nil then
      table.insert(self.combinedSoundIDList, self.SoundID[i])
    end
  end
  if self.cbDialogStarted == nil then
    self.cbDialogStarted = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_DialogStarted", "DialogStarted", self.missionId)
  end
  if self.cbDialogFinished == nil then
    self.cbDialogFinished = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.PlayerEntity, self, "Event_DialogFinished", "DialogFinished", self.missionId)
  end
  self.index = 1
  self:PlayNextDialogInList(self.index)
  self:Out()
end
function PhoneCallController:PlayNextDialogInList(index)
  if self.combinedSoundIDList[index] ~= nil then
    PlayDominoDialog(self.PlayerEntity, self.combinedSoundIDList[index], "ForcePlay", 0, 1)
  end
end
function PhoneCallController:Event_DialogStarted(sound)
  if self:ListContainsElement(self.combinedSoundIDList, sound) == false then
    return
  end
  if self.index == 1 then
    RequestUseSoftware(self.PlayerEntity, 1)
    SetPhoneCallState(self.PlayerEntity, 1)
    self.phoneisout = 1
    self:CallStarted()
  end
  if self.ShowCallerID == 1 and self.PlayRingTone == 1 and self.index == 2 or self.ShowCallerID == 1 and self.PlayRingTone == 0 and self.index == 1 then
    StartPhoneCall(self.PlayerEntity, self.Caller, self.HeaderText.id, self.LineText.id)
    self.hudisvisible = 1
  end
end
function PhoneCallController:Event_DialogFinished(sound)
  if self:ListContainsElement(self.combinedSoundIDList, sound) == false then
    return
  end
  if self.index ~= nil then
    if self.index >= #self.combinedSoundIDList then
      if self.StayOnScreenUntilStopped == 0 then
        if self.ShowCallerID == 1 then
          StopPhoneCall(self.PlayerEntity)
          self.hudisvisible = 0
        end
        RequestUseSoftware(self.PlayerEntity, 0)
        SetPhoneCallState(self.PlayerEntity, 0)
        self.phoneisout = 0
      end
      self:UnregisterCallback()
      self:CallFinished()
    else
      self.index = self.index + 1
      self:PlayNextDialogInList(self.index)
    end
  end
end
function PhoneCallController:Event_ApplicationShown(event)
  RequestUseSoftware(self.PlayerEntity, 1)
  self.phoneisout = 1
  return self:OnShown()
end
function PhoneCallController:Event_ApplicationClosed(event)
  self:UnregisterCallback()
  if self.phoneisout == 1 then
    RequestUseSoftware(self.PlayerEntity, 0)
    self.phoneisout = 0
  end
  return self:OnClosed()
end
function PhoneCallController:ListContainsElement(list, element)
  if list ~= nil and element ~= nil then
    for i = 0, #list do
      if PathID(list[i]) == element then
        return true
      end
    end
  end
  return false
end
function PhoneCallController:StopCall()
  local CallStopped = self.CallStopped
  local Out = self.Out
  self.PlayerEntity = self.PlayerEntity or GetLocalPlayerEntityId()
  if self.PlayerEntity ~= nil then
    StopPhoneCall(self.PlayerEntity)
  end
  if self.phoneisout == 1 then
    RequestUseSoftware(self.PlayerEntity, 0)
    SetPhoneCallState(self.PlayerEntity, 0)
    self.phoneisout = 0
  end
  if self.hudisvisible == 1 and self.ShowCallerID == 1 then
    StopPhoneCall(self.PlayerEntity)
    self.hudisvisible = 0
  end
  self:UnregisterCallback()
  CallStopped(self)
  Out(self)
end
function PhoneCallController:UnregisterCallback()
  if self.cbHUDStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbHUDStarted)
    self.cbHUDStarted = nil
  end
  if self.cbDialogStarted ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbDialogStarted)
    self.cbDialogStarted = nil
  end
  if self.cbDialogFinished ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbDialogFinished)
    self.cbDialogFinished = nil
  end
  if self.cbOnShown ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbOnShown)
    self.cbOnShown = nil
  end
  if self.cbOnClosed ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.PlayerEntity, self.cbOnClosed)
    self.cbOnClosed = nil
  end
end
function PhoneCallController:ReplaceWithValidCallerName()
  if self.Caller == "Tbone" then
    self.Caller = "tbone"
  elseif self.Caller == "Jordie" then
    self.Caller = "jordi"
  elseif self.Caller == "Clara" then
    self.Caller = "clara"
  elseif self.Caller == "Lamarr" then
    self.Caller = "lamarr"
  elseif self.Caller == "Axiom" then
    self.Caller = "axiom"
  elseif self.Caller == "ChicagoClub" then
    self.Caller = "chicagoClub"
  elseif self.Caller == "DedSec" then
    self.Caller = "dedsec"
  elseif self.Caller == "ChicagoPolice" then
    self.Caller = "chicagoPolice"
  elseif self.Caller == "RaymondKenney" then
    self.Caller = "raymond"
  elseif self.Caller == "DamienBrinks" then
    self.Caller = "damien"
  elseif self.Caller == "EarlHayes" then
    self.Caller = "bedbug"
  elseif self.Caller == "AnthonyWade" then
    self.Caller = "iraq"
  elseif self.Caller == "JacksonPearce" then
    self.Caller = "jackson"
  elseif self.Caller == "NikkiPearce" then
    self.Caller = "nikki"
  elseif self.Caller == "LiamQuinn" then
    self.Caller = "liam"
  elseif self.Caller == "Badboy" then
    self.Caller = "badboy"
  elseif self.Caller == "Poppy" then
    self.Caller = "poppy"
  elseif self.Caller == "Yolanda" then
    self.Caller = "yolanda"
  elseif self.Caller == "Tobias" then
    self.Caller = "tobias"
  elseif self.Caller == "DedSec2" then
    self.Caller = "dedsec2"
  elseif self.Caller == "JosephDemarco" then
    self.Caller = "joseph"
  elseif self.Caller == "Journalist" then
    self.Caller = "journalist"
  elseif self.Caller == "GaryDiggs" then
    self.Caller = "garyDiggs"
  elseif self.Caller == "Margaret" then
    self.Caller = "margaret"
  elseif self.Caller == "Unknown" then
    self.Caller = "anonymous"
  elseif self.Caller == "CarOnDemand" then
    self.Caller = "carOnDemand"
  elseif self.Caller == "CtOS" then
    self.Caller = "ctOS"
  elseif self.Caller == "Olivier" then
    self.Caller = "olivier"
  elseif self.Caller == "GenericPhone" then
    self.Caller = "genericPhone"
  elseif self.Caller == "HelenaTucci" then
    self.Caller = "helena"
  end
  return self.Caller
end
export = PhoneCallController
PhoneCallController = nil
