export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/PlayDialog_v2.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/1029094137.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/1172155001.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/2969617410.bnk", "CSoundResource")
  cbox:LoadResource("soundbinary/3880672309.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "S09M060_Activation"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation"
  self.PlayerEntity = "200"
  self.box_PlayDialog_v2_13 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_13
  l0._graph = self
  l0._name = "box_PlayDialog_v2_13"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|430543230"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_PlayDialog_v2_17 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_17
  l0._graph = self
  l0._name = "box_PlayDialog_v2_17"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|441550337"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_14 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_14
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_14"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|456954747"
  l0.Enabled = self.f_box_TriggerMonitor_v2_14_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_11 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_11
  l0._graph = self
  l0._name = "box_PlayDialog_v2_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|597557493"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_18 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_18
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_18"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1034229131"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_18_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlayDialog_v2_15 = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self.box_PlayDialog_v2_15
  l0._graph = self
  l0._name = "box_PlayDialog_v2_15"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1485499468"
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1488167231"
  l0.Enabled = self.f_box_TriggerMonitor_v2_6_Enabled
  l0.Disabled = self.f_box_TriggerMonitor_v2_6_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_7 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_7
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1581025519"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_12 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_12
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_12"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1642967856"
  l0.Enabled = self.f_box_TriggerMonitor_v2_12_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_12_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_TriggerMonitor_v2_2 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_2
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1730977380"
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_box_TriggerMonitor_v2_2_Disabled
  l0.Enter = self.f_box_TriggerMonitor_v2_2_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PhoneCommunicationController_1 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_1
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1895454215"
  l0.StartCommunicationOut = self.f_box_PhoneCommunicationController_1_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_TriggerMonitor_v2_16 = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_16
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_16"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|2107961539"
  l0.Enabled = self.f_box_TriggerMonitor_v2_16_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_16_Enter
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
function export:In()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|352879121"
  l0.Out = self.f_box_Get_Player_ID_4_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|425446192", "425446192", "S09M060_Activation", "In", "box_Get_Player_ID_4.In", self, l0)
  l0:In()
end
function export:f_box_Get_Player_ID_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_2()
  l0 = self.box_TriggerMonitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1778085806", "1778085806", "S09M060_Activation", "box_Get_Player_ID_4.Out", "box_TriggerMonitor_v2_2.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_TriggerMonitor_v2_14_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_16
  l0.Trigger = "9223372066653806279"
  l0.AutoDisable = 1
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_TriggerMonitor_v2_16
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|131070891", "131070891", "S09M060_Activation", "box_TriggerMonitor_v2_14.Enabled", "box_TriggerMonitor_v2_16.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_14_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_13
  l0.SoundId = "soundbinary/3880672309.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_TriggerMonitor_v2_14
  l1 = self.box_PlayDialog_v2_13
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|186615278", "186615278", "S09M060_Activation", "box_TriggerMonitor_v2_14.Enter", "box_PlayDialog_v2_13.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_18_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_17
  l0.SoundId = "soundbinary/1172155001.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_TriggerMonitor_v2_18
  l1 = self.box_PlayDialog_v2_17
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1981777958", "1981777958", "S09M060_Activation", "box_TriggerMonitor_v2_18.Enter", "box_PlayDialog_v2_17.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_6_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_7
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347664"
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_PhoneCommunicationController_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|73618743", "73618743", "S09M060_Activation", "box_TriggerMonitor_v2_6.Disabled", "box_PhoneCommunicationController_7.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_6_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_12
  l0.Trigger = "9223372066653806281"
  l0.AutoDisable = 1
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_TriggerMonitor_v2_12
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1840384554", "1840384554", "S09M060_Activation", "box_TriggerMonitor_v2_6.Enabled", "box_TriggerMonitor_v2_12.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_6_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|800642966", "800642966", "S09M060_Activation", "box_TriggerMonitor_v2_6.Enter", "box_TriggerMonitor_v2_6.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_TriggerMonitor_v2_12_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_14
  l0.Trigger = "9223372066653806283"
  l0.AutoDisable = 1
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_TriggerMonitor_v2_14
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|379581183", "379581183", "S09M060_Activation", "box_TriggerMonitor_v2_12.Enabled", "box_TriggerMonitor_v2_14.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_12_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_11
  l0.SoundId = "soundbinary/1029094137.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_TriggerMonitor_v2_12
  l1 = self.box_PlayDialog_v2_11
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1685698745", "1685698745", "S09M060_Activation", "box_TriggerMonitor_v2_12.Enter", "box_PlayDialog_v2_11.Start", l0, l1)
  l1:Start()
end
function export:f_box_TriggerMonitor_v2_2_Disabled()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_1
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347663"
  l0 = self.box_TriggerMonitor_v2_2
  l1 = self.box_PhoneCommunicationController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|797338481", "797338481", "S09M060_Activation", "box_TriggerMonitor_v2_2.Disabled", "box_PhoneCommunicationController_1.StartCommunication", l0, l1)
  l1:StartCommunication()
end
function export:f_box_TriggerMonitor_v2_2_Enter()
  local l0
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_2()
  l0 = self.box_TriggerMonitor_v2_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1887387146", "1887387146", "S09M060_Activation", "box_TriggerMonitor_v2_2.Enter", "box_TriggerMonitor_v2_2.Disable", l0, l0)
  l0:Disable()
end
function export:f_box_PhoneCommunicationController_1_StartCommunicationOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_PhoneCommunicationController_1
  l1 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1532562072", "1532562072", "S09M060_Activation", "box_PhoneCommunicationController_1.StartCommunicationOut", "box_TriggerMonitor_v2_6.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_16_Enabled()
  local l0, l1
  self = self._graph
  l0 = self.box_TriggerMonitor_v2_18
  l0.Trigger = "9223372066653806277"
  l0.AutoDisable = 1
  l0 = self.box_TriggerMonitor_v2_16
  l1 = self.box_TriggerMonitor_v2_18
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|1802671037", "1802671037", "S09M060_Activation", "box_TriggerMonitor_v2_16.Enabled", "box_TriggerMonitor_v2_18.Enable", l0, l1)
  l1:Enable()
end
function export:f_box_TriggerMonitor_v2_16_Enter()
  local l0, l1
  self = self._graph
  l0 = self.box_PlayDialog_v2_15
  l0.SoundId = "soundbinary/2969617410.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0 = self.box_TriggerMonitor_v2_16
  l1 = self.box_PlayDialog_v2_15
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S09\\S09M060\\S09M060.domino|@S09M060_Activation|565088012", "565088012", "S09M060_Activation", "box_TriggerMonitor_v2_16.Enter", "box_PlayDialog_v2_15.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_TriggerMonitor_v2_6()
  local l0
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = "9223372053815361174"
  l0.CheckNow = 1
end
function export:OnEnter_box_TriggerMonitor_v2_2()
  local l0
  l0 = self.box_TriggerMonitor_v2_2
  l0.Trigger = "9223372053497402046"
  l0.CheckNow = 1
end
_compilerVersion = 4
