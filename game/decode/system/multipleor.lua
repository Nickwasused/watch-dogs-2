MultipleOR = {}
function MultipleOR:Create(cbox)
end
function MultipleOR:Init(cbox)
end
function MultipleOR:ShutDown()
end
function MultipleOR:Input(index)
  return self:Out()
end
export = MultipleOR
MultipleOR = nil
