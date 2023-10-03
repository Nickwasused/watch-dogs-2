RandomFloat = {}
function RandomFloat:Create(cbox)
end
function RandomFloat:Init(cbox)
end
function RandomFloat:ShutDown()
end
function RandomFloat:In()
  if self.Min ~= nil and self.Max ~= nil then
    self.Target = self.Min + math.random() * (self.Max - self.Min)
    return self:Out()
  end
end
export = RandomFloat
RandomFloat = nil
