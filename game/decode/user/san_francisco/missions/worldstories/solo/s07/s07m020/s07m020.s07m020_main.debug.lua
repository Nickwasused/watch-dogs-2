export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AIAgentZoneController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/FelonyTargetController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/InteractionScriptMonitor_v2.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M020/s07_m020_cin_dusannvite.S07_M020_CIN_DusanNvite_Main.debug.lua")
  cbox:RegisterBox("domino/System/SetTimeOfDay.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/TimeLapse.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TimeScaleController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/2249826340.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2231477107.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1889681517.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2196104692.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S07M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main"
  self.PlayerEntity = nil
  self.TMobile = nil
  self.TBone = nil
  self.PlayerVehicle = nil
  self.Chaser01 = nil
  self.CarChaser01 = nil
  self.Antenna02 = "9223372046786702760"
  self.Antenna01 = "9223372046786702768"
  self.Antenna03 = "9223372046786702764"
  self.UndercoverTarget = nil
  self.InteractionBox02 = "9223372047406049660"
  self.OutsideBackDoor01 = "9223372046786835364"
  self.InteractionBox03 = "9223372047406053522"
  self.Elevator = "9223372047406087435"
  self.OutsideBackDoor02 = "9223372046786835366"
  self.OutsideBackDoor03 = "9223372046786835362"
  self.CEO_Computer = "9223372047406207005"
  self.OutsideFrontDoor01 = "9223372046786834686"
  self.OutsideFrontDoor02 = "9223372046786835360"
  self.InteractionBox01 = "9223372047406053525"
  self.S07M020_Main = "S07M020_Main"
  self.SecurityDoor01 = "9223372051981891709"
  self.SecurityDoor02 = "9223372051981891725"
  self.GarageDoor = "9223372047406086581"
  self.ElevatorLock = "9223372047406215970"
  self.ObjectiveElevator = 0
  self.LockBoxElevatorStatus = 0
  self.Fire_Alarm01 = "9223372049285179019"
  self.Fire_Alarm02 = "9223372049285182251"
  self.MissionMarker_BlackOut_Box = "9223372046518047695"
  self.Elevator_LockBox = "9223372047928093476"
  self.MissionZone = "9223372046518075764"
  self.PGTMissionArea = "9223372046518049337"
  self.BackupGenerator = "9223372048566466859"
  self.Marker_Alarm02 = "9223372046518047693"
  self.Marker_Alarm01 = "9223372046518047664"
  self.OutsideDoor01 = "9223372047741173056"
  self.OutsideDoor02 = "9223372049667294718"
  self.OutsideDoor03 = "9223372049667294730"
  self.OutsideDoor04 = "9223372047741172016"
  self.OutsideDoor05 = "9223372049667294742"
  self.OutsideDoor06 = "9223372049667294754"
  self.OutsideDoor07 = "9223372049667294766"
  self.Trigger_BuildingProximity = "9223372049956963280"
  self.VR_ExitNode_114 = "9223372050293726402"
  self.Cam01 = "9223372050997960950"
  self.Cam02 = "9223372050997960952"
  self.Cam03 = "9223372050997960954"
  self.Cam04 = "9223372050997959998"
  self.Cam05 = "9223372050997960956"
  self.Cam06 = "9223372050997960948"
  self.Cam07 = "9223372050370125496"
  self.CameraList = {}
  self.LockElevator = "9223372047928093476"
  self.Cop01 = nil
  self.Cop02 = nil
  self.Cop03 = nil
  self.Cop04 = nil
  self.Cop05 = nil
  self.Cop06 = nil
  self.CopList = {}
  self.Cop07 = nil
  self.Cop08 = nil
  self.CopCar02 = nil
  self.CopCar03 = nil
  self.CopCar04 = nil
  self.CopCar06 = nil
  self.CopCar05 = nil
  self.CopCar07 = nil
  self.CopCar08 = nil
  self.CopCar09 = nil
  self.CopCar10 = nil
  self.CopCar11 = nil
  self.CopCar12 = nil
  self.Hour = 0
  self.box_HackableController_v2_51 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_51
  l0._graph = self
  l0._name = "box_HackableController_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2431133"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_51_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_51_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_118 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_118
  l0._graph = self
  l0._name = "box_OnceOnly_v3_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|38941889"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_118_Out
  l0.ResetOut = DummyFunction
  self.box_ListWriter_27 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_27
  l0._graph = self
  l0._name = "box_ListWriter_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|44049321"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_27_Added
  l0.Removed = self.f_box_ListWriter_27_Removed
  l0.Out = self.f_box_ListWriter_27_Out
  self.box_MissionMessageController_v3_46 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_46
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|52731217"
  l0.Out = self.f_box_MissionMessageController_v3_46_Out
  l0.MessageCompleted = DummyFunction
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|61136926"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CLOController_10 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_10
  l0._graph = self
  l0._name = "box_CLOController_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|85673591"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_10_OnUserInPlace
  self.box_CLOController_47 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_47
  l0._graph = self
  l0._name = "box_CLOController_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|88744487"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_47_OnUserInPlace
  self.box_PlaySound_v2_65 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_65
  l0._graph = self
  l0._name = "box_PlaySound_v2_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|116382184"
  l0.Out = self.f_box_PlaySound_v2_65_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_69 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_69
  l0._graph = self
  l0._name = "box_CLOController_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|126018798"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_69_OnUserInPlace
  self.box_HackableController_v2_52 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_52
  l0._graph = self
  l0._name = "box_HackableController_v2_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|200533978"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_52_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_52_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionCheckpointReach_32 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_32
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|218053118"
  l0.Out = self.f_box_MissionCheckpointReach_32_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_Escape_Gameplay_18 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_18
  l0._graph = self
  l0._name = "box_Escape_Gameplay_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|302071634"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_18_Escaped
  l0.LeftArea = DummyFunction
  self.box_CLOController_44 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_44
  l0._graph = self
  l0._name = "box_CLOController_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|308666064"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_44_OnUserInPlace
  self.box_MissionLayer_v2_36 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_36
  l0._graph = self
  l0._name = "box_MissionLayer_v2_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|347212523"
  l0.Loaded = self.f_box_MissionLayer_v2_36_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_38 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_38
  l0._graph = self
  l0._name = "box_MissionLayer_v2_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|360098327"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_38_Unloaded
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_80 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_80
  l0._graph = self
  l0._name = "box_HackableController_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|498800459"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_80_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_80_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_14 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_14
  l0._graph = self
  l0._name = "box_MissionLayer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|551040978"
  l0.Loaded = self.f_box_MissionLayer_v2_14_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_Multiple_AND_62 = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self.box_Multiple_AND_62
  l0._graph = self
  l0._name = "box_Multiple_AND_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|562130189"
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_box_Multiple_AND_62_Out
  self.box_CLOController_91 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_91
  l0._graph = self
  l0._name = "box_CLOController_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|566226904"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_91_OnUserInPlace
  self.box_PlaySound_v2_136 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_136
  l0._graph = self
  l0._name = "box_PlaySound_v2_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|651944183"
  l0.Out = self.f_box_PlaySound_v2_136_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_87 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_87
  l0._graph = self
  l0._name = "box_CLOController_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|688872114"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_87_OnUserInPlace
  self.box_S07_M020_CIN_DusanNvite_Main_122 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M020/s07_m020_cin_dusannvite.S07_M020_CIN_DusanNvite_Main.debug.lua")
  l0 = self.box_S07_M020_CIN_DusanNvite_Main_122
  l0._graph = self
  l0._name = "box_S07_M020_CIN_DusanNvite_Main_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|729687726"
  l0.Out = self.f_box_S07_M020_CIN_DusanNvite_Main_122_Out
  self.box_HackableController_v2_53 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_53
  l0._graph = self
  l0._name = "box_HackableController_v2_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|731116941"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_53_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_53_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_76 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_76
  l0._graph = self
  l0._name = "box_HackableController_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|732768977"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_76_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_76_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_22 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_22
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|749394143"
  l0.Out = self.f_box_MissionMessageController_v3_22_Out
  l0.MessageCompleted = DummyFunction
  self.box_LMA_Layer_Controller_7 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_7
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|764053724"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_CLOController_99 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_99
  l0._graph = self
  l0._name = "box_CLOController_99"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|777264509"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_99_OnUserInPlace
  self.box_CLOController_49 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_49
  l0._graph = self
  l0._name = "box_CLOController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|785954923"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_49_OnUserInPlace
  self.box_MissionZone_123 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_123
  l0._graph = self
  l0._name = "box_MissionZone_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|795004306"
  l0.Enabled = self.f_box_MissionZone_123_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_CLOController_93 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_93
  l0._graph = self
  l0._name = "box_CLOController_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|823826514"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_93_OnUserInPlace
  self.box_HackableController_v2_79 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_79
  l0._graph = self
  l0._name = "box_HackableController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|832716122"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_79_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_79_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Interact_Gameplay_21 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_21
  l0._graph = self
  l0._name = "box_Interact_Gameplay_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|865748179"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_21_Interacted
  self.box_CLOController_75 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_75
  l0._graph = self
  l0._name = "box_CLOController_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|944944257"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_75_OnUserInPlace
  self.box_MissionZone_33 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_33
  l0._graph = self
  l0._name = "box_MissionZone_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|970350614"
  l0.Enabled = self.f_box_MissionZone_33_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_LMA_Layer_Controller_4 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_4
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1000404240"
  l0.Loaded = self.f_box_LMA_Layer_Controller_4_Loaded
  l0.Unloaded = DummyFunction
  self.box_CLOController_45 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_45
  l0._graph = self
  l0._name = "box_CLOController_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1007867861"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_45_OnUserInPlace
  self.box_HackableController_v2_94 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_94
  l0._graph = self
  l0._name = "box_HackableController_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1012247607"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_94_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_94_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_125 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_125
  l0._graph = self
  l0._name = "box_CinematicPrep_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1028718693"
  l0.PreOut = self.f_box_CinematicPrep_125_PreOut
  l0.PostOut = DummyFunction
  self.box_CinematicPrep_67 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_67
  l0._graph = self
  l0._name = "box_CinematicPrep_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1045045601"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_67_PostOut
  self.box_PhoneCommunicationController_2 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_2
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1094918407"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_25 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_25
  l0._graph = self
  l0._name = "box_OnceOnly_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1147732358"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_25_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_96 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_96
  l0._graph = self
  l0._name = "box_CLOController_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1155276386"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_96_OnUserInPlace
  self.box_HackableController_v2_48 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_48
  l0._graph = self
  l0._name = "box_HackableController_v2_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1191144482"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_48_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_48_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_110 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_110
  l0._graph = self
  l0._name = "box_Timer_v2_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1211749699"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_110_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_66 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_66
  l0._graph = self
  l0._name = "box_PlaySound_v2_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1285308360"
  l0.Out = self.f_box_PlaySound_v2_66_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_54 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_54
  l0._graph = self
  l0._name = "box_HackableController_v2_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1316458431"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_54_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_54_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_97 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_97
  l0._graph = self
  l0._name = "box_CLOController_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1321453765"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_97_OnUserInPlace
  self.box_HackableController_v2_107 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_107
  l0._graph = self
  l0._name = "box_HackableController_v2_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1328181297"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_107_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_107_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_50 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_50
  l0._graph = self
  l0._name = "box_CLOController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1336645466"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_50_OnUserInPlace
  self.box_MissionCheckpointReach_17 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_17
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1337367337"
  l0.Out = self.f_box_MissionCheckpointReach_17_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionLayer_v2_34 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_34
  l0._graph = self
  l0._name = "box_MissionLayer_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1338482600"
  l0.Loaded = self.f_box_MissionLayer_v2_34_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CinematicPrep_60 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_60
  l0._graph = self
  l0._name = "box_CinematicPrep_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1359129685"
  l0.PreOut = self.f_box_CinematicPrep_60_PreOut
  l0.PostOut = DummyFunction
  self.box_HackableController_v2_55 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_55
  l0._graph = self
  l0._name = "box_HackableController_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1372874951"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_55_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_55_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_16 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_16
  l0._graph = self
  l0._name = "box_HackableController_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1404621760"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_16_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_16_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Timer_v2_137 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_137
  l0._graph = self
  l0._name = "box_Timer_v2_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1417737056"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_137_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_InteractionScriptMonitor_v2_28 = cbox:CreateBox("domino/System/InteractionScriptMonitor_v2.lua")
  l0 = self.box_InteractionScriptMonitor_v2_28
  l0._graph = self
  l0._name = "box_InteractionScriptMonitor_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1433210995"
  l0.Out = DummyFunction
  l0.Enabled = self.f_box_InteractionScriptMonitor_v2_28_Enabled
  l0.Disabled = self.f_box_InteractionScriptMonitor_v2_28_Disabled
  l0.InteractionStarted = DummyFunction
  l0.InteractionFailed = DummyFunction
  l0.InteractionFinished = self.f_box_InteractionScriptMonitor_v2_28_InteractionFinished
  l0.AnimationStarted = DummyFunction
  l0.AnimationFinished = DummyFunction
  self.box_PlaySound_v2_30 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_30
  l0._graph = self
  l0._name = "box_PlaySound_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1442066003"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1454695755"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_5_PostOut
  self.box_Media_System_Custom_Broadcast_Monitor_86 = cbox:CreateBox("domino/System/MediaSystemCustomBroadcastMonitor.lua")
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Monitor_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1537307876"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Media_System_Custom_Broadcast_Monitor_86_Disabled
  l0.CustomBroadcastResourceLoaded = self.f_box_Media_System_Custom_Broadcast_Monitor_86_CustomBroadcastResourceLoaded
  l0.ChannelGenericLoopedOnce = DummyFunction
  l0.ChannelShopLoopedOnce = DummyFunction
  l0.ChannelBarLoopedOnce = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_9 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_9
  l0._graph = self
  l0._name = "box_MultipleOR_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1557641643"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_9_Out
  self.box_PhoneCommunicationController_12 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_12
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1559056267"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_12_OnCommunicationStarted
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_12_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_HackableController_v2_39 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_39
  l0._graph = self
  l0._name = "box_HackableController_v2_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1576598922"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_39_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_39_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_41 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_41
  l0._graph = self
  l0._name = "box_HackableController_v2_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1613275160"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_41_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_41_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MultipleOR_43 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_43
  l0._graph = self
  l0._name = "box_MultipleOR_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1627892926"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_43_Out
  self.box_PlaySound_v2_134 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_134
  l0._graph = self
  l0._name = "box_PlaySound_v2_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1675389727"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PhoneCommunicationController_40 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_40
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1721333199"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_40_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_OnceOnly_v3_82 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_82
  l0._graph = self
  l0._name = "box_OnceOnly_v3_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1744728506"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_82_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_105 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_105
  l0._graph = self
  l0._name = "box_CLOController_105"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1746656847"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_105_OnUserInPlace
  self.box_Teleport_To_SpawnPoint_61 = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self.box_Teleport_To_SpawnPoint_61
  l0._graph = self
  l0._name = "box_Teleport_To_SpawnPoint_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1795051616"
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_box_Teleport_To_SpawnPoint_61_TeleportDone
  self.box_HackableController_v2_81 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_81
  l0._graph = self
  l0._name = "box_HackableController_v2_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1815720756"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_81_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_81_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_TriggerMonitor_v2_92 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_92
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1844593009"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = self.f_box_TriggerMonitor_v2_92_Leave
  l0.Use = DummyFunction
  self.box_MissionLayer_v2_37 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_37
  l0._graph = self
  l0._name = "box_MissionLayer_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1846578965"
  l0.Loaded = self.f_box_MissionLayer_v2_37_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_HackableController_v2_56 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_56
  l0._graph = self
  l0._name = "box_HackableController_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1850647115"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_56_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_56_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_101 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_101
  l0._graph = self
  l0._name = "box_CLOController_101"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1888827304"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_101_OnUserInPlace
  self.box_Timer_v2_68 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_68
  l0._graph = self
  l0._name = "box_Timer_v2_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1898466247"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_68_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_MultipleOR_117 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_117
  l0._graph = self
  l0._name = "box_MultipleOR_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1931483754"
  l0._DynamicAnchors = {Input = 4}
  l0.Out = self.f_box_MultipleOR_117_Out
  self.box_MissionController_v4_26 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_26
  l0._graph = self
  l0._name = "box_MissionController_v4_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1937728603"
  self.box_CLOController_103 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_103
  l0._graph = self
  l0._name = "box_CLOController_103"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2016202091"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_103_OnUserInPlace
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2065468166"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_PlaySequence_v5_89 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_89
  l0._graph = self
  l0._name = "box_PlaySequence_v5_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2135794100"
  l0.Started = self.f_box_PlaySequence_v5_89_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_89_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_89_Finished
  self.box_PhoneCommunicationController_11 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_11
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2146662218"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1368767302"
  l0.Out = self.f_box_SetTimeOfDay_119_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|393610995", "393610995", "S07M020_Main", "CheckPoint_0", "box_SetTimeOfDay_119.IncrementTimeOfDay", self, l0)
  l0:IncrementTimeOfDay()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_36
  l0.LayerName = self.S07M020_Main
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|396761041", "396761041", "S07M020_Main", "CheckPoint_1", "box_MissionLayer_v2_36.Load", self, l0)
  l0:Load()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_4
  l0.LMALayerName = "SF_08_Invite_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|522899951", "522899951", "S07M020_Main", "In", "box_LMA_Layer_Controller_4.Load", self, l0)
  l0:Load()
end
function export:f_box_HackableController_v2_51_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_53()
  l0 = self.box_HackableController_v2_51
  l1 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|371182257", "371182257", "S07M020_Main", "box_HackableController_v2_51.Disabled", "box_HackableController_v2_53.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_51_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_51()
  l0 = self.box_HackableController_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1550358826", "1550358826", "S07M020_Main", "box_HackableController_v2_51.ProfilingDisabled", "box_HackableController_v2_51.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_OnceOnly_v3_118_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_OnceOnly_v3_118
  l1 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|569436348", "569436348", "S07M020_Main", "box_OnceOnly_v3_118.Out", "box_MultipleOR_9.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_ListWriter_27_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_27
  self.CopList = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1044983520"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_98_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_98_Out_1
  l0 = self.box_ListWriter_27
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1595123289", "1595123289", "S07M020_Main", "box_ListWriter_27.Added", "box_Ordered_Output_98.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_27_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_27
  self.CopList = l0.Target
end
function export:f_box_ListWriter_27_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_27
  self.CopList = l0.Target
end
function export:f_box_MissionMessageController_v3_46_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = nil
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1181589826"
  l0.Out = DummyFunction
  l0.MinHeatSet = self.f_box_FelonyTargetController_78_MinHeatSet
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0 = self.box_MissionMessageController_v3_46
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1690544223", "1690544223", "S07M020_Main", "box_MissionMessageController_v3_46.Out", "box_FelonyTargetController_78.SetMinHeat", l0, l1)
  l1:SetMinHeat()
end
function export:f_box_PhoneCommunicationController_20_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l1 = self.box_MissionMessageController_v3_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1489386498", "1489386498", "S07M020_Main", "box_PhoneCommunicationController_20.OnCommunicationFinished", "box_MissionMessageController_v3_46.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Ordered_Output_83_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_11
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916838"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1609062015", "1609062015", "S07M020_Main", "box_Ordered_Output_83.Out", "box_PhoneCommunicationController_11.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_83_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372067078638501"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1338814731"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1070121303", "1070121303", "S07M020_Main", "box_Ordered_Output_83.Out", "box_MaterialController_72.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_MissionMusicController_133_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_134
  l0.SoundId = "soundbinary/3552307770.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1517327268", "1517327268", "S07M020_Main", "box_MissionMusicController_133.Activated", "box_PlaySound_v2_134.Play", clone, l0)
  l0:Play()
end
function export:f_box_CLOController_10_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_10
  self.Cop04 = l0.UserID
  l0 = self.box_CLOController_45
  l0.CLO = "9223372059654946102"
  l0 = self.box_CLOController_10
  l1 = self.box_CLOController_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2071122823", "2071122823", "S07M020_Main", "box_CLOController_10.OnUserInPlace", "box_CLOController_45.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_47_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_47
  self.Cop06 = l0.UserID
  l0 = self.box_ListWriter_27
  l0.Input = self.CopList
  l0.Data[0] = self.Cop01
  l0.Data[1] = self.Cop02
  l0.Data[2] = self.Cop03
  l0.Data[3] = self.Cop04
  l0.Data[4] = self.Cop05
  l0.Data[5] = self.Cop06
  l0 = self.box_CLOController_47
  l1 = self.box_ListWriter_27
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1100355838", "1100355838", "S07M020_Main", "box_CLOController_47.OnUserInPlace", "box_ListWriter_27.Add", l0, l1)
  l1:Add()
end
function export:f_box_PlaySound_v2_65_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_66
  l0.SoundId = "soundbinary/2249826340.bnk"
  l0 = self.box_PlaySound_v2_65
  l1 = self.box_PlaySound_v2_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1846871975", "1846871975", "S07M020_Main", "box_PlaySound_v2_65.Out", "box_PlaySound_v2_66.Play", l0, l1)
  l1:Play()
end
function export:f_box_CLOController_69_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_69
  self.CopCar02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.CopCar02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = nil
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1534455619"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_69
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|476845364", "476845364", "S07M020_Main", "box_CLOController_69.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_59.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_Ordered_Output_95_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|959327686"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1358372643", "1358372643", "S07M020_Main", "box_Ordered_Output_95.Out", "box_Media_System_Custom_Broadcast_Controller_64.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_95_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_92()
  l0 = self.box_TriggerMonitor_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1989993076", "1989993076", "S07M020_Main", "box_Ordered_Output_95.Out", "box_TriggerMonitor_v2_92.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_HackableController_v2_52_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_56()
  l0 = self.box_HackableController_v2_52
  l1 = self.box_HackableController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1746741575", "1746741575", "S07M020_Main", "box_HackableController_v2_52.Disabled", "box_HackableController_v2_56.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_52_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_52()
  l0 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1496012385", "1496012385", "S07M020_Main", "box_HackableController_v2_52.ProfilingDisabled", "box_HackableController_v2_52.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_InteractionScriptController_6_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_InteractionScriptMonitor_v2_28()
  l0 = self.box_InteractionScriptMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|156974596", "156974596", "S07M020_Main", "box_InteractionScriptController_6.Disabled", "box_InteractionScriptMonitor_v2_28.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_32_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1939591060"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_135_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_135_Out_1
  l0.Out[2] = DummyFunction
  l0 = self.box_MissionCheckpointReach_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1618352128", "1618352128", "S07M020_Main", "box_MissionCheckpointReach_32.Out", "box_Ordered_Output_135.In", l0, l1)
  l1:In()
end
function export:f_box_FelonyTargetController_77_MinHeatSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_33()
  l0 = self.box_MissionZone_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|703395137", "703395137", "S07M020_Main", "box_FelonyTargetController_77.MinHeatSet", "box_MissionZone_33.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Escape_Gameplay_18_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2081048908"
  l0._DynamicAnchors = {Out = 6}
  l0.Out[0] = self.f_box_Ordered_Output_24_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_24_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_24_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_24_Out_3
  l0.Out[4] = DummyFunction
  l0.Out[5] = DummyFunction
  l0 = self.box_Escape_Gameplay_18
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1649420077", "1649420077", "S07M020_Main", "box_Escape_Gameplay_18.Escaped", "box_Ordered_Output_24.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_44_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_44
  self.Cop03 = l0.UserID
  l0 = self.box_CLOController_10
  l0.CLO = "9223372059654946103"
  l0 = self.box_CLOController_44
  l1 = self.box_CLOController_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1128563260", "1128563260", "S07M020_Main", "box_CLOController_44.OnUserInPlace", "box_CLOController_10.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_50
  l0.CLO = "9223372059926448036"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1517826625", "1517826625", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_50.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_69
  l0.CLO = "9223372067221644832"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|642395768", "642395768", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_69.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_75
  l0.CLO = "9223372067221644834"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|927151881", "927151881", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_75.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_87
  l0.CLO = "9223372067221644833"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|633516132", "633516132", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_87.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_91
  l0.CLO = "9223372067221644837"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|903762576", "903762576", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_91.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_96
  l0.CLO = "9223372067221644835"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|125085462", "125085462", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_96.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_93
  l0.CLO = "9223372067221644836"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2039626573", "2039626573", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_93.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_97
  l0.CLO = "9223372067290823244"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|50758119", "50758119", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_97.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_99
  l0.CLO = "9223372067290823243"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2056423106", "2056423106", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_99.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_101
  l0.CLO = "9223372067290823245"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1767811359", "1767811359", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_101.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_10()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_103
  l0.CLO = "9223372067290823246"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2138852471", "2138852471", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_103.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_70_Out_11()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_105
  l0.CLO = "9223372067290823418"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1646058269", "1646058269", "S07M020_Main", "box_Ordered_Output_70.Out", "box_CLOController_105.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_MissionLayer_v2_36_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1587342204"
  l0.Out = self.f_box_SetTimeOfDay_128_Out
  l0 = self.box_MissionLayer_v2_36
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1058548489", "1058548489", "S07M020_Main", "box_MissionLayer_v2_36.Loaded", "box_SetTimeOfDay_128.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_MissionLayer_v2_38_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_38
  l1 = self.box_MissionController_v4_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1792447374", "1792447374", "S07M020_Main", "box_MissionLayer_v2_38.Unloaded", "box_MissionController_v4_26.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_AI_Agent_Zone_108_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_14
  l0.LayerName = self.S07M020_Main
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1058833885", "1058833885", "S07M020_Main", "box_AI_Agent_Zone_108.Out", "box_MissionLayer_v2_14.Load", clone, l0)
  l0:Load()
end
function export:f_box_TimeScale_Controller_120_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_9()
  l0 = self.box_MultipleOR_9
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|832981578", "832981578", "S07M020_Main", "box_TimeScale_Controller_120.Locked", "box_MultipleOR_9.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_HackableController_v2_80_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_68
  l0.Seconds = 3
  l0 = self.box_HackableController_v2_80
  l1 = self.box_Timer_v2_68
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1863011582", "1863011582", "S07M020_Main", "box_HackableController_v2_80.Disabled", "box_Timer_v2_68.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_80_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_80()
  l0 = self.box_HackableController_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1343270283", "1343270283", "S07M020_Main", "box_HackableController_v2_80.ProfilingDisabled", "box_HackableController_v2_80.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_MissionLayer_v2_14_Loaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_34
  l0.LayerName = "S07M020_LivingCity"
  l0 = self.box_MissionLayer_v2_14
  l1 = self.box_MissionLayer_v2_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1831455463", "1831455463", "S07M020_Main", "box_MissionLayer_v2_14.Loaded", "box_MissionLayer_v2_34.Load", l0, l1)
  l1:Load()
end
function export:f_box_Multiple_AND_62_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_110
  l0.Seconds = 0.5
  l0 = self.box_Multiple_AND_62
  l1 = self.box_Timer_v2_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1672393081", "1672393081", "S07M020_Main", "box_Multiple_AND_62.Out", "box_Timer_v2_110.Start", l0, l1)
  l1:Start()
end
function export:f_box_CLOController_91_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_91
  self.CopCar05 = l0.UserID
end
function export:f_box_Media_System_Custom_Broadcast_Controller_84_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_86()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1659870402", "1659870402", "S07M020_Main", "box_Media_System_Custom_Broadcast_Controller_84.LoadAndPlayRequested", "box_Media_System_Custom_Broadcast_Monitor_86.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySound_v2_136_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669157"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|79727911"
  l0.Activated = self.f_box_MissionMusicController_133_Activated
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_136
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|379831416", "379831416", "S07M020_Main", "box_PlaySound_v2_136.Out", "box_MissionMusicController_133.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_87_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_87
  self.CopCar04 = l0.UserID
end
function export:f_box_S07_M020_CIN_DusanNvite_Main_122_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_S07_M020_CIN_DusanNvite_Main_122
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1276521035", "1276521035", "S07M020_Main", "box_S07_M020_CIN_DusanNvite_Main_122.Out", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_InteractionScriptController_73_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = 50
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|277925807"
  l0.Out = DummyFunction
  l0.MinHeatSet = self.f_box_FelonyTargetController_77_MinHeatSet
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1203676621", "1203676621", "S07M020_Main", "box_InteractionScriptController_73.Disabled", "box_FelonyTargetController_77.SetMinHeat", clone, l0)
  l0:SetMinHeat()
end
function export:f_box_HackableController_v2_53_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_79()
  l0 = self.box_HackableController_v2_53
  l1 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|997656824", "997656824", "S07M020_Main", "box_HackableController_v2_53.Disabled", "box_HackableController_v2_79.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_53_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_53()
  l0 = self.box_HackableController_v2_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1549838297", "1549838297", "S07M020_Main", "box_HackableController_v2_53.ProfilingDisabled", "box_HackableController_v2_53.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_76_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_80()
  l0 = self.box_HackableController_v2_76
  l1 = self.box_HackableController_v2_80
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|568776606", "568776606", "S07M020_Main", "box_HackableController_v2_76.Disabled", "box_HackableController_v2_80.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_76_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_76()
  l0 = self.box_HackableController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1544716918", "1544716918", "S07M020_Main", "box_HackableController_v2_76.ProfilingDisabled", "box_HackableController_v2_76.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_MissionMessageController_v3_22_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_22
  l1 = self.box_OnceOnly_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|686030723", "686030723", "S07M020_Main", "box_MissionMessageController_v3_22.Out", "box_OnceOnly_v3_25.In", l0, l1)
  l1:In(0)
end
function export:f_box_CLOController_99_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_99
  self.CopCar09 = l0.UserID
end
function export:f_box_CLOController_49_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_49
  self.Cop02 = l0.UserID
  l0 = self.box_CLOController_44
  l0.CLO = "9223372059654946100"
  l0 = self.box_CLOController_49
  l1 = self.box_CLOController_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|295932170", "295932170", "S07M020_Main", "box_CLOController_49.OnUserInPlace", "box_CLOController_44.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionZone_123_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_94()
  l0 = self.box_MissionZone_123
  l1 = self.box_HackableController_v2_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|323995489", "323995489", "S07M020_Main", "box_MissionZone_123.Enabled", "box_HackableController_v2_94.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_CLOController_93_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_93
  self.CopCar07 = l0.UserID
end
function export:f_box_HackableController_v2_79_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_81()
  l0 = self.box_HackableController_v2_79
  l1 = self.box_HackableController_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|743922626", "743922626", "S07M020_Main", "box_HackableController_v2_79.Disabled", "box_HackableController_v2_81.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_79_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_79()
  l0 = self.box_HackableController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|402285715", "402285715", "S07M020_Main", "box_HackableController_v2_79.ProfilingDisabled", "box_HackableController_v2_79.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Compare_Integers_v2_113_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2070951795"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_111_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|491378172", "491378172", "S07M020_Main", "box_Compare_Integers_v2_113.A_ge_B", "box_TimeScale_Controller_111.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_Compare_Integers_v2_113_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Hour
  l0.B = 4
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1716304489"
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_box_Compare_Integers_v2_114_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_box_Compare_Integers_v2_114_A_gt_B
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1100407420", "1100407420", "S07M020_Main", "box_Compare_Integers_v2_113.A_lt_B", "box_Compare_Integers_v2_114.In", clone, l0)
  l0:In()
end
function export:f_box_Interact_Gameplay_21_Interacted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1422433097"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_31_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_31_Out_1
  l0 = self.box_Interact_Gameplay_21
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|337919708", "337919708", "S07M020_Main", "box_Interact_Gameplay_21.Interacted", "box_Ordered_Output_31.In", l0, l1)
  l1:In()
end
function export:f_box_Simple_Node_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1708649130"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_13_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_13_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1098658007", "1098658007", "S07M020_Main", "box_Simple_Node_8.Out", "box_Ordered_Output_13.In", clone, l0)
  l0:In()
end
function export:f_box_TimeScale_Controller_116_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1307748913", "1307748913", "S07M020_Main", "box_TimeScale_Controller_116.Locked", "box_MultipleOR_117.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_CLOController_75_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_75
  self.CopCar03 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.CopCar03
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = nil
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1371043664"
  l0.Out = DummyFunction
  l0 = self.box_CLOController_75
  l1 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1152554058", "1152554058", "S07M020_Main", "box_CLOController_75.OnUserInPlace", "box_SetVehicleLightAndSiren_v2_90.SetLightsAndSiren", l0, l1)
  l1:SetLightsAndSiren()
end
function export:f_box_MissionZone_33_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_43()
  l0 = self.box_MissionZone_33
  l1 = self.box_MultipleOR_43
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1884485749", "1884485749", "S07M020_Main", "box_MissionZone_33.Enabled", "box_MultipleOR_43.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_LMA_Layer_Controller_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1502962007"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_129_Unlocked
  l0.Out = DummyFunction
  l0 = self.box_LMA_Layer_Controller_4
  l1 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|646879734", "646879734", "S07M020_Main", "box_LMA_Layer_Controller_4.Loaded", "box_TimeScale_Controller_129.Unlock", l0, l1)
  l1:Unlock()
end
function export:f_box_CLOController_45_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_45
  self.Cop05 = l0.UserID
  l0 = self.box_CLOController_47
  l0.CLO = "9223372059654946105"
  l0 = self.box_CLOController_45
  l1 = self.box_CLOController_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1661965215", "1661965215", "S07M020_Main", "box_CLOController_45.OnUserInPlace", "box_CLOController_47.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_94_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_107()
  l0 = self.box_HackableController_v2_94
  l1 = self.box_HackableController_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|403844995", "403844995", "S07M020_Main", "box_HackableController_v2_94.Disabled", "box_HackableController_v2_107.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_94_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_94()
  l0 = self.box_HackableController_v2_94
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|566936454", "566936454", "S07M020_Main", "box_HackableController_v2_94.ProfilingDisabled", "box_HackableController_v2_94.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_CinematicPrep_125_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  l0.Hour = 23
  l0.Minute = nil
  l0._graph = self
  l0._name = "box_SetTimeOfDay_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1284826578"
  l0.Out = self.f_box_SetTimeOfDay_124_Out
  l0 = self.box_CinematicPrep_125
  l1 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|560672372", "560672372", "S07M020_Main", "box_CinematicPrep_125.PreOut", "box_SetTimeOfDay_124.SetTimeOfDay", l0, l1)
  l1:SetTimeOfDay()
end
function export:f_box_Ordered_Output_98_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_137
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2002783202", "2002783202", "S07M020_Main", "box_Ordered_Output_98.Out", "box_Timer_v2_137.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_98_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_2
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916839"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1204953568", "1204953568", "S07M020_Main", "box_Ordered_Output_98.Out", "box_PhoneCommunicationController_2.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_CinematicPrep_67_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_100"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1172415606"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_100_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_100_Out_1
  l0 = self.box_CinematicPrep_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|78600705", "78600705", "S07M020_Main", "box_CinematicPrep_67.PostOut", "box_Ordered_Output_100.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_25_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1479996815"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_OnceOnly_v3_25
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1196310636", "1196310636", "S07M020_Main", "box_OnceOnly_v3_25.Out", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_96_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_96
  self.CopCar06 = l0.UserID
end
function export:f_box_Simple_Node_126_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2069704786"
  l0.Out = self.f_box_Simple_Node_127_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1033904841", "1033904841", "S07M020_Main", "box_Simple_Node_126.Out", "box_Simple_Node_127.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_100_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_18
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372053055842126"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Escape",
    id = "267211"
  }
  l0.EscapeFelonyLocID = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1591571643", "1591571643", "S07M020_Main", "box_Ordered_Output_100.Out", "box_Escape_Gameplay_18.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_100_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_92()
  l0 = self.box_TriggerMonitor_v2_92
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1836958373", "1836958373", "S07M020_Main", "box_Ordered_Output_100.Out", "box_TriggerMonitor_v2_92.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_FelonyTargetController_78_MinHeatSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_38
  l0.LayerName = self.S07M020_Main
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|799788345", "799788345", "S07M020_Main", "box_FelonyTargetController_78.MinHeatSet", "box_MissionLayer_v2_38.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_HackableController_v2_48_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_41()
  l0 = self.box_HackableController_v2_48
  l1 = self.box_HackableController_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|966067405", "966067405", "S07M020_Main", "box_HackableController_v2_48.Disabled", "box_HackableController_v2_41.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_48_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_48()
  l0 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1670670638", "1670670638", "S07M020_Main", "box_HackableController_v2_48.ProfilingDisabled", "box_HackableController_v2_48.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Timer_v2_110_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_FelonyTargetController_23()
  l0 = self.box_Timer_v2_110
  l1 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|320675910", "320675910", "S07M020_Main", "box_Timer_v2_110.TimeElapsed", "box_FelonyTargetController_23.StartChase", l0, l1)
  l1:StartChase()
end
function export:f_box_SetTimeOfDay_124_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S07_M020_CIN_DusanNvite_Main_122
  l0.PlayerEntityTeleport = self.PlayerEntity
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|14474441", "14474441", "S07M020_Main", "box_SetTimeOfDay_124.Out", "box_S07_M020_CIN_DusanNvite_Main_122.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_66_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669157"
  l0.UseMusicScoreMode = nil
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1607262954"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_PlaySound_v2_66
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1998372226", "1998372226", "S07M020_Main", "box_PlaySound_v2_66.Out", "box_MissionMusicController_71.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:f_box_HackableController_v2_54_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_52()
  l0 = self.box_HackableController_v2_54
  l1 = self.box_HackableController_v2_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1482796658", "1482796658", "S07M020_Main", "box_HackableController_v2_54.Disabled", "box_HackableController_v2_52.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_54_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_54()
  l0 = self.box_HackableController_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|254010045", "254010045", "S07M020_Main", "box_HackableController_v2_54.ProfilingDisabled", "box_HackableController_v2_54.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_CLOController_97_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_97
  self.CopCar08 = l0.UserID
end
function export:f_box_HackableController_v2_107_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_16()
  l0 = self.box_HackableController_v2_107
  l1 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|707429598", "707429598", "S07M020_Main", "box_HackableController_v2_107.Disabled", "box_HackableController_v2_16.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_107_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_107()
  l0 = self.box_HackableController_v2_107
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|940372134", "940372134", "S07M020_Main", "box_HackableController_v2_107.ProfilingDisabled", "box_HackableController_v2_107.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_CLOController_50_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  self.Cop01 = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1775476168"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0 = self.box_CLOController_50
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|937207519", "937207519", "S07M020_Main", "box_CLOController_50.OnUserInPlace", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_MissionCheckpointReach_17_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_123()
  l0 = self.box_MissionCheckpointReach_17
  l1 = self.box_MissionZone_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|627679835", "627679835", "S07M020_Main", "box_MissionCheckpointReach_17.Out", "box_MissionZone_123.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionLayer_v2_34_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1571520513"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_34
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1175391141", "1175391141", "S07M020_Main", "box_MissionLayer_v2_34.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_132_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimeLapse_Controller_131()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|389060141", "389060141", "S07M020_Main", "box_Ordered_Output_132.Out", "box_TimeLapse_Controller_131.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_132_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimeLapse_Controller_115()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|291096707", "291096707", "S07M020_Main", "box_Ordered_Output_132.Out", "box_TimeLapse_Controller_115.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_GetTimeOfDay_112_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  self.Hour = l0.Hour
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Hour
  l0.B = 22
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|861249374"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_113_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_113_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2005395812", "2005395812", "S07M020_Main", "box_GetTimeOfDay_112.Out", "box_Compare_Integers_v2_113.In", clone, l0)
  l0:In()
end
function export:f_box_CinematicPrep_60_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_Teleport_To_SpawnPoint_61
  l0.SpawnPoint = "9223372047576087905"
  l0.KeepBlackScreenOnExit = 1
  l0 = self.box_CinematicPrep_60
  l1 = self.box_Teleport_To_SpawnPoint_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|216424589", "216424589", "S07M020_Main", "box_CinematicPrep_60.PreOut", "box_Teleport_To_SpawnPoint_61.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptController_74_Disabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154182"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|730824934"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_73_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|314123100", "314123100", "S07M020_Main", "box_InteractionScriptController_74.Disabled", "box_InteractionScriptController_73.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_SetTimeOfDay_119_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|485793124"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_120_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1966996332", "1966996332", "S07M020_Main", "box_SetTimeOfDay_119.Out", "box_TimeScale_Controller_120.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_HackableController_v2_55_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_51()
  l0 = self.box_HackableController_v2_55
  l1 = self.box_HackableController_v2_51
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1606054266", "1606054266", "S07M020_Main", "box_HackableController_v2_55.Disabled", "box_HackableController_v2_51.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_55_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1929857217", "1929857217", "S07M020_Main", "box_HackableController_v2_55.ProfilingDisabled", "box_HackableController_v2_55.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Ordered_Output_42_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1833730815"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = DummyFunction
  l0.Unlocked = self.f_box_TimeScale_Controller_121_Unlocked
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1227487736", "1227487736", "S07M020_Main", "box_Ordered_Output_42.Out", "box_TimeScale_Controller_121.Unlock", clone, l0)
  l0:Unlock()
end
function export:f_box_Ordered_Output_42_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372060375525250"
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|647841869"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_84_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|393141411", "393141411", "S07M020_Main", "box_Ordered_Output_42.Out", "box_Media_System_Custom_Broadcast_Controller_84.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_HackableController_v2_16_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_39()
  l0 = self.box_HackableController_v2_16
  l1 = self.box_HackableController_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1091587693", "1091587693", "S07M020_Main", "box_HackableController_v2_16.Disabled", "box_HackableController_v2_39.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_16_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_16()
  l0 = self.box_HackableController_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|914915898", "914915898", "S07M020_Main", "box_HackableController_v2_16.ProfilingDisabled", "box_HackableController_v2_16.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Timer_v2_137_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_89
  l0.SceneEntity = "9223372056242375738"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/s07_camerachase.seq"
  l0 = self.box_Timer_v2_137
  l1 = self.box_PlaySequence_v5_89
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|486184600", "486184600", "S07M020_Main", "box_Timer_v2_137.TimeElapsed", "box_PlaySequence_v5_89.Start", l0, l1)
  l1:Start()
end
function export:f_box_FelonyTargetController_23_ChaseStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_23()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1837972632", "1837972632", "S07M020_Main", "box_FelonyTargetController_23.ChaseStarted", "box_FelonyTargetController_23.AddScripted", clone, l0)
  l0:AddScripted()
end
function export:f_box_FelonyTargetController_23_ScriptedAgentsAdded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_FelonyTargetController_23()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|472073595", "472073595", "S07M020_Main", "box_FelonyTargetController_23.ScriptedAgentsAdded", "box_FelonyTargetController_23.AdoptScriptedAgents", clone, l0)
  l0:AdoptScriptedAgents()
end
function export:f_box_FelonyTargetController_23_ScriptedAgentsAdopted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_67
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|109293326", "109293326", "S07M020_Main", "box_FelonyTargetController_23.ScriptedAgentsAdopted", "box_CinematicPrep_67.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_31_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_30
  l0.Entity = "9223372069404343098"
  l0.SoundId = "soundbinary/2231477107.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|168458291", "168458291", "S07M020_Main", "box_Ordered_Output_31.Out", "box_PlaySound_v2_30.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_31_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_12
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053055916836"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|740649741", "740649741", "S07M020_Main", "box_Ordered_Output_31.Out", "box_PhoneCommunicationController_12.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_InteractionScriptMonitor_v2_28_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|68006159"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_83_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_83_Out_1
  l0 = self.box_InteractionScriptMonitor_v2_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2099241758", "2099241758", "S07M020_Main", "box_InteractionScriptMonitor_v2_28.Disabled", "box_Ordered_Output_83.In", l0, l1)
  l1:In()
end
function export:f_box_InteractionScriptMonitor_v2_28_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_21
  l0.Entity = "9223372054257154181"
  l0.IsManagingInteraction = 1
  l0.PlayerOnly = 1
  l0 = self.box_InteractionScriptMonitor_v2_28
  l1 = self.box_Interact_Gameplay_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|998870334", "998870334", "S07M020_Main", "box_InteractionScriptMonitor_v2_28.Enabled", "box_Interact_Gameplay_21.Start", l0, l1)
  l1:Start()
end
function export:f_box_InteractionScriptMonitor_v2_28_InteractionFinished()
  local l0
  self = self._graph
  self:OnEnter_box_InteractionScriptMonitor_v2_28()
  l0 = self.box_InteractionScriptMonitor_v2_28
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2101406971", "2101406971", "S07M020_Main", "box_InteractionScriptMonitor_v2_28.InteractionFinished", "box_InteractionScriptMonitor_v2_28.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_5_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_40
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347117"
  l0 = self.box_CinematicPrep_5
  l1 = self.box_PhoneCommunicationController_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|631623800", "631623800", "S07M020_Main", "box_CinematicPrep_5.PostOut", "box_PhoneCommunicationController_40.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372060220744768"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1856978810"
  l0.Out = self.f_box_Lanes_Restrictions_Control_63_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|496915103", "496915103", "S07M020_Main", "box_Ordered_Output_3.Out", "box_Lanes_Restrictions_Control_63.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|935320490"
  l0.Out = self.f_box_Simple_Node_8_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1784371093", "1784371093", "S07M020_Main", "box_Ordered_Output_3.Out", "box_Simple_Node_8.In", clone, l0)
  l0:In()
end
function export:f_box_TimeScale_Controller_129_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/GetTimeOfDay.lua")]
  l0._graph = self
  l0._name = "box_GetTimeOfDay_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1349793135"
  l0.Out = self.f_box_GetTimeOfDay_112_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2107868396", "2107868396", "S07M020_Main", "box_TimeScale_Controller_129.Unlocked", "box_GetTimeOfDay_112.GetTimeOfDay", clone, l0)
  l0:GetTimeOfDay()
end
function export:f_box_MaterialController_88_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372060375525254"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1019880816"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1216680133", "1216680133", "S07M020_Main", "box_MaterialController_88.ByIndexSet", "box_MaterialController_85.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_86_CustomBroadcastResourceLoaded()
  local l0
  self = self._graph
  self:OnEnter_box_Media_System_Custom_Broadcast_Monitor_86()
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|329673003", "329673003", "S07M020_Main", "box_Media_System_Custom_Broadcast_Monitor_86.CustomBroadcastResourceLoaded", "box_Media_System_Custom_Broadcast_Monitor_86.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_Media_System_Custom_Broadcast_Monitor_86_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372060375525252"
  l0.Index = 1
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1534877446"
  l0.ByIndexSet = self.f_box_MaterialController_88_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_Media_System_Custom_Broadcast_Monitor_86
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1097754145", "1097754145", "S07M020_Main", "box_Media_System_Custom_Broadcast_Monitor_86.Disabled", "box_MaterialController_88.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_MultipleOR_9_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067290823427"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|421786428"
  l0.Out = self.f_box_AI_Agent_Zone_108_Out
  l0 = self.box_MultipleOR_9
  l1 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1745328870", "1745328870", "S07M020_Main", "box_MultipleOR_9.Out", "box_AI_Agent_Zone_108.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_PhoneCommunicationController_12_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_125
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PhoneCommunicationController_12
  l1 = self.box_CinematicPrep_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1546835786", "1546835786", "S07M020_Main", "box_PhoneCommunicationController_12.OnCommunicationFinished", "box_CinematicPrep_125.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:f_box_PhoneCommunicationController_12_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1162599888"
  l0.Out = self.f_box_Simple_Node_126_Out
  l0 = self.box_PhoneCommunicationController_12
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|553046913", "553046913", "S07M020_Main", "box_PhoneCommunicationController_12.OnCommunicationStarted", "box_Simple_Node_126.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_60
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1063427005", "1063427005", "S07M020_Main", "box_Get_Player_ID_1.Out", "box_CinematicPrep_60.PreCinematic", clone, l0)
  l0:PreCinematic()
end
function export:f_box_HackableController_v2_39_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_48()
  l0 = self.box_HackableController_v2_39
  l1 = self.box_HackableController_v2_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|547969621", "547969621", "S07M020_Main", "box_HackableController_v2_39.Disabled", "box_HackableController_v2_48.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_39_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_39()
  l0 = self.box_HackableController_v2_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1722680730", "1722680730", "S07M020_Main", "box_HackableController_v2_39.ProfilingDisabled", "box_HackableController_v2_39.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_SetVehicleLightAndSiren_v2_57_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/AIAgentZoneController.lua")]
  l0.TargetZone = "9223372067290823427"
  l0.NPC = nil
  l0._graph = self
  l0._name = "box_AI_Agent_Zone_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1414438788"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|168027359", "168027359", "S07M020_Main", "box_SetVehicleLightAndSiren_v2_57.Out", "box_AI_Agent_Zone_109.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_SetTimeOfDay_128_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetTimeOfDay.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_37
  l0.LayerName = "S07M020_LivingCity"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|65294142", "65294142", "S07M020_Main", "box_SetTimeOfDay_128.Out", "box_MissionLayer_v2_37.Load", clone, l0)
  l0:Load()
end
function export:f_box_HackableController_v2_41_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_76()
  l0 = self.box_HackableController_v2_41
  l1 = self.box_HackableController_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|957494995", "957494995", "S07M020_Main", "box_HackableController_v2_41.Disabled", "box_HackableController_v2_76.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_41_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_41()
  l0 = self.box_HackableController_v2_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1409159639", "1409159639", "S07M020_Main", "box_HackableController_v2_41.ProfilingDisabled", "box_HackableController_v2_41.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_MultipleOR_43_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1387585913"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_42_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_42_Out_1
  l0 = self.box_MultipleOR_43
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|720317043", "720317043", "S07M020_Main", "box_MultipleOR_43.Out", "box_Ordered_Output_42.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_35_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_54()
  l0 = self.box_HackableController_v2_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1907764805", "1907764805", "S07M020_Main", "box_Get_Player_ID_35.Out", "box_HackableController_v2_54.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_Compare_Integers_v2_130_A_ge_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimeLapse_Controller_115()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1582453391", "1582453391", "S07M020_Main", "box_Compare_Integers_v2_130.A_ge_B", "box_TimeLapse_Controller_115.Start", clone, l0)
  l0:Start()
end
function export:f_box_Compare_Integers_v2_130_A_lt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TimeLapse_Controller_131()
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|285347178", "285347178", "S07M020_Main", "box_Compare_Integers_v2_130.A_lt_B", "box_TimeLapse_Controller_131.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2107590621"
  l0.Out = self.f_box_Simple_Node_19_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2127805167", "2127805167", "S07M020_Main", "box_Ordered_Output_13.Out", "box_Simple_Node_19.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_13_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_123()
  l0 = self.box_MissionZone_123
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1761569789", "1761569789", "S07M020_Main", "box_Ordered_Output_13.Out", "box_MissionZone_123.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Integers_v2_114_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Hour
  l0.B = 14
  l0._graph = self
  l0._name = "box_Compare_Integers_v2_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1668982227"
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_box_Compare_Integers_v2_130_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_box_Compare_Integers_v2_130_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2038122346", "2038122346", "S07M020_Main", "box_Compare_Integers_v2_114.A_gt_B", "box_Compare_Integers_v2_130.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Integers_v2_114_A_le_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  l0.TimeScale = nil
  l0._graph = self
  l0._name = "box_TimeScale_Controller_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|939747539"
  l0.WasSet = DummyFunction
  l0.WasReset = DummyFunction
  l0.Locked = self.f_box_TimeScale_Controller_116_Locked
  l0.Unlocked = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|431475949", "431475949", "S07M020_Main", "box_Compare_Integers_v2_114.A_le_B", "box_TimeScale_Controller_116.Lock", clone, l0)
  l0:Lock()
end
function export:f_box_PhoneCommunicationController_40_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M020.Objectives.Objective050",
    item = "Objective",
    id = "354580"
  }
  l0 = self.box_PhoneCommunicationController_40
  l1 = self.box_MissionMessageController_v3_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|15105002", "15105002", "S07M020_Main", "box_PhoneCommunicationController_40.OnCommunicationStarted", "box_MissionMessageController_v3_15.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_82_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1998190511"
  l0.Out = self.f_box_Simple_Node_29_Out
  l0 = self.box_OnceOnly_v3_82
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1891826516", "1891826516", "S07M020_Main", "box_OnceOnly_v3_82.Out", "box_Simple_Node_29.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_105_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_105
  self.CopCar12 = l0.UserID
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_49
  l0.CLO = "9223372066990260105"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|42167981", "42167981", "S07M020_Main", "box_Ordered_Output_58.Out", "box_CLOController_49.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Cop01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = 1
  l0.FlasherOn = nil
  l0.FlasherSelection = nil
  l0.SpotlightOn = nil
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 1
  l0._graph = self
  l0._name = "box_SetVehicleLightAndSiren_v2_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1576930044"
  l0.Out = self.f_box_SetVehicleLightAndSiren_v2_57_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1355305303", "1355305303", "S07M020_Main", "box_Ordered_Output_58.Out", "box_SetVehicleLightAndSiren_v2_57.SetLightsAndSiren", clone, l0)
  l0:SetLightsAndSiren()
end
function export:f_box_Teleport_To_SpawnPoint_61_TeleportDone()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_17
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_Teleport_To_SpawnPoint_61
  l1 = self.box_MissionCheckpointReach_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1363562956", "1363562956", "S07M020_Main", "box_Teleport_To_SpawnPoint_61.TeleportDone", "box_MissionCheckpointReach_17.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_81_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154181"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1368379408"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_74_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_HackableController_v2_81
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|77642187", "77642187", "S07M020_Main", "box_HackableController_v2_81.Disabled", "box_InteractionScriptController_74.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_HackableController_v2_81_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_81()
  l0 = self.box_HackableController_v2_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1630812978", "1630812978", "S07M020_Main", "box_HackableController_v2_81.ProfilingDisabled", "box_HackableController_v2_81.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_TimeScale_Controller_121_Unlocked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_32
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|464645242", "464645242", "S07M020_Main", "box_TimeScale_Controller_121.Unlocked", "box_MissionCheckpointReach_32.In", clone, l0)
  l0:In()
end
function export:f_box_TriggerMonitor_v2_92_Leave()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|168688678"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_95_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_95_Out_1
  l0 = self.box_TriggerMonitor_v2_92
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|366039492", "366039492", "S07M020_Main", "box_TriggerMonitor_v2_92.Leave", "box_Ordered_Output_95.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_37_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1629554536"
  l0.Out = self.f_box_Get_Player_ID_35_Out
  l0 = self.box_MissionLayer_v2_37
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1764509321", "1764509321", "S07M020_Main", "box_MissionLayer_v2_37.Loaded", "box_Get_Player_ID_35.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_56_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_55()
  l0 = self.box_HackableController_v2_56
  l1 = self.box_HackableController_v2_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|977238782", "977238782", "S07M020_Main", "box_HackableController_v2_56.Disabled", "box_HackableController_v2_55.DisableProfiling", l0, l1)
  l1:DisableProfiling()
end
function export:f_box_HackableController_v2_56_ProfilingDisabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_56()
  l0 = self.box_HackableController_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|170677977", "170677977", "S07M020_Main", "box_HackableController_v2_56.ProfilingDisabled", "box_HackableController_v2_56.DisableHack", l0, l0)
  l0:DisableHack()
end
function export:f_box_Lanes_Restrictions_Control_63_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|328142660"
  l0._DynamicAnchors = {Out = 12}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_70_Out_2
  l0.Out[3] = self.f_box_Ordered_Output_70_Out_3
  l0.Out[4] = self.f_box_Ordered_Output_70_Out_4
  l0.Out[5] = self.f_box_Ordered_Output_70_Out_5
  l0.Out[6] = self.f_box_Ordered_Output_70_Out_6
  l0.Out[7] = self.f_box_Ordered_Output_70_Out_7
  l0.Out[8] = self.f_box_Ordered_Output_70_Out_8
  l0.Out[9] = self.f_box_Ordered_Output_70_Out_9
  l0.Out[10] = self.f_box_Ordered_Output_70_Out_10
  l0.Out[11] = self.f_box_Ordered_Output_70_Out_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1373298800", "1373298800", "S07M020_Main", "box_Lanes_Restrictions_Control_63.Out", "box_Ordered_Output_70.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_101_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_101
  self.CopCar10 = l0.UserID
end
function export:f_box_Timer_v2_68_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_68
  l1 = self.box_CinematicPrep_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|443510265", "443510265", "S07M020_Main", "box_Timer_v2_68.TimeElapsed", "box_CinematicPrep_5.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MultipleOR_117_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MultipleOR_117
  l1 = self.box_OnceOnly_v3_118
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|193948705", "193948705", "S07M020_Main", "box_MultipleOR_117.Out", "box_OnceOnly_v3_118.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_135_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMessageController_v3_22()
  l0 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1400947415", "1400947415", "S07M020_Main", "box_Ordered_Output_135.Out", "box_MissionMessageController_v3_22.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_135_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_136
  l0.Entity = "9223372064220175531"
  l0.SoundId = "soundbinary/1889681517.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|295798473", "295798473", "S07M020_Main", "box_Ordered_Output_135.Out", "box_PlaySound_v2_136.Play", clone, l0)
  l0:Play()
end
function export:f_box_Simple_Node_29_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Multiple_AND_62()
  l0 = self.box_Multiple_AND_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1927281181", "1927281181", "S07M020_Main", "box_Simple_Node_29.Out", "box_Multiple_AND_62.Condition", clone, l0)
  l0:Condition(1)
end
function export:f_box_CLOController_103_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self.box_CLOController_103
  self.CopCar11 = l0.UserID
end
function export:f_box_TimeLapse_Controller_131_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1394647111", "1394647111", "S07M020_Main", "box_TimeLapse_Controller_131.Started", "box_MultipleOR_117.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372054257154182"
  l0.InteractionEntityList = nil
  l0.EnableState = nil
  l0._graph = self
  l0._name = "box_InteractionScriptController_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|211852817"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_InteractionScriptController_6_Disabled
  l0.EnableStateSet = DummyFunction
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionMessageController_v3_15
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1759781918", "1759781918", "S07M020_Main", "box_MissionMessageController_v3_15.Out", "box_InteractionScriptController_6.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Simple_Node_127_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1346859823"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_132_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_132_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|791632424", "791632424", "S07M020_Main", "box_Simple_Node_127.Out", "box_Ordered_Output_132.In", clone, l0)
  l0:In()
end
function export:f_box_TimeScale_Controller_111_Locked()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeScaleController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|398267580", "398267580", "S07M020_Main", "box_TimeScale_Controller_111.Locked", "box_MultipleOR_117.Input", clone, l0)
  l0:Input(3)
end
function export:f_box_TimeLapse_Controller_115_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_117()
  l0 = self.box_MultipleOR_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|148235682", "148235682", "S07M020_Main", "box_TimeLapse_Controller_115.Started", "box_MultipleOR_117.Input", clone, l0)
  l0:Input(2)
end
function export:f_box_Ordered_Output_24_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372056336799670"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1961561300", "1961561300", "S07M020_Main", "box_Ordered_Output_24.Out", "box_PhoneCommunicationController_20.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_24_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMessageController_v3_22()
  l0 = self.box_MissionMessageController_v3_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1397955078", "1397955078", "S07M020_Main", "box_Ordered_Output_24.Out", "box_MissionMessageController_v3_22.HideObjective", clone, l0)
  l0:HideObjective()
end
function export:f_box_Ordered_Output_24_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_LMA_Layer_Controller_7
  l0.LMALayerName = "SF_08_Invite_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1997817168", "1997817168", "S07M020_Main", "box_Ordered_Output_24.Out", "box_LMA_Layer_Controller_7.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_Ordered_Output_24_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_65
  l0.SoundId = "soundbinary/2196104692.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1987952367", "1987952367", "S07M020_Main", "box_Ordered_Output_24.Out", "box_PlaySound_v2_65.Play", clone, l0)
  l0:Play()
end
function export:f_box_Simple_Node_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_33()
  l0 = self.box_MissionZone_33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1124208845", "1124208845", "S07M020_Main", "box_Simple_Node_19.Out", "box_MissionZone_33.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_PlaySequence_v5_89_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_82()
  l0 = self.box_PlaySequence_v5_89
  l1 = self.box_OnceOnly_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1644303751", "1644303751", "S07M020_Main", "box_PlaySequence_v5_89.Finished", "box_OnceOnly_v3_82.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_89_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_82()
  l0 = self.box_PlaySequence_v5_89
  l1 = self.box_OnceOnly_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|455575600", "455575600", "S07M020_Main", "box_PlaySequence_v5_89.Skipped", "box_OnceOnly_v3_82.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_89_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Multiple_AND_62()
  l0 = self.box_PlaySequence_v5_89
  l1 = self.box_Multiple_AND_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|453578160", "453578160", "S07M020_Main", "box_PlaySequence_v5_89.Started", "box_Multiple_AND_62.Condition", l0, l1)
  l1:Condition(0)
end
function export:OnEnter_box_HackableController_v2_51()
  local l0
  l0 = self.box_HackableController_v2_51
  l0.HackableEntity = "9223372066839438090"
end
function export:OnEnter_box_HackableController_v2_52()
  local l0
  l0 = self.box_HackableController_v2_52
  l0.HackableEntity = "9223372066839438143"
end
function export:OnEnter_box_HackableController_v2_80()
  local l0
  l0 = self.box_HackableController_v2_80
  l0.HackableEntity = "9223372065633816359"
end
function export:OnEnter_box_Multiple_AND_62()
end
function export:OnEnter_box_HackableController_v2_53()
  local l0
  l0 = self.box_HackableController_v2_53
  l0.HackableEntity = "9223372066839438082"
end
function export:OnEnter_box_HackableController_v2_76()
  local l0
  l0 = self.box_HackableController_v2_76
  l0.HackableEntity = "9223372065273275097"
end
function export:OnEnter_box_MissionMessageController_v3_22()
  local l0
  l0 = self.box_MissionMessageController_v3_22
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S07.S07M020.Objectives.Objective020",
    item = "Objective",
    id = "481771"
  }
  l0.HasObjectiveMarker = 0
end
function export:OnEnter_box_MissionZone_123()
  local l0
  l0 = self.box_MissionZone_123
  l0.MissionArea = self.MissionZone
  l0.MissionLayer = self.S07M020_Main
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_HackableController_v2_79()
  local l0
  l0 = self.box_HackableController_v2_79
  l0.HackableEntity = "9223372065273275097"
end
function export:OnEnter_box_MissionZone_33()
  local l0
  l0 = self.box_MissionZone_33
  l0.MissionArea = self.MissionZone
  l0.MissionLayer = self.S07M020_Main
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_HackableController_v2_94()
  local l0
  l0 = self.box_HackableController_v2_94
  l0.HackableEntity = "9223372066839438141"
end
function export:OnEnter_box_HackableController_v2_48()
  local l0
  l0 = self.box_HackableController_v2_48
  l0.HackableEntity = "9223372066839438090"
end
function export:OnEnter_box_HackableController_v2_54()
  local l0
  l0 = self.box_HackableController_v2_54
  l0.HackableEntity = "9223372066839438141"
end
function export:OnEnter_box_HackableController_v2_107()
  local l0
  l0 = self.box_HackableController_v2_107
  l0.HackableEntity = "9223372066839438143"
end
function export:OnEnter_box_HackableController_v2_55()
  local l0
  l0 = self.box_HackableController_v2_55
  l0.HackableEntity = "9223372066839438088"
end
function export:OnEnter_box_HackableController_v2_16()
  local l0
  l0 = self.box_HackableController_v2_16
  l0.HackableEntity = "9223372066839438135"
end
function export:OnEnter_box_FelonyTargetController_23()
  local l0
  l0 = Boxes[PathID("domino/System/FelonyTargetController.lua")]
  l0.Target = nil
  l0.FelonyType = nil
  l0.HeatValue = 50
  l0.FelonyLevel = nil
  l0.ScanSkipDispatchBark = nil
  l0.CustomScanIndex = nil
  l0.CustomScanDetectionRate = nil
  l0.CustomScanTriggerChase = nil
  l0.CustomChaseLevel = "ChaseLevelParameters.9223372059716897966"
  l0.AgentList = self.CopList
  l0.RemoveAgentRestrictions = nil
  l0._graph = self
  l0._name = "box_FelonyTargetController_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|1420512706"
  l0.Out = DummyFunction
  l0.MinHeatSet = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = self.f_box_FelonyTargetController_23_ChaseStarted
  l0.SearchStarted = DummyFunction
  l0.ScriptedAgentsAdded = self.f_box_FelonyTargetController_23_ScriptedAgentsAdded
  l0.ScriptedAgentsAdopted = self.f_box_FelonyTargetController_23_ScriptedAgentsAdopted
end
function export:OnEnter_box_InteractionScriptMonitor_v2_28()
  local l0
  l0 = self.box_InteractionScriptMonitor_v2_28
  l0.InteractionScriptEntity = "9223372064837249984"
end
function export:OnEnter_box_Media_System_Custom_Broadcast_Monitor_86()
end
function export:OnEnter_box_MultipleOR_9()
end
function export:OnEnter_box_HackableController_v2_39()
  local l0
  l0 = self.box_HackableController_v2_39
  l0.HackableEntity = "9223372066839438088"
end
function export:OnEnter_box_HackableController_v2_41()
  local l0
  l0 = self.box_HackableController_v2_41
  l0.HackableEntity = "9223372066839438082"
end
function export:OnEnter_box_MultipleOR_43()
end
function export:OnEnter_box_OnceOnly_v3_82()
end
function export:OnEnter_box_HackableController_v2_81()
  local l0
  l0 = self.box_HackableController_v2_81
  l0.HackableEntity = "9223372065633816359"
end
function export:OnEnter_box_TriggerMonitor_v2_92()
  local l0
  l0 = self.box_TriggerMonitor_v2_92
  l0.Trigger = "9223372073093685794"
end
function export:OnEnter_box_HackableController_v2_56()
  local l0
  l0 = self.box_HackableController_v2_56
  l0.HackableEntity = "9223372066839438135"
end
function export:OnEnter_box_MultipleOR_117()
end
function export:OnEnter_box_TimeLapse_Controller_131()
  local l0
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0.Hour = 23
  l0.Minutes = 0
  l0.Duration = 420
  l0._graph = self
  l0._name = "box_TimeLapse_Controller_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2033838951"
  l0.Started = self.f_box_TimeLapse_Controller_131_Started
  l0.Stopped = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_TimeLapse_Controller_115()
  local l0
  l0 = Boxes[PathID("domino/System/TimeLapse.lua")]
  l0.Hour = 23
  l0.Minutes = 0
  l0.Duration = 240
  l0._graph = self
  l0._name = "box_TimeLapse_Controller_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\S07M020\\S07M020.domino|@S07M020_Main|2073576307"
  l0.Started = self.f_box_TimeLapse_Controller_115_Started
  l0.Stopped = DummyFunction
  l0.Out = DummyFunction
end
_compilerVersion = 4
