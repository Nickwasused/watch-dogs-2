MultipleAnd = {}
function MultipleAnd:Create(cbox)
end
function MultipleAnd:Init(cbox)
  self.m_table = {}
  self.m_counter = 0
end
function MultipleAnd:ShutDown()
end
function MultipleAnd:Condition(index)
  if self.m_table[index] == nil then
    self.m_counter = self.m_counter + 1
    self.m_table[index] = 1
  end
  if self.m_counter == self._DynamicAnchors.Condition then
    if self.AutoReset ~= nil and self.AutoReset == 1 then
      self:Reset()
    end
    return self:Out()
  end
end
function MultipleAnd:Reset()
  self.m_table = {}
  self.m_counter = 0
end
export = MultipleAnd
MultipleAnd = nil
