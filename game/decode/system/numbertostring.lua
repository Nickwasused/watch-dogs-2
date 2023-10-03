NumberToString = {}
function NumberToString:Create(cbox)
end
function NumberToString:Init(cbox)
end
function NumberToString:ShutDown()
end
function NumberToString:In()
  if self.NumberFloat ~= nil then
    self.String = tostring(self.NumberFloat)
    return self:Out()
  end
  if self.NumberInt ~= nil then
    self.String = tostring(self.NumberInt)
    return self:Out()
  end
end
export = NumberToString
NumberToString = nil
