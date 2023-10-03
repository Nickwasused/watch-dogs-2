PlayCustomAction = {}
function PlayCustomAction:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PlayCustomAction:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.cbDomino = nil
end
function PlayCustomAction:ShutDown()
  self:UnregisterCallback()
end
function PlayCustomAction:Start()
  if self.AnimID ~= nil and LuaLibCore:VerifyDataInputEntity(self.TargetEntity, "TargetEntity") and LuaLibCore:VerifyDataInputEntity(self.AnchorEntity, "AnchorEntity") and LuaLibCore:VerifyDataInputEntity(self.ListenerEntity, "ListenerEntity") then
    SendCustomActionRequest(self.TargetEntity, self.AnimID, self.AnchorEntity, self.ListenerEntity)
    if self.cbDomino == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.cbDomino = instance:RegisterMissionEventCallback(self.TargetEntity, self, "OnDominoCustomActionEvent", "DominoCustomActionEvent", self.missionId)
    end
  end
end
function PlayCustomAction:Stop()
  self:UnregisterCallback()
  self:Stopped()
end
function PlayCustomAction:UnregisterCallback()
  if self.TargetEntity ~= nil and self.cbDomino ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.TargetEntity, self.cbDomino)
    self.cbDomino = nil
  end
end
function PlayCustomAction:OnDominoCustomActionEvent(event)
  if event == "AnimStarted" then
    return self:Started()
  elseif event == "AnimFinished" then
    self:UnregisterCallback()
    return self:Finished()
  end
end
export = PlayCustomAction
PlayCustomAction = nil
