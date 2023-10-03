export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.CtOsBackdoorComponents = 0
  self[8] = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = self.f_8_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = self.f_8_OnPhoneOpened
  l0.OnPhoneClosed = self.f_8_OnPhoneClosed
  l0.OnAppOpened = self.f_8_OnAppOpened
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[19]
  l0._graph = self
  l0.Out = self.f_19_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_2_Done
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[7] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[51] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[51]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_51_RewardsExecuted
  self[11] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
  self[5] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_14_Disabled
  l0.Tracked = self.f_14_Tracked
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = DummyFunction
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[2]
  l0.SpawnPoint = "9223372066268170146"
  l0.StandaloneLoader = "9223372047131482396"
  l0.LayerName = "SF_08_Mission_Central_HMA_Hackerspace"
  l0:In()
end
function export:In()
  local l0
  l0 = self[19]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[20]
  l0:Input(0)
end
function export:f_30_InstalledSet()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M030.Objectives.Objective010",
    item = "Objective",
    id = "578178"
  }
  l0:ShowNewObjective()
end
function export:f_8_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0.Out[3] = self.f_9_Out_3
  l0:In()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_8_OnAppOpened()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Display()
end
function export:f_8_OnPhoneClosed()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Display()
end
function export:f_8_OnPhoneOpened()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:Display()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_13_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_15_Enabled()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
  l0:Display()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  self:en_11()
  l0 = self[11]
  l0:HideNotification()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:HideNotification()
end
function export:f_9_Out_3()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:HideNotification()
end
function export:f_2_Done()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Disable()
end
function export:f_13_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(1)
end
function export:f_21_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345164"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_15_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
end
function export:f_51_RewardsExecuted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372047426345166"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0.Enabled = self.f_21_Enabled
  l0.Disabled = DummyFunction
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0:Enable()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257056"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_30_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_14_Disabled()
  local l0
  self = self._graph
  l0 = self[51]
  l0.ItemDB = "Items.9223372050611844744"
  l0:ExecuteRewards()
end
function export:f_14_Tracked()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.App = "UIAppCatalogDB.9223372046454257056"
end
function export:en_11()
  local l0
  l0 = self[11]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification015",
    item = "Notification",
    id = "636714"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectDedSecApp",
    id = "699234"
  }
  l0.Duration = -1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification017",
    item = "Notification",
    id = "636740"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectWalkMission",
    id = "699235"
  }
  l0.Duration = -1
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Mission = "MissionList.9223372049674795932"
end
_compilerVersion = 4
