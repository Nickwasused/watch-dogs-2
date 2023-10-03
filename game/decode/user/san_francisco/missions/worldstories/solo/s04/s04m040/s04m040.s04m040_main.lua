export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProfilingPathController_v2.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M040/S04M040_SCR.S04M040_SCR_Main.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TutorialController.lua")
  cbox:LoadResource("soundbinary/1465622631.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self._2 = 2
  self.CheckPoint_0IsActivated = 0
  self[12] = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.lua")
  l0 = self[12]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_12_Escaped
  l0.LeftArea = self.f_12_LeftArea
  self[27] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M040/S04M040_SCR.S04M040_SCR_Main.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.OutStopBlackOut = self.f_27_OutStopBlackOut
  l0.OutStartBlackOut = DummyFunction
  self[46] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = self.f_46_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Started = self.f_6_Started
  l0.Aborted = DummyFunction
  l0.AllSpawned = DummyFunction
  l0.ScriptedAgentsAdded = DummyFunction
  self[22] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.MessageCompleted = DummyFunction
  self[53] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[53]
  l0._graph = self
  l0.Loaded = self.f_53_Loaded
  l0.Unloaded = DummyFunction
  self[50] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[50]
  l0._graph = self
  l0.Out = self.f_50_Out
  l0.MessageCompleted = DummyFunction
  self[26] = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self[26]
  l0._graph = self
  l0.Out = self.f_26_Out
  l0.SetTrue = self.f_26_SetTrue
  l0.SetFalse = self.f_26_SetFalse
  l0.Toggled = self.f_26_Toggled
  l0.SetFromBool = self.f_26_SetFromBool
  self[25] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[25]
  l0._graph = self
  l0.Out = self.f_25_Out
  l0.MessageCompleted = DummyFunction
  self[31] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M040/S04M040_SCR.S04M040_SCR_Main.lua")
  l0 = self[31]
  l0._graph = self
  l0.Out = self.f_31_Out
  l0.OutStopBlackOut = DummyFunction
  l0.OutStartBlackOut = self.f_31_OutStartBlackOut
  self[33] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[47] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[47]
  l0._graph = self
  l0.Out = self.f_47_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[51] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[51]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_51_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[7] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[36] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[36]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self[49] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_49_Out
  self[29] = cbox:CreateBox("domino/System/TutorialController.lua")
  l0 = self[29]
  l0._graph = self
  l0.Out = DummyFunction
  l0.DisplayRequested = DummyFunction
  l0.NotificationHidden = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.lua")
  l0 = self[19]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_19_Interacted
  self[23] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[23]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_23_Out
  self[32] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_32_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[11]
  l0._graph = self
  l0.StartCommunicationOut = self.f_11_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_11_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = self.f_5_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[37] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[37]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_37_Out
  l0.ResetOut = DummyFunction
  self[38] = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.lua")
  l0 = self[38]
  l0._graph = self
  self[17] = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_17_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self[10] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self[52] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[52]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = self.f_52_ProfilingEnabled
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[43] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[43]
  l0._graph = self
  l0.Enabled = self.f_43_Enabled
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[8] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_8_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[45] = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self[45]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_45_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self[9] = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.lua")
  l0 = self[9]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Hacked = self.f_9_Hacked
  self[20] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[20]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_20_PostOut
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
  l0 = self[26]
  l0.Bool = self.CheckPoint_0IsActivated
  l0:True()
end
function export:CheckPoint_1()
  local l0
  self:en_38()
  l0 = self[38]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[53]
  l0.LMALayerName = "SF_06_SmartHouses_LMA"
  l0:Load()
end
function export:f_12_Escaped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_35_Out_0
  l0.Out[1] = self.f_35_Out_1
  l0:In()
end
function export:f_12_LeftArea()
  local l0
  self = self._graph
  l0 = self[37]
  l0:In(0)
end
function export:f_27_OutStopBlackOut()
  local l0
  self = self._graph
  l0 = self[43]
  l0.HackableEntity = "9223372050335506544"
  l0:EnableHack()
end
function export:f_46_Enabled()
  local l0
  self = self._graph
  l0 = self[50]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective030",
    item = "Objective",
    id = "341449"
  }
  l0:ShowNewObjective()
end
function export:f_6_Started()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.PGTMissionArea = "9223372046521836653"
  l0:Start()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372059723112924"
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:Activate()
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = "9223372048160889220"
  l0.IsManagingInteraction = 1
  l0:Start()
end
function export:f_53_Loaded()
  local l0
  self = self._graph
  l0 = self[49]
  l0:Input(0)
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Entity = "9223372055816713705"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
  l0:Start()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = self[26]
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_26_SetFalse()
  local l0
  self = self._graph
  l0 = self[26]
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_26_SetFromBool()
  local l0
  self = self._graph
  l0 = self[26]
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_26_SetTrue()
  local l0
  self = self._graph
  l0 = self[26]
  self.CheckPoint_0IsActivated = l0.Target
  l0 = self[49]
  l0:Input(1)
end
function export:f_26_Toggled()
  local l0
  self = self._graph
  l0 = self[26]
  self.CheckPoint_0IsActivated = l0.Target
end
function export:f_25_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0.Out[2] = DummyFunction
  l0:In()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(0)
end
function export:f_31_OutStartBlackOut()
  local l0
  self = self._graph
  l0 = self[20]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0.HackableEntity = "9223372055816713705"
  l0:DisableHack()
end
function export:f_51_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372049886804265"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = self.f_15_Shown
  l0.Hidden = DummyFunction
  l0:ShowPath()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[8]
  l0.HackableEntity = "9223372055816713705"
  l0:DisableProfiling()
end
function export:f_21_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372046521836653"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
  l0.ResetMissionWithLivingCity = 1
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
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = "S04M040_Main"
  l0:Load()
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372049287673750"
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
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.CheckPoint_0IsActivated
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_24_A_is_True
  l0.A_is_False = self.f_24_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_19_Interacted()
  local l0
  self = self._graph
  l0 = self[27]
  l0:INStopBlackOut()
end
function export:f_18_Activated()
  local l0
  self = self._graph
  l0 = self[29]
  l0.SurvivalGuideItemDB = "Items.9223372053993007711"
  l0:Display()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_32_Disabled()
  local l0
  self = self._graph
  l0 = self[45]
  l0.HackableEntity = "9223372050335506544"
  l0:DisableProfiling()
end
function export:f_11_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372064354972903"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0.Activated = self.f_18_Activated
  l0.Deactivated = DummyFunction
  l0:Activate()
end
function export:f_11_StartCommunicationOut()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective010",
    item = "Objective",
    id = "341447"
  }
  l0:ShowNewObjective()
end
function export:f_5_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = self[36]
  l0.LMALayerName = "SF_06_SmartHouses_LMA"
  l0:Unload()
end
function export:f_17_DownloadCompleted()
  local l0
  self = self._graph
  l0 = self[25]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective040",
    item = "Objective",
    id = "496583"
  }
  l0.HasObjectiveMarker = 0
  l0:ShowNewObjective()
end
function export:f_35_Out_0()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:End()
end
function export:f_35_Out_1()
  local l0
  self = self._graph
  l0 = self[33]
  l0.SoundId = "soundbinary/1465622631.bnk"
  l0:Play()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  l0 = self[11]
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347582"
  l0:StartCommunication()
end
function export:f_52_ProfilingEnabled()
  local l0
  self = self._graph
  l0 = self[46]
  l0.HackableEntity = "9223372055816713705"
  l0:EnableHack()
end
function export:f_43_Enabled()
  local l0
  self = self._graph
  l0 = self[51]
  l0.HackableEntity = "9223372050335506544"
  l0:EnableProfiling()
end
function export:f_15_Shown()
  local l0
  self = self._graph
  l0 = self[52]
  l0.HackableEntity = "9223372055816713705"
  l0:EnableProfiling()
end
function export:f_8_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = self[32]
  l0.HackableEntity = "9223372050335506544"
  l0:DisableHack()
end
function export:f_45_ProfilingDisabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372049886804265"
  l0._graph = self
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_21_Hidden
  l0:HidePath()
end
function export:f_9_Hacked()
  local l0
  self = self._graph
  l0 = self[17]
  l0.TargetEntity = "9223372055816713705"
  l0.LinkedObjective = "Objective"
  l0.Duration = 10
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
  l0.AutoDetectDownload = 1
  l0:Start()
end
function export:f_24_A_is_False()
  local l0
  self = self._graph
  l0 = self[31]
  l0:In()
end
function export:f_24_A_is_True()
  local l0
  self = self._graph
  l0 = self[31]
  l0:InStartBlackOut()
end
function export:f_20_PostOut()
  local l0
  self = self._graph
  l0 = self[23]
  l0:Input(1)
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.Checkpoint = "CheckPoint_1"
  l0.MissionLayer = "S04M040_Main"
  l0.ShowMissionComplete = 1
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.MissionArea = "9223372048360719109"
  l0.MissionLayer = "S04M040_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
_compilerVersion = 4
