export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/ParticleFxController_v2.lua")
  cbox:RegisterBox("Domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("Domino/System/TriggerMonitor_v2.lua")
  cbox:LoadResource("soundbinary/1478307489.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self._name = "CheckpointController"
  self._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController"
  self.Disabled = DummyFunction
  self.Triggered = DummyFunction
  self.Enabled = DummyFunction
  self.box_TriggerMonitor_v2_6 = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self.box_TriggerMonitor_v2_6
  l0._graph = self
  l0._name = "box_TriggerMonitor_v2_6"
  l0._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|573138372"
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_box_TriggerMonitor_v2_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self.box_PlaySound_v2_1 = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self.box_PlaySound_v2_1
  l0._graph = self
  l0._name = "box_PlaySound_v2_1"
  l0._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1278322809"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self.box_MapPointController_v3_4 = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self.box_MapPointController_v3_4
  l0._graph = self
  l0._name = "box_MapPointController_v3_4"
  l0._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1797680294"
  l0.Shown = self.f_box_MapPointController_v3_4_Shown
  l0.Hidden = self.f_box_MapPointController_v3_4_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Disable()
  local l0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1000998692", "1000998692", "CheckpointController", "Disable", "Disabled", self, self)
  self:Disabled()
  self:OnEnter_box_MapPointController_v3_4()
  l0 = self.box_MapPointController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1527576977", "1527576977", "CheckpointController", "Disable", "box_MapPointController_v3_4.Hide", self, l0)
  l0:Hide()
end
function export:Enable()
  local l0
  self:OnEnter_box_MapPointController_v3_4()
  l0 = self.box_MapPointController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|2087428560", "2087428560", "CheckpointController", "Enable", "box_MapPointController_v3_4.Show", self, l0)
  l0:Show()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|2135712669", "2135712669", "CheckpointController", "Enable", "Enabled", self, self)
  self:Enabled()
end
function export:f_box_TriggerMonitor_v2_6_Enter()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_2"
  l0._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1906447797"
  l0.Out = self.f_box_Get_Player_ID_2_Out
  l0 = self.box_TriggerMonitor_v2_6
  l1 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|690227370", "690227370", "CheckpointController", "box_TriggerMonitor_v2_6.Enter", "box_Get_Player_ID_2.In", l0, l1)
  l1:In()
  self:OnEnter_box_MapPointController_v3_4()
  l0 = self.box_TriggerMonitor_v2_6
  l1 = self.box_MapPointController_v3_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1325155388", "1325155388", "CheckpointController", "box_TriggerMonitor_v2_6.Enter", "box_MapPointController_v3_4.Hide", l0, l1)
  l1:Hide()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1507880345", "1507880345", "CheckpointController", "box_TriggerMonitor_v2_6.Enter", "Triggered", l0, self)
  self:Triggered()
end
function export:f_box_ParticleFXController_v2_5_Cleaned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_3()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1074998087", "1074998087", "CheckpointController", "box_ParticleFXController_v2_5.Cleaned", "box_ParticleFXController_v2_3.Clean", clone, l0)
  l0:Clean()
end
function export:f_box_ParticleFXController_v2_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_ParticleFXController_v2_3()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|2084627434", "2084627434", "CheckpointController", "box_ParticleFXController_v2_5.Started", "box_ParticleFXController_v2_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_ParticleFXController_v2_3_Cleaned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|120287254", "120287254", "CheckpointController", "box_ParticleFXController_v2_3.Cleaned", "box_TriggerMonitor_v2_6.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_ParticleFXController_v2_3_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_TriggerMonitor_v2_6()
  l0 = self.box_TriggerMonitor_v2_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|751296589", "751296589", "CheckpointController", "box_ParticleFXController_v2_3.Started", "box_TriggerMonitor_v2_6.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MapPointController_v3_4_Hidden()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ParticleFXController_v2_5()
  l0 = self.box_MapPointController_v3_4
  l1 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|2088439281", "2088439281", "CheckpointController", "box_MapPointController_v3_4.Hidden", "box_ParticleFXController_v2_5.Clean", l0, l1)
  l1:Clean()
end
function export:f_box_MapPointController_v3_4_Shown()
  local l0, l1
  self = self._graph
  self:OnEnter_box_ParticleFXController_v2_5()
  l0 = self.box_MapPointController_v3_4
  l1 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|534328471", "534328471", "CheckpointController", "box_MapPointController_v3_4.Shown", "box_ParticleFXController_v2_5.Start", l0, l1)
  l1:Start()
end
function export:f_box_Get_Player_ID_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l1 = self.box_PlaySound_v2_1
  l1.Entity = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_PlaySound_v2_1
  l0.SoundId = "0x00004704"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|855339904", "855339904", "CheckpointController", "box_Get_Player_ID_2.Out", "box_PlaySound_v2_1.Play", clone, l0)
  l0:Play()
end
function export:OnEnter_box_TriggerMonitor_v2_6()
  local l0
  l0 = self.box_TriggerMonitor_v2_6
  l0.Trigger = self.Trigger
end
function export:OnEnter_box_ParticleFXController_v2_5()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.ParticleEmitter2
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_5"
  l0._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|780898857"
  l0.Started = self.f_box_ParticleFXController_v2_5_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = self.f_box_ParticleFXController_v2_5_Cleaned
end
function export:OnEnter_box_ParticleFXController_v2_3()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.ParticleEmitter
  l0._graph = self
  l0._name = "box_ParticleFXController_v2_3"
  l0._elementPathId = "DocumentContainer|..\\library\\common\\CheckpointRace.domino|@CheckpointController|1489908224"
  l0.Started = self.f_box_ParticleFXController_v2_3_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = self.f_box_ParticleFXController_v2_3_Cleaned
end
function export:OnEnter_box_MapPointController_v3_4()
  local l0
  l0 = self.box_MapPointController_v3_4
  l0.MapPoint = self.MapPoint
end
function export:Disabled()
end
function export:Triggered()
end
function export:Enabled()
end
_compilerVersion = 4
