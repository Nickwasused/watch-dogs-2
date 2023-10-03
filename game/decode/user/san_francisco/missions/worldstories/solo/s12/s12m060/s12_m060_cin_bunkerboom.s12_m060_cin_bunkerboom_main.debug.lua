export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/BlackoutController.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:LoadResource("soundbinary/2186813926.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1048561230.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/4237778492.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/330298433.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1005938687.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S12_M060_CIN_BunkerBoom_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_Timer_v2_46 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_46
  l0._graph = self
  l0._name = "box_Timer_v2_46"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|270907251"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_46_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_75 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_75
  l0._graph = self
  l0._name = "box_PlaySound_v2_75"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|383156578"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_68 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_68
  l0._graph = self
  l0._name = "box_PlaySequence_v5_68"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1028881580"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_68_Finished
  self.box_PlaySound_v2_78 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_78
  l0._graph = self
  l0._name = "box_PlaySound_v2_78"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1344573690"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_76 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_76
  l0._graph = self
  l0._name = "box_PlaySound_v2_76"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1394498166"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_71 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_71
  l0._graph = self
  l0._name = "box_PlaySound_v2_71"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1435332698"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_67 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_67
  l0._graph = self
  l0._name = "box_PlaySound_v2_67"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1452967385"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_73 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_73
  l0._graph = self
  l0._name = "box_Timer_v2_73"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1683972076"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_73_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_72 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_72
  l0._graph = self
  l0._name = "box_Timer_v2_72"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1690272019"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_72_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_Timer_v2_11 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_11
  l0._graph = self
  l0._name = "box_Timer_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1979673678"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_11_TimeElapsed
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
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = 40
  l0.PropagationSpeed = 10
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
  l0._name = "box_BlackoutController_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1789544003"
  l0.BlackoutStarted = self.f_box_BlackoutController_13_BlackoutStarted
  l0.BlackoutStopped = DummyFunction
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1259757179", "1259757179", "S12_M060_CIN_BunkerBoom_Main", "In", "box_BlackoutController_13.StartBlackout", self, l0)
  l0:StartBlackout()
end
function export:f_box_Timer_v2_46_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_77"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1868042551"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_77_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_77_Out_1
  l0 = self.box_Timer_v2_46
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|797800513", "797800513", "S12_M060_CIN_BunkerBoom_Main", "box_Timer_v2_46.TimeElapsed", "box_Ordered_Output_77.In", l0, l1)
  l1:In()
end
function export:f_box_BlackoutController_30_BlackoutStopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|391026674", "391026674", "S12_M060_CIN_BunkerBoom_Main", "box_BlackoutController_30.BlackoutStopped", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_74_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_72
  l0.Seconds = 18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1266398019", "1266398019", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_74.Out", "box_Timer_v2_72.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_74_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_73
  l0.Seconds = 33
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|612694579", "612694579", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_74.Out", "box_Timer_v2_73.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_68_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_46
  l0.Seconds = 1.5
  l0 = self.box_PlaySequence_v5_68
  l1 = self.box_Timer_v2_46
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1943868401", "1943868401", "S12_M060_CIN_BunkerBoom_Main", "box_PlaySequence_v5_68.Finished", "box_Timer_v2_46.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_73_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_76
  l0.SoundId = "soundbinary/330298433.bnk"
  l0 = self.box_Timer_v2_73
  l1 = self.box_PlaySound_v2_76
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1575687665", "1575687665", "S12_M060_CIN_BunkerBoom_Main", "box_Timer_v2_73.TimeElapsed", "box_PlaySound_v2_76.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_72_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_75
  l0.SoundId = "soundbinary/1048561230.bnk"
  l0 = self.box_Timer_v2_72
  l1 = self.box_PlaySound_v2_75
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1360369017", "1360369017", "S12_M060_CIN_BunkerBoom_Main", "box_Timer_v2_72.TimeElapsed", "box_PlaySound_v2_75.Play", l0, l1)
  l1:Play()
end
function export:f_box_BlackoutController_13_BlackoutStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_69"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|2111460129"
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_box_Ordered_Output_69_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_69_Out_1
  l0.Out[2] = self.f_box_Ordered_Output_69_Out_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1181222273", "1181222273", "S12_M060_CIN_BunkerBoom_Main", "box_BlackoutController_13.BlackoutStarted", "box_Ordered_Output_69.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_70_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_68
  l0.SceneEntity = "9223372070800284978"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S12/S12_m020_LenniBunkerBoomSCREENS/s12_m020_lennibunkerboomscreens.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1005492275", "1005492275", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_70.Out", "box_PlaySequence_v5_68.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_70_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_74"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|734845307"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_74_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_74_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1735450192", "1735450192", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_70.Out", "box_Ordered_Output_74.In", clone, l0)
  l0:In()
end
function export:f_box_Ordered_Output_77_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/BlackoutController.lua")]
  l0.Instigator = nil
  l0.Origin = nil
  l0.Radius = nil
  l0.PropagationSpeed = nil
  l0.RecoverySpeed = 10
  l0.Duration = nil
  l0.Special = nil
  l0.PowerGlitchLowFrequency = nil
  l0.PowerGlitchHighFrequency = nil
  l0.PowerGlitchIntensity = nil
  l0.PowerGlitchBlockSize = nil
  l0.PowerGlitchFadeTime = nil
  l0.OnlyAffectsLighting = 1
  l0._graph = self
  l0._name = "box_BlackoutController_30"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|449808009"
  l0.BlackoutStarted = DummyFunction
  l0.BlackoutStopped = self.f_box_BlackoutController_30_BlackoutStopped
  l0.BackupStarted = DummyFunction
  l0.GlobalPowerGlitchStarted = DummyFunction
  l0.GlobalPowerGlitchStopped = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|2102788649", "2102788649", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_77.Out", "box_BlackoutController_30.StopBlackout", clone, l0)
  l0:StopBlackout()
end
function export:f_box_Ordered_Output_77_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_78
  l0.SoundId = "soundbinary/1005938687.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|2130094128", "2130094128", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_77.Out", "box_PlaySound_v2_78.Play", clone, l0)
  l0:Play()
end
function export:f_box_Timer_v2_11_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_70"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1858600999"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_70_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_70_Out_1
  l0 = self.box_Timer_v2_11
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1204378486", "1204378486", "S12_M060_CIN_BunkerBoom_Main", "box_Timer_v2_11.TimeElapsed", "box_Ordered_Output_70.In", l0, l1)
  l1:In()
end
function export:f_box_Ordered_Output_69_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_11
  l0.Seconds = 4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1685213159", "1685213159", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_69.Out", "box_Timer_v2_11.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_69_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_67
  l0.SoundId = "soundbinary/4237778492.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|233421873", "233421873", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_69.Out", "box_PlaySound_v2_67.Play", clone, l0)
  l0:Play()
end
function export:f_box_Ordered_Output_69_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_71
  l0.SoundId = "soundbinary/2186813926.bnk"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_bunkerboom.domino|@S12_M060_CIN_BunkerBoom_Main|1542936748", "1542936748", "S12_M060_CIN_BunkerBoom_Main", "box_Ordered_Output_69.Out", "box_PlaySound_v2_71.Play", clone, l0)
  l0:Play()
end
function export:Out()
end
_compilerVersion = 4
