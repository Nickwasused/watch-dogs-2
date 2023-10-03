export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/EntityLoadingMonitor.lua")
  cbox:RegisterBox("domino/System/GateController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  cbox:RegisterBox("domino/System/TriggerController.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Hour = 0
  self[4] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_4_AllLoaded
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[13] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_13_AllLoaded
  self[3] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[12] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = self.f_12_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_12_AllLoaded
  self[17] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_17_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_8_Unloaded
  l0.Reseted = DummyFunction
  self[16] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[16]
  l0._graph = self
  l0.Enabled = self.f_16_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_16_AllLoaded
  self[5] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[5]
  l0._graph = self
  l0.OnRaceStarted = self.f_5_OnRaceStarted
  l0.OnRaceStopped = self.f_5_OnRaceStopped
  self[6] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[6]
  l0._graph = self
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
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
  l0 = self[9]
  l0:Input(0)
end
function export:In()
  local l0
  l0 = self[9]
  l0:Input(1)
end
function export:f_4_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372061701084321"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0:SetDisabled()
end
function export:f_4_Enabled()
  local l0
  self = self._graph
  l0 = self[16]
  l0.Entity = "9223372061701084284"
  l0:Enable()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_13_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372061701084274"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0:Open()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Config = "RaceDbConfig.9223372052943161646"
  l0.CinematicSceneEntity = "9223372059416026383"
  l0.CinematicSequenceFile = "sequences/MotocrossRace/motocrossrace04.seq"
  l0:StartRace()
end
function export:f_12_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372061701084311"
  l0.SetOpen = nil
  l0.Instant = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  l0.IsSet = DummyFunction
  l0.Toggled = DummyFunction
  l0:Open()
end
function export:f_12_Enabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Entity = "9223372061701084274"
  l0:Enable()
end
function export:f_17_Enter()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Entity = "9223372061701084321"
  l0:Enable()
end
function export:f_8_Unloaded()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Succeed()
end
function export:f_16_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372061701084284"
  l0.CheckLookAt = nil
  l0.CheckAngle = nil
  l0.IconZOffset = nil
  l0.OasisId = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.IconOffsetSet = DummyFunction
  l0.CustomOasisIdSet = DummyFunction
  l0.NoInteractionTextSet = DummyFunction
  l0:SetDisabled()
end
function export:f_16_Enabled()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Disable()
end
function export:f_5_OnRaceStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_5_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[8]
  l0.LayerName = "Motocross04_Main"
  l0:Unload()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = "Motocross04_Main"
  l0:Load()
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  self:en_17()
  l0 = self[17]
  l0:Enable()
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Entity = "9223372061701084311"
  l0:Enable()
end
function export:en_17()
  local l0
  l0 = self[17]
  l0.Trigger = "9223372069350301141"
end
_compilerVersion = 4
