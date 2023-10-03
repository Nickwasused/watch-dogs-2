export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = "200"
  self[3] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.EnterRadius = self.f_3_EnterRadius
  l0.ExitRadius = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[2]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = DummyFunction
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
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
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[2]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372048421347657"
  l0:StartCommunication()
end
function export:f_3_EnterRadius()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372053942934443"
  l0.Radius = 160
  l0.CheckNow = 1
end
_compilerVersion = 4
