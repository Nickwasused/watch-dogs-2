export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CLOMonitor.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMonitor.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:RegisterBox("domino/System/UnspawnController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.L36M000_Talker = nil
  self[16] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_16_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[38] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[38]
  l0._graph = self
  l0.NewBeatStarted = self.f_38_NewBeatStarted
  self[33] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_33_DisplayRequested
  l0.NotificationHidden = self.f_33_NotificationHidden
  l0.MessageCompleted = DummyFunction
  self[49] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[49]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_49_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[27] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[27]
  l0._graph = self
  l0.NewBeatStarted = self.f_27_NewBeatStarted
  self[28] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_28_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[37] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_37_Out
  self[40] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[40]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_40_RewardsExecuted
  self[41] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[41]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = self.f_41_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[1] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_1_GotUser
  l0.NotGotUser = self.f_1_NotGotUser
  l0.OnUserInPlace = self.f_1_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[46] = cbox:CreateBox("domino/System/CLOMonitor.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.GotUser = self.f_46_GotUser
  l0.NotGotUser = self.f_46_NotGotUser
  l0.OnUserInPlace = self.f_46_OnUserInPlace
  l0.OnReserve = DummyFunction
  l0.OnAnimBegin = DummyFunction
  l0.OnProximityActionAnimBegin = DummyFunction
  l0.OnAnimEnd = DummyFunction
  l0.OnUserQuit = DummyFunction
  l0.OnUserUnspawn = DummyFunction
  self[26] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[26]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_26_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[23] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_23_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[21] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Enabled = self.f_21_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_21_Leave
  l0.Use = DummyFunction
  self[25] = cbox:CreateBox("domino/System/PlayerProximityMonitor.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_25_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_25_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0.MessageCompleted = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[22]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_22_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[43] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[43]
  l0._graph = self
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
  self[14] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_14_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Input = 13}
  l0.Out = self.f_12_Out
  self[45] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[45]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_45_Out
  self[47] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_47_Disabled
  l0.Enter = self.f_47_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[34] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[34]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[29] = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self[24] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_24_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[44] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[44]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_44_Disabled
  l0.Enter = self.f_44_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_7_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_15_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[31] = cbox:CreateBox("domino/System/ProgressionTagMonitor.lua")
  l0 = self[31]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = self.f_31_Has
  l0.HasNOT = self.f_31_HasNOT
  self[20] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[20]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_20_Loaded
  l0.Unloaded = DummyFunction
  self[39] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Reach_Gameplay.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Reached = self.f_3_Reached
  self[42] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[42]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_42_Deactivated
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_8_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_19_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = self.f_17_DisplayRequested
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[13]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_30_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[18] = cbox:CreateBox("domino/System/MissionMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Tracked = DummyFunction
  l0.NotTracked = DummyFunction
  l0.Completed = DummyFunction
  l0.NotCompleted = DummyFunction
  l0.OnMissionSucceeded = self.f_18_OnMissionSucceeded
  l0.OnMissionFailed = DummyFunction
  l0.OnMissionAborted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[11]
  l0._graph = self
  self[9] = cbox:CreateBox("domino/System/UnspawnController.lua")
  l0 = self[9]
  l0._graph = self
  l0.EntityUnspawned = DummyFunction
  l0.AutomaticCLOUnspawned = DummyFunction
  l0.NpcSentToUnspawn = DummyFunction
  l0.NpcUnspawned = DummyFunction
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
  self:en_38()
  l0 = self[38]
  l0:FromCheckpoint()
end
function export:CheckPoint_1()
  local l0
  self:en_27()
  l0 = self[27]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  self:en_38()
  l0 = self[38]
  l0:StartNewBeat()
end
function export:f_16_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(4)
end
function export:f_38_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[38]
  self.PlayerEntity = l0.PlayerEntity
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257057"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_35_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_33_DisplayRequested()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:ShowNewObjective()
end
function export:f_33_NotificationHidden()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:HideObjective()
end
function export:f_49_Deactivated()
  local l0
  self = self._graph
  l0 = self[43]
  l0:UnspawnEntity()
end
function export:f_27_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[27]
  self.PlayerEntity = l0.PlayerEntity
  l0 = self[31]
  l0.ProgressionTag = "ProgressionTag.9223372049814636041"
  l0:HasProgressionTag()
end
function export:f_28_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(11)
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372049978419127"
  l0.AutoGPS = 1
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0.MarkerEntity = "9223372067860548851"
  l0:Start()
end
function export:f_40_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Succeed()
end
function export:f_41_TagIsOwned()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(1)
end
function export:f_1_GotUser()
  local l0, l1
  self = self._graph
  l0 = self[1]
  l1 = self[43]
  l1.Entity = l0.UserID
  l0 = self[49]
  l0.CLO = "9223372067694577644"
  l0:Deactivate()
end
function export:f_1_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self[1]
  l1 = self[43]
  l1.Entity = l0.UserID
end
function export:f_1_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[1]
  l1 = self[43]
  l1.Entity = l0.UserID
end
function export:f_46_GotUser()
  local l0, l1
  self = self._graph
  l0 = self[46]
  l1 = self[9]
  l1.Entity = l0.UserID
  l0 = self[42]
  l0.CLO = "9223372062859881706"
  l0:Deactivate()
end
function export:f_46_NotGotUser()
  local l0, l1
  self = self._graph
  l0 = self[46]
  l1 = self[9]
  l1.Entity = l0.UserID
end
function export:f_46_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self[46]
  l1 = self[9]
  l1.Entity = l0.UserID
end
function export:f_26_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(10)
end
function export:f_23_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(8)
end
function export:f_21_Enabled()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Display()
end
function export:f_21_Leave()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_36_Out_0
  l0.Out[1] = self.f_36_Out_1
  l0:In()
end
function export:f_25_Disabled()
  local l0
  self = self._graph
  l0 = self[29]
  l0.ItemDB = "Items.9223372066268170148"
  l0:ExecuteRewards()
end
function export:f_25_ExitRadius()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Disable()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(1)
end
function export:f_22_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(7)
end
function export:f_14_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(2)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0:ShowLastObjectiveComplete()
end
function export:f_45_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:HideNotification()
end
function export:f_47_Disabled()
  local l0
  self = self._graph
  l0 = self[20]
  l0.ProgressionLayer = "ProgressionLayers.9223372067694577645"
  l0:Enable()
end
function export:f_47_Enter()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:Disable()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Enable()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Enable()
end
function export:f_4_Out_2()
  local l0
  self = self._graph
  l0 = self[39]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01A.S01AM010.Objectives.Objective010",
    item = "Objective",
    id = "578183"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_4_Out_3()
  local l0
  self = self._graph
  l0 = self[41]
  l0.ProgressionTag = "ProgressionTag.9223372067860549099"
  l0:Enable()
end
function export:f_4_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 13}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0.Out[2] = self.f_6_Out_2
  l0.Out[3] = self.f_6_Out_3
  l0.Out[4] = self.f_6_Out_4
  l0.Out[5] = self.f_6_Out_5
  l0.Out[6] = self.f_6_Out_6
  l0.Out[7] = self.f_6_Out_7
  l0.Out[8] = self.f_6_Out_8
  l0.Out[9] = self.f_6_Out_9
  l0.Out[10] = self.f_6_Out_10
  l0.Out[11] = self.f_6_Out_11
  l0.Out[12] = self.f_6_Out_12
  l0:In()
end
function export:f_24_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(9)
end
function export:f_44_Disabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SurvivalGuideItemDB = "Items.9223372053993007723"
  l0:Display()
end
function export:f_44_Enter()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Disable()
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Mission = "MissionList.9223372046384707489"
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Mission = "MissionList.9223372047161492039"
  l0:Enable()
end
function export:f_6_Out_2()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Mission = "MissionList.9223372047486643318"
  l0:Enable()
end
function export:f_6_Out_3()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Mission = "MissionList.9223372047486643321"
  l0:Enable()
end
function export:f_6_Out_4()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Mission = "MissionList.9223372050041486955"
  l0:Enable()
end
function export:f_6_Out_5()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Mission = "MissionList.9223372049813514927"
  l0:Enable()
end
function export:f_6_Out_6()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Mission = "MissionList.9223372052610095779"
  l0:Enable()
end
function export:f_6_Out_7()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Mission = "MissionList.9223372049270893440"
  l0:Enable()
end
function export:f_6_Out_8()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Mission = "MissionList.9223372049691693759"
  l0:Enable()
end
function export:f_6_Out_9()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Mission = "MissionList.9223372049634201749"
  l0:Enable()
end
function export:f_6_Out_10()
  local l0
  self = self._graph
  l0 = self[26]
  l0.Mission = "MissionList.9223372049068555681"
  l0:Enable()
end
function export:f_6_Out_11()
  local l0
  self = self._graph
  l0 = self[28]
  l0.Mission = "MissionList.9223372049643736629"
  l0:Enable()
end
function export:f_6_Out_12()
  local l0
  self = self._graph
  l0 = self[30]
  l0.Mission = "MissionList.9223372049593485557"
  l0:Enable()
end
function export:f_7_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(1)
end
function export:f_15_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(3)
end
function export:f_31_Has()
  local l0
  self = self._graph
  l0 = self[34]
  l0:Succeed()
end
function export:f_31_HasNOT()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0.Out[2] = self.f_4_Out_2
  l0.Out[3] = self.f_4_Out_3
  l0.Out[4] = self.f_4_Out_4
  l0:In()
end
function export:f_20_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_50_Out_0
  l0.Out[1] = self.f_50_Out_1
  l0:In()
end
function export:f_48_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[37]
  l0:Input(0)
end
function export:f_3_Reached()
  local l0
  self = self._graph
  l0 = self[21]
  l0.Trigger = "9223372060752493650"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_42_Deactivated()
  local l0
  self = self._graph
  l0 = self[9]
  l0:UnspawnEntity()
end
function export:f_50_Out_0()
  local l0
  self = self._graph
  l0 = self[46]
  l0.CLO = "9223372062859881706"
  l0:GetUser()
end
function export:f_50_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0.CLO = "9223372067694577644"
  l0:GetUser()
end
function export:f_8_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(0)
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_47()
  l0 = self[47]
  l0:Enable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  self:en_27()
  l0 = self[27]
  l0:StartNewBeat()
end
function export:f_19_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(6)
end
function export:f_17_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[13]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050440479834"
  l0:StartCommunication()
end
function export:f_36_Out_0()
  local l0
  self = self._graph
  l0 = self[45]
  l0:Input(0)
end
function export:f_36_Out_1()
  local l0
  self = self._graph
  l0 = self[32]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01A.S01AM010.Objectives.Objective010",
    item = "Objective",
    id = "578183"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_35_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257066"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_48_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_30_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(12)
end
function export:f_18_OnMissionSucceeded()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Input(5)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[40]
  l0.ItemDB = "Items.9223372066268170148"
  l0:ExecuteRewards()
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.ProgressionLayer = "ProgressionLayers.9223372049988224407"
  l0.Checkpoint = "CheckPoint_0"
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_NetHackDiscovery",
    item = "Description",
    id = "697700"
  }
  l0.Duration = -1
end
function export:en_27()
  local l0
  l0 = self[27]
  l0.ProgressionLayer = "ProgressionLayers.9223372049988224407"
  l0.Checkpoint = "CheckPoint_1"
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.TargetEntity = "9223372049978419127"
  l0.Radius = 250
end
function export:en_47()
  local l0
  l0 = self[47]
  l0.Trigger = "9223372047131548062"
  l0.CheckNow = 1
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01A.S01AM010.Objectives.Objective022",
    item = "Objective",
    id = "694082"
  }
  l0.HasObjectiveMarker = 0
end
function export:en_44()
  local l0
  l0 = self[44]
  l0.Trigger = "9223372066541786105"
end
_compilerVersion = 4
