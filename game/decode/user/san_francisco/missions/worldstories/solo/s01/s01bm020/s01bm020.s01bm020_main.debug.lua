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
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/SmartphoneAppController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S01BM020_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main"
  self.PlayerEntity = nil
  self.Horatio = nil
  self.box_PhoneCommunicationController_7 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_7
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|103019937"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_7_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_MissionMessageController_v3_1 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_1
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|114765826"
  l0.Out = self.f_box_MissionMessageController_v3_1_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionLayer_v2_4 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_4
  l0._graph = self
  l0._name = "box_MissionLayer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|476960125"
  l0.Loaded = self.f_box_MissionLayer_v2_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_MissionZone_32 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_32
  l0._graph = self
  l0._name = "box_MissionZone_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|676088699"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MissionCheckpointReach_57 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_57
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|709068532"
  l0.Out = self.f_box_MissionCheckpointReach_57_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_MissionMessageController_v3_9 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_9
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|726339210"
  l0.Out = self.f_box_MissionMessageController_v3_9_Out
  l0.MessageCompleted = DummyFunction
  self.box_MissionController_v4_3 = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self.box_MissionController_v4_3
  l0._graph = self
  l0._name = "box_MissionController_v4_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|904002119"
  self.box_MultipleOR_18 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_18
  l0._graph = self
  l0._name = "box_MultipleOR_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1012054066"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_18_Out
  self.box_CinematicPrep_17 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_17
  l0._graph = self
  l0._name = "box_CinematicPrep_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1063778003"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_17_PostOut
  self.box_CLOController_15 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_15
  l0._graph = self
  l0._name = "box_CLOController_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1095410829"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_15_OnUserInPlace
  self.box_Escape_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_10
  l0._graph = self
  l0._name = "box_Escape_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1224821026"
  l0.Started = self.f_box_Escape_Gameplay_10_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_10_Escaped
  l0.LeftArea = DummyFunction
  self.box_TutorialController_22 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_22
  l0._graph = self
  l0._name = "box_TutorialController_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1262953604"
  l0.Out = self.f_box_TutorialController_22_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_PGTController_v2_5 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_5
  l0._graph = self
  l0._name = "box_PGTController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1379821212"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_5_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_MissionMessageController_v3_11 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_11
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1456972572"
  l0.Out = self.f_box_MissionMessageController_v3_11_Out
  l0.MessageCompleted = DummyFunction
  self.box_Hack_Gameplay_20 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_20
  l0._graph = self
  l0._name = "box_Hack_Gameplay_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1731778363"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_box_Hack_Gameplay_20_Hacked
  self.box_MissionLayer_v2_2 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_2
  l0._graph = self
  l0._name = "box_MissionLayer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1780433848"
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_box_MissionLayer_v2_2_Unloaded
  l0.Reseted = DummyFunction
  self.box_TutorialController_16 = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self.box_TutorialController_16
  l0._graph = self
  l0._name = "box_TutorialController_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|2008590025"
  l0.Out = self.f_box_TutorialController_16_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self.box_Download_Gameplay_8 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_8
  l0._graph = self
  l0._name = "box_Download_Gameplay_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|2065913218"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_8_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_TriggerMonitor_v2_19 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_19
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|2138034444"
  l0.Enabled = self.f_box_TriggerMonitor_v2_19_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_19_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
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
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|867807429", "867807429", "S01BM020_Main", "CheckPoint_0", "box_MultipleOR_18.Input", self, l0)
  l0:Input(1)
end
function export:In()
  local l0
  self:OnEnter_box_MultipleOR_18()
  l0 = self.box_MultipleOR_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|405626275", "405626275", "S01BM020_Main", "In", "box_MultipleOR_18.Input", self, l0)
  l0:Input(0)
end
function export:f_box_PhoneCommunicationController_7_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_22
  l0.SurvivalGuideItemDB = "Items.9223372053993007715"
  l0 = self.box_PhoneCommunicationController_7
  l1 = self.box_TutorialController_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|756589865", "756589865", "S01BM020_Main", "box_PhoneCommunicationController_7.OnCommunicationFinished", "box_TutorialController_22.Display", l0, l1)
  l1:Display()
end
function export:f_box_MissionMessageController_v3_1_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_7
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052608855252"
  l0 = self.box_MissionMessageController_v3_1
  l1 = self.box_PhoneCommunicationController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1257451369", "1257451369", "S01BM020_Main", "box_MissionMessageController_v3_1.Out", "box_PhoneCommunicationController_7.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_MissionLayer_v2_4_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|690479105"
  l0.Out = self.f_box_Get_Player_ID_6_Out
  l0 = self.box_MissionLayer_v2_4
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1146415323", "1146415323", "S01BM020_Main", "box_MissionLayer_v2_4.Loaded", "box_Get_Player_ID_6.In", l0, l1)
  l1:In()
end
function export:f_box_Get_Player_ID_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_57
  l0.Checkpoint = "CheckPoint_0"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|78137849", "78137849", "S01BM020_Main", "box_Get_Player_ID_6.Out", "box_MissionCheckpointReach_57.In", clone, l0)
  l0:In()
end
function export:f_box_MissionCheckpointReach_57_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_15()
  l0 = self.box_MissionCheckpointReach_57
  l1 = self.box_CLOController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|876366128", "876366128", "S01BM020_Main", "box_MissionCheckpointReach_57.Out", "box_CLOController_15.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MissionMessageController_v3_9_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Hack_Gameplay_20
  l0.Entity = "9223372049823027345"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0 = self.box_MissionMessageController_v3_9
  l1 = self.box_Hack_Gameplay_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1898518733", "1898518733", "S01BM020_Main", "box_MissionMessageController_v3_9.Out", "box_Hack_Gameplay_20.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_56_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_9
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM020.Objectives.Objective020",
    item = "Objective",
    id = "578185"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1250977999", "1250977999", "S01BM020_Main", "box_Ordered_Output_56.Out", "box_MissionMessageController_v3_9.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_56_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_32()
  l0 = self.box_MissionZone_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|968033616", "968033616", "S01BM020_Main", "box_Ordered_Output_56.Out", "box_MissionZone_32.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MultipleOR_18_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_4
  l0.LayerName = "S01BM020_Main"
  l0 = self.box_MultipleOR_18
  l1 = self.box_MissionLayer_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|116709591", "116709591", "S01BM020_Main", "box_MultipleOR_18.Out", "box_MissionLayer_v2_4.Load", l0, l1)
  l1:Load()
end
function export:f_box_CinematicPrep_17_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_TutorialController_16
  l0.Notification = {
    section = "MISSIONS.TUTORIALS.Notification_Download",
    item = "Description",
    id = "652625"
  }
  l0.NotificationOverridePC = {
    section = "PRESENTATION.MAIN & PAUSE MENUS.Main Menu.PC_Options.PC_Specific_Tutorials",
    item = "HackTheTarget_PC_Desc",
    id = "698680"
  }
  l0.Duration = 60
  l0 = self.box_CinematicPrep_17
  l1 = self.box_TutorialController_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|532361244", "532361244", "S01BM020_Main", "box_CinematicPrep_17.PostOut", "box_TutorialController_16.Display", l0, l1)
  l1:Display()
end
function export:f_box_SmartphoneAppController_21_InstalledSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionLayer_v2_2
  l0.LayerName = "S01BM020_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1989783584", "1989783584", "S01BM020_Main", "box_SmartphoneAppController_21.InstalledSet", "box_MissionLayer_v2_2.Unload", clone, l0)
  l0:Unload()
end
function export:f_box_CLOController_15_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_15
  self.Horatio = l0.UserID
  l0 = self.box_TriggerMonitor_v2_19
  l0.Trigger = "9223372053306894541"
  l0.AutoDisable = 1
  l0 = self.box_CLOController_15
  l1 = self.box_TriggerMonitor_v2_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|369228167", "369228167", "S01BM020_Main", "box_CLOController_15.OnUserInPlace", "box_TriggerMonitor_v2_19.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Escape_Gameplay_10_Escaped()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_10
  l1 = self.box_MissionMessageController_v3_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|235196628", "235196628", "S01BM020_Main", "box_Escape_Gameplay_10.Escaped", "box_MissionMessageController_v3_1.ShowMissionComplete", l0, l1)
  l1:ShowMissionComplete()
end
function export:f_box_Escape_Gameplay_10_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_32()
  l0 = self.box_Escape_Gameplay_10
  l1 = self.box_MissionZone_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|2012298488", "2012298488", "S01BM020_Main", "box_Escape_Gameplay_10.Started", "box_MissionZone_32.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_TutorialController_22_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257057"
  l0.OverrideSettings = nil
  l0._graph = self
  l0._name = "box_SmartphoneAppController_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1087356834"
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_box_SmartphoneAppController_21_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0 = self.box_TutorialController_22
  l1 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|706953334", "706953334", "S01BM020_Main", "box_TutorialController_22.Out", "box_SmartphoneAppController_21.SetInstalled", l0, l1)
  l1:SetInstalled()
end
function export:f_box_PGTController_v2_5_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_17
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PGTController_v2_5
  l1 = self.box_CinematicPrep_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1224880098", "1224880098", "S01BM020_Main", "box_PGTController_v2_5.AllSpawned", "box_CinematicPrep_17.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_MissionMessageController_v3_11_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_10
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372049823026820"
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
  l0 = self.box_MissionMessageController_v3_11
  l1 = self.box_Escape_Gameplay_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1835946186", "1835946186", "S01BM020_Main", "box_MissionMessageController_v3_11.Out", "box_Escape_Gameplay_10.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hack_Gameplay_20_Hacked()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_8
  l0.TargetEntity = "9223372049823027345"
  l0.LinkedObjective = "Objective"
  l0.Duration = 45
  l0.DownloadRadiusPreset = "Interior"
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
  l0.CustomRatio = 0.1
  l0.DetectionOnCustomRatio = 0
  l0.DownloadPauseRatio = 0.5
  l0.DownloadPauseDuration = -1
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "P_8"
  l0.AutoDetectDownload = 1
  l0 = self.box_Hack_Gameplay_20
  l1 = self.box_Download_Gameplay_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1977309986", "1977309986", "S01BM020_Main", "box_Hack_Gameplay_20.Hacked", "box_Download_Gameplay_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionLayer_v2_2_Unloaded()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_2
  l1 = self.box_MissionController_v4_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|195283362", "195283362", "S01BM020_Main", "box_MissionLayer_v2_2.Unloaded", "box_MissionController_v4_3.Succeed", l0, l1)
  l1:Succeed()
end
function export:f_box_TutorialController_16_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|831821962"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_56_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_56_Out_1
  l0 = self.box_TutorialController_16
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1243875581", "1243875581", "S01BM020_Main", "box_TutorialController_16.Out", "box_Ordered_Output_56.In", l0, l1)
  l1:In()
end
function export:f_box_Download_Gameplay_8_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_11
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM020.Objectives.Objective030",
    item = "Objective",
    id = "578186"
  }
  l0 = self.box_Download_Gameplay_8
  l1 = self.box_MissionMessageController_v3_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1319443304", "1319443304", "S01BM020_Main", "box_Download_Gameplay_8.DownloadCompleted", "box_MissionMessageController_v3_11.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_TriggerMonitor_v2_19_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_5
  l0.PGTMissionArea = "9223372049823026895"
  l0 = self.box_TriggerMonitor_v2_19
  l1 = self.box_PGTController_v2_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|410481056", "410481056", "S01BM020_Main", "box_TriggerMonitor_v2_19.Enabled", "box_PGTController_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_19_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_CLOController_15()
  l0 = self.box_TriggerMonitor_v2_19
  l1 = self.box_CLOController_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S01\\S01BM020\\S01BM020.domino|@S01BM020_Main|1127930431", "1127930431", "S01BM020_Main", "box_TriggerMonitor_v2_19.Enter", "box_CLOController_15.UnspawnUser", l0, l1)
  l1:UnspawnUser()
end
function export:OnEnter_box_MissionZone_32()
  local l0
  l0 = self.box_MissionZone_32
  l0.MissionArea = "9223372050646335461"
  l0.MissionLayer = "S01BM020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_18()
end
function export:OnEnter_box_CLOController_15()
  local l0
  l0 = self.box_CLOController_15
  l0.CLO = "9223372052099079414"
  l0.User = self.Horatio
end
_compilerVersion = 4
