IndexedOutput = {}
function IndexedOutput:Create(cbox)
end
function IndexedOutput:Init(cbox)
  self.Output = {}
end
function IndexedOutput:ShutDown()
end
function IndexedOutput:In()
  if self.Index == nil or self.Index <= 0 or self.Index > self._DynamicAnchors.Output then
    self:OutOfRange()
  end
  if self.Index ~= nil and self.Index > 0 and self.Index <= self._DynamicAnchors.Output then
    self.Output[self.Index - 1](self)
  end
end
export = IndexedOutput
IndexedOutput = nil
