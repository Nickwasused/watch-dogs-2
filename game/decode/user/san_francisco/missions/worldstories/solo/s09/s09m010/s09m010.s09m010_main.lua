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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M010/s09m010_cin_911intro.S09M010_CIN_911Intro_Main.lua")
end
function export:Init(cbox)
  local l0
  self.Mission = "MissionList.9223372047132941507"
  self.LayerMain = "S09M010_Main"
  self.PlayerEntity = nil
  self[1] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[1]
  l0._graph = self
  self[5] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_5_Unloaded
  l0.Reseted = DummyFunction
  self[69] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[69]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_69_Out
  self[3] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[15] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[15]
  l0._graph = self
  l0.Loaded = self.f_15_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[4] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S09/S09M010/s09m010_cin_911intro.S09M010_CIN_911Intro_Main.lua")
  l0 = self[4]
  l0._graph = self
  l0.EndCine = self.f_4_EndCine
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
  l0 = self[69]
  l0:Input(1)
end
function export:In()
  local l0
  l0 = self[69]
  l0:Input(0)
end
function export:f_5_Unloaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Succeed()
end
function export:f_56_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[3]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0.LayerName = self.LayerMain
  l0:Load()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In()
end
function export:f_15_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_56_Out
  l0:In()
end
function export:f_4_EndCine()
  local l0
  self = self._graph
  l0 = self[5]
  l0.LayerName = self.LayerMain
  l0:Unload()
end
_compilerVersion = 4
