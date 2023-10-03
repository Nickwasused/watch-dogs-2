SwitchOutput = {}
function SwitchOutput:Create(cbox)
end
function SwitchOutput:Init(cbox)
  self.Output = {}
  self.Table = {}
  self.Counter = 0
end
function SwitchOutput:ShutDown()
end
function SwitchOutput:In()
  if self.Counter < self._DynamicAnchors.Output then
    self.Table[self.Counter] = 1
    self.Counter = self.Counter + 1
    self.OutputNb = self.Counter
    if self.Counter >= self._DynamicAnchors.Output and self.AutoReset == 1 then
      self.Reset(self)
    end
    self.Output[self.OutputNb - 1](self)
  else
    self:None()
  end
  self:Out()
end
function SwitchOutput:Reset()
  self.Table = {}
  self.Counter = 0
  self:Out()
  self:WasReset()
end
export = SwitchOutput
SwitchOutput = nil
