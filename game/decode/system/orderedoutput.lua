OrderedOutput = {
  Out = {}
}
function OrderedOutput:Create(cbox)
end
function OrderedOutput:Init(cbox)
end
function OrderedOutput:ShutDown()
end
function OrderedOutput:In()
  local graph = self._graph
  local outputs = {}
  for i = 1, self._DynamicAnchors.Out do
    outputs[i - 1] = self.Out[i - 1]
  end
  for i = 1, self._DynamicAnchors.Out do
    self._graph = graph
    outputs[i - 1](self)
  end
end
export = OrderedOutput
OrderedOutput = nil
