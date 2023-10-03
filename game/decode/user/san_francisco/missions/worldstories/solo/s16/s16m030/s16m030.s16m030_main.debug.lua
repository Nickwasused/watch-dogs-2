export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GPS3DController.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CLOController.lua")
  cbox:RegisterBox("Domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("Domino/System/ConvoyController.lua")
  cbox:RegisterBox("Domino/System/ConvoyMonitor.lua")
  cbox:RegisterBox("Domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
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
  cbox:RegisterBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("Domino/System/FleeBehaviorController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S16M030_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main"
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
  self.box_CLOController_18 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_18
  l0._graph = self
  l0._name = "box_CLOController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|42510922"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_18_OnUserInPlace
  self.box_MapPointController_v3_55 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_55
  l0._graph = self
  l0._name = "box_MapPointController_v3_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|62761447"
  l0.Shown = self.f_box_MapPointController_v3_55_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_SnapAndBind_54 = cbox:CreateBox("Domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_54
  l0._graph = self
  l0._name = "box_SnapAndBind_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|92183432"
  l0.Attached = self.f_box_SnapAndBind_54_Attached
  self.box_OnceOnly_v3_10 = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_10
  l0._graph = self
  l0._name = "box_OnceOnly_v3_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|138078912"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_10_Out
  l0.ResetOut = DummyFunction
  self.box_Download_Gameplay_63 = cbox:CreateBox("Domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_63
  l0._graph = self
  l0._name = "box_Download_Gameplay_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|182524624"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_63_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.CustomRatioReached = DummyFunction
  self.box_MissionCheckpointReach_45 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_45
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|200384781"
  l0.Out = self.f_box_MissionCheckpointReach_45_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_9 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_9
  l0._graph = self
  l0._name = "box_CLOController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|330240660"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_9_OnUserInPlace
  self.box_CLOController_28 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_28
  l0._graph = self
  l0._name = "box_CLOController_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|371067284"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_28_OnUserInPlace
  self.box_MapPointController_v3_15 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_15
  l0._graph = self
  l0._name = "box_MapPointController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|423550077"
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_PawnHealthMonitor_v3_36 = cbox:CreateBox("Domino/System/PawnHealthMonitor_v3.lua")
  l0 = self.box_PawnHealthMonitor_v3_36
  l0._graph = self
  l0._name = "box_PawnHealthMonitor_v3_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|468686632"
  l0.Enabled = self.f_box_PawnHealthMonitor_v3_36_Enabled
  l0.Disabled = DummyFunction
  l0.Damaged = DummyFunction
  l0.Killed = self.f_box_PawnHealthMonitor_v3_36_Killed
  l0.DBNO = DummyFunction
  l0.AllDead = DummyFunction
  l0.IsUnderwater = DummyFunction
  l0.DeadChecked = DummyFunction
  l0.HealthChecked = DummyFunction
  self.box_Multiple_AND_49 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_49
  l0._graph = self
  l0._name = "box_Multiple_AND_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|509306763"
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_box_Multiple_AND_49_Out
  self.box_MultipleOR_44 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_44
  l0._graph = self
  l0._name = "box_MultipleOR_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|555989684"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_44_Out
  self.box_MissionMessageController_v3_64 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_64
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|700298449"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_64_MessageCompleted
  self.box_MissionLayer_v2_20 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_20
  l0._graph = self
  l0._name = "box_MissionLayer_v2_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|700302877"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_20_Unloaded
  l0.Reseted = DummyFunction
  self.box_CLOController_19 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_19
  l0._graph = self
  l0._name = "box_CLOController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|717072186"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_19_OnUserInPlace
  self.box_CinematicPrep_5 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|735368552"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_5_PostOut
  self.box_PhoneCommunicationController_52 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_52
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|928309529"
  l0.StartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_52_OnCommunicationFinished
  l0.Out = DummyFunction
  self.box_MultipleOR_53 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_53
  l0._graph = self
  l0._name = "box_MultipleOR_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|940593585"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_53_Out
  self.box_MissionController_v4_7 = cbox:CreateBox("Domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_7
  l0._graph = self
  l0._name = "box_MissionController_v4_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1061795144"
  self.box_Download_Gameplay_61 = cbox:CreateBox("Domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_61
  l0._graph = self
  l0._name = "box_Download_Gameplay_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1218575388"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Download_Gameplay_61_Stopped
  l0.DownloadCompleted = self.f_box_Download_Gameplay_61_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.CustomRatioReached = DummyFunction
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1235431441"
  l0.Out = self.f_box_MissionMessageController_v3_13_Out
  l0.MessageCompleted = DummyFunction
  self.box_Multiple_AND_50 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_50
  l0._graph = self
  l0._name = "box_Multiple_AND_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1273774043"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_50_Out
  self.box_MultipleOR_25 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_25
  l0._graph = self
  l0._name = "box_MultipleOR_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1385121512"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_25_Out
  self.box_MultipleOR_4 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_4
  l0._graph = self
  l0._name = "box_MultipleOR_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1406059284"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_4_Out
  self.box_ConvoyMonitor_31 = cbox:CreateBox("Domino/System/ConvoyMonitor.lua")
  l0 = self.box_ConvoyMonitor_31
  l0._graph = self
  l0._name = "box_ConvoyMonitor_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1489615994"
  l0.Enabled = self.f_box_ConvoyMonitor_31_Enabled
  l0.Disabled = self.f_box_ConvoyMonitor_31_Disabled
  l0.StartMoving = DummyFunction
  l0.DestinationReached = DummyFunction
  l0.VIPDied = self.f_box_ConvoyMonitor_31_VIPDied
  l0.VIPVehicleDestroyed = self.f_box_ConvoyMonitor_31_VIPVehicleDestroyed
  l0.EscortDied = self.f_box_ConvoyMonitor_31_EscortDied
  l0.EscortVehicleDestroyed = self.f_box_ConvoyMonitor_31_EscortVehicleDestroyed
  l0.ConvoyStuck = DummyFunction
  l0.ConvoyStopped = self.f_box_ConvoyMonitor_31_ConvoyStopped
  l0.HardDisturbance = self.f_box_ConvoyMonitor_31_HardDisturbance
  l0.SoftDisturbance = self.f_box_ConvoyMonitor_31_SoftDisturbance
  self.box_ListWriter_48 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_48
  l0._graph = self
  l0._name = "box_ListWriter_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1533974944"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_48_Added
  l0.Removed = self.f_box_ListWriter_48_Removed
  l0.Out = self.f_box_ListWriter_48_Out
  self.box_MissionCheckpointReach_27 = cbox:CreateBox("Domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_27
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1568413497"
  l0.Out = self.f_box_MissionCheckpointReach_27_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MultipleOR_16 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_16
  l0._graph = self
  l0._name = "box_MultipleOR_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1569291406"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_16_Out
  self.box_CLOController_3 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_3
  l0._graph = self
  l0._name = "box_CLOController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1597771369"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_3_OnUserInPlace
  self.box_CLOController_51 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_51
  l0._graph = self
  l0._name = "box_CLOController_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1615934431"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_51_OnUserInPlace
  self.box_MapPointController_v3_57 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_57
  l0._graph = self
  l0._name = "box_MapPointController_v3_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1676789586"
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_MapPointController_v3_57_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self.box_MissionLayer_v2_21 = cbox:CreateBox("Domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_21
  l0._graph = self
  l0._name = "box_MissionLayer_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1685360741"
  l0.Loaded = self.f_box_MissionLayer_v2_21_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_8 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1686108497"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_Multiple_AND_39 = cbox:CreateBox("Domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_39
  l0._graph = self
  l0._name = "box_Multiple_AND_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1686593822"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_39_Out
  self.box_ListWriter_47 = cbox:CreateBox("Domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_47
  l0._graph = self
  l0._name = "box_ListWriter_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1770359502"
  l0._DynamicAnchors = {Data = 2}
  l0.Added = self.f_box_ListWriter_47_Added
  l0.Removed = self.f_box_ListWriter_47_Removed
  l0.Out = self.f_box_ListWriter_47_Out
  self.box_CLOController_37 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_37
  l0._graph = self
  l0._name = "box_CLOController_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1914230125"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_37_OnUserInPlace
  self.box_PhoneCommunicationController_41 = cbox:CreateBox("Domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_41
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2040848433"
  l0.StartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_41_OnCommunicationFinished
  l0.Out = DummyFunction
  self.box_CLOController_38 = cbox:CreateBox("Domino/System/CLOController.lua")
  l0 = self.box_CLOController_38
  l0._graph = self
  l0._name = "box_CLOController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2082748565"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_38_OnUserInPlace
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
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|671113331", "671113331", "S16M030_Main", "CheckPoint_0", "box_MultipleOR_44.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_21
  l0.LayerName = "S16M030_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|226641011", "226641011", "S16M030_Main", "CheckPoint_1", "box_MissionLayer_v2_21.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_44()
  l0 = self.box_MultipleOR_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1326517612", "1326517612", "S16M030_Main", "In", "box_MultipleOR_44.Input", self, l0)
  l0:Input(0)
end
function export:f_box_ConvoyController_46_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1614171846"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1211399058", "1211399058", "S16M030_Main", "box_ConvoyController_46.Stopped", "box_Ordered_Output_14.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_18_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_18
  self.Barge_contact = l0.UserID
  self:OnEnter_box_Multiple_AND_49()
  l1 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|842167096", "842167096", "S16M030_Main", "box_CLOController_18.OnUserInPlace", "box_Multiple_AND_49.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_MapPointController_v3_55_Shown()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FleeBehaviorController.lua")]
  l0.Target = self.Barge_contact
  l0.TargetList = nil
  l0.Destination = nil
  l0.Threat = self.PlayerEntity
  l0.Config = "FleeBehaviorDescriptor.9223372049386602255"
  l0.Vehicle = nil
  l0._graph = self
  l0._name = "box_Start_Update_Stop_flee_behavior_on_an_AI_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|864288374"
  l0.Started = self.f_box_Start_Update_Stop_flee_behavior_on_an_AI_32_Started
  l0.Updated = DummyFunction
  l0.Stopped = DummyFunction
  l0 = self.box_MapPointController_v3_55
  l1 = Boxes[PathID("Domino/System/FleeBehaviorController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|303115923", "303115923", "S16M030_Main", "box_MapPointController_v3_55.Shown", "box_Start_Update_Stop_flee_behavior_on_an_AI_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_SnapAndBind_54_Attached()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_55()
  l0 = self.box_SnapAndBind_54
  l1 = self.box_MapPointController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1700029724", "1700029724", "S16M030_Main", "box_SnapAndBind_54.Attached", "box_MapPointController_v3_55.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_OnceOnly_v3_10_Out()
  local l0, l1
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
  l0._name = "box_ConvoyController_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|24014018"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_46_Stopped
  l0 = self.box_OnceOnly_v3_10
  l1 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|633909696", "633909696", "S16M030_Main", "box_OnceOnly_v3_10.Out", "box_ConvoyController_46.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_Download_Gameplay_63_DownloadCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_Download_Gameplay_63
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1821260763", "1821260763", "S16M030_Main", "box_Download_Gameplay_63.DownloadCompleted", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionCheckpointReach_45_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_3
  l0.CLO = "9223372046830585758"
  l0 = self.box_MissionCheckpointReach_45
  l1 = self.box_CLOController_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|945456473", "945456473", "S16M030_Main", "box_MissionCheckpointReach_45.Out", "box_CLOController_3.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|794668992", "794668992", "S16M030_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_FelonyTargetController_59_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_12()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1477025480", "1477025480", "S16M030_Main", "box_FelonyTargetController_59.ScriptedAgentsAdded", "box_FelonyTargetController_12.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_CLOController_9_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_9
  self.Escort_Guard_01 = l0.UserID
  self:OnEnter_box_Multiple_AND_39()
  l1 = self.box_Multiple_AND_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|78544810", "78544810", "S16M030_Main", "box_CLOController_9.OnUserInPlace", "box_Multiple_AND_39.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_CLOController_28_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_CLOController_28
  l1 = self.box_CinematicPrep_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1842772205", "1842772205", "S16M030_Main", "box_CLOController_28.OnUserInPlace", "box_CinematicPrep_5.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_ConvoyController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1017573001"
  l0.Started = self.f_box_ConvoyController_17_Started
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_17_Stopped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|26148331", "26148331", "S16M030_Main", "box_Ordered_Output_35.Out", "box_ConvoyController_17.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_15()
  l0 = self.box_MapPointController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1237460099", "1237460099", "S16M030_Main", "box_Ordered_Output_35.Out", "box_MapPointController_v3_15.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_PawnHealthMonitor_v3_36_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MapPointController_v3_55()
  l0 = self.box_PawnHealthMonitor_v3_36
  l1 = self.box_MapPointController_v3_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|458058196", "458058196", "S16M030_Main", "box_PawnHealthMonitor_v3_36.Enabled", "box_MapPointController_v3_55.Show", l0, l1)
  l1:Show()
end
function export:f_box_PawnHealthMonitor_v3_36_Killed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_PawnHealthMonitor_v3_36
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1809599739", "1809599739", "S16M030_Main", "box_PawnHealthMonitor_v3_36.Killed", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Multiple_AND_49_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|377520222"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_Multiple_AND_49
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1452194223", "1452194223", "S16M030_Main", "box_Multiple_AND_49.Out", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_44_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S16M030_Main"
  l0 = self.box_MultipleOR_44
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|214669947", "214669947", "S16M030_Main", "box_MultipleOR_44.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_3DGPSController_22_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1394026102"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_60_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_60_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|844467757", "844467757", "S16M030_Main", "box_3DGPSController_22.Enabled", "box_Ordered_Output_60.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_64_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_20
  l0.LayerName = "S16M030_Main"
  l0 = self.box_MissionMessageController_v3_64
  l1 = self.box_MissionLayer_v2_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1837140435", "1837140435", "S16M030_Main", "box_MissionMessageController_v3_64.MessageCompleted", "box_MissionLayer_v2_20.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_20_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_20
  l1 = self.box_MissionController_v4_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1038119384", "1038119384", "S16M030_Main", "box_MissionLayer_v2_20.Unloaded", "box_MissionController_v4_7.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_CLOController_19_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_19
  self.Barge_Contact_Vehicle = l0.UserID
  self:OnEnter_box_Multiple_AND_49()
  l1 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1450661818", "1450661818", "S16M030_Main", "box_CLOController_19.OnUserInPlace", "box_Multiple_AND_49.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_CinematicPrep_5_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_CinematicPrep_5
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1045161331", "1045161331", "S16M030_Main", "box_CinematicPrep_5.PostOut", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_45
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1494316235", "1494316235", "S16M030_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_45.In", clone, l0)
  l0:In()
end
function export:f_box_Start_Update_Stop_flee_behavior_on_an_AI_32_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FleeBehaviorController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_12()
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2068133941", "2068133941", "S16M030_Main", "box_Start_Update_Stop_flee_behavior_on_an_AI_32.Started", "box_FelonyTargetController_12.StartChase", clone, l0)
  l0:StartChase()
end
function export:f_box_PhoneCommunicationController_52_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_4()
  l0 = self.box_PhoneCommunicationController_52
  l1 = self.box_MultipleOR_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|634930244", "634930244", "S16M030_Main", "box_PhoneCommunicationController_52.OnCommunicationFinished", "box_MultipleOR_4.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_53_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Download_Gameplay_61()
  l0 = self.box_MultipleOR_53
  l1 = self.box_Download_Gameplay_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1069949502", "1069949502", "S16M030_Main", "box_MultipleOR_53.Out", "box_Download_Gameplay_61.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_ConvoyController_17_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  self.ConvoyID = l0.OutConvoyId
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_22()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1642201398", "1642201398", "S16M030_Main", "box_ConvoyController_17.Started", "box_3DGPSController_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_ConvoyController_17_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_3DGPSController_22()
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1690328243", "1690328243", "S16M030_Main", "box_ConvoyController_17.Stopped", "box_3DGPSController_22.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_29_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_18
  l0.CLO = "9223372047520074162"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1510053574", "1510053574", "S16M030_Main", "box_Ordered_Output_29.Out", "box_CLOController_18.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_29_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_19
  l0.CLO = "9223372047520074154"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1827414603", "1827414603", "S16M030_Main", "box_Ordered_Output_29.Out", "box_CLOController_19.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_29_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_37
  l0.CLO = "9223372049658444478"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1182406963", "1182406963", "S16M030_Main", "box_Ordered_Output_29.Out", "box_CLOController_37.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_29_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_51
  l0.CLO = "9223372049658447869"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1752782728", "1752782728", "S16M030_Main", "box_Ordered_Output_29.Out", "box_CLOController_51.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_29_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_9
  l0.CLO = "9223372049658444479"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|551240292", "551240292", "S16M030_Main", "box_Ordered_Output_29.Out", "box_CLOController_9.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_29_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_38
  l0.CLO = "9223372049658444480"
  l0.SpawnOutsideLoadingRing = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|576478840", "576478840", "S16M030_Main", "box_Ordered_Output_29.Out", "box_CLOController_38.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_29_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MapPointController_v3_15()
  l0 = self.box_MapPointController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1205188108", "1205188108", "S16M030_Main", "box_Ordered_Output_29.Out", "box_MapPointController_v3_15.Show", clone, l0)
  l0:Show()
end
function export:f_box_Compare_Entity_v2_33_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_OnceOnly_v3_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2026105534", "2026105534", "S16M030_Main", "box_Compare_Entity_v2_33.Equal", "box_OnceOnly_v3_10.In", clone, l0)
  l0:In(0)
end
function export:f_box_Download_Gameplay_61_DownloadCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_25()
  l0 = self.box_Download_Gameplay_61
  l1 = self.box_MultipleOR_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|566493259", "566493259", "S16M030_Main", "box_Download_Gameplay_61.DownloadCompleted", "box_MultipleOR_25.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Download_Gameplay_61_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Download_Gameplay_63()
  l0 = self.box_Download_Gameplay_61
  l1 = self.box_Download_Gameplay_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1475130562", "1475130562", "S16M030_Main", "box_Download_Gameplay_61.Stopped", "box_Download_Gameplay_63.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1090897537"
  l0._DynamicAnchors = {Out = 7}
  l0.Out[0] = self.f_box_Ordered_Output_29_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_29_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_29_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_29_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_29_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_29_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_29_Out_6
  l0 = self.box_MissionMessageController_v3_13
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2116566567", "2116566567", "S16M030_Main", "box_MissionMessageController_v3_13.Out", "box_Ordered_Output_29.In", l0, l1)
  l1:In()
end
function export:f_box_Multiple_AND_50_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_48
  l0.Input = self.Escort_Car_List
  l0.Data[0] = self.Escort_Vehicle_01
  l0.Data[1] = self.Escort_Vehicle_02
  l0 = self.box_Multiple_AND_50
  l1 = self.box_ListWriter_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|880865232", "880865232", "S16M030_Main", "box_Multiple_AND_50.Out", "box_ListWriter_48.Add", l0, l1)
  l1:Add()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_28
  l0.CLO = "9223372046830585758"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1752706582", "1752706582", "S16M030_Main", "box_Get_Player_ID_6.Out", "box_CLOController_28.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MultipleOR_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2057947223"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_MultipleOR_25
  l1 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|424027815", "424027815", "S16M030_Main", "box_MultipleOR_25.Out", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_60_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ConvoyMonitor_31()
  l0 = self.box_ConvoyMonitor_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1042654211", "1042654211", "S16M030_Main", "box_Ordered_Output_60.Out", "box_ConvoyMonitor_31.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_60_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Download_Gameplay_61()
  l0 = self.box_Download_Gameplay_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2131996673", "2131996673", "S16M030_Main", "box_Ordered_Output_60.Out", "box_Download_Gameplay_61.Start", clone, l0)
  l0:Start()
end
function export:f_box_MultipleOR_4_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_27
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_MultipleOR_4
  l1 = self.box_MissionCheckpointReach_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1509569527", "1509569527", "S16M030_Main", "box_MultipleOR_4.Out", "box_MissionCheckpointReach_27.In", l0, l1)
  l1:In()
end
function export:f_box_ConvoyMonitor_31_ConvoyStopped()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_31_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_53()
  l0 = self.box_ConvoyMonitor_31
  l1 = self.box_MultipleOR_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|745273254", "745273254", "S16M030_Main", "box_ConvoyMonitor_31.Disabled", "box_MultipleOR_53.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyMonitor_31_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_54
  l0.Parent = self.Barge_contact
  l0.Child = "9223372050569004475"
  l0 = self.box_ConvoyMonitor_31
  l1 = self.box_SnapAndBind_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1776639928", "1776639928", "S16M030_Main", "box_ConvoyMonitor_31.Enabled", "box_SnapAndBind_54.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_ConvoyMonitor_31_EscortDied()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_31_EscortVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_box_ConvoyMonitor_31_HardDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_16()
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1763111428", "1763111428", "S16M030_Main", "box_ConvoyMonitor_31.HardDisturbance", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ConvoyMonitor_31_SoftDisturbance()
  local l0, l1
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
  self:OnEnter_box_MultipleOR_16()
  l1 = self.box_MultipleOR_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|962863615", "962863615", "S16M030_Main", "box_ConvoyMonitor_31.SoftDisturbance", "box_MultipleOR_16.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ConvoyMonitor_31_VIPDied()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
  self:OnEnter_box_ConvoyMonitor_31()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|584298301", "584298301", "S16M030_Main", "box_ConvoyMonitor_31.VIPDied", "box_ConvoyMonitor_31.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_ConvoyMonitor_31_VIPVehicleDestroyed()
  local l0
  self = self._graph
  l0 = self.box_ConvoyMonitor_31
  self.Convoy_Disturbance_instigator = l0.Instigator
end
function export:f_box_FelonyTargetController_12_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_12()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|764995048", "764995048", "S16M030_Main", "box_FelonyTargetController_12.ChaseStarted", "box_FelonyTargetController_12.AddScripted", clone, l0)
  l0:AddScripted()
end
function export:f_box_FelonyTargetController_12_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_FelonyTargetController_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|308334844"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_59_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|122400813", "122400813", "S16M030_Main", "box_FelonyTargetController_12.ScriptedAgentsAdded", "box_FelonyTargetController_59.AddScripted", clone, l0)
  l0:AddScripted()
end
function export:f_box_ListWriter_48_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_48
  self.Escort_Car_List = l0.Target
  self:OnEnter_box_Multiple_AND_49()
  l1 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2054825835", "2054825835", "S16M030_Main", "box_ListWriter_48.Added", "box_Multiple_AND_49.Condition", l0, l1)
  l1:Condition(2)
end
function export:f_box_ListWriter_48_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_48
  self.Escort_Car_List = l0.Target
end
function export:f_box_ListWriter_48_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_48
  self.Escort_Car_List = l0.Target
end
function export:f_box_MissionCheckpointReach_27_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S16.S16M030.Objectives.Objective010",
    item = "Objective",
    id = "345157"
  }
  l0 = self.box_MissionCheckpointReach_27
  l1 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|266806498", "266806498", "S16M030_Main", "box_MissionCheckpointReach_27.Out", "box_MissionMessageController_v3_13.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  l0.Entity1 = self.Convoy_Disturbance_instigator
  l0.Entity2 = self.PlayerEntity
  l0._graph = self
  l0._name = "box_Compare_Entity_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1185960218"
  l0.Out = DummyFunction
  l0.Equal = self.f_box_Compare_Entity_v2_33_Equal
  l0.NotEqual = DummyFunction
  l0 = self.box_MultipleOR_16
  l1 = Boxes[PathID("Domino/System/CompareEntity_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|279524129", "279524129", "S16M030_Main", "box_MultipleOR_16.Out", "box_Compare_Entity_v2_33.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_3_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0 = self.box_CLOController_3
  l1 = self.box_CinematicPrep_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1922447904", "1922447904", "S16M030_Main", "box_CLOController_3.OnUserInPlace", "box_CinematicPrep_8.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_36()
  l0 = self.box_PawnHealthMonitor_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1262799955", "1262799955", "S16M030_Main", "box_Ordered_Output_14.Out", "box_PawnHealthMonitor_v3_36.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_PawnHealthMonitor_v3_36()
  l0 = self.box_PawnHealthMonitor_v3_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|440759509", "440759509", "S16M030_Main", "box_Ordered_Output_14.Out", "box_PawnHealthMonitor_v3_36.CheckIfDead", clone, l0)
  l0:CheckIfDead()
end
function export:f_box_CLOController_51_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_51
  self.Escort_Vehicle_02 = l0.UserID
  self:OnEnter_box_Multiple_AND_50()
  l1 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|965956428", "965956428", "S16M030_Main", "box_CLOController_51.OnUserInPlace", "box_Multiple_AND_50.Condition", l0, l1)
  l1:Condition(1)
end
function export:f_box_MapPointController_v3_57_Hidden()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_41
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053024825623"
  l0 = self.box_MapPointController_v3_57
  l1 = self.box_PhoneCommunicationController_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1720543586", "1720543586", "S16M030_Main", "box_MapPointController_v3_57.Hidden", "box_PhoneCommunicationController_41.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionLayer_v2_21_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1372396299"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_21
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1193598557", "1193598557", "S16M030_Main", "box_MissionLayer_v2_21.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_52
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421345775"
  l0 = self.box_CinematicPrep_8
  l1 = self.box_PhoneCommunicationController_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1516846169", "1516846169", "S16M030_Main", "box_CinematicPrep_8.PostOut", "box_PhoneCommunicationController_52.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Multiple_AND_39_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_47
  l0.Input = self.Escort_Guard_List
  l0.Data[0] = self.Escort_Guard_01
  l0.Data[1] = self.Escort_Guard_02
  l0 = self.box_Multiple_AND_39
  l1 = self.box_ListWriter_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1907994725", "1907994725", "S16M030_Main", "box_Multiple_AND_39.Out", "box_ListWriter_47.Add", l0, l1)
  l1:Add()
end
function export:f_box_ConvoyController_58_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ConvoyController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MapPointController_v3_57
  l0.MapPoint = "9223372050569004475"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1959249171", "1959249171", "S16M030_Main", "box_ConvoyController_58.Stopped", "box_MapPointController_v3_57.Hide", clone, l0)
  l0:Hide()
end
function export:f_box_ListWriter_47_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_47
  self.Escort_Guard_List = l0.Target
  self:OnEnter_box_Multiple_AND_49()
  l1 = self.box_Multiple_AND_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1361239917", "1361239917", "S16M030_Main", "box_ListWriter_47.Added", "box_Multiple_AND_49.Condition", l0, l1)
  l1:Condition(3)
end
function export:f_box_ListWriter_47_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_47
  self.Escort_Guard_List = l0.Target
end
function export:f_box_ListWriter_47_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_47
  self.Escort_Guard_List = l0.Target
end
function export:f_box_CLOController_37_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_37
  self.Escort_Vehicle_01 = l0.UserID
  self:OnEnter_box_Multiple_AND_50()
  l1 = self.box_Multiple_AND_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1727326492", "1727326492", "S16M030_Main", "box_CLOController_37.OnUserInPlace", "box_Multiple_AND_50.Condition", l0, l1)
  l1:Condition(0)
end
function export:f_box_PhoneCommunicationController_41_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_41
  l1 = self.box_MissionMessageController_v3_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1612597611", "1612597611", "S16M030_Main", "box_PhoneCommunicationController_41.OnCommunicationFinished", "box_MissionMessageController_v3_64.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
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
  l0._name = "box_ConvoyController_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1749735434"
  l0.Started = DummyFunction
  l0.Updated = DummyFunction
  l0.Stopped = self.f_box_ConvoyController_58_Stopped
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2128373310", "2128373310", "S16M030_Main", "box_Ordered_Output_56.Out", "box_ConvoyController_58.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Download_Gameplay_63()
  l0 = self.box_Download_Gameplay_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|2146118165", "2146118165", "S16M030_Main", "box_Ordered_Output_56.Out", "box_Download_Gameplay_63.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_CLOController_38_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_38
  self.Escort_Guard_02 = l0.UserID
  self:OnEnter_box_Multiple_AND_39()
  l1 = self.box_Multiple_AND_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1644839214", "1644839214", "S16M030_Main", "box_CLOController_38.OnUserInPlace", "box_Multiple_AND_39.Condition", l0, l1)
  l1:Condition(1)
end
function export:OnEnter_box_MapPointController_v3_55()
  local l0
  l0 = self.box_MapPointController_v3_55
  l0.MapPoint = "9223372050569004475"
end
function export:OnEnter_box_Download_Gameplay_63()
  local l0
  l0 = self.box_Download_Gameplay_63
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
function export:OnEnter_box_MapPointController_v3_15()
  local l0
  l0 = self.box_MapPointController_v3_15
  l0.MapPoint = "9223372046830509732"
end
function export:OnEnter_box_PawnHealthMonitor_v3_36()
  local l0
  l0 = self.box_PawnHealthMonitor_v3_36
  l0.Pawn = self.Barge_contact
end
function export:OnEnter_box_Multiple_AND_49()
end
function export:OnEnter_box_MultipleOR_44()
end
function export:OnEnter_box_3DGPSController_22()
  local l0
  l0 = Boxes[PathID("Domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Barge_Contact_Vehicle
  l0.Path = "9223372047520106273"
  l0.Index = nil
  l0.PathType = nil
  l0._graph = self
  l0._name = "box_3DGPSController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|596452599"
  l0.Enabled = self.f_box_3DGPSController_22_Enabled
  l0.Disabled = DummyFunction
  l0.TargetAdded = DummyFunction
  l0.TargetRemoved = DummyFunction
end
function export:OnEnter_box_MultipleOR_53()
end
function export:OnEnter_box_Download_Gameplay_61()
  local l0
  l0 = self.box_Download_Gameplay_61
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
function export:OnEnter_box_Multiple_AND_50()
end
function export:OnEnter_box_MultipleOR_25()
end
function export:OnEnter_box_MultipleOR_4()
end
function export:OnEnter_box_ConvoyMonitor_31()
end
function export:OnEnter_box_FelonyTargetController_12()
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
  l0._name = "box_FelonyTargetController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\worldstories\\solo\\s16\\s16m030\\s16m030.domino|@S16M030_Main|1531241940"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_12_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_12_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = DummyFunction
end
function export:OnEnter_box_MultipleOR_16()
end
function export:OnEnter_box_Multiple_AND_39()
end
_compilerVersion = 4
