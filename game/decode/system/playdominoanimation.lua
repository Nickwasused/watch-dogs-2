PlayDominoAnimation = {}
function PlayDominoAnimation:Create(cbox)
  cbox:RegisterLibrary("Domino/System/LuaLibraries/LuaLibCore.lua")
end
function PlayDominoAnimation:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
  self.cbDomino = nil
  self.Index = 0
  self.Looping = false
end
function PlayDominoAnimation:ShutDown()
  self:UnregisterCallback()
end
function PlayDominoAnimation:Start()
  if self.Anim ~= nil and LuaLibCore:VerifyDataInputEntity(self.TargetEntity, "TargetEntity") then
    local anchorEntity = self.AnchorEntity or "-1"
    local isLooping = 0
    if self.Looping then
      isLooping = 1
    end
    self.StateKey = RequestDominoAnimationState(self.TargetEntity, self.Anim, isLooping, self.Index, anchorEntity)
    System:Log("DS-Start(" .. tostring(self) .. " : " .. tostring(self.cbDomino) .. " : " .. tostring(self.StateKey) .. " : " .. tostring(self.TargetEntity) .. " : " .. tostring(self.Anim) .. " : " .. tostring(self.Index) .. ")")
    if self.cbDomino == nil then
      instance = CScriptCallbackSystem_GetInstance()
      self.cbDomino = instance:RegisterMissionEventCallback(self.TargetEntity, self, "OnDominoStateEvent", "DominoStateEvent", self.missionId)
    end
  end
  self:Started()
end
function PlayDominoAnimation:Stop()
  self:UnregisterCallback()
  self:Stopped()
end
function PlayDominoAnimation:UnregisterCallback()
  if self.TargetEntity ~= nil and self.cbDomino ~= nil then
    instance = CScriptCallbackSystem_GetInstance()
    instance:RemoveCallback(self.TargetEntity, self.cbDomino)
    self.cbDomino = nil
  end
end
function PlayDominoAnimation:OnDominoStateEvent(event)
  if event == "AnimStarted" then
    if self.StateKey ~= nil then
    end
  elseif event == "AnimFinished" then
    self:UnregisterCallback()
    if self.StateKey ~= nil then
      self.StateKey = nil
      return self:Finished()
    end
  end
end
export = PlayDominoAnimation
PlayDominoAnimation = nil
