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
  self.SongIndex = 0
  self.SongsList = {}
  self.SongCount = 0
  self.Hour = 0
  self.PoliceCar1 = nil
  self.PoliceBoat1 = nil
  self.PoliceBoat01 = nil
  self.PoliceBoat02 = nil
  self[27] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[27]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_27_Out
  self[3] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[3]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_3_OnUserInPlace
  self[18] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[18]
  l0._graph = self
  self[1] = cbox:CreateBox("domino/Library/singleplayer/Racing/Racing_Helpers.RaceWithCinematic.lua")
  l0 = self[1]
  l0._graph = self
  l0.OnRaceStarted = self.f_1_OnRaceStarted
  l0.OnRaceStopped = self.f_1_OnRaceStopped
  self[8] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[8]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_8_OnUserInPlace
  self[20] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[20]
  l0._graph = self
  l0.Loaded = self.f_20_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[29] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[29]
  l0._graph = self
  l0.Enabled = self.f_29_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_29_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_9_Unloaded
  l0.Reseted = DummyFunction
  self[10] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[10]
  l0._graph = self
  l0.Enabled = self.f_10_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_10_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[30] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[30]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_30_OnUserInPlace
  self[4] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = self.f_4_Enabled
  l0.Disabled = DummyFunction
  l0.Enter = self.f_4_Enter
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
  l0 = self[27]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[27]
  l0:Input(0)
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = self[20]
  l0.LayerName = "DroneRace_14_Main"
  l0:Load()
end
function export:f_31_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Disable()
end
function export:f_11_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceBoat02
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:SetLightsAndSiren()
end
function export:f_3_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[3]
  self.PoliceBoat01 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceBoat01
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
  l0.EngineStarted = self.f_5_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:f_1_OnRaceStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:f_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self[9]
  l0.LayerName = "DroneRace_14_Main"
  l0:Unload()
end
function export:f_23_Out()
  local l0
  self = self._graph
  self:en_29()
  l0 = self[29]
  l0:Enable()
end
function export:f_5_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceBoat01
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:SetLightsAndSiren()
end
function export:f_35_EngineStarted()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/VehicleLightAndSiren_v2.lua")]
  l0.Vehicle = self.PoliceCar1
  l0.EmergencyLightOn = 1
  l0.HighBeamLightOn = nil
  l0.FlasherOn = 1
  l0.FlasherSelection = "Both"
  l0.SpotlightOn = 1
  l0.SpotlightSelection = nil
  l0.SpotlightTarget = nil
  l0.SirenOn = 0
  l0._graph = self
  l0.Out = self.f_31_Out
  l0:SetLightsAndSiren()
end
function export:f_8_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[8]
  self.PoliceBoat02 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceBoat02
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
  l0.EngineStarted = self.f_11_EngineStarted
  l0.VehicleExploded = DummyFunction
  l0.VehicleAlarmHackOn = DummyFunction
  l0.VehicleAlarmHackOff = DummyFunction
  l0:StartEngine()
end
function export:f_20_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:f_29_Enabled()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Enable()
end
function export:f_29_Enter()
  local l0
  self = self._graph
  l0 = self[30]
  l0.CLO = "9223372058496933850"
  l0:Activate()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Config = "RaceDbConfig.9223372057657398418"
  l0.CinematicSceneEntity = "9223372059495628102"
  l0.CinematicSequenceFile = "sequences/DroneRaces/dronerace14.seq"
  l0:StartRace()
end
function export:f_9_Unloaded()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Succeed()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_10()
  l0 = self[10]
  l0:Disable()
end
function export:f_2_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Disable()
end
function export:f_10_Enabled()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Enable()
end
function export:f_10_Enter()
  local l0
  self = self._graph
  l0 = self[8]
  l0.CLO = "9223372070572139094"
  l0:Activate()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[6]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_30_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[30]
  self.PoliceCar1 = l0.UserID
  l0 = Boxes[PathID("domino/System/VehicleController.lua")]
  l0.Vehicle = self.PoliceCar1
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
function export:f_4_Enabled()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_4_Enter()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CLO = "9223372070572138909"
  l0:Activate()
end
function export:en_29()
  local l0
  l0 = self[29]
  l0.Trigger = "9223372057657398362"
end
function export:en_10()
  local l0
  l0 = self[10]
  l0.Trigger = "9223372057657398368"
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.Trigger = "9223372057657398380"
end
_compilerVersion = 4
