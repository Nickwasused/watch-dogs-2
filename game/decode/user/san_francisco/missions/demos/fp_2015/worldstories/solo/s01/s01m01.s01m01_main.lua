export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/DebugExecuteConsole_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/HackableController.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionLayer_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.Virus_Installed_3rd_house = 0
  self.Virus_Installed_1st_house = 0
  self.Virus_Installed_2nd_house = 0
  self.Spawned_Truck = nil
  self.ProximityTrigger_245 = "9223372043682471110"
  self.DynamicObjectiveSpawner_0 = "9223372043527436090"
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = self.f_4_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[17] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0.Loaded = self.f_17_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[19] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[19]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_19_PostOut
  self[18] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[18]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_18_Out
  self[15] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[15]
  l0._graph = self
  l0.Out = self.f_15_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[14] = cbox:CreateBox("domino/System/HackableController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.ProfileAssigned = DummyFunction
  l0.ProfileReset = DummyFunction
  l0.ProfilingEnabled = DummyFunction
  l0.ProfilingDisabled = DummyFunction
  l0.OccludableSet = DummyFunction
  l0.HackForced = self.f_14_HackForced
  l0.NoTextSet = DummyFunction
  l0.OverrideHackingTextSet = DummyFunction
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
  l0 = self[17]
  l0.LayerName = "FP_S01M01_Main"
  l0:Load()
end
function export:In()
  local l0
  l0 = self[4]
  l0.LayerName = "FP_S01M01_Main"
  l0:Load()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[19]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_9_Executed()
  local l0
  self = self._graph
  l0 = self[14]
  l0.HackableEntity = "9223372043682511532"
  l0:ForceHack()
end
function export:f_4_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_17_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_19_PostOut()
  local l0
  self = self._graph
  l0 = self[18]
  l0:Input(1)
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = DummyFunction
  l0:In()
end
function export:f_14_HackForced()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "faa_mission_start FP.S01M01_Main_01_GRABnSHOW_VAN_Com-Fort"
  l0._graph = self
  l0.Executed = DummyFunction
  l0:Execute()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[18]
  l0:Input(0)
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/DebugExecuteConsole_v2.lua")]
  l0.Command = "Cheat_hubs_unlocked 1"
  l0._graph = self
  l0.Executed = self.f_9_Executed
  l0:Execute()
end
_compilerVersion = 4
