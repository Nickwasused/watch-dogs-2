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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M005/s08m005_cin_limpnudleintro.S08M005_CIN_LimpNudleIntro_Main.lua")
  cbox:RegisterBox("domino/System/TeleportPlayerInsideHma.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.HackerSpaceLoader = "9223372047131482396"
  self.MissionLayer = "S08M005_Main"
  self.HackerSpaceLayer = "SF_08_Mission_Central_HMA_Hackerspace"
  self.S08M005_CheckPoint_0 = "9223372054968008568"
  self[6] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[6]
  l0._graph = self
  self[1] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S08/S08M005/s08m005_cin_limpnudleintro.S08M005_CIN_LimpNudleIntro_Main.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[3] = cbox:CreateBox("domino/System/TeleportPlayerInsideHma.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Done = self.f_3_Done
  self[4] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[4]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_4_Unloaded
  l0.Reseted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[8] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Loaded = self.f_8_Loaded
  l0.Unloaded = DummyFunction
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
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:In()
  local l0
  l0 = self[8]
  l0.LayerName = self.MissionLayer
  l0:Load()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.SpawnPoint = self.S08M005_CheckPoint_0
  l0.StandaloneLoader = self.HackerSpaceLoader
  l0.LayerName = self.HackerSpaceLayer
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0.LayerName = self.MissionLayer
  l0:Unload()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:In()
end
function export:f_3_Done()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[9]
  l0:Input(1)
end
function export:f_4_Unloaded()
  local l0
  self = self._graph
  l0 = self[6]
  l0.EndReason = {
    section = "MISSIONS.COMMON.MESSAGES.MISSIONSUCCESS",
    item = "MissionComplete_upper",
    id = "165443"
  }
  l0:Succeed()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_8_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
_compilerVersion = 4
