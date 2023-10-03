export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/AccessCodeMonitor.lua")
  cbox:RegisterBox("domino/System/AISquadStateMonitor.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/DynamicMediaController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/HackableMonitor.lua")
  cbox:RegisterBox("domino/System/HackableController_v2.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  cbox:RegisterBox("domino/System/InteractionScriptController.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMusicController.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PGTController_v2.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PhysZoneCleanup.lua")
  cbox:RegisterBox("domino/System/PlayDominoAnimation.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/ProfilingPathController_v2.lua")
  cbox:RegisterBox("domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M050/s04m050_scr.S04M050_SCR_Main.debug.lua")
  cbox:RegisterBox("domino/System/SecurityCameraMonitor.lua")
  cbox:RegisterBox("domino/System/SecurityCamController.lua")
  cbox:RegisterBox("domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackerreact---hacker-01.move.bin", "CMoveResource")
  cbox:LoadResource("soundbinary/3570836689.bnk", "CSoundResource")
  cbox:LoadResource("move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackerreact---hacker-02.move.bin", "CMoveResource")
  cbox:LoadResource("soundbinary/3966802041.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2792290903.bnk", "CSoundResource")
  cbox:LoadResource("move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-01.move.bin", "CMoveResource")
  cbox:LoadResource("soundbinary/81442961.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3552307770.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2286467389.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1465087397.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1083695877.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2799696401.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4190187469.bnk", "CSoundResource")
  cbox:LoadResource("move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-02.move.bin", "CMoveResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04M050_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main"
  self.PlayerEntity = nil
  self.Engineer = nil
  self.Engineer2 = nil
  self.ServerRoom_Cameras = {}
  self.IsCheckPoint_0 = 0
  self.IsDownloadInProgress = 0
  self.IsCheckPoint_2 = 0
  self.Engineer3 = nil
  self.Engineer4 = nil
  self.box_Timer_v2_120 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_120
  l0._graph = self
  l0._name = "box_Timer_v2_120"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|17381613"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_120_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_58 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_58
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_58"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|72436669"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionLayer_v2_40 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_40
  l0._graph = self
  l0._name = "box_MissionLayer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|143274190"
  l0.Loaded = self.f_box_MissionLayer_v2_40_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_RewardController_v3_82 = cbox:CreateBox("domino/System/RewardComponentController_V3.lua")
  l0 = self.box_RewardController_v3_82
  l0._graph = self
  l0._name = "box_RewardController_v3_82"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|147381139"
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_56 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_56
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_56"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|154257452"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Play_Domino_Cinematic_Animation_56_Stopped
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_156 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_156
  l0._graph = self
  l0._name = "box_PlaySound_v2_156"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|179018140"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_91 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_91
  l0._graph = self
  l0._name = "box_PlaySound_v2_91"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|194818956"
  l0.Out = self.f_box_PlaySound_v2_91_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_135 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_135
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_135"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|202345447"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_135_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_HackableController_v2_146 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_146
  l0._graph = self
  l0._name = "box_HackableController_v2_146"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|210565049"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_146_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_146_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_128 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_128
  l0._graph = self
  l0._name = "box_CLOController_128"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|254344000"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_128_OnUserInPlace
  self.box_Hack_Gameplay_150 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_150
  l0._graph = self
  l0._name = "box_Hack_Gameplay_150"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|318492998"
  l0.Started = self.f_box_Hack_Gameplay_150_Started
  l0.Stopped = self.f_box_Hack_Gameplay_150_Stopped
  l0.Hacked = DummyFunction
  self.box_CinematicPrep_68 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_68
  l0._graph = self
  l0._name = "box_CinematicPrep_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|340185997"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_68_PostOut
  self.box_PlaySequence_v5_39 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_39
  l0._graph = self
  l0._name = "box_PlaySequence_v5_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|349918284"
  l0._DynamicAnchors = {
    EntityOut = {"Engineer"}
  }
  l0.Started = self.f_box_PlaySequence_v5_39_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hack_Gameplay_46 = cbox:CreateBox("domino/Library/common/MissionIngredients.Hack_Gameplay.debug.lua")
  l0 = self.box_Hack_Gameplay_46
  l0._graph = self
  l0._name = "box_Hack_Gameplay_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|403096943"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Hack_Gameplay_46_Stopped
  l0.Hacked = self.f_box_Hack_Gameplay_46_Hacked
  self.box_MissionCheckpointReach_35 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_35
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|412973541"
  l0.Out = self.f_box_MissionCheckpointReach_35_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_117 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_117
  l0._graph = self
  l0._name = "box_PlaySound_v2_117"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|452977664"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_122 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_122
  l0._graph = self
  l0._name = "box_MultipleOR_122"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|454284409"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_122_Out
  self.box_SetBoolean_v2_112 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_112
  l0._graph = self
  l0._name = "box_SetBoolean_v2_112"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|470913493"
  l0.Out = self.f_box_SetBoolean_v2_112_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_112_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_112_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_112_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_112_SetFromBool
  self.box_Play_Domino_Cinematic_Animation_127 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_127
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_127"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|478088847"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_127_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_63 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_63
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_63"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|478886479"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_63_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_HackableController_v2_25 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_25
  l0._graph = self
  l0._name = "box_HackableController_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|505237257"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_25_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_CLOController_131 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_131
  l0._graph = self
  l0._name = "box_CLOController_131"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|517701587"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_131_OnUserInPlace
  self.box_PhoneCommunicationController_5 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_5
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|524932928"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Network_Surfing_Controller_12 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_12
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|609751072"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_12_Deactivated
  self.box_HackableController_v2_147 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_147
  l0._graph = self
  l0._name = "box_HackableController_v2_147"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|612212173"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_147_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_HackableController_v2_148 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_148
  l0._graph = self
  l0._name = "box_HackableController_v2_148"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|648354362"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_148_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_148_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionCheckpointReach_22 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_22
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|717752310"
  l0.Out = self.f_box_MissionCheckpointReach_22_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySound_v2_157 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_157
  l0._graph = self
  l0._name = "box_PlaySound_v2_157"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|745606468"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_45 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_45
  l0._graph = self
  l0._name = "box_PGTController_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|763800237"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_45_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_HackableController_v2_145 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_145
  l0._graph = self
  l0._name = "box_HackableController_v2_145"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|765948878"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_145_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_145_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_AISquadStateMonitor_53 = cbox:CreateBox("domino/System/AISquadStateMonitor.lua")
  l0 = self.box_AISquadStateMonitor_53
  l0._graph = self
  l0._name = "box_AISquadStateMonitor_53"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|794008521"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ArrestState = DummyFunction
  l0.ArrestStateAnyTarget = DummyFunction
  l0.CombatState = self.f_box_AISquadStateMonitor_53_CombatState
  l0.CombatStateAnyTarget = DummyFunction
  l0.SearchState = DummyFunction
  l0.SearchStateAnyTarget = DummyFunction
  l0.VanishState = self.f_box_AISquadStateMonitor_53_VanishState
  l0.None = DummyFunction
  self.box_PlaySound_v2_102 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_102
  l0._graph = self
  l0._name = "box_PlaySound_v2_102"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|825822264"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_13 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_13
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|895118731"
  l0.Out = self.f_box_MissionMessageController_v3_13_Out
  l0.MessageCompleted = DummyFunction
  self.box_LMA_Layer_Controller_65 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_65
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_65"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|915425867"
  l0.Loaded = self.f_box_LMA_Layer_Controller_65_Loaded
  l0.Unloaded = DummyFunction
  self.box_PlaySound_v2_109 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_109
  l0._graph = self
  l0._name = "box_PlaySound_v2_109"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|962175963"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PGTController_v2_34 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_34
  l0._graph = self
  l0._name = "box_PGTController_v2_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|965264526"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_34_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_CLOController_134 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_134
  l0._graph = self
  l0._name = "box_CLOController_134"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|968607284"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_134_OnUserInPlace
  self.box_HackableController_v2_73 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_73
  l0._graph = self
  l0._name = "box_HackableController_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|983159528"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_73_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_Escape_Gameplay_10 = cbox:CreateBox("domino/Library/common/MissionIngredients.Escape_Gameplay.debug.lua")
  l0 = self.box_Escape_Gameplay_10
  l0._graph = self
  l0._name = "box_Escape_Gameplay_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|993003230"
  l0.Started = self.f_box_Escape_Gameplay_10_Started
  l0.Stopped = DummyFunction
  l0.Escaped = self.f_box_Escape_Gameplay_10_Escaped
  l0.LeftArea = self.f_box_Escape_Gameplay_10_LeftArea
  self.box_LMA_Layer_Controller_71 = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self.box_LMA_Layer_Controller_71
  l0._graph = self
  l0._name = "box_LMA_Layer_Controller_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1013827136"
  l0.Loaded = DummyFunction
  l0.Unloaded = DummyFunction
  self.box_Network_Surfing_Controller_50 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_50
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1028469048"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_50_Deactivated
  self.box_MissionCheckpointReach_61 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_61
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_61"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1035401385"
  l0.Out = self.f_box_MissionCheckpointReach_61_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_PlaySequence_v5_44 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_44
  l0._graph = self
  l0._name = "box_PlaySequence_v5_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1051479540"
  l0._DynamicAnchors = {
    EntityOut = {"Engineer"}
  }
  l0.Started = self.f_box_PlaySequence_v5_44_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_CLOController_129 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_129
  l0._graph = self
  l0._name = "box_CLOController_129"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1099239676"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_129_OnUserInPlace
  self.box_Play_Domino_Cinematic_Animation_57 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_57
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_57"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1135137196"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1170470560"
  l0._DynamicAnchors = {
    EntityOut = {"Engineer"}
  }
  l0.Started = self.f_box_PlaySequence_v5_1_Started
  l0.Stopped = self.f_box_PlaySequence_v5_1_Stopped
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_119 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_119
  l0._graph = self
  l0._name = "box_MultipleOR_119"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1173564479"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_119_Out
  self.box_Play_Domino_Cinematic_Animation_130 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_130
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_130"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1175111605"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_130_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_85 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_85
  l0._graph = self
  l0._name = "box_MultipleOR_85"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1183181552"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_85_Out
  self.box_PlaySequence_v5_81 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_81
  l0._graph = self
  l0._name = "box_PlaySequence_v5_81"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1220259817"
  l0._DynamicAnchors = {
    EntityOut = {"Engineer"}
  }
  l0.Started = self.f_box_PlaySequence_v5_81_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_60 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_60
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_60"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1230663708"
  l0.Started = DummyFunction
  l0.Stopped = self.f_box_Play_Domino_Cinematic_Animation_60_Stopped
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_62 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_62
  l0._graph = self
  l0._name = "box_PlaySound_v2_62"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1231654778"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_80 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_80
  l0._graph = self
  l0._name = "box_Timer_v2_80"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1242786459"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_80_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_142 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_142
  l0._graph = self
  l0._name = "box_HackableController_v2_142"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1280998554"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_142_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_142_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_104 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_104
  l0._graph = self
  l0._name = "box_PlaySound_v2_104"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1284091070"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_S04M050_SCR_Main_21 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M050/s04m050_scr.S04M050_SCR_Main.debug.lua")
  l0 = self.box_S04M050_SCR_Main_21
  l0._graph = self
  l0._name = "box_S04M050_SCR_Main_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1305853640"
  l0.Out = self.f_box_S04M050_SCR_Main_21_Out
  l0.OutScreen = DummyFunction
  l0.OutScreenDedSec = DummyFunction
  self.box_CLOController_133 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_133
  l0._graph = self
  l0._name = "box_CLOController_133"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1329111890"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_133_OnUserInPlace
  self.box_MissionZone_31 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_31
  l0._graph = self
  l0._name = "box_MissionZone_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1338007295"
  l0.Enabled = self.f_box_MissionZone_31_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_MultipleOR_36 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_36
  l0._graph = self
  l0._name = "box_MultipleOR_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1349558898"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_36_Out
  self.box_MissionZone_87 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_87
  l0._graph = self
  l0._name = "box_MissionZone_87"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1355820643"
  l0.Enabled = self.f_box_MissionZone_87_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_SetBoolean_v2_37 = cbox:CreateBox("domino/System/SetBoolean_v2.lua")
  l0 = self.box_SetBoolean_v2_37
  l0._graph = self
  l0._name = "box_SetBoolean_v2_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1364068401"
  l0.Out = self.f_box_SetBoolean_v2_37_Out
  l0.SetTrue = self.f_box_SetBoolean_v2_37_SetTrue
  l0.SetFalse = self.f_box_SetBoolean_v2_37_SetFalse
  l0.Toggled = self.f_box_SetBoolean_v2_37_Toggled
  l0.SetFromBool = self.f_box_SetBoolean_v2_37_SetFromBool
  self.box_HackableController_v2_144 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_144
  l0._graph = self
  l0._name = "box_HackableController_v2_144"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1367902009"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_144_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_144_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionLayer_v2_88 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_88
  l0._graph = self
  l0._name = "box_MissionLayer_v2_88"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1374213314"
  l0.Loaded = self.f_box_MissionLayer_v2_88_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_CLOController_72 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_72
  l0._graph = self
  l0._name = "box_CLOController_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1400612157"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_72_OnUserInPlace
  self.box_S04M050_SCR_Main_76 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M050/s04m050_scr.S04M050_SCR_Main.debug.lua")
  l0 = self.box_S04M050_SCR_Main_76
  l0._graph = self
  l0._name = "box_S04M050_SCR_Main_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1452843210"
  l0.Out = DummyFunction
  l0.OutScreen = DummyFunction
  l0.OutScreenDedSec = DummyFunction
  self.box_Interact_Gameplay_126 = cbox:CreateBox("domino/Library/common/MissionIngredients.Interact_Gameplay.debug.lua")
  l0 = self.box_Interact_Gameplay_126
  l0._graph = self
  l0._name = "box_Interact_Gameplay_126"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1470102721"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Interacted = self.f_box_Interact_Gameplay_126_Interacted
  self.box_S04M050_SCR_Main_78 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M050/s04m050_scr.S04M050_SCR_Main.debug.lua")
  l0 = self.box_S04M050_SCR_Main_78
  l0._graph = self
  l0._name = "box_S04M050_SCR_Main_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1476642850"
  l0.Out = DummyFunction
  l0.OutScreen = DummyFunction
  l0.OutScreenDedSec = DummyFunction
  self.box_PlaySound_v2_94 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_94
  l0._graph = self
  l0._name = "box_PlaySound_v2_94"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1486619460"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_ListWriter_41 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_41
  l0._graph = self
  l0._name = "box_ListWriter_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1514660448"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_41_Added
  l0.Removed = self.f_box_ListWriter_41_Removed
  l0.Out = self.f_box_ListWriter_41_Out
  self.box_HackableController_v2_149 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_149
  l0._graph = self
  l0._name = "box_HackableController_v2_149"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1515878949"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_149_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_149_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_OnceOnly_v3_125 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_125
  l0._graph = self
  l0._name = "box_OnceOnly_v3_125"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1523903908"
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_box_OnceOnly_v3_125_Out
  l0.ResetOut = DummyFunction
  self.box_MissionLayer_v2_14 = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self.box_MissionLayer_v2_14
  l0._graph = self
  l0._name = "box_MissionLayer_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1524271106"
  l0.Loaded = self.f_box_MissionLayer_v2_14_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self.box_PhoneCommunicationController_4 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_4
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1528111930"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_CinematicPrep_89 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_89
  l0._graph = self
  l0._name = "box_CinematicPrep_89"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1555025550"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_89_PostOut
  self.box_Timer_v2_97 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_97
  l0._graph = self
  l0._name = "box_Timer_v2_97"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1559477963"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_97_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_152 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_152
  l0._graph = self
  l0._name = "box_HackableController_v2_152"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1578551492"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_152_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_S04M050_SCR_Main_98 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M050/s04m050_scr.S04M050_SCR_Main.debug.lua")
  l0 = self.box_S04M050_SCR_Main_98
  l0._graph = self
  l0._name = "box_S04M050_SCR_Main_98"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1589747275"
  l0.Out = DummyFunction
  l0.OutScreen = DummyFunction
  l0.OutScreenDedSec = DummyFunction
  self.box_MissionMessageController_v3_24 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_24
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1596589422"
  l0.Out = self.f_box_MissionMessageController_v3_24_Out
  l0.MessageCompleted = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_136 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_136
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_136"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1617451905"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_136_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_Mission_End_154 = cbox:CreateBox("domino/Library/common/MissionIngredients.Mission_End.debug.lua")
  l0 = self.box_Mission_End_154
  l0._graph = self
  l0._name = "box_Mission_End_154"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1642030139"
  self.box_MissionCheckpointReach_69 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_69
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1642239298"
  l0.Out = self.f_box_MissionCheckpointReach_69_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_ListWriter_9 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_9
  l0._graph = self
  l0._name = "box_ListWriter_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1660713508"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_9_Added
  l0.Removed = self.f_box_ListWriter_9_Removed
  l0.Out = self.f_box_ListWriter_9_Out
  self.box_MissionZone_67 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_67
  l0._graph = self
  l0._name = "box_MissionZone_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1691078859"
  l0.Enabled = self.f_box_MissionZone_67_Enabled
  l0.Disabled = DummyFunction
  l0.SoftQuitCompleted = DummyFunction
  self.box_S04M050_SCR_Main_48 = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S04/S04M050/s04m050_scr.S04M050_SCR_Main.debug.lua")
  l0 = self.box_S04M050_SCR_Main_48
  l0._graph = self
  l0._name = "box_S04M050_SCR_Main_48"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1712321495"
  l0.Out = DummyFunction
  l0.OutScreen = DummyFunction
  l0.OutScreenDedSec = DummyFunction
  self.box_PhoneCommunicationController_8 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_8
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1778362314"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Security_Camera_Monitor_30 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_30
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1803615358"
  l0.Enabled = self.f_box_Security_Camera_Monitor_30_Enabled
  l0.Disabled = self.f_box_Security_Camera_Monitor_30_Disabled
  l0.OnStartAccessCamera = self.f_box_Security_Camera_Monitor_30_OnStartAccessCamera
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = DummyFunction
  self.box_MultipleOR_66 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_66
  l0._graph = self
  l0._name = "box_MultipleOR_66"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1810797884"
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_box_MultipleOR_66_Out
  self.box_PlaySound_v2_108 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_108
  l0._graph = self
  l0._name = "box_PlaySound_v2_108"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1818678842"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Hackable_Monitor_110 = cbox:CreateBox("domino/System/HackableMonitor.lua")
  l0 = self.box_Hackable_Monitor_110
  l0._graph = self
  l0._name = "box_Hackable_Monitor_110"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1827376916"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_Hackable_Monitor_110_Disabled
  l0.OnIsHackable = DummyFunction
  l0.OnIsNotHackable = DummyFunction
  l0.HackStart = DummyFunction
  l0.HackFailed = DummyFunction
  l0.HackSuccess = self.f_box_Hackable_Monitor_110_HackSuccess
  l0.HackedOn = DummyFunction
  l0.HackedOff = DummyFunction
  l0.HackContextual = DummyFunction
  l0.AllHacked = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1832662592"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_55 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_55
  l0._graph = self
  l0._name = "box_PlaySound_v2_55"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1843320464"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_28 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_28
  l0._graph = self
  l0._name = "box_Timer_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1861303962"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_HackableController_v2_143 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_143
  l0._graph = self
  l0._name = "box_HackableController_v2_143"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1924146237"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_143_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_143_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_123 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_123
  l0._graph = self
  l0._name = "box_PlaySound_v2_123"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1933352047"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_AccessCodeMonitor_151 = cbox:CreateBox("domino/System/AccessCodeMonitor.lua")
  l0 = self.box_AccessCodeMonitor_151
  l0._graph = self
  l0._name = "box_AccessCodeMonitor_151"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1940149570"
  l0.Out = self.f_box_AccessCodeMonitor_151_Out
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_box_AccessCodeMonitor_151_HasNOT
  l0.AccessCodeAcquired = DummyFunction
  self.box_HackableController_v2_153 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_153
  l0._graph = self
  l0._name = "box_HackableController_v2_153"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1949982190"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_153_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_MissionMessageController_v3_18 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_18
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1973584092"
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_box_MissionMessageController_v3_18_MessageCompleted
  self.box_Download_Gameplay_32 = cbox:CreateBox("domino/Library/common/MissionIngredients.Download_Gameplay.debug.lua")
  l0 = self.box_Download_Gameplay_32
  l0._graph = self
  l0._name = "box_Download_Gameplay_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1977631828"
  l0.Started = self.f_box_Download_Gameplay_32_Started
  l0.Stopped = DummyFunction
  l0.DownloadCompleted = self.f_box_Download_Gameplay_32_DownloadCompleted
  l0.Ratio1Reached = DummyFunction
  l0.Ratio1Reached_PostReset = DummyFunction
  l0.Ratio2Reached = DummyFunction
  l0.Ratio2Reached_PostReset = DummyFunction
  l0.CustomRatioReached = DummyFunction
  l0.CustomRatioReached_PostReset = DummyFunction
  l0.PauseRatioReached = DummyFunction
  l0.PauseRatioReached_PostReset = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_132 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_132
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_132"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1994661770"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_132_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_MissionMessageController_v3_15 = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self.box_MissionMessageController_v3_15
  l0._graph = self
  l0._name = "box_MissionMessageController_v3_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2019850438"
  l0.Out = self.f_box_MissionMessageController_v3_15_Out
  l0.MessageCompleted = DummyFunction
  self.box_MultipleOR_26 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_26
  l0._graph = self
  l0._name = "box_MultipleOR_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2031808034"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_26_Out
  self.box_Security_Camera_Monitor_7 = cbox:CreateBox("domino/System/SecurityCameraMonitor.lua")
  l0 = self.box_Security_Camera_Monitor_7
  l0._graph = self
  l0._name = "box_Security_Camera_Monitor_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2038446413"
  l0.Enabled = self.f_box_Security_Camera_Monitor_7_Enabled
  l0.Disabled = self.f_box_Security_Camera_Monitor_7_Disabled
  l0.OnStartAccessCamera = DummyFunction
  l0.OnEndAccessCamera = DummyFunction
  l0.OnStartExitCamera = DummyFunction
  l0.OnEndExitCamera = DummyFunction
  l0.OnEndExitAll = self.f_box_Security_Camera_Monitor_7_OnEndExitAll
  self.box_CLOController_90 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_90
  l0._graph = self
  l0._name = "box_CLOController_90"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2041440529"
  l0.Activated = self.f_box_CLOController_90_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self.box_PlaySequence_v5_47 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_47
  l0._graph = self
  l0._name = "box_PlaySequence_v5_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2045903566"
  l0._DynamicAnchors = {
    EntityIn = {"Engineer"},
    EntityOut = {"Engineer"},
    SPOut = {"OutCamera"}
  }
  l0.Started = self.f_box_PlaySequence_v5_47_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  l0.SPOut.OutCamera = self.f_box_PlaySequence_v5_47_SPOut__OutCamera_
  self.box_PGTController_v2_79 = cbox:CreateBox("domino/System/PGTController_v2.lua")
  l0 = self.box_PGTController_v2_79
  l0._graph = self
  l0._name = "box_PGTController_v2_79"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2048695767"
  l0.Started = DummyFunction
  l0.Aborted = DummyFunction
  l0.AllSpawned = self.f_box_PGTController_v2_79_AllSpawned
  l0.ScriptedAgentsAdded = DummyFunction
  self.box_Play_Domino_Cinematic_Animation_116 = cbox:CreateBox("domino/System/PlayDominoAnimation.lua")
  l0 = self.box_Play_Domino_Cinematic_Animation_116
  l0._graph = self
  l0._name = "box_Play_Domino_Cinematic_Animation_116"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2071599760"
  l0.Started = self.f_box_Play_Domino_Cinematic_Animation_116_Started
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialog_v2_75 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_75
  l0._graph = self
  l0._name = "box_PlayDialog_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2085742550"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = self.f_box_PlayDialog_v2_75_Finished
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_MultipleOR_42 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_42
  l0._graph = self
  l0._name = "box_MultipleOR_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2089760947"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_42_Out
  self.box_HackableController_v2_141 = cbox:CreateBox("domino/System/HackableController_v2.lua")
  l0 = self.box_HackableController_v2_141
  l0._graph = self
  l0._name = "box_HackableController_v2_141"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2103279519"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_HackableController_v2_141_Disabled
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = self.f_box_HackableController_v2_141_ProfilingDisabled
  l0.OccludableSet = DummyFunction
  l0.HackForced = DummyFunction
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
  self.box_PlaySound_v2_96 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_96
  l0._graph = self
  l0._name = "box_PlaySound_v2_96"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2119034299"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlaySound_v2_96_Started
  l0.Finished = DummyFunction
  self.box_CinematicPrep_43 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_43
  l0._graph = self
  l0._name = "box_CinematicPrep_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2126685586"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_43_PostOut
  self.box_ListWriter_84 = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self.box_ListWriter_84
  l0._graph = self
  l0._name = "box_ListWriter_84"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2133984067"
  l0._DynamicAnchors = {Data = 3}
  l0.Added = self.f_box_ListWriter_84_Added
  l0.Removed = self.f_box_ListWriter_84_Removed
  l0.Out = self.f_box_ListWriter_84_Out
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
  l0 = self.box_SetBoolean_v2_37
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1527890476", "1527890476", "S04M050_Main", "CheckPoint_0", "box_SetBoolean_v2_37.True", self, l0)
  l0:True()
end
function export:CheckPoint_1()
  local l0
  l0 = self.box_MissionLayer_v2_40
  l0.LayerName = "S04M050_Main"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1770582311", "1770582311", "S04M050_Main", "CheckPoint_1", "box_MissionLayer_v2_40.Load", self, l0)
  l0:Load()
end
function export:CheckPoint_2()
  local l0
  l0 = self.box_SetBoolean_v2_112
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|137639642", "137639642", "S04M050_Main", "CheckPoint_2", "box_SetBoolean_v2_112.True", self, l0)
  l0:True()
end
function export:CheckPoint_3()
  local l0
  self:OnEnter_box_Mission_End_154()
  l0 = self.box_Mission_End_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|645333770", "645333770", "S04M050_Main", "CheckPoint_3", "box_Mission_End_154.FromCheckpoint", self, l0)
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self.box_LMA_Layer_Controller_65
  l0.LMALayerName = "SF_08_HaumDataCenter_LMA"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2093185534", "2093185534", "S04M050_Main", "In", "box_LMA_Layer_Controller_65.Load", self, l0)
  l0:Load()
end
function export:f_box_Timer_v2_120_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_62
  l0.SoundId = "soundbinary/3552307770.bnk"
  l0 = self.box_Timer_v2_120
  l1 = self.box_PlaySound_v2_62
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1874137007", "1874137007", "S04M050_Main", "box_Timer_v2_120.TimeElapsed", "box_PlaySound_v2_62.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionLayer_v2_40_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1848387702"
  l0.Out = self.f_box_Get_Player_ID_49_Out
  l0 = self.box_MissionLayer_v2_40
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|21746313", "21746313", "S04M050_Main", "box_MissionLayer_v2_40.Loaded", "box_Get_Player_ID_49.In", l0, l1)
  l1:In()
end
function export:f_box_SecurityCamController_19_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_152
  l0.HackableEntity = "9223372055162039814"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1971327791", "1971327791", "S04M050_Main", "box_SecurityCamController_19.EnterForced", "box_HackableController_v2_152.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_Play_Domino_Cinematic_Animation_56_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Play_Domino_Cinematic_Animation_57
  l0.TargetEntity = self.Engineer3
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackerreact---hacker-01.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844467"
  l0 = self.box_Play_Domino_Cinematic_Animation_56
  l1 = self.box_Play_Domino_Cinematic_Animation_57
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2134897907", "2134897907", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_56.Stopped", "box_Play_Domino_Cinematic_Animation_57.Start", l0, l1)
  l1:Start()
end
function export:f_box_ProfilingPathController_v2_160_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialog_v2_75
  l0.Entity = self.PlayerEntity
  l0.SoundId = "soundbinary/3570836689.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|898380952", "898380952", "S04M050_Main", "box_ProfilingPathController_v2_160.Hidden", "box_PlayDialog_v2_75.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySound_v2_91_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_2
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_115"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|586585846"
  l0.Out = DummyFunction
  l0.A_is_True = DummyFunction
  l0.A_is_False = self.f_box_Compare_Boolean_v2_115_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_PlaySound_v2_91
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1504258496", "1504258496", "S04M050_Main", "box_PlaySound_v2_91.Out", "box_Compare_Boolean_v2_115.In", l0, l1)
  l1:In()
end
function export:f_box_Play_Domino_Cinematic_Animation_135_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_133
  l0.CLO = "9223372069376667849"
  l0 = self.box_Play_Domino_Cinematic_Animation_135
  l1 = self.box_CLOController_133
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1620930439", "1620930439", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_135.Started", "box_CLOController_133.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_HackableController_v2_146_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_146()
  l0 = self.box_HackableController_v2_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1545942934", "1545942934", "S04M050_Main", "box_HackableController_v2_146.Disabled", "box_HackableController_v2_146.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_146_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_145()
  l0 = self.box_HackableController_v2_146
  l1 = self.box_HackableController_v2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|874237746", "874237746", "S04M050_Main", "box_HackableController_v2_146.ProfilingDisabled", "box_HackableController_v2_145.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Dynamic_Media_Controller_139_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086165"
  l0.Channel = "Generic"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_138"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2037281685"
  l0.ChannelChanged = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|97982323", "97982323", "S04M050_Main", "box_Dynamic_Media_Controller_139.ChannelChanged", "box_Dynamic_Media_Controller_138.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_77_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hack_Gameplay_150()
  l0 = self.box_Hack_Gameplay_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1008904157", "1008904157", "S04M050_Main", "box_Ordered_Output_77.Out", "box_Hack_Gameplay_150.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_77_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Hackable_Monitor_110()
  l0 = self.box_Hackable_Monitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|510678244", "510678244", "S04M050_Main", "box_Ordered_Output_77.Out", "box_Hackable_Monitor_110.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_CLOController_128_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_128
  self.Engineer4 = l0.UserID
  l0 = self.box_Play_Domino_Cinematic_Animation_127
  l0.TargetEntity = self.Engineer4
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-02.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844468"
  l0 = self.box_CLOController_128
  l1 = self.box_Play_Domino_Cinematic_Animation_127
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1913594385", "1913594385", "S04M050_Main", "box_CLOController_128.OnUserInPlace", "box_Play_Domino_Cinematic_Animation_127.Start", l0, l1)
  l1:Start()
end
function export:f_box_Ordered_Output_155_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1490625120", "1490625120", "S04M050_Main", "box_Ordered_Output_155.Out", "box_Network_Surfing_Controller_12.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_155_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_55
  l0.SoundId = "soundbinary/4190187469.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2052214678", "2052214678", "S04M050_Main", "box_Ordered_Output_155.Out", "box_PlaySound_v2_55.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hack_Gameplay_150_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_30()
  l0 = self.box_Hack_Gameplay_150
  l1 = self.box_Security_Camera_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|635201214", "635201214", "S04M050_Main", "box_Hack_Gameplay_150.Started", "box_Security_Camera_Monitor_30.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Hack_Gameplay_150_Stopped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_30()
  l0 = self.box_Hack_Gameplay_150
  l1 = self.box_Security_Camera_Monitor_30
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1777097891", "1777097891", "S04M050_Main", "box_Hack_Gameplay_150.Stopped", "box_Security_Camera_Monitor_30.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_InteractionScriptController_161_EnableStateSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_25
  l0.HackableEntity = "9223372068940843776"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1418723133", "1418723133", "S04M050_Main", "box_InteractionScriptController_161.EnableStateSet", "box_HackableController_v2_25.DisableProfiling", clone, l0)
  l0:DisableProfiling()
end
function export:f_box_CinematicPrep_68_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_143()
  l0 = self.box_CinematicPrep_68
  l1 = self.box_HackableController_v2_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|865747892", "865747892", "S04M050_Main", "box_CinematicPrep_68.PostOut", "box_HackableController_v2_143.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372050165748874"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_83"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|976220354"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_83_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1115945790", "1115945790", "S04M050_Main", "box_Ordered_Output_70.Out", "box_SecurityCamController_83.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M050_SCR_Main_98
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|111453506", "111453506", "S04M050_Main", "box_Ordered_Output_70.Out", "box_S04M050_SCR_Main_98.InScreens", clone, l0)
  l0:InScreens()
end
function export:f_box_PlaySequence_v5_39_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_39
  self.Engineer = l0.EntityOut.Engineer
  l0 = self.box_CLOController_131
  l0.CLO = "9223372069376667850"
  l0 = self.box_PlaySequence_v5_39
  l1 = self.box_CLOController_131
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|557756563", "557756563", "S04M050_Main", "box_PlaySequence_v5_39.Started", "box_CLOController_131.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Ordered_Output_93_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1771789540"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_38_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_38_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|206294183", "206294183", "S04M050_Main", "box_Ordered_Output_93.Out", "box_Ordered_Output_38.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_93_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_6
  l0.Seconds = 15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1193420369", "1193420369", "S04M050_Main", "box_Ordered_Output_93.Out", "box_Timer_v2_6.Start", clone, l0)
  l0:Start()
end
function export:f_box_Phys_Zone_Cleanup_86_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PGTController_v2_34
  l0.PGTMissionArea = "9223372047182363050"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2044297372", "2044297372", "S04M050_Main", "box_Phys_Zone_Cleanup_86.Out", "box_PGTController_v2_34.Start", clone, l0)
  l0:Start()
end
function export:f_box_Hack_Gameplay_46_Hacked()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_7()
  l0 = self.box_Hack_Gameplay_46
  l1 = self.box_Security_Camera_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1431145660", "1431145660", "S04M050_Main", "box_Hack_Gameplay_46.Hacked", "box_Security_Camera_Monitor_7.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Hack_Gameplay_46_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Interact_Gameplay_126
  l0.Entity = "9223372068940843776"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Interact",
    id = "259134"
  }
  l0.IsManagingInteraction = 1
  l0 = self.box_Hack_Gameplay_46
  l1 = self.box_Interact_Gameplay_126
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1895231064", "1895231064", "S04M050_Main", "box_Hack_Gameplay_46.Stopped", "box_Interact_Gameplay_126.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionCheckpointReach_35_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_13
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M050.Objectives.Objective010",
    item = "Objective",
    id = "341472"
  }
  l0 = self.box_MissionCheckpointReach_35
  l1 = self.box_MissionMessageController_v3_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1919615238", "1919615238", "S04M050_Main", "box_MissionCheckpointReach_35.Out", "box_MissionMessageController_v3_13.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_MultipleOR_122_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hackable_Monitor_110()
  l0 = self.box_MultipleOR_122
  l1 = self.box_Hackable_Monitor_110
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1010741094", "1010741094", "S04M050_Main", "box_MultipleOR_122.Out", "box_Hackable_Monitor_110.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_Ordered_Output_107_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_102
  l0.SoundId = "soundbinary/1083695877.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1646639959", "1646639959", "S04M050_Main", "box_Ordered_Output_107.Out", "box_PlaySound_v2_102.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_107_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_104
  l0.SoundId = "soundbinary/1083695877.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|158858346", "158858346", "S04M050_Main", "box_Ordered_Output_107.Out", "box_PlaySound_v2_104.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_107_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_108
  l0.SoundId = "soundbinary/1083695877.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1575730629", "1575730629", "S04M050_Main", "box_Ordered_Output_107.Out", "box_PlaySound_v2_108.Play", clone, l0)
  l0:Play()
end
function export:f_box_SetBoolean_v2_112_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.IsCheckPoint_2 = l0.Target
end
function export:f_box_SetBoolean_v2_112_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.IsCheckPoint_2 = l0.Target
end
function export:f_box_SetBoolean_v2_112_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.IsCheckPoint_2 = l0.Target
end
function export:f_box_SetBoolean_v2_112_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.IsCheckPoint_2 = l0.Target
  l0 = self.box_MissionLayer_v2_88
  l0.LayerName = "S04M050_Main"
  l0 = self.box_SetBoolean_v2_112
  l1 = self.box_MissionLayer_v2_88
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|327428077", "327428077", "S04M050_Main", "box_SetBoolean_v2_112.SetTrue", "box_MissionLayer_v2_88.Load", l0, l1)
  l1:Load()
end
function export:f_box_SetBoolean_v2_112_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_112
  self.IsCheckPoint_2 = l0.Target
end
function export:f_box_Play_Domino_Cinematic_Animation_127_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_Play_Domino_Cinematic_Animation_127
  l1 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|828504358", "828504358", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_127.Started", "box_HackableController_v2_141.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_TriggerMonitor_v2_63_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_69
  l0.Checkpoint = "CheckPoint_2"
  l0 = self.box_TriggerMonitor_v2_63
  l1 = self.box_MissionCheckpointReach_69
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|83289317", "83289317", "S04M050_Main", "box_TriggerMonitor_v2_63.Enter", "box_MissionCheckpointReach_69.In", l0, l1)
  l1:In()
end
function export:f_box_HackableController_v2_25_ProfilingDisabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  l0.Entity = "9223372068940843778"
  l0._graph = self
  l0._name = "box_ProfilingPathController_v2_160"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|160485696"
  l0.Out = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_ProfilingPathController_v2_160_Hidden
  l0 = self.box_HackableController_v2_25
  l1 = Boxes[PathID("domino/System/ProfilingPathController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|780813760", "780813760", "S04M050_Main", "box_HackableController_v2_25.ProfilingDisabled", "box_ProfilingPathController_v2_160.HidePath", l0, l1)
  l1:HidePath()
end
function export:f_box_CLOController_131_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_131
  self.Engineer3 = l0.UserID
  l0 = self.box_Play_Domino_Cinematic_Animation_130
  l0.TargetEntity = self.Engineer3
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-01.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844467"
  l0 = self.box_CLOController_131
  l1 = self.box_Play_Domino_Cinematic_Animation_130
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1842483860", "1842483860", "S04M050_Main", "box_CLOController_131.OnUserInPlace", "box_Play_Domino_Cinematic_Animation_130.Start", l0, l1)
  l1:Start()
end
function export:f_box_PhoneCommunicationController_5_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_113"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|910411766"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_113_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_113_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_113_Out_2
  l0 = self.box_PhoneCommunicationController_5
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|191462396", "191462396", "S04M050_Main", "box_PhoneCommunicationController_5.OnCommunicationFinished", "box_Ordered_Output_113.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_124_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1715697921", "1715697921", "S04M050_Main", "box_Ordered_Output_124.Out", "box_MultipleOR_122.Input", clone, l0)
  l0:Input(0)
end
function export:f_box_Ordered_Output_124_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_123
  l0.SoundId = "soundbinary/2792290903.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|69099280", "69099280", "S04M050_Main", "box_Ordered_Output_124.Out", "box_PlaySound_v2_123.Play", clone, l0)
  l0:Play()
end
function export:f_box_Compare_Boolean_v2_115_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_63()
  l0 = self.box_TriggerMonitor_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|312582942", "312582942", "S04M050_Main", "box_Compare_Boolean_v2_115.A_is_False", "box_TriggerMonitor_v2_63.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Network_Surfing_Controller_12_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_4
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347584"
  l0 = self.box_Network_Surfing_Controller_12
  l1 = self.box_PhoneCommunicationController_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1412522466", "1412522466", "S04M050_Main", "box_Network_Surfing_Controller_12.Deactivated", "box_PhoneCommunicationController_4.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_HackableController_v2_147_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_147()
  l0 = self.box_HackableController_v2_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1961197765", "1961197765", "S04M050_Main", "box_HackableController_v2_147.Disabled", "box_HackableController_v2_147.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_Get_Player_ID_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_9
  l0.Input = self.ServerRoom_Cameras
  l0.Data[0] = "9223372050165748870"
  l0.Data[1] = "9223372050165748872"
  l0.Data[2] = "9223372050165748874"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1126901614", "1126901614", "S04M050_Main", "box_Get_Player_ID_23.Out", "box_ListWriter_9.Add", clone, l0)
  l0:Add()
end
function export:f_box_HackableController_v2_148_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_148()
  l0 = self.box_HackableController_v2_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|92522186", "92522186", "S04M050_Main", "box_HackableController_v2_148.Disabled", "box_HackableController_v2_148.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_148_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_HackableController_v2_148
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|977674584", "977674584", "S04M050_Main", "box_HackableController_v2_148.ProfilingDisabled", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Ordered_Output_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Network_Surfing_Controller_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|779456851", "779456851", "S04M050_Main", "box_Ordered_Output_3.Out", "box_Network_Surfing_Controller_50.Deactivate", clone, l0)
  l0:Deactivate()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_156
  l0.SoundId = "soundbinary/3966802041.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|181108681", "181108681", "S04M050_Main", "box_Ordered_Output_3.Out", "box_PlaySound_v2_156.Play", clone, l0)
  l0:Play()
end
function export:f_box_MissionCheckpointReach_22_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_85()
  l0 = self.box_MissionCheckpointReach_22
  l1 = self.box_MultipleOR_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|338231099", "338231099", "S04M050_Main", "box_MissionCheckpointReach_22.Out", "box_MultipleOR_85.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PGTController_v2_45_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_67
  l0.MissionArea = "9223372047828259332"
  l0.MissionLayer = "S04M050_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_PGTController_v2_45
  l1 = self.box_MissionZone_67
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|558944955", "558944955", "S04M050_Main", "box_PGTController_v2_45.AllSpawned", "box_MissionZone_67.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_145_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_145()
  l0 = self.box_HackableController_v2_145
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|351548614", "351548614", "S04M050_Main", "box_HackableController_v2_145.Disabled", "box_HackableController_v2_145.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_145_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_149()
  l0 = self.box_HackableController_v2_145
  l1 = self.box_HackableController_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|471310845", "471310845", "S04M050_Main", "box_HackableController_v2_145.ProfilingDisabled", "box_HackableController_v2_149.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_AISquadStateMonitor_53_CombatState()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_118"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1701675169"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_118_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_118_Out_1
  l0 = self.box_AISquadStateMonitor_53
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|302675732", "302675732", "S04M050_Main", "box_AISquadStateMonitor_53.CombatState", "box_Ordered_Output_118.In", l0, l1)
  l1:In()
end
function export:f_box_AISquadStateMonitor_53_VanishState()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_117
  l0.SoundId = "soundbinary/2286467389.bnk"
  l0 = self.box_AISquadStateMonitor_53
  l1 = self.box_PlaySound_v2_117
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|134872759", "134872759", "S04M050_Main", "box_AISquadStateMonitor_53.VanishState", "box_PlaySound_v2_117.Play", l0, l1)
  l1:Play()
end
function export:f_box_MissionMessageController_v3_13_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|226158204"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_77_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_77_Out_1
  l0 = self.box_MissionMessageController_v3_13
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1147659428", "1147659428", "S04M050_Main", "box_MissionMessageController_v3_13.Out", "box_Ordered_Output_77.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_113_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Mission_End_154()
  l0 = self.box_Mission_End_154
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|151619492", "151619492", "S04M050_Main", "box_Ordered_Output_113.Out", "box_Mission_End_154.End", clone, l0)
  l0:End()
end
function export:f_box_Ordered_Output_113_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_94
  l0.SoundId = "soundbinary/81442961.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1912158265", "1912158265", "S04M050_Main", "box_Ordered_Output_113.Out", "box_PlaySound_v2_94.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_113_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_157
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1868346852", "1868346852", "S04M050_Main", "box_Ordered_Output_113.Out", "box_PlaySound_v2_157.Play", clone, l0)
  l0:Play()
end
function export:f_box_LMA_Layer_Controller_65_Loaded()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_36()
  l0 = self.box_LMA_Layer_Controller_65
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1948697734", "1948697734", "S04M050_Main", "box_LMA_Layer_Controller_65.Loaded", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PGTController_v2_34_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_54"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1035891233"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_54_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_54_Out_1
  l0 = self.box_PGTController_v2_34
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1425414293", "1425414293", "S04M050_Main", "box_PGTController_v2_34.AllSpawned", "box_Ordered_Output_54.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_134_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_134
  self.Engineer3 = l0.UserID
  l0 = self.box_Play_Domino_Cinematic_Animation_135
  l0.TargetEntity = self.Engineer3
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-01.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844467"
  l0 = self.box_CLOController_134
  l1 = self.box_Play_Domino_Cinematic_Animation_135
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|239715102", "239715102", "S04M050_Main", "box_CLOController_134.OnUserInPlace", "box_Play_Domino_Cinematic_Animation_135.Start", l0, l1)
  l1:Start()
end
function export:f_box_SecurityCamController_83_EnterForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_HackableController_v2_153
  l0.HackableEntity = "9223372055162039814"
  l0.ProfileLinkedToHack = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1467337022", "1467337022", "S04M050_Main", "box_SecurityCamController_83.EnterForced", "box_HackableController_v2_153.DisableHack", clone, l0)
  l0:DisableHack()
end
function export:f_box_HackableController_v2_73_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|711672705"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  l0 = self.box_HackableController_v2_73
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1370457767", "1370457767", "S04M050_Main", "box_HackableController_v2_73.Disabled", "box_Ordered_Output_3.In", l0, l1)
  l1:In()
end
function export:f_box_Escape_Gameplay_10_Escaped()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = nil
  l0.OnGenericChannel = nil
  l0.OnShopChannel = nil
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_137"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1544998501"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = self.f_box_Media_System_Custom_Broadcast_Controller_137_EndedAllCustomMediaBroadcasts
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Escape_Gameplay_10
  l1 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1509672890", "1509672890", "S04M050_Main", "box_Escape_Gameplay_10.Escaped", "box_Media_System_Custom_Broadcast_Controller_137.EndAllCustomMediaBroadcasts", l0, l1)
  l1:EndAllCustomMediaBroadcasts()
end
function export:f_box_Escape_Gameplay_10_LeftArea()
  local l0, l1
  self = self._graph
  l0 = self.box_Escape_Gameplay_10
  l1 = self.box_OnceOnly_v3_125
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1255506707", "1255506707", "S04M050_Main", "box_Escape_Gameplay_10.LeftArea", "box_OnceOnly_v3_125.In", l0, l1)
  l1:In(0)
end
function export:f_box_Escape_Gameplay_10_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1619269937"
  l0.Out = self.f_box_Simple_Node_11_Out
  l0 = self.box_Escape_Gameplay_10
  l1 = Boxes[PathID("domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|706982141", "706982141", "S04M050_Main", "box_Escape_Gameplay_10.Started", "box_Simple_Node_11.In", l0, l1)
  l1:In()
end
function export:f_box_Network_Surfing_Controller_50_Deactivated()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Security_Camera_Monitor_7()
  l0 = self.box_Network_Surfing_Controller_50
  l1 = self.box_Security_Camera_Monitor_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|329007833", "329007833", "S04M050_Main", "box_Network_Surfing_Controller_50.Deactivated", "box_Security_Camera_Monitor_7.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_MissionCheckpointReach_61_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_85()
  l0 = self.box_MissionCheckpointReach_61
  l1 = self.box_MultipleOR_85
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1830708677", "1830708677", "S04M050_Main", "box_MissionCheckpointReach_61.Out", "box_MultipleOR_85.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_54_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_90
  l0.CLO = "9223372047572934409"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|78091551", "78091551", "S04M050_Main", "box_Ordered_Output_54.Out", "box_CLOController_90.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_54_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_AISquadStateMonitor_53
  l0.Affiliation = "UZulu"
  l0.CheckStateNow = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|900990557", "900990557", "S04M050_Main", "box_Ordered_Output_54.Out", "box_AISquadStateMonitor_53.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_PlaySequence_v5_44_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_44
  self.Engineer = l0.EntityOut.Engineer
  l0 = self.box_CLOController_72
  l0.CLO = "9223372069376667850"
  l0 = self.box_PlaySequence_v5_44
  l1 = self.box_CLOController_72
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|252415537", "252415537", "S04M050_Main", "box_PlaySequence_v5_44.Started", "box_CLOController_72.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_SecurityCamController_27_UserForcedOutOfCamera()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_155"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|300941155"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_155_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_155_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|501881675", "501881675", "S04M050_Main", "box_SecurityCamController_27.UserForcedOutOfCamera", "box_Ordered_Output_155.In", clone, l0)
  l0:In()
end
function export:f_box_CLOController_129_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_129
  self.Engineer4 = l0.UserID
  l0 = self.box_Play_Domino_Cinematic_Animation_132
  l0.TargetEntity = self.Engineer4
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-02.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844468"
  l0 = self.box_CLOController_129
  l1 = self.box_Play_Domino_Cinematic_Animation_132
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|861883957", "861883957", "S04M050_Main", "box_CLOController_129.OnUserInPlace", "box_Play_Domino_Cinematic_Animation_132.Start", l0, l1)
  l1:Start()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_51_LoadAndPlayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1442866041"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_52_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_52_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_52_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1149304392", "1149304392", "S04M050_Main", "box_Media_System_Custom_Broadcast_Controller_51.LoadAndPlayRequested", "box_Ordered_Output_52.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_121_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_122()
  l0 = self.box_MultipleOR_122
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|633893974", "633893974", "S04M050_Main", "box_Ordered_Output_121.Out", "box_MultipleOR_122.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_121_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_120
  l0.Seconds = 0.2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1759759542", "1759759542", "S04M050_Main", "box_Ordered_Output_121.Out", "box_Timer_v2_120.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_1_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  self.Engineer = l0.EntityOut.Engineer
end
function export:f_box_PlaySequence_v5_1_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_47
  l0.SceneEntity = "9223372050347391495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_EngineerPanic/s04_m050_scr_engineerpanic.seq"
  l0.EntityIn.Engineer = self.Engineer
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_PlaySequence_v5_47
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|329215756", "329215756", "S04M050_Main", "box_PlaySequence_v5_1.Stopped", "box_PlaySequence_v5_47.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_119_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_111"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|288877864"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0 = self.box_MultipleOR_119
  l1 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1431821943", "1431821943", "S04M050_Main", "box_MultipleOR_119.Out", "box_MissionMusicController_111.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Play_Domino_Cinematic_Animation_130_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_129
  l0.CLO = "9223372069376667849"
  l0 = self.box_Play_Domino_Cinematic_Animation_130
  l1 = self.box_CLOController_129
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1570207929", "1570207929", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_130.Started", "box_CLOController_129.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_MultipleOR_85_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  l0.InteractionEntity = "9223372068940843776"
  l0.InteractionEntityList = nil
  l0.EnableState = 0
  l0._graph = self
  l0._name = "box_InteractionScriptController_161"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|319533210"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnableStateSet = self.f_box_InteractionScriptController_161_EnableStateSet
  l0.InteractionForced = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_MultipleOR_85
  l1 = Boxes[PathID("domino/System/InteractionScriptController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1569685393", "1569685393", "S04M050_Main", "box_MultipleOR_85.Out", "box_InteractionScriptController_161.SetEnableState", l0, l1)
  l1:SetEnableState()
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_8
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050222326992"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1936493113", "1936493113", "S04M050_Main", "box_Ordered_Output_74.Out", "box_PhoneCommunicationController_8.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M050_SCR_Main_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1042792351", "1042792351", "S04M050_Main", "box_Ordered_Output_74.Out", "box_S04M050_SCR_Main_21.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_81_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_81
  self.Engineer = l0.EntityOut.Engineer
  l0 = self.box_CLOController_134
  l0.CLO = "9223372069376667850"
  l0 = self.box_PlaySequence_v5_81
  l1 = self.box_CLOController_134
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1436704618", "1436704618", "S04M050_Main", "box_PlaySequence_v5_81.Started", "box_CLOController_134.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_Play_Domino_Cinematic_Animation_60_Stopped()
  local l0, l1
  self = self._graph
  l0 = self.box_Play_Domino_Cinematic_Animation_58
  l0.TargetEntity = self.Engineer4
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackerreact---hacker-02.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844468"
  l0 = self.box_Play_Domino_Cinematic_Animation_60
  l1 = self.box_Play_Domino_Cinematic_Animation_58
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|574866127", "574866127", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_60.Stopped", "box_Play_Domino_Cinematic_Animation_58.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_80_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_Play_Domino_Cinematic_Animation_60
  l0.TargetEntity = self.Engineer4
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-02.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844468"
  l0 = self.box_Timer_v2_80
  l1 = self.box_Play_Domino_Cinematic_Animation_60
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2029345496", "2029345496", "S04M050_Main", "box_Timer_v2_80.TimeElapsed", "box_Play_Domino_Cinematic_Animation_60.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_HackableController_v2_142_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|76074470", "76074470", "S04M050_Main", "box_HackableController_v2_142.Disabled", "box_HackableController_v2_142.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_142_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_147()
  l0 = self.box_HackableController_v2_142
  l1 = self.box_HackableController_v2_147
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|317961351", "317961351", "S04M050_Main", "box_HackableController_v2_142.ProfilingDisabled", "box_HackableController_v2_147.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_S04M050_SCR_Main_21_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_S04M050_SCR_Main_21
  l1 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1738389056", "1738389056", "S04M050_Main", "box_S04M050_SCR_Main_21.Out", "box_MultipleOR_42.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_CLOController_133_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_133
  self.Engineer4 = l0.UserID
  l0 = self.box_Play_Domino_Cinematic_Animation_136
  l0.TargetEntity = self.Engineer4
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-02.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844468"
  l0 = self.box_CLOController_133
  l1 = self.box_Play_Domino_Cinematic_Animation_136
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|424293978", "424293978", "S04M050_Main", "box_CLOController_133.OnUserInPlace", "box_Play_Domino_Cinematic_Animation_136.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionZone_31_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionCheckpointReach_35
  l0.Checkpoint = "CheckPoint_0"
  l0 = self.box_MissionZone_31
  l1 = self.box_MissionCheckpointReach_35
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1167156618", "1167156618", "S04M050_Main", "box_MissionZone_31.Enabled", "box_MissionCheckpointReach_35.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_36_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionLayer_v2_14
  l0.LayerName = "S04M050_Main"
  l0 = self.box_MultipleOR_36
  l1 = self.box_MissionLayer_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1799549785", "1799549785", "S04M050_Main", "box_MultipleOR_36.Out", "box_MissionLayer_v2_14.Load", l0, l1)
  l1:Load()
end
function export:f_box_MissionZone_87_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|345417862"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0 = self.box_MissionZone_87
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|977484735", "977484735", "S04M050_Main", "box_MissionZone_87.Enabled", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_SetBoolean_v2_37_Out()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetFalse()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetFromBool()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_SetBoolean_v2_37_SetTrue()
  local l0, l1
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.IsCheckPoint_0 = l0.Target
  self:OnEnter_box_MultipleOR_36()
  l1 = self.box_MultipleOR_36
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|546047423", "546047423", "S04M050_Main", "box_SetBoolean_v2_37.SetTrue", "box_MultipleOR_36.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_SetBoolean_v2_37_Toggled()
  local l0
  self = self._graph
  l0 = self.box_SetBoolean_v2_37
  self.IsCheckPoint_0 = l0.Target
end
function export:f_box_HackableController_v2_144_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_144()
  l0 = self.box_HackableController_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|911912528", "911912528", "S04M050_Main", "box_HackableController_v2_144.Disabled", "box_HackableController_v2_144.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_144_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_148()
  l0 = self.box_HackableController_v2_144
  l1 = self.box_HackableController_v2_148
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1474830884", "1474830884", "S04M050_Main", "box_HackableController_v2_144.ProfilingDisabled", "box_HackableController_v2_148.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_Ordered_Output_159_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_158"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1259909996"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|412241554", "412241554", "S04M050_Main", "box_Ordered_Output_159.Out", "box_MissionMusicController_158.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Ordered_Output_159_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_89
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1388797767", "1388797767", "S04M050_Main", "box_Ordered_Output_159.Out", "box_CinematicPrep_89.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Get_Player_ID_92_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_84
  l0.Input = self.ServerRoom_Cameras
  l0.Data[0] = "9223372050165748870"
  l0.Data[1] = "9223372050165748872"
  l0.Data[2] = "9223372050165748874"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1621895466", "1621895466", "S04M050_Main", "box_Get_Player_ID_92.Out", "box_ListWriter_84.Add", clone, l0)
  l0:Add()
end
function export:f_box_MissionLayer_v2_88_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_92"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1373275216"
  l0.Out = self.f_box_Get_Player_ID_92_Out
  l0 = self.box_MissionLayer_v2_88
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1679736538", "1679736538", "S04M050_Main", "box_MissionLayer_v2_88.Loaded", "box_Get_Player_ID_92.In", l0, l1)
  l1:In()
end
function export:f_box_CLOController_72_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_72
  self.Engineer3 = l0.UserID
  l0 = self.box_Play_Domino_Cinematic_Animation_116
  l0.TargetEntity = self.Engineer3
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-01.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844467"
  l0 = self.box_CLOController_72
  l1 = self.box_Play_Domino_Cinematic_Animation_116
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1008902867", "1008902867", "S04M050_Main", "box_CLOController_72.OnUserInPlace", "box_Play_Domino_Cinematic_Animation_116.Start", l0, l1)
  l1:Start()
end
function export:f_box_Compare_Boolean_v2_33_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1193818450"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1576125807", "1576125807", "S04M050_Main", "box_Compare_Boolean_v2_33.A_is_False", "box_Ordered_Output_74.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_33_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_43
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|887846464", "887846464", "S04M050_Main", "box_Compare_Boolean_v2_33.A_is_True", "box_CinematicPrep_43.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_52_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M050_SCR_Main_48
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1862022078", "1862022078", "S04M050_Main", "box_Ordered_Output_52.Out", "box_S04M050_SCR_Main_48.InScreenDedSec", clone, l0)
  l0:InScreenDedSec()
end
function export:f_box_Ordered_Output_52_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086163"
  l0.Channel = "Generic"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_140"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1912827669"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_140_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|151535028", "151535028", "S04M050_Main", "box_Ordered_Output_52.Out", "box_Dynamic_Media_Controller_140.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_Ordered_Output_52_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_96
  l0.Entity = "9223372061757478376"
  l0.SoundId = "soundbinary/2799696401.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1844407973", "1844407973", "S04M050_Main", "box_Ordered_Output_52.Out", "box_PlaySound_v2_96.Play", clone, l0)
  l0:Play()
end
function export:f_box_Interact_Gameplay_126_Interacted()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_Interact_Gameplay_126
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1175219201", "1175219201", "S04M050_Main", "box_Interact_Gameplay_126.Interacted", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_Compare_Boolean_v2_114_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_22
  l0.Checkpoint = "CheckPoint_1"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1553955401", "1553955401", "S04M050_Main", "box_Compare_Boolean_v2_114.A_is_False", "box_MissionCheckpointReach_22.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_114_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_61
  l0.Checkpoint = "CheckPoint_2"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1402138312", "1402138312", "S04M050_Main", "box_Compare_Boolean_v2_114.A_is_True", "box_MissionCheckpointReach_61.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M050_SCR_Main_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|519292565", "519292565", "S04M050_Main", "box_Ordered_Output_20.Out", "box_S04M050_SCR_Main_76.InScreens", clone, l0)
  l0:InScreens()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_15
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M050.Objectives.Objective020",
    item = "Objective",
    id = "341473"
  }
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|29392740", "29392740", "S04M050_Main", "box_Ordered_Output_20.Out", "box_MissionMessageController_v3_15.ShowNewObjective", clone, l0)
  l0:ShowNewObjective()
end
function export:f_box_Ordered_Output_64_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = "9223372050165748874"
  l0.CameraEntityList = nil
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|149115828"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = DummyFunction
  l0.EnterForced = self.f_box_SecurityCamController_19_EnterForced
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1932194075", "1932194075", "S04M050_Main", "box_Ordered_Output_64.Out", "box_SecurityCamController_19.ForceEnter", clone, l0)
  l0:ForceEnter()
end
function export:f_box_Ordered_Output_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_S04M050_SCR_Main_78
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1154895649", "1154895649", "S04M050_Main", "box_Ordered_Output_64.Out", "box_S04M050_SCR_Main_78.InScreens", clone, l0)
  l0:InScreens()
end
function export:f_box_ListWriter_41_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_41
  self.ServerRoom_Cameras = l0.Target
  l0 = self.box_PlaySequence_v5_39
  l0.SceneEntity = "9223372050347391495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_EngineerPanic/s04_m050_scr_engineerpanicloop.seq"
  l0 = self.box_ListWriter_41
  l1 = self.box_PlaySequence_v5_39
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1844659770", "1844659770", "S04M050_Main", "box_ListWriter_41.Added", "box_PlaySequence_v5_39.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_41_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_41
  self.ServerRoom_Cameras = l0.Target
end
function export:f_box_ListWriter_41_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_41
  self.ServerRoom_Cameras = l0.Target
end
function export:f_box_HackableController_v2_149_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_149()
  l0 = self.box_HackableController_v2_149
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1351110264", "1351110264", "S04M050_Main", "box_HackableController_v2_149.Disabled", "box_HackableController_v2_149.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_149_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_HackableController_v2_149
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|488400207", "488400207", "S04M050_Main", "box_HackableController_v2_149.ProfilingDisabled", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(2)
end
function export:f_box_OnceOnly_v3_125_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_LMA_Layer_Controller_71
  l0.LMALayerName = "SF_08_HaumDataCenter_LMA"
  l0 = self.box_OnceOnly_v3_125
  l1 = self.box_LMA_Layer_Controller_71
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|135673819", "135673819", "S04M050_Main", "box_OnceOnly_v3_125.Out", "box_LMA_Layer_Controller_71.Unload", l0, l1)
  l1:Unload()
end
function export:f_box_MissionLayer_v2_14_Loaded()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|638137700"
  l0.Out = self.f_box_Get_Player_ID_23_Out
  l0 = self.box_MissionLayer_v2_14
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|871283390", "871283390", "S04M050_Main", "box_MissionLayer_v2_14.Loaded", "box_Get_Player_ID_23.In", l0, l1)
  l1:In()
end
function export:f_box_Media_System_Custom_Broadcast_Controller_137_EndedAllCustomMediaBroadcasts()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionMessageController_v3_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1906497875", "1906497875", "S04M050_Main", "box_Media_System_Custom_Broadcast_Controller_137.EndedAllCustomMediaBroadcasts", "box_MissionMessageController_v3_18.ShowLastObjectiveComplete", clone, l0)
  l0:ShowLastObjectiveComplete()
end
function export:f_box_CinematicPrep_89_PostOut()
  local l0, l1
  self = self._graph
  l0 = self.box_AccessCodeMonitor_151
  l0.AccessCode = "Items.9223372049367558614"
  l0 = self.box_CinematicPrep_89
  l1 = self.box_AccessCodeMonitor_151
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1118075494", "1118075494", "S04M050_Main", "box_CinematicPrep_89.PostOut", "box_AccessCodeMonitor_151.CheckHasAccessCode", l0, l1)
  l1:CheckHasAccessCode()
end
function export:f_box_Timer_v2_97_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_119()
  l0 = self.box_Timer_v2_97
  l1 = self.box_MultipleOR_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|56734693", "56734693", "S04M050_Main", "box_Timer_v2_97.TimeElapsed", "box_MultipleOR_119.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_HackableController_v2_152_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_163"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1609871985"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_163_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_163_Out_1
  l0 = self.box_HackableController_v2_152
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1262770035", "1262770035", "S04M050_Main", "box_HackableController_v2_152.Disabled", "box_Ordered_Output_163.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_24_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_95"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1824292204"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_95_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_95_Out_1
  l0 = self.box_MissionMessageController_v3_24
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1439088501", "1439088501", "S04M050_Main", "box_MissionMessageController_v3_24.Out", "box_Ordered_Output_95.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_163_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_68
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|629206725", "629206725", "S04M050_Main", "box_Ordered_Output_163.Out", "box_CinematicPrep_68.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_Ordered_Output_163_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MissionMusicController.lua")]
  l0.MissionMusicPlaylist = "MusicPlaylists.9223372053475669154"
  l0.UseMusicScoreMode = 1
  l0.EndMusicDelayTime = nil
  l0.KillOtherMissionMusicOnStart = nil
  l0._graph = self
  l0._name = "box_MissionMusicController_162"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1821541722"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1788292229", "1788292229", "S04M050_Main", "box_Ordered_Output_163.Out", "box_MissionMusicController_162.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_Play_Domino_Cinematic_Animation_136_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_79
  l0.PGTMissionArea = "9223372047182363050"
  l0 = self.box_Play_Domino_Cinematic_Animation_136
  l1 = self.box_PGTController_v2_79
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|940339308", "940339308", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_136.Started", "box_PGTController_v2_79.Start", l0, l1)
  l1:Start()
end
function export:f_box_Simple_Node_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_31()
  l0 = self.box_MissionZone_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1864277833", "1864277833", "S04M050_Main", "box_Simple_Node_11.Out", "box_MissionZone_31.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_MissionCheckpointReach_69_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_63()
  l0 = self.box_MissionCheckpointReach_69
  l1 = self.box_TriggerMonitor_v2_63
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1750333736", "1750333736", "S04M050_Main", "box_MissionCheckpointReach_69.Out", "box_TriggerMonitor_v2_63.Disable", l0, l1)
  l1:Disable()
end
function export:f_box_ListWriter_9_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_9
  self.ServerRoom_Cameras = l0.Target
  l0 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  l0.TargetZone = "9223372059723114150"
  l0._graph = self
  l0._name = "box_Phys_Zone_Cleanup_86"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|377269752"
  l0.Out = self.f_box_Phys_Zone_Cleanup_86_Out
  l0 = self.box_ListWriter_9
  l1 = Boxes[PathID("domino/System/PhysZoneCleanup.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1319147795", "1319147795", "S04M050_Main", "box_ListWriter_9.Added", "box_Phys_Zone_Cleanup_86.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_ListWriter_9_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_9
  self.ServerRoom_Cameras = l0.Target
end
function export:f_box_ListWriter_9_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_9
  self.ServerRoom_Cameras = l0.Target
end
function export:f_box_MissionZone_67_Enabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_64"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1513038038"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_64_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_64_Out_1
  l0 = self.box_MissionZone_67
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|871094273", "871094273", "S04M050_Main", "box_MissionZone_67.Enabled", "box_Ordered_Output_64.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_118_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_119()
  l0 = self.box_MultipleOR_119
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2120831206", "2120831206", "S04M050_Main", "box_Ordered_Output_118.Out", "box_MultipleOR_119.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_118_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_121"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1161830925"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_121_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_121_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|804631744", "804631744", "S04M050_Main", "box_Ordered_Output_118.Out", "box_Ordered_Output_121.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_38_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MediaSystemCustomBroadcastController.lua")]
  l0.BroadcastInfo = "CustomBroadcasts.9223372061731171686"
  l0.OnGenericChannel = 1
  l0.OnShopChannel = nil
  l0.OnBarChannel = 1
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_51"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1111179305"
  l0.LoadAndPlayRequested = self.f_box_Media_System_Custom_Broadcast_Controller_51_LoadAndPlayRequested
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|838940686", "838940686", "S04M050_Main", "box_Ordered_Output_38.Out", "box_Media_System_Custom_Broadcast_Controller_51.LoadAndPlayCustomBroadcast", clone, l0)
  l0:LoadAndPlayCustomBroadcast()
end
function export:f_box_Ordered_Output_38_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_28
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1530697818", "1530697818", "S04M050_Main", "box_Ordered_Output_38.Out", "box_Timer_v2_28.Start", clone, l0)
  l0:Start()
end
function export:f_box_Security_Camera_Monitor_30_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1477092247"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0 = self.box_Security_Camera_Monitor_30
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|988091264", "988091264", "S04M050_Main", "box_Security_Camera_Monitor_30.Disabled", "box_Ordered_Output_20.In", l0, l1)
  l1:In()
end
function export:f_box_Security_Camera_Monitor_30_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_44
  l0.SceneEntity = "9223372050347391495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_EngineerPanic/s04_m050_scr_engineerpanicloop.seq"
  l0 = self.box_Security_Camera_Monitor_30
  l1 = self.box_PlaySequence_v5_44
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1286236125", "1286236125", "S04M050_Main", "box_Security_Camera_Monitor_30.Enabled", "box_PlaySequence_v5_44.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_30_OnStartAccessCamera()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_150()
  l0 = self.box_Security_Camera_Monitor_30
  l1 = self.box_Hack_Gameplay_150
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|836399591", "836399591", "S04M050_Main", "box_Security_Camera_Monitor_30.OnStartAccessCamera", "box_Hack_Gameplay_150.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_MultipleOR_66_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_2
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_114"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1477063154"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_114_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_114_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MultipleOR_66
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|270240064", "270240064", "S04M050_Main", "box_MultipleOR_66.Out", "box_Compare_Boolean_v2_114.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_95_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Escape_Gameplay_10
  l0.Entity_AreaRadius = 0
  l0.MissionArea = "9223372047828259930"
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
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|447336485", "447336485", "S04M050_Main", "box_Ordered_Output_95.Out", "box_Escape_Gameplay_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_95_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_109
  l0.SoundId = "soundbinary/2286467389.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1273243679", "1273243679", "S04M050_Main", "box_Ordered_Output_95.Out", "box_PlaySound_v2_109.Play", clone, l0)
  l0:Play()
end
function export:f_box_Hackable_Monitor_110_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_97
  l0.Seconds = 3
  l0 = self.box_Hackable_Monitor_110
  l1 = self.box_Timer_v2_97
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|294701231", "294701231", "S04M050_Main", "box_Hackable_Monitor_110.Disabled", "box_Timer_v2_97.Start", l0, l1)
  l1:Start()
end
function export:f_box_Hackable_Monitor_110_HackSuccess()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_124"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|526013956"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_124_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_124_Out_1
  l0 = self.box_Hackable_Monitor_110
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2023706591", "2023706591", "S04M050_Main", "box_Hackable_Monitor_110.HackSuccess", "box_Ordered_Output_124.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_91
  l0.SoundId = "soundbinary/1465087397.bnk"
  l0 = self.box_Timer_v2_6
  l1 = self.box_PlaySound_v2_91
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|322128817", "322128817", "S04M050_Main", "box_Timer_v2_6.TimeElapsed", "box_PlaySound_v2_91.Play", l0, l1)
  l1:Play()
end
function export:f_box_Get_Player_ID_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_ListWriter_41
  l0.Input = self.ServerRoom_Cameras
  l0.Data[0] = "9223372050165748870"
  l0.Data[1] = "9223372050165748872"
  l0.Data[2] = "9223372050165748874"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|492018229", "492018229", "S04M050_Main", "box_Get_Player_ID_49.Out", "box_ListWriter_41.Add", clone, l0)
  l0:Add()
end
function export:f_box_Timer_v2_28_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_59"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|2125129422"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_59_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_59_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_59_Out_2
  l0 = self.box_Timer_v2_28
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1641834979", "1641834979", "S04M050_Main", "box_Timer_v2_28.TimeElapsed", "box_Ordered_Output_59.In", l0, l1)
  l1:In()
end
function export:f_box_Dynamic_Media_Controller_140_ChannelChanged()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/DynamicMediaController.lua")]
  l0.EntityId = "9223372051060086169"
  l0.Channel = "Generic"
  l0._graph = self
  l0._name = "box_Dynamic_Media_Controller_139"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|211687678"
  l0.ChannelChanged = self.f_box_Dynamic_Media_Controller_139_ChannelChanged
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1126691335", "1126691335", "S04M050_Main", "box_Dynamic_Media_Controller_140.ChannelChanged", "box_Dynamic_Media_Controller_139.ChangeBroadcastChannelOnEntity", clone, l0)
  l0:ChangeBroadcastChannelOnEntity()
end
function export:f_box_HackableController_v2_143_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_143()
  l0 = self.box_HackableController_v2_143
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|274624314", "274624314", "S04M050_Main", "box_HackableController_v2_143.Disabled", "box_HackableController_v2_143.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_143_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_144()
  l0 = self.box_HackableController_v2_143
  l1 = self.box_HackableController_v2_144
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|692278212", "692278212", "S04M050_Main", "box_HackableController_v2_143.ProfilingDisabled", "box_HackableController_v2_144.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_AccessCodeMonitor_151_HasNOT()
  local l0, l1
  self = self._graph
  l0 = self.box_RewardController_v3_82
  l0.ItemDB = "Items.9223372049367558614"
  l0 = self.box_AccessCodeMonitor_151
  l1 = self.box_RewardController_v3_82
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1276192526", "1276192526", "S04M050_Main", "box_AccessCodeMonitor_151.HasNOT", "box_RewardController_v3_82.ExecuteRewards", l0, l1)
  l1:ExecuteRewards()
end
function export:f_box_AccessCodeMonitor_151_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_146()
  l0 = self.box_AccessCodeMonitor_151
  l1 = self.box_HackableController_v2_146
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|37663020", "37663020", "S04M050_Main", "box_AccessCodeMonitor_151.Out", "box_HackableController_v2_146.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_HackableController_v2_153_Disabled()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_159"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1370041236"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_159_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_159_Out_1
  l0 = self.box_HackableController_v2_153
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1254491364", "1254491364", "S04M050_Main", "box_HackableController_v2_153.Disabled", "box_Ordered_Output_159.In", l0, l1)
  l1:In()
end
function export:f_box_MissionMessageController_v3_18_MessageCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_5
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347136"
  l0 = self.box_MissionMessageController_v3_18
  l1 = self.box_PhoneCommunicationController_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|835674876", "835674876", "S04M050_Main", "box_MissionMessageController_v3_18.MessageCompleted", "box_PhoneCommunicationController_5.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_Download_Gameplay_32_DownloadCompleted()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionMessageController_v3_24
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M050.Objectives.Objective030",
    item = "Objective",
    id = "482192"
  }
  l0.HasObjectiveMarker = 0
  l0 = self.box_Download_Gameplay_32
  l1 = self.box_MissionMessageController_v3_24
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1167175100", "1167175100", "S04M050_Main", "box_Download_Gameplay_32.DownloadCompleted", "box_MissionMessageController_v3_24.ShowNewObjective", l0, l1)
  l1:ShowNewObjective()
end
function export:f_box_Download_Gameplay_32_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_93"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|377206642"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_93_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_93_Out_1
  l0 = self.box_Download_Gameplay_32
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|848168150", "848168150", "S04M050_Main", "box_Download_Gameplay_32.Started", "box_Ordered_Output_93.In", l0, l1)
  l1:In()
end
function export:f_box_Play_Domino_Cinematic_Animation_132_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PGTController_v2_45
  l0.PGTMissionArea = "9223372047182363050"
  l0 = self.box_Play_Domino_Cinematic_Animation_132
  l1 = self.box_PGTController_v2_45
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|890763151", "890763151", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_132.Started", "box_PGTController_v2_45.Start", l0, l1)
  l1:Start()
end
function export:f_box_MissionMessageController_v3_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_HackableController_v2_73
  l0.HackableEntity = "9223372055162039814"
  l0.ProfileLinkedToHack = 1
  l0 = self.box_MissionMessageController_v3_15
  l1 = self.box_HackableController_v2_73
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1254950478", "1254950478", "S04M050_Main", "box_MissionMessageController_v3_15.Out", "box_HackableController_v2_73.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_MultipleOR_26_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_46()
  l0 = self.box_MultipleOR_26
  l1 = self.box_Hack_Gameplay_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1284909435", "1284909435", "S04M050_Main", "box_MultipleOR_26.Out", "box_Hack_Gameplay_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_Security_Camera_Monitor_7_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_66()
  l0 = self.box_Security_Camera_Monitor_7
  l1 = self.box_MultipleOR_66
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1606998343", "1606998343", "S04M050_Main", "box_Security_Camera_Monitor_7.Disabled", "box_MultipleOR_66.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Security_Camera_Monitor_7_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_26()
  l0 = self.box_Security_Camera_Monitor_7
  l1 = self.box_MultipleOR_26
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1474856750", "1474856750", "S04M050_Main", "box_Security_Camera_Monitor_7.Enabled", "box_MultipleOR_26.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Security_Camera_Monitor_7_OnEndExitAll()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Hack_Gameplay_46()
  l0 = self.box_Security_Camera_Monitor_7
  l1 = self.box_Hack_Gameplay_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|126841885", "126841885", "S04M050_Main", "box_Security_Camera_Monitor_7.OnEndExitAll", "box_Hack_Gameplay_46.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_CLOController_90_Activated()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsCheckPoint_0
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1411517253"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_33_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_33_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_CLOController_90
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|411497678", "411497678", "S04M050_Main", "box_CLOController_90.Activated", "box_Compare_Boolean_v2_33.In", l0, l1)
  l1:In()
end
function export:f_box_PlaySequence_v5_47_SPOut__OutCamera_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  l0.PowerUserEntity = nil
  l0.SecurityCamEntity = nil
  l0.CameraEntityList = self.ServerRoom_Cameras
  l0.TargetEntity = nil
  l0.CanEnter = nil
  l0.CanExit = nil
  l0.DisconnectedHeader = nil
  l0.DisconnectedText = nil
  l0._graph = self
  l0._name = "box_SecurityCamController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1067191139"
  l0.EnterSet = DummyFunction
  l0.CanExitSet = DummyFunction
  l0.PositionReset = DummyFunction
  l0.UserForcedOutOfCamera = self.f_box_SecurityCamController_27_UserForcedOutOfCamera
  l0.EnterForced = DummyFunction
  l0.InitialTargetSet = DummyFunction
  l0.InitialTargetReset = DummyFunction
  l0.DisconnectedAnimationPlayed = DummyFunction
  l0.DisconnectedAnimationHidden = DummyFunction
  l0.FriendlySet = DummyFunction
  l0 = self.box_PlaySequence_v5_47
  l1 = Boxes[PathID("domino/System/SecurityCamController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|867048290", "867048290", "S04M050_Main", "box_PlaySequence_v5_47.SPOut", "box_SecurityCamController_27.ForceUserOutOfCamera", l0, l1)
  l1:ForceUserOutOfCamera()
end
function export:f_box_PlaySequence_v5_47_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_47
  self.Engineer2 = l0.EntityOut.Engineer
end
function export:f_box_PGTController_v2_79_AllSpawned()
  local l0, l1
  self = self._graph
  l0 = self.box_MissionZone_87
  l0.MissionArea = "9223372047828259332"
  l0.MissionLayer = "S04M050_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
  l0 = self.box_PGTController_v2_79
  l1 = self.box_MissionZone_87
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|100924304", "100924304", "S04M050_Main", "box_PGTController_v2_79.AllSpawned", "box_MissionZone_87.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_Play_Domino_Cinematic_Animation_116_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_128
  l0.CLO = "9223372069376667849"
  l0 = self.box_Play_Domino_Cinematic_Animation_116
  l1 = self.box_CLOController_128
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|986950", "986950", "S04M050_Main", "box_Play_Domino_Cinematic_Animation_116.Started", "box_CLOController_128.Activate", l0, l1)
  l1:Activate()
end
function export:f_box_PlayDialog_v2_75_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Download_Gameplay_32
  l0.TargetEntity = "9223372047761929402"
  l0.LinkedObjective = "Objective"
  l0.Duration = 120
  l0.OverridedRadius = 25
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
  l0.FleeOnDownloadDetected = 0
  l0.Affiliation = "UZulu"
  l0.AutoDetectDownload = 1
  l0 = self.box_PlayDialog_v2_75
  l1 = self.box_Download_Gameplay_32
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|902346701", "902346701", "S04M050_Main", "box_PlayDialog_v2_75.Finished", "box_Download_Gameplay_32.Start", l0, l1)
  l1:Start()
end
function export:f_box_MultipleOR_42_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MissionZone_31()
  l0 = self.box_MultipleOR_42
  l1 = self.box_MissionZone_31
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1927885742", "1927885742", "S04M050_Main", "box_MultipleOR_42.Out", "box_MissionZone_31.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_HackableController_v2_141_Disabled()
  local l0
  self = self._graph
  self:OnEnter_box_HackableController_v2_141()
  l0 = self.box_HackableController_v2_141
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1499759224", "1499759224", "S04M050_Main", "box_HackableController_v2_141.Disabled", "box_HackableController_v2_141.DisableProfiling", l0, l0)
  l0:DisableProfiling()
end
function export:f_box_HackableController_v2_141_ProfilingDisabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_HackableController_v2_142()
  l0 = self.box_HackableController_v2_141
  l1 = self.box_HackableController_v2_142
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1561461115", "1561461115", "S04M050_Main", "box_HackableController_v2_141.ProfilingDisabled", "box_HackableController_v2_142.DisableHack", l0, l1)
  l1:DisableHack()
end
function export:f_box_PlaySound_v2_96_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_107"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|456955994"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_107_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_107_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_107_Out_2
  l0 = self.box_PlaySound_v2_96
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1403907601", "1403907601", "S04M050_Main", "box_PlaySound_v2_96.Started", "box_Ordered_Output_107.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_59_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372050347391495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_EngineerPanic/s04_m050_scr_engineerpanicloop.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|45429921", "45429921", "S04M050_Main", "box_Ordered_Output_59.Out", "box_PlaySequence_v5_1.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_59_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Play_Domino_Cinematic_Animation_56
  l0.TargetEntity = self.Engineer3
  l0.Anim = "move/decisiontrees/scr/worldstories/s16/s16_m050_clo_hackertalking-loop---hacker-01.move.bin"
  l0.Looping = 1
  l0.AnchorEntity = "9223372069376844467"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|844648099", "844648099", "S04M050_Main", "box_Ordered_Output_59.Out", "box_Play_Domino_Cinematic_Animation_56.Stop", clone, l0)
  l0:Stop()
end
function export:f_box_Ordered_Output_59_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_80
  l0.Seconds = 2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|829663102", "829663102", "S04M050_Main", "box_Ordered_Output_59.Out", "box_Timer_v2_80.Start", clone, l0)
  l0:Start()
end
function export:f_box_CinematicPrep_43_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_42()
  l0 = self.box_CinematicPrep_43
  l1 = self.box_MultipleOR_42
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|768886160", "768886160", "S04M050_Main", "box_CinematicPrep_43.PostOut", "box_MultipleOR_42.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_ListWriter_84_Added()
  local l0, l1
  self = self._graph
  l0 = self.box_ListWriter_84
  self.ServerRoom_Cameras = l0.Target
  l0 = self.box_PlaySequence_v5_81
  l0.SceneEntity = "9223372050347391495"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M050_SCR_EngineerPanic/s04_m050_scr_engineerpanicloop.seq"
  l0 = self.box_ListWriter_84
  l1 = self.box_PlaySequence_v5_81
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M050\\S04M050.domino|@S04M050_Main|1575204182", "1575204182", "S04M050_Main", "box_ListWriter_84.Added", "box_PlaySequence_v5_81.Start", l0, l1)
  l1:Start()
end
function export:f_box_ListWriter_84_Out()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_84
  self.ServerRoom_Cameras = l0.Target
end
function export:f_box_ListWriter_84_Removed()
  local l0
  self = self._graph
  l0 = self.box_ListWriter_84
  self.ServerRoom_Cameras = l0.Target
end
function export:OnEnter_box_HackableController_v2_146()
  local l0
  l0 = self.box_HackableController_v2_146
  l0.HackableEntity = self.Engineer3
end
function export:OnEnter_box_Hack_Gameplay_150()
  local l0
  l0 = self.box_Hack_Gameplay_150
  l0.Entity = "9223372055162039814"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Hack",
    id = "167936"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_Hack_Gameplay_46()
  local l0
  l0 = self.box_Hack_Gameplay_46
  l0.Entity = "9223372055816793011"
  l0.MarkerLocId = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Download",
    id = "189898"
  }
  l0.IsManagingInteraction = 1
  l0.DisplayObjectiveDistance = 1
end
function export:OnEnter_box_MultipleOR_122()
end
function export:OnEnter_box_TriggerMonitor_v2_63()
  local l0
  l0 = self.box_TriggerMonitor_v2_63
  l0.Trigger = "9223372064870932080"
  l0.CheckNow = 1
end
function export:OnEnter_box_HackableController_v2_147()
  local l0
  l0 = self.box_HackableController_v2_147
  l0.HackableEntity = self.Engineer
end
function export:OnEnter_box_HackableController_v2_148()
  local l0
  l0 = self.box_HackableController_v2_148
  l0.HackableEntity = self.Engineer
end
function export:OnEnter_box_HackableController_v2_145()
  local l0
  l0 = self.box_HackableController_v2_145
  l0.HackableEntity = self.Engineer4
end
function export:OnEnter_box_MultipleOR_119()
end
function export:OnEnter_box_MultipleOR_85()
end
function export:OnEnter_box_HackableController_v2_142()
  local l0
  l0 = self.box_HackableController_v2_142
  l0.HackableEntity = self.Engineer4
end
function export:OnEnter_box_MissionZone_31()
  local l0
  l0 = self.box_MissionZone_31
  l0.MissionArea = "9223372047828259332"
  l0.MissionLayer = "S04M050_Main"
  l0.HardFail = 0
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_36()
end
function export:OnEnter_box_HackableController_v2_144()
  local l0
  l0 = self.box_HackableController_v2_144
  l0.HackableEntity = self.Engineer4
end
function export:OnEnter_box_HackableController_v2_149()
  local l0
  l0 = self.box_HackableController_v2_149
  l0.HackableEntity = self.Engineer
end
function export:OnEnter_box_Mission_End_154()
  local l0
  l0 = self.box_Mission_End_154
  l0.Checkpoint = "CheckPoint_3"
  l0.MissionLayer = "S04M050_Main"
  l0.ShowMissionComplete = 1
end
function export:OnEnter_box_Security_Camera_Monitor_30()
  local l0
  l0 = self.box_Security_Camera_Monitor_30
  l0.CameraEntity = "9223372050165748870"
end
function export:OnEnter_box_MultipleOR_66()
end
function export:OnEnter_box_Hackable_Monitor_110()
  local l0
  l0 = self.box_Hackable_Monitor_110
  l0.HackableEntity = "9223372055162039814"
end
function export:OnEnter_box_HackableController_v2_143()
  local l0
  l0 = self.box_HackableController_v2_143
  l0.HackableEntity = self.Engineer3
end
function export:OnEnter_box_MultipleOR_26()
end
function export:OnEnter_box_Security_Camera_Monitor_7()
  local l0
  l0 = self.box_Security_Camera_Monitor_7
  l0.CameraEntityList = self.ServerRoom_Cameras
end
function export:OnEnter_box_MultipleOR_42()
end
function export:OnEnter_box_HackableController_v2_141()
  local l0
  l0 = self.box_HackableController_v2_141
  l0.HackableEntity = self.Engineer3
end
_compilerVersion = 4
