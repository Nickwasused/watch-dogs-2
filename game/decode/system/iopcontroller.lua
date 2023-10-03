IOPController = {}
function IOPController:Create(cbox)
end
function IOPController:Init(cbox)
  self.started = false
  self.missionId = cbox:GetParentMissionId()
end
function IOPController:ShutDown()
  if self.started then
    StopIOP(self.IopID)
  elseif self.emptyRoomStarted then
    StopIOP("EMPTY_ROOM")
  end
  if self.kickoutCallback ~= nil then
    instance:RemoveNoEntityCallback("Domino_IOP_KickoutComplete", self.kickoutCallback)
    self.kickoutCallback = nil
  end
end
function IOPController:Start()
  self:Out()
  self.started = true
  if self.NpcEntity ~= nil and self.IopRole ~= nil then
    RegisterIOPnpc(self.IopID, self.NpcEntity, self.IopRole)
  elseif self.NpcEntityList ~= nil and self.IopRoleList ~= nil then
    local i = 1
    while self.NpcEntityList[i] and self.IopRoleList[i] do
      RegisterIOPnpc(self.IopID, self.NpcEntityList[i], self.IopRoleList[i])
      i = i + 1
    end
  end
  if self.OffscreenDialogPoint ~= nil then
    StartIOP(self.IopID, self.PlayerEntity, self.OffscreenDialogPoint)
  else
    StartIOP(self.IopID, self.PlayerEntity, "")
  end
  self:StartCompleted()
end
function IOPController:StartEmptyRoomIOP()
  self:Out()
  self.emptyRoomStarted = true
  StartEmptyRoomIOP(self.EmptyRoomName, self.PlayerEntity)
  self:StartEmptyRoomCompleted()
end
function IOPController:StopEmptyRoomIOP()
  self:Out()
  StopIOP("EMPTY_ROOM")
  self:StopEmptyRoomCompleted()
end
function IOPController:ForceEnd()
  self:Out()
  if self.started then
    ForceEndIOP(self.IopID)
    self.started = false
  end
  self:EndForced()
end
function IOPController:SendEvent()
  self:Out()
  SendIOPEvent(self.IopID, self.IopEvent)
  self:SendEventCompleted()
end
function IOPController:TriggerChatLine()
  self:Out()
  TriggerChatLine(self.ChatLineNum)
end
function IOPController:HideChat()
  self:Out()
  HideChat()
end
function IOPController:TriggerIOPDisconnectScreenAndKickOut()
  self:Out()
  instance = CScriptCallbackSystem_GetInstance()
  if self.kickoutCallback == nil then
    self.kickoutCallback = instance:RegisterMissionNoEntityCallback("Domino_IOP_KickoutComplete", self, "IOP_KickOut_Callback", self.missionId)
  end
  TriggerIOPKickOut(self.PlayerEntity)
end
function IOPController:IOP_KickOut_Callback(event)
  self:IOPKickOutComplete()
end
export = IOPController
IOPController = nil
