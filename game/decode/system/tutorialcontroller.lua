TutorialController = {}
function TutorialController:Create(cbox)
end
function TutorialController:Init(cbox)
  self.missionId = cbox:GetParentMissionId()
end
function TutorialController:ShutDown()
end
function TutorialController:Display()
  self.Notification = self.Notification or "-1"
  self.NotificationOverridePC = self.NotificationOverridePC or "-1"
  self.Duration = self.Duration or 7
  if self.NotificationOverridePC ~= "-1" and IsRanPCVersion() == 1 then
    ShowMissionModuleIdLocalPlayer_v4(self.missionId, "MissionNotification", "DefaultIcon", self.Notification.id, self.NotificationOverridePC.id, "-1", "", self.Duration, 1, 1, self, "OnMessageCompleted", "")
  elseif self.Notification ~= "-1" then
    ShowMissionModuleIdLocalPlayer_v4(self.missionId, "MissionNotification", "DefaultIcon", self.Notification.id, "-1", "-1", "", self.Duration, 1, 1, self, "OnMessageCompleted", "")
  elseif self.SurvivalGuideItemDB ~= nil then
    self.Duration = self.Duration + 5
    ShowMissionModuleIdLocalPlayer_v4(self.missionId, "MissionTutorial", "DefaultIcon", "", "", "", self.SurvivalGuideItemDB, self.Duration, 1, 1, self, "OnMessageCompleted", "")
  end
  self:Out()
  self:DisplayRequested()
end
function TutorialController:HideNotification()
  HideMissionModuleIdLocalPlayer_v4(self.missionId, "MissionNotification", "DefaultIcon", self.Notification.id, "-1", "-1", "", self.Duration, 1, 0, self, "")
  self:Out()
  self:NotificationHidden()
end
function TutorialController:OnMessageCompleted()
  return self:MessageCompleted()
end
export = TutorialController
TutorialController = nil
