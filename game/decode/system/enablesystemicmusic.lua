EnableSystemicMusic = {}
function EnableSystemicMusic:Create(cbox)
end
function EnableSystemicMusic:Init(cbox)
end
function EnableSystemicMusic:ShutDown()
end
function EnableSystemicMusic:In()
  local Out = self.Out
  CMusicManager_GetInstance():SetSystemicEnable(self.Enable)
  Out(self)
end
export = EnableSystemicMusic
EnableSystemicMusic = nil
