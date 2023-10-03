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
  self.Disabled = DummyFunction
  self.Triggered = DummyFunction
  self.Enabled = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[1] = cbox:CreateBox("Domino/System/PlaySound_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
  self[4] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0.Shown = self.f_4_Shown
  l0.Hidden = self.f_4_Hidden
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
  self:Disabled()
  self:en_4()
  l0 = self[4]
  l0:Hide()
end
function export:Enable()
  local l0
  self:en_4()
  l0 = self[4]
  l0:Show()
  self:Enabled()
end
function export:f_6_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
  self:en_4()
  l0 = self[4]
  l0:Hide()
  self:Triggered()
end
function export:f_5_Cleaned()
  local l0
  self = self._graph
  self:en_3()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Clean()
end
function export:f_5_Started()
  local l0
  self = self._graph
  self:en_3()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_3_Cleaned()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_3_Started()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_4_Hidden()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Clean()
end
function export:f_4_Shown()
  local l0
  self = self._graph
  self:en_5()
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0:Start()
end
function export:f_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l1 = self[1]
  l1.Entity = l0.PlayerID
  l1.SoundId = "0x00004704"
  l1:Play()
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Trigger = self.Trigger
end
function export:en_5()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.ParticleEmitter2
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = self.f_5_Cleaned
end
function export:en_3()
  local l0
  l0 = Boxes[PathID("Domino/System/ParticleFxController_v2.lua")]
  l0.ParticleEmitter = self.ParticleEmitter
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Paused = DummyFunction
  l0.Stopped = DummyFunction
  l0.Cleaned = self.f_3_Cleaned
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MapPoint = self.MapPoint
end
function export:Disabled()
end
function export:Triggered()
end
function export:Enabled()
end
_compilerVersion = 4
