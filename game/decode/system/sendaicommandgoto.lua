SendAICommandGotoBox = {}
function SendAICommandGotoBox:Create(cbox)
end
function SendAICommandGotoBox:Init(cbox)
  self.WalkType = "Walk"
  self.missionId = cbox:GetParentMissionId()
end
function SendAICommandGotoBox:ShutDown()
  self._type.UnregisterCallback(self)
end
function SendAICommandGotoBox:In()
  if self.NPC ~= nil then
    self.callidResult = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.NPC, self, "Event_Result", "AICommandResultEvent", self.missionId)
    local destination = ""
    if self.Destination ~= nil then
      destination = self.Destination
    end
    local speed = ""
    if self.WalkType ~= nil then
      speed = self.WalkType
    end
    local orientationTarget = ""
    if self.OrientationTarget ~= nil then
      orientationTarget = self.OrientationTarget
    end
    local orientationType = ""
    if self.OrientationType ~= nil then
      orientationType = self.OrientationType
    end
    self.commandID = SendAICommand_Goto(self.NPC, destination, speed, orientationTarget, orientationType)
    if self.commandID == GetAICommand_InvalidID(0) and self.Aborted ~= nil then
      self:Aborted()
    end
  end
end
function SendAICommandGotoBox:InUsingPos()
  if self.NPC ~= nil then
    self.callidResult = CScriptCallbackSystem_GetInstance():RegisterMissionEventCallback(self.NPC, self, "Event_Result", "AICommandResultEvent", self.missionId)
    local speed = ""
    if self.WalkType ~= nil then
      speed = self.WalkType
    end
    local orientationTarget = ""
    if self.OrientationTarget ~= nil then
      orientationTarget = self.OrientationTarget
    end
    local orientationType = ""
    if self.OrientationType ~= nil then
      orientationType = self.OrientationType
    end
    self.commandID = SendAICommand_GotoPos(self.NPC, self.xPos, self.yPos, self.zPos, speed, orientationTarget, orientationType)
    if self.commandID == GetAICommand_InvalidID(0) and self.Aborted ~= nil then
      self:Aborted()
    end
  end
end
function SendAICommandGotoBox:Cancel()
  if self.NPC ~= nil and self.commandID ~= nil then
    CancelAICommand(self.NPC, self.commandID)
  end
end
function SendAICommandGotoBox:UnregisterCallback()
  if self.NPC ~= nil and self.callidResult ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveCallback(self.NPC, self.callidResult)
    self.callidResult = nil
  end
end
function SendAICommandGotoBox:Event_Result(commandID, result)
  if self.commandID == commandID then
    if result == 1 then
      if self.InProgress ~= nil then
        self:InProgress()
        return
      end
    elseif result == 2 then
      if self.Succeeded ~= nil then
        self:Succeeded()
        return
      end
    elseif result == 3 then
      if self.Failed ~= nil then
        self:Failed()
        return
      end
    elseif result == 4 and self.Aborted ~= nil then
      self:Aborted()
      return
    end
  end
end
export = SendAICommandGotoBox
SendAICommandGotoBox = nil
