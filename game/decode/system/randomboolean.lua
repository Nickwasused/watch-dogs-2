RandomBoolean = {}
function RandomBoolean:Create(cbox)
end
function RandomBoolean:Init(cbox)
end
function RandomBoolean:ShutDown()
end
function RandomBoolean:In()
  generated = math.random()
  if generated < 0.5 then
    self.Target = 0
  else
    self.Target = 1
  end
  return self:Out()
end
export = RandomBoolean
RandomBoolean = nil
