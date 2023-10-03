export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  cbox:RegisterBox("domino/System/VehicleLightAndSiren_v2.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Hour = 0
  self.SongsList = {}
  self.SongIndex = 0
  self.SongCount = 0
  self.Car01 = nil
  self.Firetruck01 = nil
  self.PoliceCar01 = nil
  self.PoliceCar02 = nil
  self[10] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[1] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_1_Unloaded
  l0.Reseted = DummyFunction
  self[43] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[43]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_43_OnUserInPlace
  self[34] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[34]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_34_OnUserInPlace
  self[41] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0.Enabled = self.f_41_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_41_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = self.f_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[47] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[47]
  l0._graph = self
  l0.Enabled = self.f_47_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = DummyFunction
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[33] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Enabled = self.f_33_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_33_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[19] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[19]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[3]
  l0._graph = self
  l0.OnRaceStarted = self.f_3_OnRaceStarted
  l0.OnRaceStopped = self.f_3_OnRaceStopped
  self[38] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[38]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_38_OnUserInPlace
  self[37] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[37]
  l0._graph = self
  l0.Enabled = self.f_37_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_37_Enter
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
function export:f_31_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Disable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Config = "RaceDbConfig.9223372057216458049"
  l0.CinematicSceneEntity = "9223372059495627902"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace11.seq"
  l0:StartRace()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.LayerName = "DroneRace_11_Main"
  l0:Load()
end
function export:f_1_Unloaded()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Succeed()
end
function export:f_43_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[43]
  self.PoliceCar02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar02
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = self.f_44_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:f_34_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[34]
  self.Firetruck01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Firetruck01
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = self.f_35_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:f_44_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:SetLightsAndSiren()
end
function export:f_35_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Firetruck01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_31_Out
  l0:SetLightsAndSiren()
end
function export:f_41_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_41_Enter()
  local l0
  self = self._graph
  l0 = self[43]
  l0.CLO = "9223372058706057205"
  l0:Activate()
end
function export:f_42_Out()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Disable()
end
function export:f_15_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_39_Out()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Disable()
end
function export:f_40_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:SetLightsAndSiren()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[10]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_47_Enabled()
  local l0
  self = self._graph
  self:en_41()
  l0 = self[41]
  l0:Enable()
end
function export:f_33_Enabled()
  local l0
  self = self._graph
  self:en_37()
  l0 = self[37]
  l0:Enable()
end
function export:f_33_Enter()
  local l0
  self = self._graph
  l0 = self[34]
  l0.CLO = "9223372058706055841"
  l0:Activate()
end
function export:f_3_OnRaceStarted()
  local l0
  self = self._graph
  self:en_33()
  l0 = self[33]
  l0:Enable()
end
function export:f_3_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[1]
  l0.LayerName = "DroneRace_11_Main"
  l0:Unload()
end
function export:f_38_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[38]
  self.PoliceCar01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar01
  l0._graph = self
  l0.Out = DummyFunction
  l0.Usable = DummyFunction
  l0.Unusable = DummyFunction
  l0.Destructable = DummyFunction
  l0.Indestructable = DummyFunction
  l0.Deflatable = DummyFunction
  l0.Undeflatable = DummyFunction
  l0.Unmovable = DummyFunction
  l0.Movable = DummyFunction
  l0.EngineBroken = DummyFunction
  l0.EngineShutDown = DummyFunction
  l0.EngineStarted = self.f_40_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:f_37_Enabled()
  local l0
  self = self._graph
  l0 = self[47]
  l0.Trigger = "9223372057824256755"
  l0:Enable()
end
function export:f_37_Enter()
  local l0
  self = self._graph
  l0 = self[38]
  l0.CLO = "9223372058706056041"
  l0:Activate()
end
function export:en_41()
  local l0
  l0 = self[41]
  l0.Trigger = "9223372057824256775"
end
function export:en_33()
  local l0
  l0 = self[33]
  l0.Trigger = "9223372057216458199"
end
function export:en_37()
  local l0
  l0 = self[37]
  l0.Trigger = "9223372057824256747"
end
_compilerVersion = 4
