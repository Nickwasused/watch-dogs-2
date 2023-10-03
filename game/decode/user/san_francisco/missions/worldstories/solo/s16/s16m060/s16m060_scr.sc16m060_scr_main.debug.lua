export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/Bind_v2.lua")
  cbox:RegisterBox("domino/System/CameraShakeController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/3953468137.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "sc16m060_SCR_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main"
  self.out = DummyFunction
  self.DroneUnspawned = DummyFunction
  self.PlayerEntity = nil
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|595054857"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_12_Enter
  l0.Leave = self.f_box_TriggerMonitor_v2_12_Leave
  l0.Use = DummyFunction
  self.box_PlaySequence_v5_5 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_5
  l0._graph = self
  l0._name = "box_PlaySequence_v5_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|640620961"
  l0.Started = self.f_box_PlaySequence_v5_5_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_8 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_8
  l0._graph = self
  l0._name = "box_PlaySequence_v5_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|916053294"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_PlaySequence_v5_3 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_3
  l0._graph = self
  l0._name = "box_PlaySequence_v5_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1116010632"
  l0.Started = self.f_box_PlaySequence_v5_3_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = self.f_box_PlaySequence_v5_3_Finished
  self.box_Camera_Shake_Controller_13 = cbox:CreateBox("domino/System/CameraShakeController.lua")
  l0 = self.box_Camera_Shake_Controller_13
  l0._graph = self
  l0._name = "box_Camera_Shake_Controller_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1261341926"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Finished = DummyFunction
  l0.Out = DummyFunction
  self.box_PlaySequence_v5_2 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_2
  l0._graph = self
  l0._name = "box_PlaySequence_v5_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1993209716"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = DummyFunction
  l0.Finished = DummyFunction
  self.box_Timer_v2_4 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_4
  l0._graph = self
  l0._name = "box_Timer_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|2012162329"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_4_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self.box_PlaySound_v2_15 = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_15
  l0._graph = self
  l0._name = "box_PlaySound_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|2111703155"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:DroneTimerStarted()
  local l0
  l0 = self.box_Timer_v2_4
  l0.Seconds = 6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|898362121", "898362121", "sc16m060_SCR_Main", "DroneTimerStarted", "box_Timer_v2_4.Start", self, l0)
  l0:Start()
end
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|817605743"
  l0.Out = self.f_box_Get_Player_ID_1_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1227369679", "1227369679", "sc16m060_SCR_Main", "In", "box_Get_Player_ID_1.In", self, l0)
  l0:In()
end
function export:StartLights()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1875595435"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_14_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_14_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1655856895", "1655856895", "sc16m060_SCR_Main", "StartLights", "box_Ordered_Output_14.In", self, l0)
  l0:In()
end
function export:UnspawnDrone()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|513035493"
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = self.f_box_VisibilityController_v2_6_Hidden
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1765479602", "1765479602", "sc16m060_SCR_Main", "UnspawnDrone", "box_VisibilityController_v2_6.Hide", self, l0)
  l0:Hide()
end
function export:f_box_VisibilityController_v2_7_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_3
  l0.SceneEntity = "9223372060813328849"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_BigFootArrival/s16_scr_bigfootarrival.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|853257931", "853257931", "sc16m060_SCR_Main", "box_VisibilityController_v2_7.Shown", "box_PlaySequence_v5_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_VisibilityController_v2_6_Hidden()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|158488843", "158488843", "sc16m060_SCR_Main", "box_VisibilityController_v2_6.Hidden", "DroneUnspawned", clone, self)
  self:DroneUnspawned()
end
function export:f_box_TriggerMonitor_v2_12_Enter()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Camera_Shake_Controller_13()
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_Camera_Shake_Controller_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|695893891", "695893891", "sc16m060_SCR_Main", "box_TriggerMonitor_v2_12.Enter", "box_Camera_Shake_Controller_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_12_Leave()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Camera_Shake_Controller_13()
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_Camera_Shake_Controller_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1765031995", "1765031995", "sc16m060_SCR_Main", "box_TriggerMonitor_v2_12.Leave", "box_Camera_Shake_Controller_13.Stop", l0, l1)
  l1:Stop()
end
function export:f_box_PlaySequence_v5_5_Started()
  local l0
  self = self._graph
  l0 = self.box_PlaySequence_v5_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1027615211", "1027615211", "sc16m060_SCR_Main", "box_PlaySequence_v5_5.Started", "out", l0, self)
  self:out()
end
function export:f_box_Bind_v2_11_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySequence_v5_8
  l0.SceneEntity = "9223372067983615241"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_Lights/s16_scr_lights.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1709280395", "1709280395", "sc16m060_SCR_Main", "box_Bind_v2_11.Bound", "box_PlaySequence_v5_8.Start", clone, l0)
  l0:Start()
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
  l0 = self.box_PlaySequence_v5_2
  l0.SceneEntity = "9223372056622257601"
  l0.SequenceFile = "sequences/ScriptedEvents/s16_m060_sailandtalk_recording.seq"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1125208394", "1125208394", "sc16m060_SCR_Main", "box_Get_Player_ID_1.Out", "box_PlaySequence_v5_2.Start", clone, l0)
  l0:Start()
end
function export:f_box_PlaySequence_v5_3_Finished()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_5
  l0.SceneEntity = "9223372060813328853"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S16/S16_SCR_BigFootStationary/s16_scr_bigfootstationary.seq"
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_PlaySequence_v5_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1198163643", "1198163643", "sc16m060_SCR_Main", "box_PlaySequence_v5_3.Finished", "box_PlaySequence_v5_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_PlaySequence_v5_3_Started()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySound_v2_15
  l0.Entity = "9223372065263966442"
  l0.SoundId = "soundbinary/3953468137.bnk"
  l0 = self.box_PlaySequence_v5_3
  l1 = self.box_PlaySound_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|236162117", "236162117", "sc16m060_SCR_Main", "box_PlaySequence_v5_3.Started", "box_PlaySound_v2_15.Play", l0, l1)
  l1:Play()
end
function export:f_box_Bind_v2_9_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372067203213880"
  l0.Child = "9223372067203213882"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|2037056092"
  l0.Bound = self.f_box_Bind_v2_10_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|888859472", "888859472", "sc16m060_SCR_Main", "box_Bind_v2_9.Bound", "box_Bind_v2_10.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Ordered_Output_14_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372067203213872"
  l0.Child = "9223372067203213874"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1638649127"
  l0.Bound = self.f_box_Bind_v2_9_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1524223544", "1524223544", "sc16m060_SCR_Main", "box_Ordered_Output_14.Out", "box_Bind_v2_9.Bind", clone, l0)
  l0:Bind()
end
function export:f_box_Ordered_Output_14_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = "9223372046830378951"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|2115733644", "2115733644", "sc16m060_SCR_Main", "box_Ordered_Output_14.Out", "box_TriggerMonitor_v2_12.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_Timer_v2_4_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = "9223372065263966442"
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0._name = "box_VisibilityController_v2_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|308803608"
  l0.IsSet = DummyFunction
  l0.Shown = self.f_box_VisibilityController_v2_7_Shown
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
  l0 = self.box_Timer_v2_4
  l1 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|1008200204", "1008200204", "sc16m060_SCR_Main", "box_Timer_v2_4.TimeElapsed", "box_VisibilityController_v2_7.Show", l0, l1)
  l1:Show()
end
function export:f_box_Bind_v2_10_Bound()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/Bind_v2.lua")]
  l0.Parent = "9223372067295040518"
  l0.Child = "9223372067295040520"
  l0.BoneName = nil
  l0.BoneNameStr = nil
  l0.RemoveOffset = nil
  l0._graph = self
  l0._name = "box_Bind_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|728352122"
  l0.Bound = self.f_box_Bind_v2_11_Bound
  l0.UnBound = DummyFunction
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S16\\S16M060\\s16m060_scr.domino|@sc16m060_SCR_Main|2033346807", "2033346807", "sc16m060_SCR_Main", "box_Bind_v2_10.Bound", "box_Bind_v2_11.Bind", clone, l0)
  l0:Bind()
end
function export:OnEnter_box_Camera_Shake_Controller_13()
  local l0
  l0 = self.box_Camera_Shake_Controller_13
  l0.CameraAnim = "CameraAnimatedListDB.9223372053054036653"
  l0.Strength = 0
  l0.Attenuation = 0
  l0.Frequency = 0
  l0.XRange = 0
  l0.YRange = 0
  l0.ZRange = 0
  l0.Pitch = 0
  l0.Roll = 0
  l0.Yaw = 0
  l0.FadeOutTime = 0
  l0.Duration = 0
end
function export:out()
end
function export:DroneUnspawned()
end
_compilerVersion = 4
