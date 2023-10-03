TimerBox = {}
function TimerBox:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function TimerBox:Init(cbox)
end
function TimerBox:ShutDown()
  self:ClearCallback()
end
function TimerBox:ClearCallback()
  if self.m_timerId ~= nil then
    CDominoTimerManager_GetInstance():RemoveTimer(self.m_timerId)
    self.m_timerId = nil
  end
end
function TimerBox:Start()
  if self.m_timerId == nil then
    self.m_timerId = CDominoTimerManager_GetInstance():CreateTimer()
  end
  local isStarted = CDominoTimerManager_GetInstance():Start(self.m_timerId)
  if isStarted ~= 1 then
    LuaLibCore:DataError("Start", "Fail to start timer.")
  end
  self:Out()
  self:Started()
end
function TimerBox:Pause()
  if self.m_timerId ~= nil then
    local isPaused = CDominoTimerManager_GetInstance():Pause(self.m_timerId)
    if isPaused ~= 1 then
      LuaLibCore:DataError("Pause", "Fail to pause timer.")
      self.CurrentTime = -1
    else
      self.CurrentTime = CDominoTimerManager_GetInstance():GetTime(self.m_timerId)
    end
  end
  self:Paused()
  self:Out()
end
function TimerBox:Resume()
  if self.m_timerId == nil then
    LuaLibCore:DataError("Resume", "Cannot resume timer, timer wasn't created.")
  end
  local isResumed = CDominoTimerManager_GetInstance():Resume(self.m_timerId)
  if isResumed ~= 1 then
    LuaLibCore:DataError("Resume", "Cannot resume timer")
  end
  self.CurrentTime = CDominoTimerManager_GetInstance():GetTime(self.m_timerId)
  self:Resumed()
  self:Out()
end
function TimerBox:GetTime()
  if self.m_timerId ~= nil then
    self.CurrentTime = CDominoTimerManager_GetInstance():GetTime(self.m_timerId)
    self:GotTime()
  end
end
export = TimerBox
TimerBox = nil
