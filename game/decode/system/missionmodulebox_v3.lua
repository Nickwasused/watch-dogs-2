MissionModuleBox = {}
function MissionModuleBox:Create(cbox)
end
function MissionModuleBox:Init(cbox)
end
function MissionModuleBox:ShutDown()
end
function MissionModuleBox:SetDefaults()
  if self.MessageType == nil then
    self.MessageType = "MissionStart"
  else
    self.MessageType = self.MessageType
  end
  if self.MessageIcon == nil then
    self.MessageIcon = "DefaultIcon"
  end
  if self.OasisID_1 == nil then
    self.param1 = "-1"
  else
    self.param1 = self.OasisID_1.id
  end
  if self.OasisID_2 == nil then
    self.param2 = "-1"
  else
    self.param2 = self.OasisID_2.id
  end
  if self.OasisID_3 == nil then
    self.param3 = "-1"
  else
    self.param3 = self.OasisID_3.id
  end
  if self.SurvivalGuideItemDb == nil then
    self.SurvivalGuideItemDb = ""
  end
  if self.Duration == nil then
    self.Duration = 7
  end
  if self.MessageType == "MissionTutorial" then
    self.Duration = self.Duration + 5
  end
  if self.PlayerID == nil then
    self.PlayerID = GetLocalPlayerId()
  end
  if self.Queue == nil then
    self.Queue = 0
  end
  if self.PlaySound == nil then
    self.PlaySound = 1
  end
  if self.DebugHeader == nil then
    self.DebugHeader = ""
  end
  if self.DebugText == nil then
    self.DebugText = ""
  end
end
function MissionModuleBox:Display()
  self:SetDefaults()
  if self.MessageType == "FixerContractAccepted2" or self.MessageType == "FixerAmbush2" then
    ShowFixerContractHud(self.MessageType, self.param1, self.param2, self.Duration, self, "OnFinished", "OnDisplayed")
  elseif self.OasisID_1 == nil and self.OasisID_2 == nil and self.OasisID_3 == nil and self.DebugHeader ~= nil and self.DebugText ~= nil then
    ShowMissionTextMessageLocalPlayer("MissionDebug", self.MessageIcon, self.DebugHeader, self.DebugText, "", self.SurvivalGuideItemDb, self.Duration, self.Queue, self, "OnFinished", "OnDisplayed")
  else
    ShowMissionModuleIdLocalPlayer_v3(self.MessageType, self.MessageIcon, self.param1, self.param2, self.param3, self.SurvivalGuideItemDb, self.Duration, self.Queue, self.PlaySound, self, "OnFinished", "OnDisplayed")
  end
  self:Out()
  self:DisplayRequested()
end
function MissionModuleBox:Hide()
  self:SetDefaults()
  if self.MessageType == "FixerContractAccepted2" or self.MessageType == "FixerAmbush2" then
    HideFixerContractHud(self, "OnFinished")
  elseif self.OasisID_1 == nil and self.OasisID_2 == nil and self.OasisID_3 == nil and self.DebugHeader ~= nil and self.DebugText ~= nil then
    HideMissionTextMessageLocalPlayer("MissionDebug", self.MessageIcon, self.DebugHeader, self.DebugText, "", self.SurvivalGuideItemDb, self.Duration, self.Queue, self.PlaySound, self, "OnFinished")
  else
    HideMissionModuleIdLocalPlayer_v3(self.MessageType, self.MessageIcon, self.param1, self.param2, self.param3, self.SurvivalGuideItemDb, self.Duration, self.Queue, self.PlaySound, self, "OnFinished")
  end
  self:Out()
  self:HideRequested(self)
end
function MissionModuleBox:OnFinished()
  return self:DisplayFinished()
end
function MissionModuleBox:OnDisplayed()
  return self:DisplayStarted()
end
export = MissionModuleBox
MissionModuleBox = nil
