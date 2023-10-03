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
  cbox:RegisterBox("domino/System/TeleportEntity.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VehicleController.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.SongCount = 0
  self.Hour = 0
  self.SongIndex = 0
  self.SongsList = {}
  self.Car01 = nil
  self.Car02 = nil
  self.Car03 = nil
  self.PoliceCar01 = nil
  self.Firetruck01 = nil
  self.PoliceCar02 = nil
  self.Car04 = nil
  self.Ambulance01 = nil
  self.Car05 = nil
  self[42] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[42]
  l0._graph = self
  l0.Enabled = self.f_42_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_42_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[12] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[12]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_12_Unloaded
  l0.Reseted = DummyFunction
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[48] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[48]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_48_OnUserInPlace
  self[25] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[25]
  l0._graph = self
  l0.Loaded = self.f_25_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[44] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[44]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_44_OnUserInPlace
  self[39] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[39]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_39_OnUserInPlace
  self[49] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0.Enabled = self.f_49_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_49_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[53] = cbox:CreateBox("domino/System/TeleportEntity.lua")
  l0 = self[53]
  l0._graph = self
  l0.Out = DummyFunction
  l0.TeleportDone = self.f_53_TeleportDone
  self[1] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[1]
  l0._graph = self
  l0.OnRaceStarted = self.f_1_OnRaceStarted
  l0.OnRaceStopped = self.f_1_OnRaceStopped
  self[46] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[46]
  l0._graph = self
  l0.Enabled = self.f_46_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_46_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[54] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[54]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_54_OnUserInPlace
  self[20] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[20]
  l0._graph = self
  self[50] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[50]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_50_OnUserInPlace
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
  l0 = self[5]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[5]
  l0:Input(0)
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
  l0.Out = self.f_41_Out
  l0:SetLightsAndSiren()
end
function export:f_42_Enabled()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Enable()
end
function export:f_42_Enter()
  local l0
  self = self._graph
  l0 = self[39]
  l0.CLO = "9223372058706238407"
  l0:Activate()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Config = "RaceDbConfig.9223372057216458050"
  l0.CinematicSceneEntity = "9223372059495809521"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace12.seq"
  l0:StartRace()
end
function export:f_12_Unloaded()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Succeed()
end
function export:f_52_Out()
  local l0
  self = self._graph
  self:en_49()
  l0 = self[49]
  l0:Disable()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[25]
  l0.LayerName = "DroneRace_12_Main"
  l0:Load()
end
function export:f_55_VehicleExploded()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Disable()
end
function export:f_48_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[48]
  self.Car04 = l0.UserID
  self:en_42()
  l0 = self[42]
  l0:Disable()
end
function export:f_25_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0:In()
end
function export:f_44_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[44]
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
  l0.EngineStarted = self.f_45_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:f_51_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.Ambulance01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = "Both"
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_52_Out
  l0:SetLightsAndSiren()
end
function export:f_39_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[39]
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
function export:f_49_Enabled()
  local l0
  self = self._graph
  self:en_46()
  l0 = self[46]
  l0:Enable()
end
function export:f_49_Enter()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car04
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
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_47_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:ExplodeVehicle()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = self[54]
  l0.CLO = "9223372058706239852"
  l0:Activate()
end
function export:f_53_TeleportDone()
  local l0
  self = self._graph
  l0 = self[50]
  l0.CLO = "9223372058706239487"
  l0:Activate()
end
function export:f_1_OnRaceStarted()
  local l0
  self = self._graph
  self:en_42()
  l0 = self[42]
  l0:Enable()
end
function export:f_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[12]
  l0.LayerName = "DroneRace_12_Main"
  l0:Unload()
end
function export:f_46_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_46_Enter()
  local l0
  self = self._graph
  l0 = self[44]
  l0.CLO = "9223372058706238767"
  l0:Activate()
end
function export:f_41_Out()
  local l0
  self = self._graph
  l0 = self[48]
  l0.CLO = "9223372058706239127"
  l0:Activate()
end
function export:f_54_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[54]
  self.Car05 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Car05
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
  l0.EngineStarted = DummyFunction
  l0.VehicleExploded = self.f_55_VehicleExploded
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:ExplodeVehicle()
end
function export:f_47_VehicleExploded()
  local l0
  self = self._graph
  l0 = self[53]
  l0.Entity = self.PoliceCar01
  l0.Destination = "9223372058706239847"
  l0.UseFadeToBlack = 0
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[4]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_45_EngineStarted()
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
  l0.Out = self.f_43_Out
  l0:SetLightsAndSiren()
end
function export:f_50_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[50]
  self.Ambulance01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.Ambulance01
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
  l0.EngineStarted = self.f_51_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:en_42()
  local l0
  l0 = self[42]
  l0.Trigger = "9223372057358567971"
end
function export:en_49()
  local l0
  l0 = self[49]
  l0.Trigger = "9223372057358569626"
end
function export:en_46()
  local l0
  l0 = self[46]
  l0.Trigger = "9223372057358568003"
end
_compilerVersion = 4
