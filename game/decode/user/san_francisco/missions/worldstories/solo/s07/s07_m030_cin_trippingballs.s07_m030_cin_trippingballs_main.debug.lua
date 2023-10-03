export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2025560896.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1284439816.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3396338087.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S07_M030_CIN_TrippingBalls_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.CLO_BBQ = nil
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|53794732"
  l0.Started = self.f_box_PlaySequence_v5_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_2_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_2_Finished
  self.box_CLOController_11 = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self.box_CLOController_11
  l0._graph = self
  l0._name = "box_CLOController_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|547127984"
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_box_CLOController_11_OnUserInPlace
  self.box_Timer_v2_9 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_9
  l0._graph = self
  l0._name = "box_Timer_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|620846058"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_9_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_OnceOnly_v3_7 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_7
  l0._graph = self
  l0._name = "box_OnceOnly_v3_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|910950025"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_7_Out
  l0.ResetOut = DummyFunction
  self.box_PlaySound_v2_17 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_17
  l0._graph = self
  l0._name = "box_PlaySound_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1064850992"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_18 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_18
  l0._graph = self
  l0._name = "box_Timer_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1259610567"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_18_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1497737700"
  l0.Out = self.f_box_PlaySound_v2_15_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySound_v2_14 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_14
  l0._graph = self
  l0._name = "box_PlaySound_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1552615921"
  l0.Out = self.f_box_PlaySound_v2_14_Out
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MultipleOR_19 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_19
  l0._graph = self
  l0._name = "box_MultipleOR_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1703098727"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_19_Out
  self.box_Timer_v2_10 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_10
  l0._graph = self
  l0._name = "box_Timer_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1820583972"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_10_TimeElapsed
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
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|356731046"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_12_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_12_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|985218707", "985218707", "S07_M030_CIN_TrippingBalls_Main", "In", "box_Ordered_Output_12.In", self, l0)
  l0:In()
end
function export:f_box_PlaySequence_v5_2_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|842261860", "842261860", "S07_M030_CIN_TrippingBalls_Main", "box_PlaySequence_v5_2.Finished", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_2_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_7()
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_OnceOnly_v3_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|203539264", "203539264", "S07_M030_CIN_TrippingBalls_Main", "box_PlaySequence_v5_2.Skipped", "box_OnceOnly_v3_7.In", l0, l1)
  l1:In(0)
end
function export:f_box_PlaySequence_v5_2_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_14
  l0.SoundId = "soundbinary/3396338087.bnk"
  l0 = self.box_PlaySequence_v5_2
  l1 = self.box_PlaySound_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|2084959623", "2084959623", "S07_M030_CIN_TrippingBalls_Main", "box_PlaySequence_v5_2.Started", "box_PlaySound_v2_14.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_9
  l0.Seconds = 3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|5359155", "5359155", "S07_M030_CIN_TrippingBalls_Main", "box_Ordered_Output_12.Out", "box_Timer_v2_9.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CLOController_11
  l0.CLO = "9223372050064228152"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|775887083", "775887083", "S07_M030_CIN_TrippingBalls_Main", "box_Ordered_Output_12.Out", "box_CLOController_11.Activate", clone, l0)
  l0:Activate()
end
function export:f_box_CLOController_11_OnUserInPlace()
  local l0, l1
  self = self._graph
  l0 = self.box_CLOController_11
  self.CLO_BBQ = l0.UserID
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.CLO_BBQ
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1327387078"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_CLOController_11
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1644619021", "1644619021", "S07_M030_CIN_TrippingBalls_Main", "box_CLOController_11.OnUserInPlace", "box_VisibilityController_v2_13.Hide", l0, l1)
  l1:Hide()
end
function export:f_box_Timer_v2_9_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372047235790106"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_TrippingBalls_CIN/s07_trippingballs_cin.seq"
  l0 = self.box_Timer_v2_9
  l1 = self.box_PlaySequence_v5_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1982561658", "1982561658", "S07_M030_CIN_TrippingBalls_Main", "box_Timer_v2_9.TimeElapsed", "box_PlaySequence_v5_2.Start", l0, l1)
  l1:Start()
end
function export:f_box_OnceOnly_v3_7_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1591942811"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_16_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_16_Out_1
  l0 = self.box_OnceOnly_v3_7
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1386825853", "1386825853", "S07_M030_CIN_TrippingBalls_Main", "box_OnceOnly_v3_7.Out", "box_Ordered_Output_16.In", l0, l1)
  l1:In()
end
function export:f_box_Timer_v2_18_TimeElapsed()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_Timer_v2_18
  l1 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|2122254764", "2122254764", "S07_M030_CIN_TrippingBalls_Main", "box_Timer_v2_18.TimeElapsed", "box_MultipleOR_19.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_PlaySound_v2_15_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_Timer_v2_18
  l0.Seconds = 124
  l0 = self.box_PlaySound_v2_15
  l1 = self.box_Timer_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1320343696", "1320343696", "S07_M030_CIN_TrippingBalls_Main", "box_PlaySound_v2_15.Out", "box_Timer_v2_18.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySound_v2_14_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_15
  l0.SoundId = "soundbinary/2025560896.bnk"
  l0 = self.box_PlaySound_v2_14
  l1 = self.box_PlaySound_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1546667743", "1546667743", "S07_M030_CIN_TrippingBalls_Main", "box_PlaySound_v2_14.Out", "box_PlaySound_v2_15.Play", l0, l1)
  l1:Play()
end
function export:f_box_Ordered_Output_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|214987092", "214987092", "S07_M030_CIN_TrippingBalls_Main", "box_Ordered_Output_16.Out", "box_Timer_v2_10.Start", clone, l0)
  l0:Start()
end
function export:f_box_Ordered_Output_16_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_19()
  l0 = self.box_MultipleOR_19
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|440417705", "440417705", "S07_M030_CIN_TrippingBalls_Main", "box_Ordered_Output_16.Out", "box_MultipleOR_19.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_MultipleOR_19_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_17
  l0.SoundId = "soundbinary/1284439816.bnk"
  l0 = self.box_MultipleOR_19
  l1 = self.box_PlaySound_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1029885474", "1029885474", "S07_M030_CIN_TrippingBalls_Main", "box_MultipleOR_19.Out", "box_PlaySound_v2_17.Play", l0, l1)
  l1:Play()
end
function export:f_box_Timer_v2_10_TimeElapsed()
  local l0
  self = self._graph
  l0 = self.box_Timer_v2_10
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S07\\s07_m030_cin_trippingballs.domino|@S07_M030_CIN_TrippingBalls_Main|1063179657", "1063179657", "S07_M030_CIN_TrippingBalls_Main", "box_Timer_v2_10.TimeElapsed", "Out", l0, self)
  self:Out()
end
function export:OnEnter_box_OnceOnly_v3_7()
end
function export:OnEnter_box_MultipleOR_19()
end
function export:Out()
end
_compilerVersion = 4
