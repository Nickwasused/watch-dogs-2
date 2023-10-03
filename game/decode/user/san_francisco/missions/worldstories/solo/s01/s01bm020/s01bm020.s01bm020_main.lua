export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
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
  self.PlayerEntity = nil
  self.Horatio = nil
  self[7] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_7_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[32] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[57] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[57]
  l0._graph = self
  l0.Out = self.f_57_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[3]
  l0._graph = self
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[17] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[17]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_17_PostOut
  self[15] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_15_OnUserInPlace
  self[10] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[10]
  l0._graph = self
  l0.Started = self.f_10_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_10_Escaped
  l0.LeftArea = DummyFunction
  self[22] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_5_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.MessageCompleted = DummyFunction
  self[20] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[20]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_20_Hacked
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_2_Unloaded
  l0.Reseted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[8]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_8_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[19] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = self.f_19_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_19_Enter
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
  l0 = self[18]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[18]
  l0:Input(0)
end
function export:f_7_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[22]
  l0.SurvivalGuideItemDB = "Items.9223372053993007715"
  l0:Display()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372052608855252"
  l0:StartCommunication()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[57]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_57_Out()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:Activate()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.Entity = "9223372049823027345"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM020.Objectives.Objective020",
    item = "Objective",
    id = "578185"
  }
  l0:ShowNewObjective()
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Enable()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = "S01BM020_Main"
  l0:Load()
end
function export:f_17_PostOut()
  local l0
  self = self._graph
  l0 = self[16]
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
  l0:Display()
end
function export:f_21_InstalledSet()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "S01BM020_Main"
  l0:Unload()
end
function export:f_15_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[15]
  self.Horatio = l0.UserID
  l0 = self[19]
  l0.Trigger = "9223372053306894541"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_10_Escaped()
  local l0
  self = self._graph
  l0 = self[1]
  l0:ShowMissionComplete()
end
function export:f_10_Started()
  local l0
  self = self._graph
  self:en_32()
  l0 = self[32]
  l0:Disable()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SmartphoneAppController.lua")]
  l0.App = "UIAppCatalogDB.9223372046454257057"
  l0.OverrideSettings = nil
  l0._graph = self
  l0.HiddenSet = DummyFunction
  l0.NewSet = DummyFunction
  l0.AvailableSet = DummyFunction
  l0.InstalledSet = self.f_21_InstalledSet
  l0.OverrideActivated = DummyFunction
  l0.OverrideCleared = DummyFunction
  l0:SetInstalled()
end
function export:f_5_AllSpawned()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[10]
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
  l0:Start()
end
function export:f_20_Hacked()
  local l0
  self = self._graph
  l0 = self[8]
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
  l0:Start()
end
function export:f_2_Unloaded()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Succeed()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0:In()
end
function export:f_8_DownloadCompleted()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S01B.S01BM020.Objectives.Objective030",
    item = "Objective",
    id = "578186"
  }
  l0:ShowNewObjective()
end
function export:f_19_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0.PGTMissionArea = "9223372049823026895"
  l0:Start()
end
function export:f_19_Enter()
  local l0
  self = self._graph
  self:en_15()
  l0 = self[15]
  l0:UnspawnUser()
end
function export:en_32()
  local l0
  l0 = self[32]
  l0.MissionArea = "9223372050646335461"
  l0.MissionLayer = "S01BM020_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:en_15()
  local l0
  l0 = self[15]
  l0.CLO = "9223372052099079414"
  l0.User = self.Horatio
end
_compilerVersion = 4
