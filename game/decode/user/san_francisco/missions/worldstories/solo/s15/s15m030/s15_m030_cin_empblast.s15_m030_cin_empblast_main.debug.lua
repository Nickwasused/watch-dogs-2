export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/NetworkSurfingController.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/1482453689.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1718030586.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/832682248.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S15_M030_CIN_EMPBlast_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySound_v2_10 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_10
  l0._graph = self
  l0._name = "box_PlaySound_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|898974450"
  l0.Out = self.f_box_PlaySound_v2_10_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|992966042"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_13 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_13
  l0._graph = self
  l0._name = "box_PlaySound_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1078848228"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_SnapAndBind_7 = cbox:CreateBox("domino/Library/common/SnapAndBind.SnapAndBind.debug.lua")
  l0 = self.box_SnapAndBind_7
  l0._graph = self
  l0._name = "box_SnapAndBind_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1304948257"
  l0.Attached = self.f_box_SnapAndBind_7_Attached
  self.box_OnceOnly_v3_2 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1498807394"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_6 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_6
  l0._graph = self
  l0._name = "box_PlaySound_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1671438515"
  l0.Out = self.f_box_PlaySound_v2_6_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Network_Surfing_Controller_12 = cbox:CreateBox("domino/System/NetworkSurfingController.lua")
  l0 = self.box_Network_Surfing_Controller_12
  l0._graph = self
  l0._name = "box_Network_Surfing_Controller_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1744807324"
  l0.Activated = DummyFunction
  l0.Deactivated = self.f_box_Network_Surfing_Controller_12_Deactivated
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|2000107388"
  l0._DynamicAnchors = {
    SPOut = {"SkipCin"}
  }
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_3_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
  l0.SPOut.SkipCin = self.f_box_PlaySequence_v5_3_SPOut__SkipCin_
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|2091425609"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|2137270516"
  l0.PreOut = self.f_box_CinematicPrep_1_PreOut
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
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|2091599734", "2091599734", "S15_M030_CIN_EMPBlast_Main", "In", "box_CinematicPrep_1.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_4
  l0.Seconds = 0.25
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1368680453", "1368680453", "S15_M030_CIN_EMPBlast_Main", "box_Ordered_Output_9.Out", "box_Timer_v2_4.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_10
  l0.SoundId = "soundbinary/1718030586.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1083862435", "1083862435", "S15_M030_CIN_EMPBlast_Main", "box_Ordered_Output_9.Out", "box_PlaySound_v2_10.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_9_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_6
  l0.SoundId = "soundbinary/1482453689.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1544505817", "1544505817", "S15_M030_CIN_EMPBlast_Main", "box_Ordered_Output_9.Out", "box_PlaySound_v2_6.Play", clone, l0)
  l0:Play()
end
function export:f_box_ParticleFXController_v2_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|149285236"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_9_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|598290284", "598290284", "S15_M030_CIN_EMPBlast_Main", "box_ParticleFXController_v2_5.Started", "box_Ordered_Output_9.In", clone, l0)
  l0:In()
end
function export:f_box_PlaySound_v2_10_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_10
  l1 = self.box_Timer_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1439427558", "1439427558", "S15_M030_CIN_EMPBlast_Main", "box_PlaySound_v2_10.Out", "box_Timer_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_13
  l0.SoundId = "soundbinary/832682248.bnk"
  l0 = self.box_Timer_v2_11
  l1 = self.box_PlaySound_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|694088603", "694088603", "S15_M030_CIN_EMPBlast_Main", "box_Timer_v2_11.TimeElapsed", "box_PlaySound_v2_13.Play", l0, l1)
  l1:Play()
end
function export:f_box_SnapAndBind_7_Attached()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = "9223372064793130943"
  l0.ParticleEmitterList = nil
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|157981336"
  l0.Started = self.f_box_ParticleFXController_v2_5_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = DummyFunction
  l0 = self.box_SnapAndBind_7
  l1 = Boxes[PathID("domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1699656736", "1699656736", "S15_M030_CIN_EMPBlast_Main", "box_SnapAndBind_7.Attached", "box_ParticleFXController_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|645779632", "645779632", "S15_M030_CIN_EMPBlast_Main", "box_OnceOnly_v3_2.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_PlaySound_v2_6_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = self.WrenchJR_Var
  l0.Origin = self.WrenchJR_Var
  l0.Radius = 5
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = nil
  l0.Duration = 5
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0._name = "box_BlackoutController_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1836125501"
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_PlaySound_v2_6
  l1 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1242016786", "1242016786", "S15_M030_CIN_EMPBlast_Main", "box_PlaySound_v2_6.Out", "box_BlackoutController_8.StartBlackout", l0, l1)
  l1:StartBlackout()
end
function export:f_box_Network_Surfing_Controller_12_Deactivated()
  local l0, l1
  self = self._graph
  l0 = self.box_SnapAndBind_7
  l0.Parent = self.WrenchJR_Var
  l0.Child = "9223372064793130943"
  l0 = self.box_Network_Surfing_Controller_12
  l1 = self.box_SnapAndBind_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|2042673225", "2042673225", "S15_M030_CIN_EMPBlast_Main", "box_Network_Surfing_Controller_12.Deactivated", "box_SnapAndBind_7.Attach", l0, l1)
  l1:Attach()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|104544625", "104544625", "S15_M030_CIN_EMPBlast_Main", "box_PlaySequence_v5_3.Finished", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_3_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|818345089", "818345089", "S15_M030_CIN_EMPBlast_Main", "box_PlaySequence_v5_3.Skipped", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_3_SPOut__SkipCin_()
  local l0
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_3()
  l0 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|28725411", "28725411", "S15_M030_CIN_EMPBlast_Main", "box_PlaySequence_v5_3.SPOut", "box_PlaySequence_v5_3.Skip", l0, l0)
  l0:Skip()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_PlaySequence_v5_3()
  l0 = self.box_Timer_v2_4
  l1 = self.box_PlaySequence_v5_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|1571938257", "1571938257", "S15_M030_CIN_EMPBlast_Main", "box_Timer_v2_4.TimeElapsed", "box_PlaySequence_v5_3.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_1_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_1
  l1 = self.box_Network_Surfing_Controller_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S15\\S15M030\\s15_m030_cin_empblast.domino|@S15_M030_CIN_EMPBlast_Main|372429988", "372429988", "S15_M030_CIN_EMPBlast_Main", "box_CinematicPrep_1.PreOut", "box_Network_Surfing_Controller_12.Deactivate", l0, l1)
  l1:Deactivate()
end
function export:OnEnter_box_OnceOnly_v3_2()
end
function export:OnEnter_box_PlaySequence_v5_3()
  local l0
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372064420804020"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S15/s15_empblast_wrenchjr_fx.seq"
end
function export:Out()
end
_compilerVersion = 4
