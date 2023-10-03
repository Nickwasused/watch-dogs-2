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
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M010/S07_M010_CIN_NviteIntro.S07_M010_CIN_NviteIntro_Main.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.InteractionBox_Test = "9223372046518047701"
  self.InteractionBox01 = "9223372046518047699"
  self.InteractionBox02 = "9223372046518048519"
  self.InteractionBox03 = "9223372046518048517"
  self.CEO_Computer = "9223372046786832654"
  self.OutsideFrontDoor01 = "9223372046786834686"
  self.OutsideFrontDoor02 = "9223372046786835360"
  self.OutsideBackDoor02 = "9223372046786835366"
  self.OutsideBackDoor01 = "9223372046786835364"
  self.OutsideBackDoor03 = "9223372046786835362"
  self.Elevator = "9223372046857693631"
  self.S07M010_Main = "S07M010_Main"
  self[5] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S07/S07M010/S07_M010_CIN_NviteIntro.S07_M010_CIN_NviteIntro_Main.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  self[2] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Loaded = self.f_2_Loaded
  l0.Unloaded = DummyFunction
  l0.Reseted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[4] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[4]
  l0._graph = self
  self[3] = cbox:CreateBox("domino/System/MissionLayer_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Loaded = DummyFunction
  l0.Unloaded = self.f_3_Unloaded
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
  l0 = self[7]
  l0:Input(0)
end
function export:In()
  local l0
  l0 = self[7]
  l0:Input(1)
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.LayerName = self.S07M010_Main
  l0:Unload()
end
function export:f_2_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[6]
  l0.Checkpoint = "CheckPoint_0"
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.LayerName = self.S07M010_Main
  l0:Load()
end
function export:f_3_Unloaded()
  local l0
  self = self._graph
  l0 = self[4]
  l0:Succeed()
end
_compilerVersion = 4
