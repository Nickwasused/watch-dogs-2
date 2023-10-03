export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.HoratioInstance = nil
  self.BusInstance = nil
  self.player = nil
  self.MissionLayer = "S08M010_Main"
  self.s08m010_MissionArea_NudleBuildings = "9223372057227390115"
  self.ProximityTrigger_ServerFarm_RCLimit = "9223372068184316365"
  self[3] = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[11] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[1] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[1]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_1_PostOut
  self[5] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[20] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[20]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_20_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Checkpoint()
  local l0
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FadeFromBlack
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_19_A_is_True
  l0.A_is_False = self.f_19_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:GameFlow()
  local l0
  l0 = self[2]
  l0:Input(0)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.player = l0.PlayerID
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.player
  l0._graph = self
  l0.Out = self.f_39_Out
  l0:FromEntity()
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Player = l0.Target
  l0 = self[11]
  l0.Checkpoint = self.CheckPointName
  l0:In()
end
function export:f_4_A_is_False()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_4_A_is_True()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.EnableNudleMissionArea
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_4_A_is_True
  l0.A_is_False = self.f_4_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_1_PostOut()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(0)
end
function export:f_5_Out()
  self = self._graph
  self:Out()
end
function export:f_19_A_is_False()
  local l0
  self = self._graph
  l0 = self[20]
  l0:Input(1)
end
function export:f_19_A_is_True()
  local l0
  self = self._graph
  l0 = self[1]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(1)
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.MissionArea = self.s08m010_MissionArea_NudleBuildings
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
end
function export:Out()
end
_compilerVersion = 4
