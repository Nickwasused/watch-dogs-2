LongRangeShadow = {}
function LongRangeShadow:Create(cbox)
end
function LongRangeShadow:Init(cbox)
end
function LongRangeShadow:ShutDown()
end
function LongRangeShadow:SetHighPriorityNearDistance()
  local Out = self.Out
  if self.Distance == nil then
    self.Distance = 1500
  end
  SetLRShadowHighPriorityNearDistance(self.Distance)
  Out(self)
end
export = LongRangeShadow
LongRangeShadow = nil
