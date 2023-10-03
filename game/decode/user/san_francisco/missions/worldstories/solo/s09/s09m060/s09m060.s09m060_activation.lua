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
  self.PlayerEntity = "200"
  self[13] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[17] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[14] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = self.f_14_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_14_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[11] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[18] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[18]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_18_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[15] = cbox:CreateBox("domino/System/PlayDialog_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Started = DummyFunction
  l0.ListStarted = DummyFunction
  l0.Finished = DummyFunction
  l0.ListFinished = DummyFunction
  l0.PriorityFailed = DummyFunction
  l0.Interrupted = DummyFunction
  l0.Queued = DummyFunction
  l0.Out = DummyFunction
  self[6] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = self.f_6_Enabled
  l0.Disabled = self.f_6_Disabled
  l0.Enter = self.f_6_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[7] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[7]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[12] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_12_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[2] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_2_Disabled
  l0.Enter = self.f_2_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[1] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[1]
  l0._graph = self
  l0.StartCommunicationOut = self.f_1_StartCommunicationOut
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[16] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = self.f_16_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_16_Enter
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
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:f_14_Enabled()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Trigger = "9223372066653806279"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_14_Enter()
  local l0
  self = self._graph
  l0 = self[13]
  l0.SoundId = "soundbinary/3880672309.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_18_Enter()
  local l0
  self = self._graph
  l0 = self[17]
  l0.SoundId = "soundbinary/1172155001.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = self[7]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347664"
  l0:StartCommunication()
end
function export:f_6_Enabled()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Trigger = "9223372066653806281"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_6_Enter()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Trigger = "9223372066653806283"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_12_Enter()
  local l0
  self = self._graph
  l0 = self[11]
  l0.SoundId = "soundbinary/1029094137.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  l0 = self[1]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347663"
  l0:StartCommunication()
end
function export:f_2_Enter()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_1_StartCommunicationOut()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_16_Enabled()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Trigger = "9223372066653806277"
  l0.AutoDisable = 1
  l0:Enable()
end
function export:f_16_Enter()
  local l0
  self = self._graph
  l0 = self[15]
  l0.SoundId = "soundbinary/2969617410.bnk"
  l0.Queue = 1
  l0.UseFacial = 0
  l0:Start()
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Trigger = "9223372053815361174"
  l0.CheckNow = 1
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.Trigger = "9223372053497402046"
  l0.CheckNow = 1
end
_compilerVersion = 4
