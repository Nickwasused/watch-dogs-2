Delay = {}
function Delay:Create(cbox)
end
function Delay:Init(cbox)
  self.trigger = nil
  self.missionId = cbox:GetParentMissionId()
  self.instanceId = -1
end
function Delay:ShutDown()
  if self.trigger ~= nil then
    CDominoDelayManager_GetInstance():RemoveDelay(self.trigger)
  end
  self:DestroyGameplay()
end
function Delay:Start()
  self.CustomText = self.CustomText or "-1"
  self.LinkedObjectiveAutoComplete = self.LinkedObjectiveAutoComplete or 1
  self.Seconds = self.Seconds or 1
  if self.trigger == nil then
    if self.LinkedObjective == nil then
      if self.CustomText ~= "-1" then
        self.trigger = CreateHUDDominoDelay_v2(self.Seconds, self, "Event_TimeElapsed", 1, self.CustomText.id)
      else
        self.trigger = CreateHUDDominoDelay_v2(self.Seconds, self, "Event_TimeElapsed", 1, "-1")
      end
    else
      self.trigger = CreateDominoDelay(self.Seconds, self, "Event_TimeElapsed", 1)
    end
  else
    CDominoDelayManager_GetInstance():SetDelay(self.trigger, self.Seconds)
  end
  if self.trigger ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.trigger)
    CDominoDelayManager_GetInstance():SendCommand(self.trigger, "start")
    self:DestroyGameplay()
    self:CreateGameplay()
  end
  return self:Started()
end
function Delay:GetTime()
  if self.trigger ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.trigger)
  end
  return self:GotTime()
end
function Delay:Pause()
  if self.trigger ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.trigger)
    CDominoDelayManager_GetInstance():SendCommand(self.trigger, "pause")
  end
  return self:Paused()
end
function Delay:Resume()
  if self.trigger ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.trigger)
    CDominoDelayManager_GetInstance():SendCommand(self.trigger, "resume")
  end
  return self:Resumed()
end
function Delay:Stop()
  if self.trigger ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.trigger)
    CDominoDelayManager_GetInstance():SendCommand(self.trigger, "stop")
    self:DestroyGameplay()
  end
  return self:Stopped()
end
function Delay:Restart()
  if self.trigger ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.trigger)
    CDominoDelayManager_GetInstance():SendCommand(self.trigger, "restart")
    self:DestroyGameplay()
    self:CreateGameplay()
  end
  return self:Restarted()
end
function Delay:Event_TimeElapsed()
  self.RemainingTime = 0
  CDominoDelayManager_GetInstance():RemoveDelay(self.trigger)
  self.trigger = nil
  if self.LinkedObjectiveAutoComplete == 1 then
    self:DestroyGameplay()
  end
  return self:TimeElapsed()
end
function Delay:CreateGameplay()
  if self.LinkedObjective ~= nil and self.trigger ~= nil then
    self.instanceId = CreateTimeGameplay_v2(self.missionId, self:GetLinkedObjective(self.LinkedObjective), self.LinkedObjectiveAutoComplete, self.trigger, self, "")
  end
end
function Delay:DestroyGameplay()
  if self.instanceId ~= -1 then
    DestroyWrappedGameplay(self.instanceId)
    self.instanceId = -1
  end
end
function Delay:GetLinkedObjective(objective)
  if objective == "Objective" then
    return 0
  elseif objective == "ObjectiveSub1" then
    return 1
  elseif objective == "ObjectiveSub2" then
    return 2
  elseif objective == "ObjectiveSub3" then
    return 3
  end
  return 0
end
export = Delay
Delay = nil
