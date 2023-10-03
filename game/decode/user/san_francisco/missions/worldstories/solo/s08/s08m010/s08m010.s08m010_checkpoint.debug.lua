export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S08M010_Checkpoint"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.HoratioInstance = nil
  self.BusInstance = nil
  self.player = nil
  self.MissionLayer = "S08M010_Main"
  self.s08m010_MissionArea_NudleBuildings = "9223372057227390115"
  self.ProximityTrigger_ServerFarm_RCLimit = "9223372068184316365"
  self.box_MissionZone_3 = cbox:CreateBox("domino/Library/common/MissionIngredients.MissionZone.debug.lua")
  l0 = self.box_MissionZone_3
  l0._graph = self
  l0._name = "box_MissionZone_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|205315166"
  l0.Enabled = self.f_box_MissionZone_3_Enabled
  l0.Disabled = self.f_box_MissionZone_3_Disabled
  l0.SoftQuitCompleted = DummyFunction
  self.box_MultipleOR_2 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_2
  l0._graph = self
  l0._name = "box_MultipleOR_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|239511344"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_2_Out
  self.box_MissionCheckpointReach_11 = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self.box_MissionCheckpointReach_11
  l0._graph = self
  l0._name = "box_MissionCheckpointReach_11"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1281318021"
  l0.Out = self.f_box_MissionCheckpointReach_11_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self.box_CinematicPrep_1 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_1
  l0._graph = self
  l0._name = "box_CinematicPrep_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1449762955"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_1_PostOut
  self.box_MultipleOR_5 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_5
  l0._graph = self
  l0._name = "box_MultipleOR_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1479812265"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_5_Out
  self.box_MultipleOR_20 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_20
  l0._graph = self
  l0._name = "box_MultipleOR_20"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1680591126"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_20_Out
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
  l0._name = "box_Compare_Boolean_v2_19"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1663551339"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_19_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_19_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1264887243", "1264887243", "S08M010_Checkpoint", "Checkpoint", "box_Compare_Boolean_v2_19.In", self, l0)
  l0:In()
end
function export:GameFlow()
  local l0
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|2035623100", "2035623100", "S08M010_Checkpoint", "GameFlow", "box_MultipleOR_2.Input", self, l0)
  l0:Input(0)
end
function export:f_box_Get_Player_ID_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.player = l0.PlayerID
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.player
  l0._graph = self
  l0._name = "box_Set_Entity_39"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|719162759"
  l0.Out = self.f_box_Set_Entity_39_Out
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|2051833874", "2051833874", "S08M010_Checkpoint", "box_Get_Player_ID_10.Out", "box_Set_Entity_39.FromEntity", clone, l0)
  l0:FromEntity()
end
function export:f_box_MissionZone_3_Disabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MissionZone_3
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|102856546", "102856546", "S08M010_Checkpoint", "box_MissionZone_3.Disabled", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_MissionZone_3_Enabled()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_5()
  l0 = self.box_MissionZone_3
  l1 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|288037947", "288037947", "S08M010_Checkpoint", "box_MissionZone_3.Enabled", "box_MultipleOR_5.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_2_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0._name = "box_Get_Player_ID_10"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|198839935"
  l0.Out = self.f_box_Get_Player_ID_10_Out
  l0 = self.box_MultipleOR_2
  l1 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1417652623", "1417652623", "S08M010_Checkpoint", "box_MultipleOR_2.Out", "box_Get_Player_ID_10.In", l0, l1)
  l1:In()
end
function export:f_box_Set_Entity_39_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Player = l0.Target
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_MissionCheckpointReach_11
  l0.Checkpoint = self.CheckPointName
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|843554313", "843554313", "S08M010_Checkpoint", "box_Set_Entity_39.Out", "box_MissionCheckpointReach_11.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_4_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_3()
  l0 = self.box_MissionZone_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1998241364", "1998241364", "S08M010_Checkpoint", "box_Compare_Boolean_v2_4.A_is_False", "box_MissionZone_3.Disable", clone, l0)
  l0:Disable()
end
function export:f_box_Compare_Boolean_v2_4_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MissionZone_3()
  l0 = self.box_MissionZone_3
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1498177568", "1498177568", "S08M010_Checkpoint", "box_Compare_Boolean_v2_4.A_is_True", "box_MissionZone_3.Enable", clone, l0)
  l0:Enable()
end
function export:f_box_MissionCheckpointReach_11_Out()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  l0.A = self.EnableNudleMissionArea
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1010495970"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_4_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_4_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_MissionCheckpointReach_11
  l1 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|537573099", "537573099", "S08M010_Checkpoint", "box_MissionCheckpointReach_11.Out", "box_Compare_Boolean_v2_4.In", l0, l1)
  l1:In()
end
function export:f_box_CinematicPrep_1_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_CinematicPrep_1
  l1 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1329219235", "1329219235", "S08M010_Checkpoint", "box_CinematicPrep_1.PostOut", "box_MultipleOR_20.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_MultipleOR_5_Out()
  local l0
  self = self._graph
  l0 = self.box_MultipleOR_5
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1130979892", "1130979892", "S08M010_Checkpoint", "box_MultipleOR_5.Out", "Out", l0, self)
  self:Out()
end
function export:f_box_Compare_Boolean_v2_19_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_20()
  l0 = self.box_MultipleOR_20
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|1478753007", "1478753007", "S08M010_Checkpoint", "box_Compare_Boolean_v2_19.A_is_False", "box_MultipleOR_20.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Compare_Boolean_v2_19_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_1
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|23172846", "23172846", "S08M010_Checkpoint", "box_Compare_Boolean_v2_19.A_is_True", "box_CinematicPrep_1.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_MultipleOR_20_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_2()
  l0 = self.box_MultipleOR_20
  l1 = self.box_MultipleOR_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S08\\S08M010\\S08M010.domino|@S08M010_Checkpoint|55937023", "55937023", "S08M010_Checkpoint", "box_MultipleOR_20.Out", "box_MultipleOR_2.Input", l0, l1)
  l1:Input(1)
end
function export:OnEnter_box_MissionZone_3()
  local l0
  l0 = self.box_MissionZone_3
  l0.MissionArea = self.s08m010_MissionArea_NudleBuildings
  l0.MissionLayer = self.MissionLayer
  l0.HardFail = 1
  l0.InstantFailOnExit = 0
end
function export:OnEnter_box_MultipleOR_2()
end
function export:OnEnter_box_MultipleOR_5()
end
function export:OnEnter_box_MultipleOR_20()
end
function export:Out()
end
_compilerVersion = 4
