export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M030/S09M030_CIN_MirandaOPD.S09M030_CIN_MirandaOPD_Main.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.LayerMain = "S09M030_Main"
  self.Mission = "MissionList.9223372047132941508"
  self[9] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_9_Unloaded
  l0.Reseted = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = self.f_8_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[2]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M030/S09M030_CIN_MirandaOPD.S09M030_CIN_MirandaOPD_Main.lua")
  l0 = self[4]
  l0._graph = self
  l0.EndCine = self.f_4_EndCine
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[5] = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self[5]
  l0._graph = self
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.AllCheckpointsDisabled = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[3]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[3]
  l0:Input(0)
end
function export:f_9_Unloaded()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Succeed()
end
function export:f_8_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_4_EndCine()
  local l0
  self = self._graph
  l0 = self[5]
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372053009838666"
  l0:StartCommunication()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_5_OnCommunicationFinished()
  local l0
  self = self._graph
  l0 = self[9]
  l0.LayerName = self.LayerMain
  l0:Unload()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[1]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In()
end
_compilerVersion = 4
