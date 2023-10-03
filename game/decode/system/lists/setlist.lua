SetList = {}
function SetList:Create(cbox)
end
function SetList:Init(cbox)
end
function SetList:ShutDown()
end
function SetList:FromList()
  self.Target = self.List
  return self:Out()
end
export = SetList
SetList = nil
