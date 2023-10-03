export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MaterialController.lua")
  cbox:RegisterBox("domino/System/MediaSystemCustomBroadcastController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlayDialogWithSubtitle.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/1482453689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/681903357.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1645337137.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/254597174.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1019298353.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3019176306.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1215157518.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3367330601.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04M040_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main"
  self.Out = DummyFunction
  self.OutStopBlackOut = DummyFunction
  self.OutStartBlackOut = DummyFunction
  self.PlayerEntity = nil
  self.Sound_Point_CentralCommand_01 = "9223372071792028496"
  self.Sound_Point_CentralCommand_2 = "9223372071792028498"
  self.Sound_Point_CentralCommand_3 = "9223372071792028500"
  self.box_PlaySound_v2_42 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_42
  l0._graph = self
  l0._name = "box_PlaySound_v2_42"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|155441076"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialogOnSoundPoint_50 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_50
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_50"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|304905160"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlayDialogOnSoundPoint_50_Started
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_50_Finished
  self.box_Timer_v2_40 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_40
  l0._graph = self
  l0._name = "box_Timer_v2_40"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|456981673"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_40_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlayDialogOnSoundPoint_7 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_7
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|479056261"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_7_Finished
  self.box_Timer_v2_2 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_2
  l0._graph = self
  l0._name = "box_Timer_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|493329431"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_24 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_24
  l0._graph = self
  l0._name = "box_PlaySound_v2_24"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|577238693"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_TriggerMonitor_v2_21 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_21
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_21"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|708691774"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_21_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_21_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_45 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_45
  l0._graph = self
  l0._name = "box_PlaySound_v2_45"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|732642664"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_18 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_18
  l0._graph = self
  l0._name = "box_PlaySound_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1134277369"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_28 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_28
  l0._graph = self
  l0._name = "box_Timer_v2_28"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1177527063"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_28_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_25 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_25
  l0._graph = self
  l0._name = "box_PlaySound_v2_25"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1193595491"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1234906320"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1279166802"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_1_PostOut
  self.box_PlaySound_v2_11 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_11
  l0._graph = self
  l0._name = "box_PlaySound_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1307480781"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_23 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_23
  l0._graph = self
  l0._name = "box_PlaySound_v2_23"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1433754419"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_12 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_12
  l0._graph = self
  l0._name = "box_PlaySequence_v5_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1575073944"
  l0._DynamicAnchors = {
    SPOut = {"BlackOut"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_12_Finished
  l0.SPOut.BlackOut = self.f_box_PlaySequence_v5_12_SPOut__BlackOut_
  self.box_PlayDialogOnSoundPoint_49 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_49
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_49"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1654705959"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlayDialogOnSoundPoint_49_Started
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_49_Finished
  self.box_PlaySound_v2_43 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_43
  l0._graph = self
  l0._name = "box_PlaySound_v2_43"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1665820672"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlayDialogOnSoundPoint_39 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_39
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1711553087"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_39_Finished
  self.box_PlayDialogOnSoundPoint_8 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_8
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1798821163"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlayDialogOnSoundPoint_8_Started
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_8_Finished
  self.box_TriggerMonitor_v2_22 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_22
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_22"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1800564391"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_22_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_22_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialogOnSoundPoint_52 = cbox:CreateBox("domino/System/PlayDialogWithSubtitle.lua")
  l0 = self.box_PlayDialogOnSoundPoint_52
  l0._graph = self
  l0._name = "box_PlayDialogOnSoundPoint_52"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1837551119"
  l0.Out = DummyFunction
  l0.Started = self.f_box_PlayDialogOnSoundPoint_52_Started
  l0.Finished = self.f_box_PlayDialogOnSoundPoint_52_Finished
  self.box_TriggerMonitor_v2_16 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_16
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1870534567"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_16_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_16_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_CinematicPrep_14 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_14
  l0._graph = self
  l0._name = "box_CinematicPrep_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1996409288"
  l0.PreOut = self.f_box_CinematicPrep_14_PreOut
  l0.PostOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self.box_CinematicPrep_14
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|288296224", "288296224", "S04M040_SCR_Main", "In", "box_CinematicPrep_14.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:InStartBlackOut()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1436077272"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_10_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_10_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|959848705", "959848705", "S04M040_SCR_Main", "InStartBlackOut", "box_Ordered_Output_10.In", self, l0)
  l0:In()
end
function export:INStopBlackOut()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = "9223372056399119996"
  l0.Radius = 35
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = 5
  l0.Duration = nil
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0._name = "box_BlackoutController_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|859536255"
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = self.f_box_BlackoutController_4_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = self.f_box_BlackoutController_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|272382717", "272382717", "S04M040_SCR_Main", "INStopBlackOut", "box_BlackoutController_4.StopBlackout", self, l0)
  l0:StopBlackout()
end
function export:f_box_Ordered_Output_41_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_8
  l0.Entity = self.Sound_Point_CentralCommand_01
  l0.SoundId = "soundbinary/1215157518.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|832761252", "832761252", "S04M040_SCR_Main", "box_Ordered_Output_41.Out", "box_PlayDialogOnSoundPoint_8.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_43
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/1215157518.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|64862593", "64862593", "S04M040_SCR_Main", "box_Ordered_Output_41.Out", "box_PlaySound_v2_43.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_41_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_45
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/1215157518.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1982528888", "1982528888", "S04M040_SCR_Main", "box_Ordered_Output_41.Out", "box_PlaySound_v2_45.Play", clone, l0)
  l0:Play()
end
function export:f_box_Cinema_Zone_Cleanup_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_12
  l0.SceneEntity = "9223372053647795590"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S04/S04_M040_SCR_MissionStart/s04_m040_scr_missionstart.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|486903389", "486903389", "S04M040_SCR_Main", "box_Cinema_Zone_Cleanup_17.Out", "box_PlaySequence_v5_12.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlayDialogOnSoundPoint_50_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MaterialController_29()
  l0 = self.box_PlayDialogOnSoundPoint_50
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|2111943260", "2111943260", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_50.Finished", "box_MaterialController_29.ResetByIndex", l0, l1)
  l1:ResetByIndex()
end
function export:f_box_PlayDialogOnSoundPoint_50_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MaterialController_29()
  l0 = self.box_PlayDialogOnSoundPoint_50
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|401980953", "401980953", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_50.Started", "box_MaterialController_29.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_MaterialController_38_ByIndexReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075931914"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_36"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|87646686"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1251983754", "1251983754", "S04M040_SCR_Main", "box_MaterialController_38.ByIndexReset", "box_MaterialController_36.ResetByIndex", clone, l0)
  l0:ResetByIndex()
end
function export:f_box_Timer_v2_40_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_47"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|478312385"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_47_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_47_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_47_Out_2
  l0 = self.box_Timer_v2_40
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1689638016", "1689638016", "S04M040_SCR_Main", "box_Timer_v2_40.TimeElapsed", "box_Ordered_Output_47.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_47_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_7
  l0.Entity = self.Sound_Point_CentralCommand_01
  l0.SoundId = "soundbinary/681903357.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1248840313", "1248840313", "S04M040_SCR_Main", "box_Ordered_Output_47.Out", "box_PlayDialogOnSoundPoint_7.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_47_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_11
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/681903357.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1571511238", "1571511238", "S04M040_SCR_Main", "box_Ordered_Output_47.Out", "box_PlaySound_v2_11.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_47_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_23
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/681903357.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|683562633", "683562633", "S04M040_SCR_Main", "box_Ordered_Output_47.Out", "box_PlaySound_v2_23.Play", clone, l0)
  l0:Play()
end
function export:f_box_PlayDialogOnSoundPoint_7_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_37"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|879606327"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_37_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_37_Out_1
  l0 = self.box_PlayDialogOnSoundPoint_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|2013812174", "2013812174", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_7.Finished", "box_Ordered_Output_37.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_2_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_41"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|60285774"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_41_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_41_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_41_Out_2
  l0 = self.box_Timer_v2_2
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|2083781538", "2083781538", "S04M040_SCR_Main", "box_Timer_v2_2.TimeElapsed", "box_Ordered_Output_41.In", l0, l1)
  l1:In()
end
function export:f_box_BlackoutController_27_BackupStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_28
  l0.Seconds = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1356578427", "1356578427", "S04M040_SCR_Main", "box_BlackoutController_27.BackupStarted", "box_Timer_v2_28.Start", clone, l0)
  l0:Start()
end
function export:f_box_BlackoutController_27_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_27()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|785605301", "785605301", "S04M040_SCR_Main", "box_BlackoutController_27.BlackoutStarted", "box_BlackoutController_27.StartBackup", clone, l0)
  l0:StartBackup()
end
function export:f_box_MaterialController_32_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062631576795"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_33"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|723776161"
  l0.ByIndexSet = self.f_box_MaterialController_33_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|2003148500", "2003148500", "S04M040_SCR_Main", "box_MaterialController_32.ByIndexSet", "box_MaterialController_33.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_TriggerMonitor_v2_21_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_50
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/1019298353.bnk"
  l0 = self.box_TriggerMonitor_v2_21
  l1 = self.box_PlayDialogOnSoundPoint_50
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1642883429", "1642883429", "S04M040_SCR_Main", "box_TriggerMonitor_v2_21.Disabled", "box_PlayDialogOnSoundPoint_50.Play", l0, l1)
  l1:Play()
end
function export:f_box_TriggerMonitor_v2_21_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_21()
  l0 = self.box_TriggerMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|983836387", "983836387", "S04M040_SCR_Main", "box_TriggerMonitor_v2_21.Enter", "box_TriggerMonitor_v2_21.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_MaterialController_33_ByIndexSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075931914"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_34"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|538971893"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1017776076", "1017776076", "S04M040_SCR_Main", "box_MaterialController_33.ByIndexSet", "box_MaterialController_34.SetByIndex", clone, l0)
  l0:SetByIndex()
end
function export:f_box_Ordered_Output_26_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_27()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|939153366", "939153366", "S04M040_SCR_Main", "box_Ordered_Output_26.Out", "box_BlackoutController_27.StartBlackout", clone, l0)
  l0:StartBlackout()
end
function export:f_box_Ordered_Output_26_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_18
  l0.SoundId = "soundbinary/1482453689.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|203377705", "203377705", "S04M040_SCR_Main", "box_Ordered_Output_26.Out", "box_PlaySound_v2_18.Play", clone, l0)
  l0:Play()
end
function export:f_box_BlackoutController_4_BlackoutStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1084431844"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_3_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_3_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1374966893", "1374966893", "S04M040_SCR_Main", "box_BlackoutController_4.BlackoutStopped", "box_Ordered_Output_3.In", clone, l0)
  l0:In()
end
function export:f_box_BlackoutController_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|928511582", "928511582", "S04M040_SCR_Main", "box_BlackoutController_4.Out", "OutStopBlackOut", clone, self)
  self:OutStopBlackOut()
end
function export:f_box_Ordered_Output_44_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlayDialogOnSoundPoint_39
  l0.Entity = self.Sound_Point_CentralCommand_01
  l0.SoundId = "soundbinary/1645337137.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|99607109", "99607109", "S04M040_SCR_Main", "box_Ordered_Output_44.Out", "box_PlayDialogOnSoundPoint_39.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_44_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_42
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/1645337137.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|209004648", "209004648", "S04M040_SCR_Main", "box_Ordered_Output_44.Out", "box_PlaySound_v2_42.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_44_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_24
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/1645337137.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1901877593", "1901877593", "S04M040_SCR_Main", "box_Ordered_Output_44.Out", "box_PlaySound_v2_24.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_37_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1510464805"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_20_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_20_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_20_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1650134255", "1650134255", "S04M040_SCR_Main", "box_Ordered_Output_37.Out", "box_Ordered_Output_20.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_37_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075932604"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_35"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1446283984"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = self.f_box_MaterialController_35_ByIndexReset
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|927126352", "927126352", "S04M040_SCR_Main", "box_Ordered_Output_37.Out", "box_MaterialController_35.ResetByIndex", clone, l0)
  l0:ResetByIndex()
end
function export:f_box_Ordered_Output_3_Out_0()
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
  l0.OnBarChannel = nil
  l0.PlayOnLoad = nil
  l0.ApplyOnLoad = nil
  l0._graph = self
  l0._name = "box_Media_System_Custom_Broadcast_Controller_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|613731726"
  l0.LoadAndPlayRequested = DummyFunction
  l0.EndedAllCustomMediaBroadcasts = DummyFunction
  l0.ActivatedPlayOnBinkChannel = DummyFunction
  l0.AppliedLoadedBufferOnChannels = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1608893623", "1608893623", "S04M040_SCR_Main", "box_Ordered_Output_3.Out", "box_Media_System_Custom_Broadcast_Controller_5.EndAllCustomMediaBroadcasts", clone, l0)
  l0:EndAllCustomMediaBroadcasts()
end
function export:f_box_Ordered_Output_3_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_2
  l0.Seconds = 3.5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1257521732", "1257521732", "S04M040_SCR_Main", "box_Ordered_Output_3.Out", "box_Timer_v2_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_28_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_25
  l0.SoundId = "soundbinary/3019176306.bnk"
  l0 = self.box_Timer_v2_28
  l1 = self.box_PlaySound_v2_25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1438298805", "1438298805", "S04M040_SCR_Main", "box_Timer_v2_28.TimeElapsed", "box_PlaySound_v2_25.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_44"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|862815546"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_44_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_44_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_44_Out_2
  l0 = self.box_Timer_v2_6
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|379124987", "379124987", "S04M040_SCR_Main", "box_Timer_v2_6.TimeElapsed", "box_Ordered_Output_44.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_1_PostOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|627068229", "627068229", "S04M040_SCR_Main", "box_CinematicPrep_1.PostOut", "Out", l0, self)
  self:Out()
end
function export:f_box_Lanes_Restrictions_Control_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372063966592894"
  l0.SceneEntity = nil
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = nil
  l0.NotRemovableEntity[1] = nil
  l0._graph = self
  l0._name = "box_Cinema_Zone_Cleanup_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|270259225"
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_box_Cinema_Zone_Cleanup_17_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1899313773", "1899313773", "S04M040_SCR_Main", "box_Lanes_Restrictions_Control_15.Out", "box_Cinema_Zone_Cleanup_17.CleanZone", clone, l0)
  l0:CleanZone()
end
function export:f_box_Ordered_Output_10_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1514780279"
  l0.Out = self.f_box_Simple_Node_13_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|247502980", "247502980", "S04M040_SCR_Main", "box_Ordered_Output_10.Out", "box_Simple_Node_13.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_9()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1008287847", "1008287847", "S04M040_SCR_Main", "box_Ordered_Output_10.Out", "box_BlackoutController_9.StartBlackout", clone, l0)
  l0:StartBlackout()
end
function export:f_box_MaterialController_35_ByIndexReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372062631576795"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_38"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|322298032"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = self.f_box_MaterialController_38_ByIndexReset
  l0.ParameterSet = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1329984017", "1329984017", "S04M040_SCR_Main", "box_MaterialController_35.ByIndexReset", "box_MaterialController_38.ResetByIndex", clone, l0)
  l0:ResetByIndex()
end
function export:f_box_Ordered_Output_20_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_16()
  l0 = self.box_TriggerMonitor_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|262614232", "262614232", "S04M040_SCR_Main", "box_Ordered_Output_20.Out", "box_TriggerMonitor_v2_16.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_21()
  l0 = self.box_TriggerMonitor_v2_21
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|2128577065", "2128577065", "S04M040_SCR_Main", "box_Ordered_Output_20.Out", "box_TriggerMonitor_v2_21.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Ordered_Output_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_22()
  l0 = self.box_TriggerMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|596679073", "596679073", "S04M040_SCR_Main", "box_Ordered_Output_20.Out", "box_TriggerMonitor_v2_22.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Simple_Node_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|527558612", "527558612", "S04M040_SCR_Main", "box_Simple_Node_13.Out", "OutStartBlackOut", clone, self)
  self:OutStartBlackOut()
end
function export:f_box_PlaySequence_v5_12_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 1
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_PlaySequence_v5_12
  l1 = self.box_CinematicPrep_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|842703715", "842703715", "S04M040_SCR_Main", "box_PlaySequence_v5_12.Finished", "box_CinematicPrep_1.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_12_SPOut__BlackOut_()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_26"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|755002638"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_26_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_26_Out_1
  l0 = self.box_PlaySequence_v5_12
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1687868790", "1687868790", "S04M040_SCR_Main", "box_PlaySequence_v5_12.SPOut", "box_Ordered_Output_26.In", l0, l1)
  l1:In()
end
function export:f_box_PlayDialogOnSoundPoint_49_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MaterialController_30()
  l0 = self.box_PlayDialogOnSoundPoint_49
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|830344429", "830344429", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_49.Finished", "box_MaterialController_30.ResetByIndex", l0, l1)
  l1:ResetByIndex()
end
function export:f_box_PlayDialogOnSoundPoint_49_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MaterialController_30()
  l0 = self.box_PlayDialogOnSoundPoint_49
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1350840459", "1350840459", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_49.Started", "box_MaterialController_30.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_PlayDialogOnSoundPoint_39_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_40
  l0.Seconds = 0.5
  l0 = self.box_PlayDialogOnSoundPoint_39
  l1 = self.box_Timer_v2_40
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1036054410", "1036054410", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_39.Finished", "box_Timer_v2_40.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogOnSoundPoint_8_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_6
  l0.Seconds = 0.5
  l0 = self.box_PlayDialogOnSoundPoint_8
  l1 = self.box_Timer_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|194884415", "194884415", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_8.Finished", "box_Timer_v2_6.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlayDialogOnSoundPoint_8_Started()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075932604"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_32"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|613046246"
  l0.ByIndexSet = self.f_box_MaterialController_32_ByIndexSet
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
  l0 = self.box_PlayDialogOnSoundPoint_8
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1248586310", "1248586310", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_8.Started", "box_MaterialController_32.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_TriggerMonitor_v2_22_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_49
  l0.Entity = self.Sound_Point_CentralCommand_3
  l0.SoundId = "soundbinary/3367330601.bnk"
  l0 = self.box_TriggerMonitor_v2_22
  l1 = self.box_PlayDialogOnSoundPoint_49
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|867331499", "867331499", "S04M040_SCR_Main", "box_TriggerMonitor_v2_22.Disabled", "box_PlayDialogOnSoundPoint_49.Play", l0, l1)
  l1:Play()
end
function export:f_box_TriggerMonitor_v2_22_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_22()
  l0 = self.box_TriggerMonitor_v2_22
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1780611541", "1780611541", "S04M040_SCR_Main", "box_TriggerMonitor_v2_22.Enter", "box_TriggerMonitor_v2_22.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PlayDialogOnSoundPoint_52_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MaterialController_31()
  l0 = self.box_PlayDialogOnSoundPoint_52
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|77658569", "77658569", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_52.Finished", "box_MaterialController_31.ResetByIndex", l0, l1)
  l1:ResetByIndex()
end
function export:f_box_PlayDialogOnSoundPoint_52_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MaterialController_31()
  l0 = self.box_PlayDialogOnSoundPoint_52
  l1 = Boxes[PathID("domino/System/MaterialController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1070912916", "1070912916", "S04M040_SCR_Main", "box_PlayDialogOnSoundPoint_52.Started", "box_MaterialController_31.SetByIndex", l0, l1)
  l1:SetByIndex()
end
function export:f_box_BlackoutController_9_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_BlackoutController_9()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1266746450", "1266746450", "S04M040_SCR_Main", "box_BlackoutController_9.BlackoutStarted", "box_BlackoutController_9.StartBackup", clone, l0)
  l0:StartBackup()
end
function export:f_box_TriggerMonitor_v2_16_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialogOnSoundPoint_52
  l0.Entity = self.Sound_Point_CentralCommand_2
  l0.SoundId = "soundbinary/254597174.bnk"
  l0 = self.box_TriggerMonitor_v2_16
  l1 = self.box_PlayDialogOnSoundPoint_52
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|226568162", "226568162", "S04M040_SCR_Main", "box_TriggerMonitor_v2_16.Disabled", "box_PlayDialogOnSoundPoint_52.Play", l0, l1)
  l1:Play()
end
function export:f_box_TriggerMonitor_v2_16_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_16()
  l0 = self.box_TriggerMonitor_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1175291578", "1175291578", "S04M040_SCR_Main", "box_TriggerMonitor_v2_16.Enter", "box_TriggerMonitor_v2_16.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_CinematicPrep_14_PreOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372053647796082"
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
  l0._name = "box_Lanes_Restrictions_Control_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1402742883"
  l0.Out = self.f_box_Lanes_Restrictions_Control_15_Out
  l0 = self.box_CinematicPrep_14
  l1 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|791485204", "791485204", "S04M040_SCR_Main", "box_CinematicPrep_14.PreOut", "box_Lanes_Restrictions_Control_15.In", l0, l1)
  l1:In()
end
function export:OnEnter_box_BlackoutController_27()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = "9223372056399119996"
  l0.Radius = 35
  l0.PropagationSpeed = 35
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0._name = "box_BlackoutController_27"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|585713547"
  l0.BlackoutStarted = self.f_box_BlackoutController_27_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = self.f_box_BlackoutController_27_BackupStarted
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_MaterialController_30()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372069558625587"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|588100660"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_21()
  local l0
  l0 = self.box_TriggerMonitor_v2_21
  l0.Trigger = "9223372050957537396"
  l0.AutoDisable = 1
end
function export:OnEnter_box_MaterialController_31()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372058075932602"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_31"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|895524171"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
end
function export:OnEnter_box_MaterialController_29()
  local l0
  l0 = Boxes[PathID("domino/System/MaterialController.lua")]
  l0.Entity = "9223372049886752296"
  l0.Index = 0
  l0.ParameterName = nil
  l0.R = nil
  l0.G = nil
  l0.B = nil
  l0.Time = nil
  l0._graph = self
  l0._name = "box_MaterialController_29"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1037807792"
  l0.ByIndexSet = DummyFunction
  l0.ByIndexReset = DummyFunction
  l0.ParameterSet = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_22()
  local l0
  l0 = self.box_TriggerMonitor_v2_22
  l0.Trigger = "9223372050957537404"
  l0.AutoDisable = 1
end
function export:OnEnter_box_BlackoutController_9()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = "9223372056399119996"
  l0.Radius = 35
  l0.PropagationSpeed = 35
  l0.RecoverySpeed = nil
  l0.Duration = -1
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0._name = "box_BlackoutController_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M040\\S04M040_SCR.domino|@S04M040_SCR_Main|1838597299"
  l0.BlackoutStarted = self.f_box_BlackoutController_9_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:OnEnter_box_TriggerMonitor_v2_16()
  local l0
  l0 = self.box_TriggerMonitor_v2_16
  l0.Trigger = "9223372050957537385"
  l0.AutoDisable = 1
end
function export:Out()
end
function export:OutStopBlackOut()
end
function export:OutStartBlackOut()
end
_compilerVersion = 4
