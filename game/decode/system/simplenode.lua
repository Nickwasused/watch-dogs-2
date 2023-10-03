SimpleNode = {}
function SimpleNode:Create(cbox)
end
function SimpleNode:Init(cbox)
end
function SimpleNode:ShutDown()
end
function SimpleNode:In()
  return self:Out()
end
export = SimpleNode
SimpleNode = nil
