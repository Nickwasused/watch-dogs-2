DelayBox = {}
function DelayBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function DelayBox:Init(cbox)
end
function DelayBox:ShutDown()
  self:ClearCallback()
end
function DelayBox:ClearCallback()
  if self.m_delayId ~= nil then
    CDominoDelayManager_GetInstance():RemoveDelay(self.m_delayId)
    self.m_delayId = nil
  end
end
function DelayBox:Start()
  self.Seconds = self.Seconds or 1
  if self.Seconds <= 0 then
    LuaLibCore:DataError("Seconds", "Seconds cannot be 0 sec or less . Defaulting it to 1.")
    self.Seconds = 1
  end
  if self.nbLoop ~= nil and 0 >= self.nbLoop then
    LuaLibCore:DataError("nbLoop", "nbLoop cannot be 0 or less. Defaulting it to 1.")
    self.nbLoop = 1
  end
  self.currentLoop = 0
  self:CreateOrUpdateTimer()
  if self.m_delayId ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.m_delayId)
  end
  self:SendCommandToTimer("restart")
  self:Started()
  self:Out()
end
function DelayBox:Pause()
  if self.m_delayId ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.m_delayId)
    self:SendCommandToTimer("pause")
  else
    self.RemainingTime = self.Seconds
  end
  self:Paused()
  self:Out()
end
function DelayBox:Resume()
  if self.m_delayId == nil then
    LuaLibCore:DataError("Resume", "Cannot resume a dead timer.")
  else
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.m_delayId)
    self:SendCommandToTimer("resume")
  end
  self:Resumed()
  self:Out()
end
function DelayBox:Stop()
  if self.m_delayId ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.m_delayId)
    self:SendCommandToTimer("stop")
  end
  self:ClearCallback()
  self:Stopped()
  self:Out()
end
function DelayBox:Event_TimeElapsed()
  if self.m_delayId ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.m_delayId)
  end
  self.currentLoop = self.currentLoop + 1
  if self.Loop == 1 then
    if self.nbLoop == nil or self.currentLoop < self.nbLoop then
      self:SendCommandToTimer("restart")
    else
      self:ClearCallback()
      self:LoopingEnded()
    end
  else
    self:ClearCallback()
  end
  self:TimeElapsed()
end
function DelayBox:GetTime()
  if self.m_delayId ~= nil then
    self.RemainingTime = CDominoDelayManager_GetInstance():GetDelay(self.m_delayId)
    self:GotTime()
  end
end
function DelayBox:SendCommandToTimer(eventName)
  if LuaLibCore:AssertNotNil(self.m_delayId, "m_delayId") and LuaLibCore:AssertNotNil(eventName, "eventName") then
    assert(CDominoDelayManager_GetInstance()):SendCommand(self.m_delayId, eventName)
  end
end
function DelayBox:CreateOrUpdateTimer()
  local man = assert(CDominoDelayManager_GetInstance())
  if self.m_delayId == nil then
    self.m_delayId = assert(man:CreateDelay(self.Seconds, self, "Event_TimeElapsed", 0, 1))
  else
    man:SetDelay(self.m_delayId, self.Seconds)
  end
end
export = DelayBox
DelayBox = nil
