export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MoveableEntityController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PawnHealthController.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_cin_sitaraprotesting.S02M020_CIN_SitaraProtesting_Main.debug.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_scr.S02M020_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/1357385916.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4106765114.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S02M020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main"
  self.PlayerEntity = nil
  self.Number_of_Targets = 0
  self.String_number_of_targets_left = ""
  self.BackDoor = "9223372051887121919"
  self.FrontDoor = "9223372053484938575"
  self.HintTriggerList = {}
  self.Sitara = nil
  self.box_TriggerMonitor_v2_56 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_56
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|19125150"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_56_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_56_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CLOController_67 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_67
  l0._graph = self
  l0._name = "box_CLOController_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|26203838"
  l0.Activated = self.f_box_CLOController_67_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionCheckpointReach_41 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_41
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|49312596"
  l0.Out = self.f_box_MissionCheckpointReach_41_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PGTController_v2_10 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_10
  l0._graph = self
  l0._name = "box_PGTController_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|74470525"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_10_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Download_Gameplay_5 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_5
  l0._graph = self
  l0._name = "box_Download_Gameplay_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|171398931"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_5_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_PlaySound_v2_51 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_51
  l0._graph = self
  l0._name = "box_PlaySound_v2_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|183322217"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_OnceOnly_v3_69 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_69
  l0._graph = self
  l0._name = "box_OnceOnly_v3_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|185191047"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_69_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|190361564"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_4_Unloaded
  l0.Reseted = DummyFunction
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|221967371"
  l0.Loaded = self.f_box_MissionLayer_v2_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_32 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_32
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|229098540"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_32_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionCheckpointReach_71 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_71
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|266694771"
  l0.Out = self.f_box_MissionCheckpointReach_71_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_30 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_30
  l0._graph = self
  l0._name = "box_PlaySound_v2_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|370120009"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_73 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_73
  l0._graph = self
  l0._name = "box_MultipleOR_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|389371041"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_73_Out
  self.box_MultipleOR_72 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_72
  l0._graph = self
  l0._name = "box_MultipleOR_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|520876465"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_72_Out
  self.box_CLOController_65 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_65
  l0._graph = self
  l0._name = "box_CLOController_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|534885398"
  l0.Activated = self.f_box_CLOController_65_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_61 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_61
  l0._graph = self
  l0._name = "box_CLOController_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|607607680"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_61_OnUserInPlace
  self.box_MissionCheckpointReach_9 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_9
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|610116670"
  l0.Out = self.f_box_MissionCheckpointReach_9_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_S02M020_CIN_SitaraProtesting_Main_40 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_cin_sitaraprotesting.S02M020_CIN_SitaraProtesting_Main.debug.lua")
  l0 = self.box_S02M020_CIN_SitaraProtesting_Main_40
  l0._graph = self
  l0._name = "box_S02M020_CIN_SitaraProtesting_Main_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|614332939"
  l0.EndCine = self.f_box_S02M020_CIN_SitaraProtesting_Main_40_EndCine
  self.box_LMA_Layer_Controller_39 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_39
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|652989905"
  l0.Loaded = self.f_box_LMA_Layer_Controller_39_Loaded
  l0.Unloaded = DummyFunction
  self.box_CLOController_48 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_48
  l0._graph = self
  l0._name = "box_CLOController_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|711014956"
  l0.Activated = self.f_box_CLOController_48_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_CLOController_50 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_50
  l0._graph = self
  l0._name = "box_CLOController_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|743334689"
  l0.Activated = self.f_box_CLOController_50_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionMessageController_v3_7 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_7
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|847141117"
  l0.Out = self.f_box_MissionMessageController_v3_7_Out
  l0.MessageCompleted = DummyFunction
  self.box_CLOController_66 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_66
  l0._graph = self
  l0._name = "box_CLOController_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|944887694"
  l0.Activated = self.f_box_CLOController_66_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Interact_Gameplay_38 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_38
  l0._graph = self
  l0._name = "box_Interact_Gameplay_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|964559028"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_38_Interacted
  self.box_S02M020_SCR_Main_54 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_scr.S02M020_SCR_Main.debug.lua")
  l0 = self.box_S02M020_SCR_Main_54
  l0._graph = self
  l0._name = "box_S02M020_SCR_Main_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|982673836"
  self.box_MissionZone_16 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_16
  l0._graph = self
  l0._name = "box_MissionZone_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1035140341"
  l0.Enabled = self.f_box_MissionZone_16_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_S02M020_SCR_Main_36 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S02/S02M020/s02m020_scr.S02M020_SCR_Main.debug.lua")
  l0 = self.box_S02M020_SCR_Main_36
  l0._graph = self
  l0._name = "box_S02M020_SCR_Main_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1086588982"
  self.box_CLOController_64 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_64
  l0._graph = self
  l0._name = "box_CLOController_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1118771595"
  l0.Activated = self.f_box_CLOController_64_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_MissionLayer_v2_22 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_22
  l0._graph = self
  l0._name = "box_MissionLayer_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1139367145"
  l0.Loaded = self.f_box_MissionLayer_v2_22_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_ListWriter_59 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_59
  l0._graph = self
  l0._name = "box_ListWriter_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1168884876"
  l0._DynamicAnchors = {Data = 6}
  l0.Added = self.f_box_ListWriter_59_Added
  l0.Removed = self.f_box_ListWriter_59_Removed
  l0.Out = self.f_box_ListWriter_59_Out
  self.box_LMA_Layer_Controller_21 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_21
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1196227238"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_PGTController_v2_74 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_74
  l0._graph = self
  l0._name = "box_PGTController_v2_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1293538526"
  l0.Started = DummyFunction
  l0.Aborted = self.f_box_PGTController_v2_74_Aborted
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_PhoneCommunicationController_20 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_20
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1304382923"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_20_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_53 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_53
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1335940541"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_53_MessageCompleted
  self.box_OnceOnly_v3_34 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_34
  l0._graph = self
  l0._name = "box_OnceOnly_v3_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1361775028"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_34_Out
  l0.ResetOut = DummyFunction
  self.box_CLOController_63 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_63
  l0._graph = self
  l0._name = "box_CLOController_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1378447648"
  l0.Activated = self.f_box_CLOController_63_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_Escape_Gameplay_6 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_6
  l0._graph = self
  l0._name = "box_Escape_Gameplay_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1433044140"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_6_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_6_LeftArea
  self.box_MissionMessageController_v3_25 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_25
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1467913744"
  l0.Out = self.f_box_MissionMessageController_v3_25_Out
  l0.MessageCompleted = DummyFunction
  self.box_HackableController_v2_26 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_26
  l0._graph = self
  l0._name = "box_HackableController_v2_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1538559228"
  l0.Enabled = self.f_box_HackableController_v2_26_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_box_HackableController_v2_26_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CinematicPrep_8 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_8
  l0._graph = self
  l0._name = "box_CinematicPrep_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1585439656"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_8_PostOut
  self.box_CLOController_49 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_49
  l0._graph = self
  l0._name = "box_CLOController_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1661565352"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_49_OnUserInPlace
  self.box_CinematicPrep_55 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_55
  l0._graph = self
  l0._name = "box_CinematicPrep_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1693830973"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_55_PostOut
  self.box_HackableController_v2_23 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_23
  l0._graph = self
  l0._name = "box_HackableController_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1709744477"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_23_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_23_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_17 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_17
  l0._graph = self
  l0._name = "box_CLOController_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1721654138"
  l0.Activated = self.f_box_CLOController_17_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_TutorialController_57 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_57
  l0._graph = self
  l0._name = "box_TutorialController_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1887262302"
  l0.Out = self.f_box_TutorialController_57_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_OnceOnly_v3_60 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_60
  l0._graph = self
  l0._name = "box_OnceOnly_v3_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1901347591"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_60_Out
  l0.ResetOut = DummyFunction
  self.box_PhoneCommunicationController_18 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_18
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1937805749"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = self.f_box_PhoneCommunicationController_18_OnCommunicationStarted
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionController_v4_70 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_70
  l0._graph = self
  l0._name = "box_MissionController_v4_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1951139520"
  self.box_MissionMessageController_v3_3 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_3
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1955486232"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_3_MessageCompleted
  self.box_MultipleOR_11 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_11
  l0._graph = self
  l0._name = "box_MultipleOR_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1983967812"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_11_Out
  self.box_CLOController_62 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_62
  l0._graph = self
  l0._name = "box_CLOController_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2000817316"
  l0.Activated = self.f_box_CLOController_62_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
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
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1927158391", "1927158391", "S02M020_Main", "CheckPoint_0", "box_MultipleOR_73.Input", self, l0)
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_22
  l0.LayerName = "S02M020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|146430076", "146430076", "S02M020_Main", "CheckPoint_1", "box_MissionLayer_v2_22.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_CinematicPrep_8
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1898146991", "1898146991", "S02M020_Main", "CheckPoint_2", "box_CinematicPrep_8.PostCinematic", self, l0)
  l0:PostCinematic()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_39
  l0.LMALayerName = "SF_02_Recruitment_Center_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1972159907", "1972159907", "S02M020_Main", "In", "box_LMA_Layer_Controller_39.Load", self, l0)
  l0:Load()
end
function export:f_box_TriggerMonitor_v2_56_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TutorialController_57()
  l0 = self.box_TriggerMonitor_v2_56
  l1 = self.box_TutorialController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1882133385", "1882133385", "S02M020_Main", "box_TriggerMonitor_v2_56.Disabled", "box_TutorialController_57.HideNotification", l0, l1)
  l1:HideNotification()
end
function export:f_box_TriggerMonitor_v2_56_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_56()
  l0 = self.box_TriggerMonitor_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1323846023", "1323846023", "S02M020_Main", "box_TriggerMonitor_v2_56.Enter", "box_TriggerMonitor_v2_56.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CLOController_67_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_64
  l0.CLO = "9223372056396932849"
  l0 = self.box_CLOController_67
  l1 = self.box_CLOController_64
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|151968396", "151968396", "S02M020_Main", "box_CLOController_67.Activated", "box_CLOController_64.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionCheckpointReach_41_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.BackDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1063773012"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_27_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MissionCheckpointReach_41
  l1 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|601013124", "601013124", "S02M020_Main", "box_MissionCheckpointReach_41.Out", "box_MoveableEntityController_27.MoveBackward", l0, l1)
  l1:MoveBackward()
end
function export:f_box_PGTController_v2_10_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_55
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PGTController_v2_10
  l1 = self.box_CinematicPrep_55
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1225691551", "1225691551", "S02M020_Main", "box_PGTController_v2_10.AllSpawned", "box_CinematicPrep_55.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MoveableEntityController_33_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1157541290", "1157541290", "S02M020_Main", "box_MoveableEntityController_33.MovedBackward", "box_HackableController_v2_23.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Download_Gameplay_5_DownloadCompleted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionMessageController_v3_25()
  l0 = self.box_Download_Gameplay_5
  l1 = self.box_MissionMessageController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|262167927", "262167927", "S02M020_Main", "box_Download_Gameplay_5.DownloadCompleted", "box_MissionMessageController_v3_25.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_OnceOnly_v3_69_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1226428772"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_52_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_52_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_52_Out_2
  l0 = self.box_OnceOnly_v3_69
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1357244494", "1357244494", "S02M020_Main", "box_OnceOnly_v3_69.Out", "box_Ordered_Output_52.In", l0, l1)
  l1:In()
end
function export:f_box_MissionLayer_v2_4_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_21
  l0.LMALayerName = "SF_02_Recruitment_Center_LMA"
  l0 = self.box_MissionLayer_v2_4
  l1 = self.box_LMA_Layer_Controller_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1926101114", "1926101114", "S02M020_Main", "box_MissionLayer_v2_4.Unloaded", "box_LMA_Layer_Controller_21.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_2_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  l0 = self.box_MissionLayer_v2_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2142840229", "2142840229", "S02M020_Main", "box_MissionLayer_v2_2.Loaded", "box_Get_Player_ID_1.In", l0, l1)
  l1:In()
end
function export:f_box_PhoneCommunicationController_32_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372049814637192"
  l0 = self.box_PhoneCommunicationController_32
  l1 = self.box_PhoneCommunicationController_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|74628910", "74628910", "S02M020_Main", "box_PhoneCommunicationController_32.OnCommunicationFinished", "box_PhoneCommunicationController_20.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionCheckpointReach_71_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_32
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346317"
  l0 = self.box_MissionCheckpointReach_71
  l1 = self.box_PhoneCommunicationController_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1310610261", "1310610261", "S02M020_Main", "box_MissionCheckpointReach_71.Out", "box_PhoneCommunicationController_32.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MultipleOR_73_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S02M020_Main"
  l0 = self.box_MultipleOR_73
  l1 = self.box_MissionLayer_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|874107310", "874107310", "S02M020_Main", "box_MultipleOR_73.Out", "box_MissionLayer_v2_2.Load", l0, l1)
  l1:Load()
end
function export:f_box_MultipleOR_72_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_71
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_MultipleOR_72
  l1 = self.box_MissionCheckpointReach_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1720773182", "1720773182", "S02M020_Main", "box_MultipleOR_72.Out", "box_MissionCheckpointReach_71.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_65_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_67
  l0.CLO = "9223372056396932850"
  l0 = self.box_CLOController_65
  l1 = self.box_CLOController_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1806222", "1806222", "S02M020_Main", "box_CLOController_65.Activated", "box_CLOController_67.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_19_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S02M020_SCR_Main_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1364895831", "1364895831", "S02M020_Main", "box_Ordered_Output_19.Out", "box_S02M020_SCR_Main_36.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_19_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1697299144", "1697299144", "S02M020_Main", "box_Ordered_Output_19.Out", "box_HackableController_v2_26.EnableProfiling", clone, l0)
  l0:EnableProfiling()
end
function export:f_box_CLOController_61_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_49
  l0.CLO = "9223372055971180907"
  l0 = self.box_CLOController_61
  l1 = self.box_CLOController_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1863996525", "1863996525", "S02M020_Main", "box_CLOController_61.OnUserInPlace", "box_CLOController_49.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionCheckpointReach_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_9
  l1 = self.box_S02M020_CIN_SitaraProtesting_Main_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1019007015", "1019007015", "S02M020_Main", "box_MissionCheckpointReach_9.Out", "box_S02M020_CIN_SitaraProtesting_Main_40.In", l0, l1)
  l1:In()
end
function export:f_box_S02M020_CIN_SitaraProtesting_Main_40_EndCine()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  l0.Pawn = self.PlayerEntity
  l0.PawnList = nil
  l0._graph = self
  l0._name = "box_Pawn_Health_Controller_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2027492346"
  l0.Out = self.f_box_Pawn_Health_Controller_68_Out
  l0 = self.box_S02M020_CIN_SitaraProtesting_Main_40
  l1 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|867971781", "867971781", "S02M020_Main", "box_S02M020_CIN_SitaraProtesting_Main_40.EndCine", "box_Pawn_Health_Controller_68.UnsetImmune", l0, l1)
  l1:UnsetImmune()
end
function export:f_box_LMA_Layer_Controller_39_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_73()
  l0 = self.box_LMA_Layer_Controller_39
  l1 = self.box_MultipleOR_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1949828855", "1949828855", "S02M020_Main", "box_LMA_Layer_Controller_39.Loaded", "box_MultipleOR_73.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_48_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_61
  l0.CLO = "9223372056396932842"
  l0 = self.box_CLOController_48
  l1 = self.box_CLOController_61
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|777683939", "777683939", "S02M020_Main", "box_CLOController_48.Activated", "box_CLOController_61.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_50_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_48
  l0.CLO = "9223372056396932838"
  l0 = self.box_CLOController_50
  l1 = self.box_CLOController_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|723163033", "723163033", "S02M020_Main", "box_CLOController_50.Activated", "box_CLOController_48.Activate", l0, l1)
  l1:Activate()
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
  l0 = self.box_MissionCheckpointReach_9
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|326479350", "326479350", "S02M020_Main", "box_Get_Player_ID_1.Out", "box_MissionCheckpointReach_9.In", clone, l0)
  l0:In()
end
function export:f_box_MissionMessageController_v3_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_MissionMessageController_v3_7
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|848434904", "848434904", "S02M020_Main", "box_MissionMessageController_v3_7.Out", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_66_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_17
  l0.CLO = "9223372056396932845"
  l0 = self.box_CLOController_66
  l1 = self.box_CLOController_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1318135308", "1318135308", "S02M020_Main", "box_CLOController_66.Activated", "box_CLOController_17.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Interact_Gameplay_38_Interacted()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_5
  l0.TargetEntity = "9223372049604406460"
  l0.LinkedObjective = "Objective"
  l0.Duration = 50
  l0.OverridedRadius = 10
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
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 1
  l0.Affiliation = "UZulu"
  l0.AutoDetectDownload = 1
  l0 = self.box_Interact_Gameplay_38
  l1 = self.box_Download_Gameplay_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|506927459", "506927459", "S02M020_Main", "box_Interact_Gameplay_38.Interacted", "box_Download_Gameplay_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionZone_16_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_10
  l0.PGTMissionArea = "9223372046596146922"
  l0 = self.box_MissionZone_16
  l1 = self.box_PGTController_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|962536040", "962536040", "S02M020_Main", "box_MissionZone_16.Enabled", "box_PGTController_v2_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_MoveableEntityController_27_MovedBackward()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MoveableEntityController.lua")]
  l0.MoveableEntity = self.FrontDoor
  l0.CanMoveWithoutPhysics = nil
  l0._graph = self
  l0._name = "box_MoveableEntityController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|103357701"
  l0.Moved = DummyFunction
  l0.MovedForward = DummyFunction
  l0.MovedBackward = self.f_box_MoveableEntityController_33_MovedBackward
  l0.ToggleBlocked = DummyFunction
  l0.Blocked = DummyFunction
  l0.UnBlocked = DummyFunction
  l0.TogglePaused = DummyFunction
  l0.Paused = DummyFunction
  l0.UnPaused = DummyFunction
  l0.CanUpdateMovementWithoutPhysicsSet = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1788367064", "1788367064", "S02M020_Main", "box_MoveableEntityController_27.MovedBackward", "box_MoveableEntityController_33.MoveBackward", clone, l0)
  l0:MoveBackward()
end
function export:f_box_CLOController_64_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_50
  l0.CLO = "9223372056396932853"
  l0 = self.box_CLOController_64
  l1 = self.box_CLOController_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|358591226", "358591226", "S02M020_Main", "box_CLOController_64.Activated", "box_CLOController_50.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionLayer_v2_22_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1721128250"
  l0.Out = self.f_box_Get_Player_ID_14_Out
  l0 = self.box_MissionLayer_v2_22
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|822355449", "822355449", "S02M020_Main", "box_MissionLayer_v2_22.Loaded", "box_Get_Player_ID_14.In", l0, l1)
  l1:In()
end
function export:f_box_ListWriter_59_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_59
  self.HintTriggerList = l0.Target
  self:OnEnter_box_TriggerMonitor_v2_56()
  l1 = self.box_TriggerMonitor_v2_56
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|263294954", "263294954", "S02M020_Main", "box_ListWriter_59.Added", "box_TriggerMonitor_v2_56.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_ListWriter_59_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_59
  self.HintTriggerList = l0.Target
end
function export:f_box_ListWriter_59_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_59
  self.HintTriggerList = l0.Target
end
function export:f_box_Ordered_Output_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S02M020_SCR_Main_54
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1996956700", "1996956700", "S02M020_Main", "box_Ordered_Output_52.Out", "box_S02M020_SCR_Main_54.End_Broadcast", clone, l0)
  l0:End_Broadcast()
end
function export:f_box_Ordered_Output_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_51
  l0.Entity = "9223372062544709164"
  l0.SoundId = "soundbinary/4106765114.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|995237926", "995237926", "S02M020_Main", "box_Ordered_Output_52.Out", "box_PlaySound_v2_51.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_52_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_74
  l0.PGTMissionArea = "9223372046596146922"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1332244981", "1332244981", "S02M020_Main", "box_Ordered_Output_52.Out", "box_PGTController_v2_74.Abort", clone, l0)
  l0:Abort()
end
function export:f_box_PGTController_v2_74_Aborted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "S02M020_Main"
  l0 = self.box_PGTController_v2_74
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|758146671", "758146671", "S02M020_Main", "box_PGTController_v2_74.Aborted", "box_MissionLayer_v2_4.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_PhoneCommunicationController_20_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_20
  l1 = self.box_MissionMessageController_v3_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1144195497", "1144195497", "S02M020_Main", "box_PhoneCommunicationController_20.OnCommunicationFinished", "box_MissionMessageController_v3_3.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_MissionMessageController_v3_53_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|594367903"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_19_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_19_Out_1
  l0 = self.box_MissionMessageController_v3_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1888797231", "1888797231", "S02M020_Main", "box_MissionMessageController_v3_53.MessageCompleted", "box_Ordered_Output_19.In", l0, l1)
  l1:In()
end
function export:f_box_OnceOnly_v3_34_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1612232356"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  l0 = self.box_OnceOnly_v3_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1501477182", "1501477182", "S02M020_Main", "box_OnceOnly_v3_34.Out", "box_Ordered_Output_12.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_63_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_62
  l0.CLO = "9223372056396932839"
  l0 = self.box_CLOController_63
  l1 = self.box_CLOController_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2021132486", "2021132486", "S02M020_Main", "box_CLOController_63.Activated", "box_CLOController_62.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Escape_Gameplay_6_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1510417358"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_35_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_35_Out_1
  l0 = self.box_Escape_Gameplay_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2055482591", "2055482591", "S02M020_Main", "box_Escape_Gameplay_6.Escaped", "box_Ordered_Output_35.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_6_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_6
  l1 = self.box_OnceOnly_v3_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1227023672", "1227023672", "S02M020_Main", "box_Escape_Gameplay_6.LeftArea", "box_OnceOnly_v3_69.In", l0, l1)
  l1:In(0)
end
function export:f_box_MissionMessageController_v3_25_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_25
  l1 = self.box_OnceOnly_v3_34
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|773494852", "773494852", "S02M020_Main", "box_MissionMessageController_v3_25.Out", "box_OnceOnly_v3_34.In", l0, l1)
  l1:In(0)
end
function export:f_box_Ordered_Output_35_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionMessageController_v3_25()
  l0 = self.box_MissionMessageController_v3_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1223338016", "1223338016", "S02M020_Main", "box_Ordered_Output_35.Out", "box_MissionMessageController_v3_25.HideObjective", clone, l0)
  l0:HideObjective()
end
function export:f_box_Ordered_Output_35_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|841205794", "841205794", "S02M020_Main", "box_Ordered_Output_35.Out", "box_MissionMessageController_v3_7.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_HackableController_v2_26_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_38
  l0.Entity = "9223372049604406460"
  l0.IsManagingInteraction = 1
  l0 = self.box_HackableController_v2_26
  l1 = self.box_Interact_Gameplay_38
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|317588774", "317588774", "S02M020_Main", "box_HackableController_v2_26.Enabled", "box_Interact_Gameplay_38.Start", l0, l1)
  l1:Start()
end
function export:f_box_HackableController_v2_26_ProfilingEnabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_26()
  l0 = self.box_HackableController_v2_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|599849644", "599849644", "S02M020_Main", "box_HackableController_v2_26.ProfilingEnabled", "box_HackableController_v2_26.EnableHack", l0, l0)
  l0:EnableHack()
end
function export:f_box_CinematicPrep_8_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_72()
  l0 = self.box_CinematicPrep_8
  l1 = self.box_MultipleOR_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1988297321", "1988297321", "S02M020_Main", "box_CinematicPrep_8.PostOut", "box_MultipleOR_72.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_16()
  l0 = self.box_MissionZone_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|452494103", "452494103", "S02M020_Main", "box_Ordered_Output_12.Out", "box_MissionZone_16.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_6
  l0.Entity = "9223372046915710298"
  l0.Entity_AreaRadius = 100
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|866776877", "866776877", "S02M020_Main", "box_Ordered_Output_12.Out", "box_Escape_Gameplay_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_CLOController_49_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_49
  self.Sitara = l0.UserID
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1925516022"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_58_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_58_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_58_Out_2
  l0 = self.box_CLOController_49
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|283470399", "283470399", "S02M020_Main", "box_CLOController_49.OnUserInPlace", "box_Ordered_Output_58.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_55_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_18
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421346316"
  l0 = self.box_CinematicPrep_55
  l1 = self.box_PhoneCommunicationController_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|309379214", "309379214", "S02M020_Main", "box_CinematicPrep_55.PostOut", "box_PhoneCommunicationController_18.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackableController_v2_23_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_23()
  l0 = self.box_HackableController_v2_23
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1636718641", "1636718641", "S02M020_Main", "box_HackableController_v2_23.Disabled", "box_HackableController_v2_23.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_23_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_16()
  l0 = self.box_HackableController_v2_23
  l1 = self.box_MissionZone_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1077049221", "1077049221", "S02M020_Main", "box_HackableController_v2_23.ProfilingDisabled", "box_MissionZone_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Get_Player_ID_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1931735009", "1931735009", "S02M020_Main", "box_Get_Player_ID_14.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_CLOController_17_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_65
  l0.CLO = "9223372056396932844"
  l0 = self.box_CLOController_17
  l1 = self.box_CLOController_65
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2039706404", "2039706404", "S02M020_Main", "box_CLOController_17.Activated", "box_CLOController_65.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_TutorialController_57_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_57
  l1 = self.box_OnceOnly_v3_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1378735055", "1378735055", "S02M020_Main", "box_TutorialController_57.Out", "box_OnceOnly_v3_60.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_60_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_41
  l0.Checkpoint = "CheckPoint_1"
  l0 = self.box_OnceOnly_v3_60
  l1 = self.box_MissionCheckpointReach_41
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2127298295", "2127298295", "S02M020_Main", "box_OnceOnly_v3_60.Out", "box_MissionCheckpointReach_41.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_58_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TutorialController_57()
  l0 = self.box_TutorialController_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1427957734", "1427957734", "S02M020_Main", "box_Ordered_Output_58.Out", "box_TutorialController_57.Display", clone, l0)
  l0:Display()
end
function export:f_box_Ordered_Output_58_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_59
  l0.Input = self.HintTriggerList
  l0.Data[0] = "9223372069072413806"
  l0.Data[1] = "9223372069072413810"
  l0.Data[2] = "9223372069072413808"
  l0.Data[3] = "9223372069072413814"
  l0.Data[4] = "9223372069072413816"
  l0.Data[5] = "9223372069072413812"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|40618110", "40618110", "S02M020_Main", "box_Ordered_Output_58.Out", "box_ListWriter_59.Add", clone, l0)
  l0:Add()
end
function export:f_box_Ordered_Output_58_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_30
  l0.Entity = "9223372062544709164"
  l0.SoundId = "soundbinary/1357385916.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|2102441128", "2102441128", "S02M020_Main", "box_Ordered_Output_58.Out", "box_PlaySound_v2_30.Play", clone, l0)
  l0:Play()
end
function export:f_box_PhoneCommunicationController_18_OnCommunicationStarted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_53
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M020.Objectives.Objective010",
    item = "Objective",
    id = "343695"
  }
  l0 = self.box_PhoneCommunicationController_18
  l1 = self.box_MissionMessageController_v3_53
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1488847062", "1488847062", "S02M020_Main", "box_PhoneCommunicationController_18.OnCommunicationStarted", "box_MissionMessageController_v3_53.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MissionMessageController_v3_3_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_3
  l1 = self.box_MissionController_v4_70
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|942534988", "942534988", "S02M020_Main", "box_MissionMessageController_v3_3.MessageCompleted", "box_MissionController_v4_70.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_MultipleOR_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_63
  l0.CLO = "9223372056396932848"
  l0 = self.box_MultipleOR_11
  l1 = self.box_CLOController_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|791950925", "791950925", "S02M020_Main", "box_MultipleOR_11.Out", "box_CLOController_63.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_CLOController_62_Activated()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_66
  l0.CLO = "9223372056396932843"
  l0 = self.box_CLOController_62
  l1 = self.box_CLOController_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|894893973", "894893973", "S02M020_Main", "box_CLOController_62.Activated", "box_CLOController_66.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Pawn_Health_Controller_68_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PawnHealthController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_11()
  l0 = self.box_MultipleOR_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M020\\S02M020.domino|@S02M020_Main|1774018426", "1774018426", "S02M020_Main", "box_Pawn_Health_Controller_68.Out", "box_MultipleOR_11.Input", clone, l0)
  l0:Input(0)
end
function export:OnEnter_box_TriggerMonitor_v2_56()
  local l0
  l0 = self.box_TriggerMonitor_v2_56
  l0.TriggerList = self.HintTriggerList
end
function export:OnEnter_box_MultipleOR_73()
end
function export:OnEnter_box_MultipleOR_72()
end
function export:OnEnter_box_MissionZone_16()
  local l0
  l0 = self.box_MissionZone_16
  l0.MissionArea = "9223372047839551907"
  l0.MissionLayer = "S02M020_Main"
  l0.LmaLayer = "SF_02_Recruitment_Center_LMA"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MissionMessageController_v3_25()
  local l0
  l0 = self.box_MissionMessageController_v3_25
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S02.S02M020.Objectives.Objective030",
    item = "Objective",
    id = "656953"
  }
  l0.HasObjectiveMarker = 0
end
function export:OnEnter_box_HackableController_v2_26()
  local l0
  l0 = self.box_HackableController_v2_26
  l0.HackableEntity = "9223372052107082875"
end
function export:OnEnter_box_HackableController_v2_23()
  local l0
  l0 = self.box_HackableController_v2_23
  l0.HackableEntity = "9223372052107082875"
end
function export:OnEnter_box_TutorialController_57()
  local l0
  l0 = self.box_TutorialController_57
  l0.Notification = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M020.Objectives.Notification010",
    item = "Notification",
    id = "640629"
  }
  l0.Duration = -1
end
function export:OnEnter_box_MultipleOR_11()
end
_compilerVersion = 4
