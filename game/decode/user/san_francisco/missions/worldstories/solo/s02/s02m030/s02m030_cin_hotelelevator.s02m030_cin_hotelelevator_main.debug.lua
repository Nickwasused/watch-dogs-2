export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S02M030_CIN_HotelElevator_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main"
  self.EndCine = DummyFunction
  self.PlayerEntity = nil
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|114761128"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
  self.box_OnceOnly_v3_2 = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self.box_OnceOnly_v3_2
  l0._graph = self
  l0._name = "box_OnceOnly_v3_2"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|682816888"
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_box_OnceOnly_v3_2_Out
  l0.ResetOut = DummyFunction
  self.box_CinematicPrep_3 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_3
  l0._graph = self
  l0._name = "box_CinematicPrep_3"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|2073430746"
  l0.PreOut = self.f_box_CinematicPrep_3_PreOut
  l0.PostOut = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:In()
  local l0
  l0 = self.box_CinematicPrep_3
  l0.SkipPostFX = 1
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|1110389374", "1110389374", "S02M030_CIN_HotelElevator_Main", "In", "box_CinematicPrep_3.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|673342186", "673342186", "S02M030_CIN_HotelElevator_Main", "box_PlaySequence_v5_1.Finished", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_OnceOnly_v3_2()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|1062263289", "1062263289", "S02M030_CIN_HotelElevator_Main", "box_PlaySequence_v5_1.Skipped", "box_OnceOnly_v3_2.In", l0, l1)
  l1:In(0)
end
function export:f_box_OnceOnly_v3_2_Out()
  local l0
  self = self._graph
  l0 = self.box_OnceOnly_v3_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|630110625", "630110625", "S02M030_CIN_HotelElevator_Main", "box_OnceOnly_v3_2.Out", "EndCine", l0, self)
  self:EndCine()
end
function export:f_box_CinematicPrep_3_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372066729637320"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S02/S02_Elevator-fs_VID/s02_elevator-fs_vid.seq"
  l0 = self.box_CinematicPrep_3
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S02\\S02M030\\s02m030_cin_hotelelevator.domino|@S02M030_CIN_HotelElevator_Main|145950952", "145950952", "S02M030_CIN_HotelElevator_Main", "box_CinematicPrep_3.PreOut", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:OnEnter_box_OnceOnly_v3_2()
end
function export:EndCine()
end
_compilerVersion = 4
