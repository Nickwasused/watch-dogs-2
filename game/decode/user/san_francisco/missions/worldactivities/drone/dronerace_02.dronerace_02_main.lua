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
  self.SongsList = {}
  self.IsReplay = 0
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[14] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = self.f_14_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_14_AllLoaded
  self[23] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[23]
  l0._graph = self
  l0.Enabled = self.f_23_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_23_AllLoaded
  self[5] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[5]
  l0._graph = self
  self[4] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[17] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[17]
  l0._graph = self
  l0.Enabled = self.f_17_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_17_AllLoaded
  self[24] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[24]
  l0._graph = self
  l0.Enabled = self.f_24_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_24_AllLoaded
  self[6] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Loaded = self.f_6_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[25] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_25_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[1]
  l0._graph = self
  l0.OnRaceStarted = self.f_1_OnRaceStarted
  l0.OnRaceStopped = self.f_1_OnRaceStopped
  self[13] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_13_AllLoaded
  self[19] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = self.f_19_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_19_AllLoaded
  self[54] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[54]
  l0._graph = self
  l0.Enabled = self.f_54_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_54_AllLoaded
  self[53] = cbox:CreateBox("domino/System/EntityLoadingMonitor.lua")
  l0 = self[53]
  l0._graph = self
  l0.Enabled = self.f_53_Enabled
  l0.Disabled = DummyFunction
  l0.AllLoaded = self.f_53_AllLoaded
  self[32] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[32]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_32_Unloaded
  l0.Reseted = DummyFunction
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
  l0 = self[2]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[2]
  l0:Input(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.LayerName = "DroneRace_02_Main"
  l0:Load()
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_14_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372967"
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
function export:f_14_Enabled()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Entity = "9223372052020372939"
  l0:Enable()
end
function export:f_23_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232141106"
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
function export:f_23_Enabled()
  local l0
  self = self._graph
  l0 = self[17]
  l0.Entity = "9223372056232141249"
  l0:Enable()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Enable()
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = "9223372052020372995"
  l0:Enable()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Config = "RaceDbConfig.9223372049685035359"
  l0.CinematicSceneEntity = "9223372052542326312"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace02.seq"
  l0:StartRace()
end
function export:f_17_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232141249"
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
function export:f_17_Enabled()
  local l0
  self = self._graph
  self:en_25()
  l0 = self[25]
  l0:Disable()
end
function export:f_24_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232141128"
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
function export:f_24_Enabled()
  local l0
  self = self._graph
  l0 = self[23]
  l0.Entity = "9223372056232141106"
  l0:Enable()
end
function export:f_6_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:In()
end
function export:f_25_Enter()
  local l0
  self = self._graph
  l0 = self[19]
  l0.Entity = "9223372056232140525"
  l0:Enable()
end
function export:f_1_OnRaceStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[32]
  l0.LayerName = "DroneRace_02_Main"
  l0:Unload()
end
function export:f_13_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372939"
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
function export:f_19_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/TriggerController.lua")]
  l0.Trigger = "9223372056232140525"
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
function export:f_19_Enabled()
  local l0
  self = self._graph
  l0 = self[24]
  l0.Entity = "9223372056232141128"
  l0:Enable()
end
function export:f_54_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372981"
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
function export:f_54_Enabled()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Entity = "9223372052020372967"
  l0:Enable()
end
function export:f_53_AllLoaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GateController.lua")]
  l0.GateEntity = "9223372052020372995"
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
function export:f_53_Enabled()
  local l0
  self = self._graph
  l0 = self[54]
  l0.Entity = "9223372052020372981"
  l0:Enable()
end
function export:f_32_Unloaded()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Succeed()
end
function export:en_25()
  local l0
  l0 = self[25]
  l0.Trigger = "9223372053910215785"
end
_compilerVersion = 4
