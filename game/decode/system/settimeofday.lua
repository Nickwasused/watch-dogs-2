SetTimeOfDay = {}
function SetTimeOfDay:Create(cbox)
end
function SetTimeOfDay:SetTimeOfDay()
  local Out = self.Out
  local hour = (self.Hour or 0) % 24
  local minute = (self.Minute or 0) % 60
  SetTimeOfDayHourAndMinute(hour, minute)
  Out(self)
end
function SetTimeOfDay:IncrementTimeOfDay()
  local Out = self.Out
  local currentHour = GetTimeOfDayHour()
  local currentMinute = GetTimeOfDayMinute()
  currentHour = currentHour + math.min(math.max(self.Hour or 0, 0), 23)
  currentMinute = currentMinute + math.min(math.max(self.Minute or 0, 0), 59)
  if currentMinute > 59 then
    currentHour = currentHour + 1
    currentMinute = currentMinute - 60
  end
  if currentHour > 23 then
    currentHour = currentHour - 24
  end
  SetTimeOfDayHourAndMinute(currentHour, currentMinute)
  Out(self)
end
export = SetTimeOfDay
SetTimeOfDay = nil
