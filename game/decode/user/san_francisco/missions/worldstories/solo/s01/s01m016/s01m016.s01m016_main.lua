export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/System/InteractGameplayController.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlayerVehicleMonitor_v2.lua")
  cbox:RegisterBox("domino/System/PlayerPhoneMonitor.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SendTrackingEvent.lua")
  cbox:RegisterBox("domino/System/SetActionMap_v2.lua")
  cbox:RegisterBox("domino/System/ShopMonitor_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/3549285901.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2670290390.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[42] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[42]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_42_RewardsExecuted
  self[32] = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = self.f_32_OnPhoneOpened
  l0.OnPhoneClosed = self.f_32_OnPhoneClosed
  l0.OnAppOpened = self.f_32_OnAppOpened
  l0.OnAppClosed = self.f_32_OnAppClosed
  l0.OnAppInstalled = DummyFunction
  self[44] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[44]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_44_RewardsExecuted
  self[30] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[30]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_30_RewardsExecuted
  self[9] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[9]
  l0._graph = self
  self[43] = cbox:CreateBox("domino/System/InteractGameplayController.lua")
  l0 = self[43]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Completed = self.f_43_Completed
  self[4] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.MessageCompleted = DummyFunction
  self[46] = cbox:CreateBox("domino/System/PlayerVehicleMonitor_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = self.f_46_Enabled
  l0.Disabled = self.f_46_Disabled
  l0.Enter = self.f_46_Enter
  l0.Leave = DummyFunction
  l0.ChangeSeat = DummyFunction
  self[28] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[28]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_28_Out
  self[13] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_13_RewardsExecuted
  self[14] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_14_Has
  l0.HasNOT = self.f_14_HasNOT
  self[20] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[20]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_20_RewardsExecuted
  self[3] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_19_Out
  self[41] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[41]
  l0._graph = self
  l0.Out = self.f_41_Out
  l0.MessageCompleted = DummyFunction
  self[18] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_18_Has
  l0.HasNOT = self.f_18_HasNOT
  self[6] = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = self.f_6_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = DummyFunction
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = self.f_6_OnAppInstalled
  self[17] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = self.f_17_Out
  l0.MessageCompleted = DummyFunction
  self[36] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_36_Out
  self[47] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[25] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[21] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[12]
  l0._graph = self
  l0.StartCommunicationOut = self.f_12_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[45] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_45_Out
  self[31] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[29] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[29]
  l0._graph = self
  l0.NewBeatStarted = self.f_29_NewBeatStarted
  self[11] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[11]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[40] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[40]
  l0._graph = self
  l0.Started = self.f_40_Started
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[8]
  l0._graph = self
  l0.NewBeatStarted = self.f_8_NewBeatStarted
  self[23] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.MessageCompleted = DummyFunction
  self[38] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Out = self.f_38_Out
  l0.MessageCompleted = DummyFunction
  self[35] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[1] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_1_Has
  l0.HasNOT = self.f_1_HasNOT
  self[5] = cbox:CreateBox("domino/System/ShopMonitor_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.OnClothingBought = DummyFunction
  l0.OnPartBought = self.f_5_OnPartBought
  l0.OnEnteredShop = DummyFunction
  l0.OnExitedShop = DummyFunction
  self[33] = cbox:CreateBox("domino/System/PlayerPhoneMonitor.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_33_Disabled
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  l0.OnPhoneOpened = DummyFunction
  l0.OnPhoneClosed = self.f_33_OnPhoneClosed
  l0.OnAppOpened = DummyFunction
  l0.OnAppClosed = DummyFunction
  l0.OnAppInstalled = DummyFunction
  self[7] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
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
  self:en_29()
  l0 = self[29]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_8()
  l0 = self[8]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_29()
  l0 = self[29]
  l0:StartNewBeat()
end
function export:f_37_Out_0()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Disable()
end
function export:f_37_Out_1()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ItemDB = "Items.9223372051918335305"
  l0:ExecuteRewards()
end
function export:f_42_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[30]
  l0.ItemDB = "Items.9223372065071594851"
  l0.DisplayFeedback = 0
  l0:ExecuteRewards()
end
function export:f_56_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372048122502589"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_57_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetNew()
end
function export:f_32_OnAppClosed()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(1)
end
function export:f_32_OnAppOpened()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:Display()
end
function export:f_32_OnPhoneClosed()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Display()
end
function export:f_32_OnPhoneOpened()
  local l0
  self = self._graph
  l0 = self[36]
  l0:Input(0)
end
function export:f_44_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(0)
end
function export:f_30_RewardsExecuted()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:StartNewBeat()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_24_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0.ProgressionTag = "ProgressionTag.9223372068308184303"
  l0:HasProgressionTag()
end
function export:f_54_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257062"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = self.f_55_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetHidden()
end
function export:f_43_Completed()
  local l0
  self = self._graph
  l0 = self[41]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective010",
    item = "Objective",
    id = "495562"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowLastObjectiveComplete()
end
function export:f_60_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257061"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = self.f_61_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetHidden()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_34_Out_0
  l0.Out[1] = self.f_34_Out_1
  l0:In()
end
function export:f_55_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257064"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_56_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_46_Disabled()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Entity = "9223372066903663491"
  l0.SoundId = "soundbinary/3549285901.bnk"
  l0:Play()
end
function export:f_46_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0.ProgressionTag = "ProgressionTag.9223372050495845974"
  l0:HasProgressionTag()
end
function export:f_46_Enter()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Disable()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(1)
end
function export:f_34_Out_0()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(1)
end
function export:f_34_Out_1()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Enable()
end
function export:f_13_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Objective010",
    item = "Objective",
    id = "578180"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_14_Has()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Objective010",
    item = "Objective",
    id = "578180"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_14_HasNOT()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_24_Out_0
  l0.Out[1] = self.f_24_Out_1
  l0:In()
end
function export:f_51_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257058"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_52_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetNew()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Objective011",
    item = "Objective",
    id = "617030"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_58_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257066"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = self.f_59_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetHidden()
end
function export:f_20_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.ItemDB = "Items.9223372050612020187"
  l0:ExecuteRewards()
end
function export:f_10_OverrideCleared()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454256970"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_2_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_59_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257067"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_60_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[28]
  l0:Input(0)
end
function export:f_64_Popped()
  local l0
  self = self._graph
  l0 = self[46]
  l0:Enable()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050440479833"
  l0:StartCommunication()
end
function export:f_2_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372045762345270"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_48_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetNew()
end
function export:f_53_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257059"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_54_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Succeed()
end
function export:f_18_Has()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_18_HasNOT()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Enable()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0.Out[2] = self.f_22_Out_2
  l0.Out[3] = self.f_22_Out_3
  l0.Out[4] = self.f_22_Out_4
  l0:In()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_6_OnAppInstalled()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_27_Out_0
  l0.Out[1] = self.f_27_Out_1
  l0:In()
end
function export:f_49_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257056"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = self.f_50_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetHidden()
end
function export:f_36_Out()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:Display()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = self[18]
  l0.ProgressionTag = "ProgressionTag.9223372051918335306"
  l0:HasProgressionTag()
end
function export:f_63_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372053993015444"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_65_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_12_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[42]
  l0.ItemDB = "Items.9223372045955692445"
  l0:ExecuteRewards()
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SendTrackingEvent.lua")]
  l0.TrackingEvent = "GetBackYourPhone"
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:In()
end
function export:f_52_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454256946"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_53_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetNew()
end
function export:f_29_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[29]
  self.PlayerEntity = l0.PlayerEntity
  l0 = Boxes[PathID("domino/System/SetActionMap_v2.lua")]
  l0.ActionMap = "cinematic"
  l0.ActionMapName = nil
  l0.ActionMapPriority = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.IsSet = DummyFunction
  l0.Pushed = DummyFunction
  l0.Popped = self.f_64_Popped
  l0:Pop()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  self:en_21()
  l0 = self[21]
  l0:HideNotification()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  self:en_35()
  l0 = self[35]
  l0:HideNotification()
end
function export:f_22_Out_2()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:HideNotification()
end
function export:f_22_Out_3()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_22_Out_4()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Notification020",
    item = "Notification",
    id = "578182"
  }
  l0.Duration = 60
  l0:Display()
end
function export:f_50_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257057"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = self.f_51_HiddenSet
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetHidden()
end
function export:f_11_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[40]
  l0.SoundId = "soundbinary/2670290390.bnk"
  l0.Supersede = 1
  l0.Queue = 1
  l0:Start()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Condition(0)
end
function export:f_27_Out_0()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_27_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:In()
end
function export:f_61_HiddenSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372053993014283"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_62_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_57_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257065"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = self.f_58_NewSet
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetNew()
end
function export:f_40_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = self.f_10_OverrideCleared
  l0:ClearOverride()
end
function export:f_8_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[38]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Objective010",
    item = "Objective",
    id = "495562"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_23_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_65_InstalledSet()
  local l0
  self = self._graph
  l0 = self[44]
  l0.ItemDB = "Items.9223372068308184302"
  l0:ExecuteRewards()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
  l0:Display()
end
function export:f_38_Out()
  local l0
  self = self._graph
  l0 = self[43]
  l0.MarkerEntity = "9223372065144196792"
  l0.Entity = "9223372047426345164"
  l0.IsManagingInteraction = 0
  l0:Start()
end
function export:f_66_OverrideActivated()
  local l0
  self = self._graph
  l0 = self[11]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050440479832"
  l0:StartCommunication()
end
function export:f_1_Has()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(1)
end
function export:f_1_HasNOT()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = nil
  l0.OverrideSettings = "UISmartphoneSettingsDB.9223372069651733436"
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = DummyFunction
  l0.OverrideActivated = self.f_66_OverrideActivated
  l0.OverrideCleared = DummyFunction
  l0:ActivateOverride()
end
function export:f_5_OnPartBought()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_37_Out_0
  l0.Out[1] = self.f_37_Out_1
  l0:In()
end
function export:f_33_Disabled()
  local l0
  self = self._graph
  l0 = self[31]
  l0.SurvivalGuideItemDB = "Items.9223372053993007750"
  l0:Display()
end
function export:f_33_OnPhoneClosed()
  local l0
  self = self._graph
  l0 = self[33]
  l0:Disable()
end
function export:f_48_NewSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257055"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_49_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_62_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372053993014285"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_63_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.App = "UIAppCatalogDB.9223372058140693657"
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.App = "UIAppCatalogDB.9223372046454257058"
end
function export:en_21()
  local l0
  l0 = self[21]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M015.Objectives.Notification010",
    item = "Notification",
    id = "578181"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "SelectAppShop",
    id = "699232"
  }
  l0.Duration = -1
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.ProgressionLayer = "ProgressionLayers.9223372065416514567"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.ProgressionLayer = "ProgressionLayers.9223372065416514567"
  l0.Checkpoint = "CheckPoint_1"
end
function export:en_35()
  local l0
  l0 = self[35]
  l0.Notification = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "NudleMap_Install_Notification_PC",
    id = "693869"
  }
  l0.Duration = -1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.PartType = "GraphicKit_PartTypes.9223372045158288032"
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01.S01M020.Objectives.Notification014",
    item = "Notification",
    id = "636699"
  }
  l0.Duration = -1
end
_compilerVersion = 4
