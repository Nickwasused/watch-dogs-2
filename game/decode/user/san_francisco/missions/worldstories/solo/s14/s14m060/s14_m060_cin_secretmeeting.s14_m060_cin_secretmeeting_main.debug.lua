export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S14_M060_CIN_SecretMeeting_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_5 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_5
  l0._graph = self
  l0._name = "box_CinematicPrep_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|301788544"
  l0.PreOut = self.f_box_CinematicPrep_5_PreOut
  l0.PostOut = DummyFunction
  self.box_CinematicPrep_4 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_4
  l0._graph = self
  l0._name = "box_CinematicPrep_4"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|608815169"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_4_PostOut
  self.box_MultipleOR_7 = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self.box_MultipleOR_7
  l0._graph = self
  l0._name = "box_MultipleOR_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|759780894"
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_box_MultipleOR_7_Out
  self.box_PlaySequence_v5_1 = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self.box_PlaySequence_v5_1
  l0._graph = self
  l0._name = "box_PlaySequence_v5_1"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|1211275217"
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_box_PlaySequence_v5_1_Skipped
  l0.Finished = self.f_box_PlaySequence_v5_1_Finished
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
  l0 = self.box_CinematicPrep_5
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|2023269123", "2023269123", "S14_M060_CIN_SecretMeeting_Main", "In", "box_CinematicPrep_5.PreCinematic", self, l0)
  l0:PreCinematic()
end
function export:f_box_CinematicPrep_5_PreOut()
  local l0, l1
  self = self._graph
  l0 = self.box_PlaySequence_v5_1
  l0.SceneEntity = "9223372047235833895"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S14/S14_SecretMeeting_CIN/s14_secretmeeting_cin.seq"
  l0 = self.box_CinematicPrep_5
  l1 = self.box_PlaySequence_v5_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|1229898978", "1229898978", "S14_M060_CIN_SecretMeeting_Main", "box_CinematicPrep_5.PreOut", "box_PlaySequence_v5_1.Start", l0, l1)
  l1:Start()
end
function export:f_box_CinematicPrep_4_PostOut()
  local l0, l1
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._name = "box_Ordered_Output_9"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|1507268720"
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_box_Ordered_Output_9_Out_0
  l0.Out[1] = self.f_box_Ordered_Output_9_Out_1
  l0 = self.box_CinematicPrep_4
  l1 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|484950029", "484950029", "S14_M060_CIN_SecretMeeting_Main", "box_CinematicPrep_4.PostOut", "box_Ordered_Output_9.In", l0, l1)
  l1:In()
end
function export:f_box_MultipleOR_7_Out()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_4
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_MultipleOR_7
  l1 = self.box_CinematicPrep_4
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|897817047", "897817047", "S14_M060_CIN_SecretMeeting_Main", "box_MultipleOR_7.Out", "box_CinematicPrep_4.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_PlaySequence_v5_1_Finished()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|823332028", "823332028", "S14_M060_CIN_SecretMeeting_Main", "box_PlaySequence_v5_1.Finished", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(1)
end
function export:f_box_PlaySequence_v5_1_Skipped()
  local l0, l1
  self = self._graph
  self:OnEnter_box_MultipleOR_7()
  l0 = self.box_PlaySequence_v5_1
  l1 = self.box_MultipleOR_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|1876918795", "1876918795", "S14_M060_CIN_SecretMeeting_Main", "box_PlaySequence_v5_1.Skipped", "box_MultipleOR_7.Input", l0, l1)
  l1:Input(0)
end
function export:f_box_Ordered_Output_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|2072638391", "2072638391", "S14_M060_CIN_SecretMeeting_Main", "box_Ordered_Output_9.Out", "Out", clone, self)
  self:Out()
end
function export:f_box_Ordered_Output_9_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  local clone = {}
  for k, v in pairs(l0) do
    clone[k] = v
  end
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372064164911844"
  l0.RestrictTraffic = 0
  l0.RestrictPedestrians = 0
  l0.RestrictParking = 0
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = 0
  l0.ApplyToRoadNetwork = 0
  l0.RestrictHumanOnFoot = 0
  l0.RestrictHumanPassenger = 0
  l0.RestrictAnimal = 0
  l0.RestrictRobot = 0
  l0.RestrictRoadVehicle = 0
  l0.RestrictRail = 0
  l0.RestrictBoat = 0
  l0.RestrictParkedCar = 0
  l0.RestrictParkedBoat = 0
  l0.RestrictWorldAI = 0
  l0.RestrictReinforcementAI = 0
  l0.RestrictMissionAI = 0
  l0.RestrictCityObject = 0
  l0.RestrictMissionObject = 0
  l0._graph = self
  l0._name = "box_Lanes_Restrictions_Control_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|1071012522"
  l0.Out = DummyFunction
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S14\\S14M060\\s14_m060_cin_secretmeeting.domino|@S14_M060_CIN_SecretMeeting_Main|404855735", "404855735", "S14_M060_CIN_SecretMeeting_Main", "box_Ordered_Output_9.Out", "box_Lanes_Restrictions_Control_8.In", clone, l0)
  l0:In()
end
function export:OnEnter_box_MultipleOR_7()
end
function export:Out()
end
_compilerVersion = 4
