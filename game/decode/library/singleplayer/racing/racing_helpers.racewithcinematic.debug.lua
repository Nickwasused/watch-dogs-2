export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/Cinematic.Cinematic.debug.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  local l0
  self._name = "RaceWithCinematic"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic"
  self.OnRaceStopped = DummyFunction
  self.OnRaceStarted = DummyFunction
  self.IsReplay = 0
  self.box_MultipleOR_7 = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|95019014"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_RaceController_6 = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self.box_RaceController_6
  l0._graph = self
  l0._name = "box_RaceController_6"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|230143713"
  l0._DynamicAnchors = {RacerVehicle = 2}
  l0.OnPlayerTeleportedToStart = self.f_box_RaceController_6_OnPlayerTeleportedToStart
  l0.OnRaceSetupFinished = self.f_box_RaceController_6_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_box_RaceController_6_OnRaceStarted
  l0.OnRaceFinished = self.f_box_RaceController_6_OnRaceFinished
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = self.f_box_RaceController_6_OnRaceResultsClosed
  l0.OnRaceStopped = self.f_box_RaceController_6_OnRaceStopped
  self.box_CinematicPrep_5 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|801825037"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_5_PostOut
  self.box_Player_PostFX_Controller_4 = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self.box_Player_PostFX_Controller_4
  l0._graph = self
  l0._name = "box_Player_PostFX_Controller_4"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1329701190"
  l0.Played = DummyFunction
  l0.Stopped = DummyFunction
  self.box_Cinematic_3 = cbox:CreateBox("Domino/Library/common/Cinematic.Cinematic.debug.lua")
  l0 = self.box_Cinematic_3
  l0._graph = self
  l0._name = "box_Cinematic_3"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1744397956"
  l0.Started = self.f_box_Cinematic_3_Started
  l0.Finished = self.f_box_Cinematic_3_Finished
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:StartRace()
  local l0
  self:OnEnter_box_RaceController_6()
  l0 = self.box_RaceController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|199091630", "199091630", "RaceWithCinematic", "StartRace", "box_RaceController_6.SetupRace", self, l0)
  l0:SetupRace()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  self:OnEnter_box_RaceController_6()
  l0 = self.box_MultipleOR_7
  l1 = self.box_RaceController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1888876710", "1888876710", "RaceWithCinematic", "box_MultipleOR_7.Out", "box_RaceController_6.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceController_6_OnPlayerTeleportedToStart()
  local l0
  self = self._graph
  l0 = self.box_RaceController_6
  self.IsReplay = l0.IsReplay
end
function export:f_box_RaceController_6_OnRaceFinished()
  local l0
  self = self._graph
  l0 = self.box_RaceController_6
  self.PlayerRank = l0.PlayerRank
  self:OnEnter_box_RaceController_6()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|523451825", "523451825", "RaceWithCinematic", "box_RaceController_6.OnRaceFinished", "box_RaceController_6.ShowRaceResults", l0, l0)
  l0:ShowRaceResults()
end
function export:f_box_RaceController_6_OnRaceResultsClosed()
  local l0
  self = self._graph
  self:OnEnter_box_RaceController_6()
  l0 = self.box_RaceController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|926309490", "926309490", "RaceWithCinematic", "box_RaceController_6.OnRaceResultsClosed", "box_RaceController_6.StopRace", l0, l0)
  l0:StopRace()
end
function export:f_box_RaceController_6_OnRaceSetupFinished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsReplay
  l0.B = nil
  l0._graph = self
  l0._name = "box_Compare_Boolean_v2_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|562931688"
  l0.Out = DummyFunction
  l0.A_is_True = self.f_box_Compare_Boolean_v2_1_A_is_True
  l0.A_is_False = self.f_box_Compare_Boolean_v2_1_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0 = self.box_RaceController_6
  l1 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|813973189", "813973189", "RaceWithCinematic", "box_RaceController_6.OnRaceSetupFinished", "box_Compare_Boolean_v2_1.In", l0, l1)
  l1:In()
end
function export:f_box_RaceController_6_OnRaceStarted()
  local l0
  self = self._graph
  l0 = self.box_RaceController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|42986077", "42986077", "RaceWithCinematic", "box_RaceController_6.OnRaceStarted", "OnRaceStarted", l0, self)
  self:OnRaceStarted()
end
function export:f_box_RaceController_6_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self.box_RaceController_6
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1387939952", "1387939952", "RaceWithCinematic", "box_RaceController_6.OnRaceStopped", "OnRaceStopped", l0, self)
  self:OnRaceStopped()
end
function export:f_box_Compare_Boolean_v2_1_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_8"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1666092116"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_8_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_8_Out_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|812539923", "812539923", "RaceWithCinematic", "box_Compare_Boolean_v2_1.A_is_False", "box_Ordered_Output_8.In", clone, l0)
  l0:In()
end
function export:f_box_Compare_Boolean_v2_1_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1036466941", "1036466941", "RaceWithCinematic", "box_Compare_Boolean_v2_1.A_is_True", "box_CinematicPrep_5.PostCinematic", clone, l0)
  l0:PostCinematic()
end
function export:f_box_CinematicPrep_5_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_CinematicPrep_5
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|724198626", "724198626", "RaceWithCinematic", "box_CinematicPrep_5.PostOut", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Simple_Node_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1568351459", "1568351459", "RaceWithCinematic", "box_Simple_Node_2.Out", "box_MultipleOR_7.Input", clone, l0)
  l0:Input(1)
end
function export:f_box_Ordered_Output_8_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  self:OnEnter_box_Player_PostFX_Controller_4()
  l0 = self.box_Player_PostFX_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1495909724", "1495909724", "RaceWithCinematic", "box_Ordered_Output_8.Out", "box_Player_PostFX_Controller_4.StartPostFX", clone, l0)
  l0:StartPostFX()
end
function export:f_box_Ordered_Output_8_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = self.box_Cinematic_3
  l0.SceneEntity = self.CinematicSceneEntity
  l0.SequenceFile = self.CinematicSequenceFile
  l0.KeepDrones = 1
  l0.ForceStopVehicle = 0
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1034208089", "1034208089", "RaceWithCinematic", "box_Ordered_Output_8.Out", "box_Cinematic_3.Start", clone, l0)
  l0:Start()
end
function export:f_box_Cinematic_3_Finished()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0._name = "box_Simple_Node_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|1656617414"
  l0.Out = self.f_box_Simple_Node_2_Out
  l0 = self.box_Cinematic_3
  l1 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|75082891", "75082891", "RaceWithCinematic", "box_Cinematic_3.Finished", "box_Simple_Node_2.In", l0, l1)
  l1:In()
end
function export:f_box_Cinematic_3_Started()
  local l0, l1
  self = self._graph
  self:OnEnter_box_Player_PostFX_Controller_4()
  l0 = self.box_Cinematic_3
  l1 = self.box_Player_PostFX_Controller_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceWithCinematic|2143775285", "2143775285", "RaceWithCinematic", "box_Cinematic_3.Started", "box_Player_PostFX_Controller_4.StopPostFX", l0, l1)
  l1:StopPostFX()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:OnEnter_box_RaceController_6()
  local l0
  l0 = self.box_RaceController_6
  l0.Race = self.Config
end
function export:OnEnter_box_Player_PostFX_Controller_4()
  local l0
  l0 = self.box_Player_PostFX_Controller_4
  l0.SequenceName = "blackscreen_loop_nofade"
end
function export:OnRaceStopped()
end
function export:OnRaceStarted()
end
_compilerVersion = 4
