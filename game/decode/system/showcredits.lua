ShowCredits234234 = {}
function ShowCredits234234:Create(cbox)
end
function ShowCredits234234:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function ShowCredits234234:ShutDown()
end
function ShowCredits234234:Show()
  local Out = self.Out
  local Shown = self.Shown
  self.callidShowCredit = CScriptCallbackSystem_GetInstance():RegisterMissionNoEntityCallback("OnEndCredits", self, "Event_CreditsEnd", self.missionId)
  if self.FullScreen == nil then
    self.FullScreen = true
  end
  if self.StartIndex == nil then
    self.StartIndex = -1
  end
  if self.EndIndex == nil then
    self.EndIndex = -1
  end
  ShowCredits(1, self.FullScreen, self.StartIndex, self.EndIndex)
  Out(self)
  Shown(self)
end
function ShowCredits234234:Hide()
  local Out = self.Out
  local Hidden = self.Hidden
  if self.FullScreen == nil then
    self.FullScreen = true
  end
  if self.StartIndex == nil then
    self.StartIndex = -1
  end
  if self.EndIndex == nil then
    self.EndIndex = -1
  end
  ShowCredits(0, self.FullScreen, self.StartIndex, self.EndIndex)
  Out(self)
  Hidden(self)
end
function ShowCredits234234:Event_CreditsEnd()
  if self.callidShowCredit ~= nil then
    CScriptCallbackSystem_GetInstance():RemoveNoEntityCallback("OnEndCredits", self.callidShowCredit)
    self.callidShowCredit = nil
  end
  return self:Exited()
end
export = ShowCredits234234
ShowCredits234234 = nil
