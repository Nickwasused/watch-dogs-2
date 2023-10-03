GetTimeOfDay = {}
function GetTimeOfDay:Create(cbox)
end
function GetTimeOfDay:GetTimeOfDay()
  self.Hour = GetTimeOfDayHour()
  self.Minute = GetTimeOfDayMinute()
  self:Out()
end
export = GetTimeOfDay
GetTimeOfDay = nil
