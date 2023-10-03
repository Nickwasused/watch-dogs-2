PauseGameWhileLoading = {}
function PauseGameWhileLoading:Create(cbox)
end
function PauseGameWhileLoading:Init(cbox)
end
function PauseGameWhileLoading:ShutDown()
end
function PauseGameWhileLoading:Enable()
  PauseWhileLoading(1)
end
function PauseGameWhileLoading:Disable()
  PauseWhileLoading(0)
end
export = PauseGameWhileLoading
PauseGameWhileLoading = nil
