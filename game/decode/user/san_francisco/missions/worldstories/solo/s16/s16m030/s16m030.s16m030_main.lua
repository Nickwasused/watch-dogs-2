export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/ConvoyController.lua")
  cbox:RegisterBox("Domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("Domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("Domino/System/MissionController_v4.lua")
  cbox:RegisterBox("Domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MultipleAND.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PawnHealthMonitor_v3.lua")
  cbox:RegisterBox("Domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  cbox:RegisterBox("Domino/System/FleeBehaviorController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Barge_contact = nil
  self.Barge_Contact_Vehicle = nil
  self.Convoy_Disturbance_instigator = nil
  self.ConvoyID = 0
  self.Escort_Vehicle_01 = nil
  self.Escort_Guard_01 = nil
  self.Escort_Guard_02 = nil
  self.Escort_Guard_List = {}
  self.Escort_Car_List = {}
  self.Escort_Vehicle_02 = nil
  self[18] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_18_OnUserInPlace
  self[55] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[55]
  l0._graph = self
  l0.Shown = self.f_55_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[54] = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.lua")
  l0 = self[54]
  l0._graph = self
  l0.Attached = self.f_54_Attached
  self[10] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_10_Out
  l0.ResetOut = DummyFunction
  self[63] = cbox:CreateBox("Domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[63]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_63_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.CustomRatioReached = DummyFunction
  self[45] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[45]
  l0._graph = self
  l0.Out = self.f_45_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_9_OnUserInPlace
  self[28] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[28]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_28_OnUserInPlace
  self[15] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[36] = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self[36]
  l0._graph = self
  l0.Enabled = self.f_36_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_36_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self[49] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_49_Out
  self[44] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[44]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_44_Out
  self[64] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[64]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_64_MessageCompleted
  self[20] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_20_Unloaded
  l0.Reseted = DummyFunction
  self[19] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_19_OnUserInPlace
  self[5] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_5_PostOut
  self[52] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[52]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_52_OnCommunicationFinished
  l0.Out = DummyFunction
  self[53] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[53]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_53_Out
  self[7] = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self[7]
  l0._graph = self
  self[61] = cbox:CreateBox("Domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[61]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = self.f_61_Stopped
  l0.DownloadCompleted = self.f_61_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.CustomRatioReached = DummyFunction
  self[13] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.MessageCompleted = DummyFunction
  self[50] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[50]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_50_Out
  self[25] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[25]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_25_Out
  self[4] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
  self[31] = cbox:CreateBox("Domino/System/ConvoyMonitor.lua")
  l0 = self[31]
  l0._graph = self
  l0.Enabled = self.f_31_Enabled
  l0.Disabled = self.f_31_Disabled
  l0.StartMoving = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.VIPDied = self.f_31_VIPDied
  l0.VIPVehicleDestroyed = self.f_31_VIPVehicleDestroyed
  l0.EscortDied = self.f_31_EscortDied
  l0.EscortVehicleDestroyed = self.f_31_EscortVehicleDestroyed
  l0.ConvoyStuck = DummyFunction
  l0.ConvoyStopped = self.f_31_ConvoyStopped
  l0.HardDisturbance = self.f_31_HardDisturbance
  l0.SoftDisturbance = self.f_31_SoftDisturbance
  self[48] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_48_Added
  l0.Removed = self.f_48_Removed
  l0.Out = self.f_48_Out
  self[27] = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = self.f_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[16] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_16_Out
  self[3] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[51] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[51]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_51_OnUserInPlace
  self[57] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[57]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_57_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[21] = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self[21]
  l0._graph = self
  l0.Loaded = self.f_21_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[8]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_8_PostOut
  self[39] = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_39_Out
  self[47] = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self[47]
  l0._graph = self
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_47_Added
  l0.Removed = self.f_47_Removed
  l0.Out = self.f_47_Out
  self[37] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[37]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_37_OnUserInPlace
  self[41] = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self[41]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_41_OnCommunicationFinished
  l0.Out = DummyFunction
  self[38] = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self[38]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_38_OnUserInPlace
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
  l0 = self[44]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self[21]
  l0.LayerName = "S16M030_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[44]
  l0:Input(0)
end
function export:f_46_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_14_Out_0
  l0.Out[1] = self.f_14_Out_1
  l0:In()
end
function export:f_18_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[18]
  self.Barge_contact = l0.UserID
  l0 = self[49]
  l0:Condition(0)
end
function export:f_55_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Barge_contact
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602255"
  l0.Vehicle = nil
  l0._graph = self
  l0.Started = self.f_32_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0:Start()
end
function export:f_54_Attached()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:Hide()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = "9223372047520106273"
  l0.VIPCharacter = self.Barge_contact
  l0.VIPVehicle = self.Barge_Contact_Vehicle
  l0.EscortCharacters = self.Escort_Guard_List
  l0.EscortVehicles = self.Escort_Car_List
  l0.ConvoyConfig = "ConvoyConfig.9223372047711085750"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.ConvoyID
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_46_Stopped
  l0:Stop()
end
function export:f_63_DownloadCompleted()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(1)
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "9223372046830585758"
  l0:Activate()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_59_ScriptedAgentsAdded()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:AdoptScriptedAgents()
end
function export:f_9_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[9]
  self.Escort_Guard_01 = l0.UserID
  l0 = self[39]
  l0:Condition(0)
end
function export:f_28_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PostCinematic()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = "9223372047520106273"
  l0.VIPCharacter = self.Barge_contact
  l0.VIPVehicle = self.Barge_Contact_Vehicle
  l0.EscortCharacters = self.Escort_Guard_List
  l0.EscortVehicles = self.Escort_Car_List
  l0.ConvoyConfig = "ConvoyConfig.9223372047711085750"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.ConvoyID
  l0._graph = self
  l0.Started = self.f_17_Started
  l0.Updated = DummyFunction
  l0.Stopped = self.f_17_Stopped
  l0:Start()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Hide()
end
function export:f_36_Enabled()
  local l0
  self = self._graph
  self:en_55()
  l0 = self[55]
  l0:Show()
end
function export:f_36_Killed()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(1)
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S16M030_Main"
  l0:Load()
end
function export:f_22_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_60_Out_0
  l0.Out[1] = self.f_60_Out_1
  l0:In()
end
function export:f_64_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[20]
  l0.LayerName = "S16M030_Main"
  l0:Unload()
end
function export:f_20_Unloaded()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Succeed()
end
function export:f_19_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[19]
  self.Barge_Contact_Vehicle = l0.UserID
  l0 = self[49]
  l0:Condition(1)
end
function export:f_5_PostOut()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(1)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[45]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_32_Started()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:StartChase()
end
function export:f_52_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Input(0)
end
function export:f_53_Out()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Stop()
end
function export:f_17_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.ConvoyID = l0.OutConvoyId
  self:en_22()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_17_Stopped()
  local l0
  self = self._graph
  self:en_22()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_29_Out_0()
  local l0
  self = self._graph
  l0 = self[18]
  l0.CLO = "9223372047520074162"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_29_Out_1()
  local l0
  self = self._graph
  l0 = self[19]
  l0.CLO = "9223372047520074154"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_29_Out_2()
  local l0
  self = self._graph
  l0 = self[37]
  l0.CLO = "9223372049658444478"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_29_Out_3()
  local l0
  self = self._graph
  l0 = self[51]
  l0.CLO = "9223372049658447869"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_29_Out_4()
  local l0
  self = self._graph
  l0 = self[9]
  l0.CLO = "9223372049658444479"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_29_Out_5()
  local l0
  self = self._graph
  l0 = self[38]
  l0.CLO = "9223372049658444480"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_29_Out_6()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Show()
end
function export:f_33_Equal()
  local l0
  self = self._graph
  l0 = self[10]
  l0:In(0)
end
function export:f_61_DownloadCompleted()
  local l0
  self = self._graph
  l0 = self[25]
  l0:Input(0)
end
function export:f_61_Stopped()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Start()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_29_Out_0
  l0.Out[1] = self.f_29_Out_1
  l0.Out[2] = self.f_29_Out_2
  l0.Out[3] = self.f_29_Out_3
  l0.Out[4] = self.f_29_Out_4
  l0.Out[5] = self.f_29_Out_5
  l0.Out[6] = self.f_29_Out_6
  l0:In()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.Input = self.Escort_Car_List
  l0.Data[0] = self.Escort_Vehicle_01
  l0.Data[1] = self.Escort_Vehicle_02
  l0:Add()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[28]
  l0.CLO = "9223372046830585758"
  l0:Activate()
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0:In()
end
function export:f_60_Out_0()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Enable()
end
function export:f_60_Out_1()
  local l0
  self = self._graph
  self:en_61()
  l0 = self[61]
  l0:Start()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Checkpoint = "CheckPoint_1"
  l0:In()
end
function export:f_31_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_31_Disabled()
  local l0
  self = self._graph
  l0 = self[53]
  l0:Input(0)
end
function export:f_31_Enabled()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Parent = self.Barge_contact
  l0.Child = "9223372050569004475"
  l0:Attach()
end
function export:f_31_EscortDied()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_31_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_31_HardDisturbance()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
  l0 = self[16]
  l0:Input(1)
end
function export:f_31_SoftDisturbance()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
  l0 = self[16]
  l0:Input(0)
end
function export:f_31_VIPDied()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
  l0:Disable()
end
function export:f_31_VIPVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self[31]
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_12_ChaseStarted()
  local l0
  self = self._graph
  self:en_12()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0:AddScripted()
end
function export:f_12_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = "Boys"
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = self.Escort_Car_List
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_59_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
  l0:AddScripted()
end
function export:f_48_Added()
  local l0
  self = self._graph
  l0 = self[48]
  self.Escort_Car_List = l0.Target
  l0 = self[49]
  l0:Condition(2)
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = self[48]
  self.Escort_Car_List = l0.Target
end
function export:f_48_Removed()
  local l0
  self = self._graph
  l0 = self[48]
  self.Escort_Car_List = l0.Target
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M030.Objectives.Objective010",
    item = "Objective",
    id = "345157"
  }
  l0:ShowNewObjective()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Convoy_Disturbance_instigator
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0.Out = DummyFunction
  l0.Equal = self.f_33_Equal
  l0.NotEqual = DummyFunction
  l0:In()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0:PostCinematic()
end
function export:f_14_Out_0()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:Enable()
end
function export:f_14_Out_1()
  local l0
  self = self._graph
  self:en_36()
  l0 = self[36]
  l0:CheckIfDead()
end
function export:f_51_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[51]
  self.Escort_Vehicle_02 = l0.UserID
  l0 = self[50]
  l0:Condition(1)
end
function export:f_57_Hidden()
  local l0
  self = self._graph
  l0 = self[41]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825623"
  l0:StartCommunication()
end
function export:f_21_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_8_PostOut()
  local l0
  self = self._graph
  l0 = self[52]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345775"
  l0:StartCommunication()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Input = self.Escort_Guard_List
  l0.Data[0] = self.Escort_Guard_01
  l0.Data[1] = self.Escort_Guard_02
  l0:Add()
end
function export:f_58_Stopped()
  local l0
  self = self._graph
  l0 = self[57]
  l0.MapPoint = "9223372050569004475"
  l0:Hide()
end
function export:f_47_Added()
  local l0
  self = self._graph
  l0 = self[47]
  self.Escort_Guard_List = l0.Target
  l0 = self[49]
  l0:Condition(3)
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[47]
  self.Escort_Guard_List = l0.Target
end
function export:f_47_Removed()
  local l0
  self = self._graph
  l0 = self[47]
  self.Escort_Guard_List = l0.Target
end
function export:f_37_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[37]
  self.Escort_Vehicle_01 = l0.UserID
  l0 = self[50]
  l0:Condition(0)
end
function export:f_41_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[64]
  l0:ShowMissionComplete()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  l0.Destination = "9223372047520106273"
  l0.VIPCharacter = self.Barge_contact
  l0.VIPVehicle = self.Barge_Contact_Vehicle
  l0.EscortCharacters = self.Escort_Guard_List
  l0.EscortVehicles = self.Escort_Car_List
  l0.ConvoyConfig = "ConvoyConfig.9223372047711085750"
  l0.ObjectiveText = nil
  l0.InConvoyId = self.ConvoyID
  l0._graph = self
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_58_Stopped
  l0:Stop()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  self:en_63()
  l0 = self[63]
  l0:Stop()
end
function export:f_38_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[38]
  self.Escort_Guard_02 = l0.UserID
  l0 = self[39]
  l0:Condition(1)
end
function export:en_55()
  local l0
  l0 = self[55]
  l0.MapPoint = "9223372050569004475"
end
function export:en_63()
  local l0
  l0 = self[63]
  l0.TargetEntity = self.Barge_contact
  l0.LinkedObjective = "Objective"
  l0.Duration = 5
  l0.OverridedRadius = 15
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.5
  l0.FleeOnDownloadDetected = 1
  l0.Affiliation = "Boys"
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.MapPoint = "9223372046830509732"
end
function export:en_36()
  local l0
  l0 = self[36]
  l0.Pawn = self.Barge_contact
end
function export:en_22()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Barge_Contact_Vehicle
  l0.Path = "9223372047520106273"
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0.Enabled = self.f_22_Enabled
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:en_61()
  local l0
  l0 = self[61]
  l0.TargetEntity = self.Barge_contact
  l0.LinkedObjective = "Objective"
  l0.Duration = 60
  l0.OverridedRadius = 50
  l0.DownloadingText = {
    section = "HACKING.Interface Messages",
    item = "RetrievingData",
    id = "132264"
  }
  l0.DownloadingPausedText = {
    section = "HACKING.Interface Messages",
    item = "ConnectionLost",
    id = "5905"
  }
  l0.CustomRatio = 0.5
  l0.FleeOnDownloadDetected = 1
  l0.Affiliation = "Boys"
  l0.ReinforcementConfig = "ReinforcementConfig.9223372043023253487"
end
function export:en_12()
  local l0
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = "Boys"
  l0.HeatValue = 100
  l0.FelonyLevel = 5
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372048779320407"
  l0.AgentList = self.Escort_Guard_List
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_12_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_12_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
_compilerVersion = 4
