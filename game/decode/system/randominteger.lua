RandomInteger = {}
function RandomInteger:Create(cbox)
end
function RandomInteger:Init(cbox)
end
function RandomInteger:ShutDown()
end
function RandomInteger:In()
  if self.Min ~= nil and self.Max ~= nil then
    self.Target = math.random(self.Min, self.Max)
    return self:Out()
  end
end
export = RandomInteger
RandomInteger = nil
