export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/217955354.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S04_M070_SCR_Countdown_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_PlayDialog_v2_4 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_4
  l0._graph = self
  l0._name = "box_PlayDialog_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|789704729"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PhoneCommunicationController_3 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_3
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1418455238"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_5 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_5
  l0._graph = self
  l0._name = "box_Timer_v2_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1646351417"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_6 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_6
  l0._graph = self
  l0._name = "box_Timer_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1774052754"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_6_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  l0 = self.box_Timer_v2_6
  l0.Seconds = 0.7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1878300243", "1878300243", "S04_M070_SCR_Countdown_Main", "In", "box_Timer_v2_6.Start", self, l0)
  l0:Start()
end
function export:InInteractionFinish()
  local l0
  self:OnEnter_box_BlackoutController_1()
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1227005920", "1227005920", "S04_M070_SCR_Countdown_Main", "InInteractionFinish", "box_BlackoutController_1.StartBlackout", self, l0)
  l0:StartBlackout()
end
function export:f_box_BlackoutController_1_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1347206715"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_2_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_2_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|941277210", "941277210", "S04_M070_SCR_Countdown_Main", "box_BlackoutController_1.BlackoutStarted", "box_Ordered_Output_2.In", clone, l0)
  l0:In()
end
function export:f_box_BlackoutController_1_BlackoutStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PhoneCommunicationController_3
  l0.PlayerEntity = self.PlayerEntity
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347586"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1342844617", "1342844617", "S04_M070_SCR_Countdown_Main", "box_BlackoutController_1.BlackoutStopped", "box_PhoneCommunicationController_3.StartCommunication", clone, l0)
  l0:StartCommunication()
end
function export:f_box_Ordered_Output_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|842959482", "842959482", "S04_M070_SCR_Countdown_Main", "box_Ordered_Output_2.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_5
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|2111695333", "2111695333", "S04_M070_SCR_Countdown_Main", "box_Ordered_Output_2.Out", "box_Timer_v2_5.Start", clone, l0)
  l0:Start()
end
function export:f_box_Timer_v2_5_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_BlackoutController_1()
  l0 = self.box_Timer_v2_5
  l1 = Boxes[PathID("domino/System/BlackoutController.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1947028524", "1947028524", "S04_M070_SCR_Countdown_Main", "box_Timer_v2_5.TimeElapsed", "box_BlackoutController_1.StopBlackout", l0, l1)
  l1:StopBlackout()
end
function export:f_box_Timer_v2_6_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_4
  l0.SoundId = "soundbinary/217955354.bnk"
  l0 = self.box_Timer_v2_6
  l1 = self.box_PlayDialog_v2_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|2015935466", "2015935466", "S04_M070_SCR_Countdown_Main", "box_Timer_v2_6.TimeElapsed", "box_PlayDialog_v2_4.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_BlackoutController_1()
  local l0
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = "9223372047986193919"
  l0.Origin = nil
  l0.Radius = 30
  l0.PropagationSpeed = 5
  l0.RecoverySpeed = 10
  l0.Duration = nil
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = nil
  l0._graph = self
  l0._name = "box_BlackoutController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S04\\S04M070\\s04_m070_scr_countdown.domino|@S04_M070_SCR_Countdown_Main|1080869634"
  l0.BlackoutStarted = self.f_box_BlackoutController_1_BlackoutStarted
  l0.BlackoutStopped = self.f_box_BlackoutController_1_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
end
function export:Out()
end
_compilerVersion = 4
