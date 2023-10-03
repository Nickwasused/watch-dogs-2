PostGameOverBox = {}
function PostGameOverBox:Create(cbox)
end
function PostGameOverBox:Init(cbox)
end
function PostGameOverBox:RecoverFromGameOver()
  local Out = self.Out
  PostGameOver()
  Out(self)
end
export = PostGameOverBox
PostGameOverBox = nil
