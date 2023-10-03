export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("domino/System/PhoneCommunicationController.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self._name = "S12_M060_CIN_BelongToUs_Main"
  self._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main"
  self.Out = DummyFunction
  self.PlayerEntity = nil
  self.box_CinematicPrep_7 = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_7
  l0._graph = self
  l0._name = "box_CinematicPrep_7"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|323234122"
  l0.PreOut = self.f_box_CinematicPrep_7_PreOut
  l0.PostOut = DummyFunction
  self.box_PhoneCommunicationController_5 = cbox:CreateBox("domino/System/PhoneCommunicationController.lua")
  l0 = self.box_PhoneCommunicationController_5
  l0._graph = self
  l0._name = "box_PhoneCommunicationController_5"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|1566741733"
  l0.StartCommunicationOut = DummyFunction
  l0.TryStartCommunicationOut = DummyFunction
  l0.StopCommunicationOut = DummyFunction
  l0.OnCommunicationStarted = DummyFunction
  l0.OnCommunicationFinished = self.f_box_PhoneCommunicationController_5_OnCommunicationFinished
  l0.OnTryStartFailed = DummyFunction
  l0.Out = DummyFunction
  self.box_Timer_v2_8 = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self.box_Timer_v2_8
  l0._graph = self
  l0._name = "box_Timer_v2_8"
  l0._elementPathId = "DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|1844717629"
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_box_Timer_v2_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  DrawTextToScreen("Comment: Bombs_05", 5, "white")
  LogConsole("BOX DEBUGINFO (Name: 'Anonymous', Class: 'PhoneCommunicationController')-- Comment: Bombs_05")
  l0 = self.box_PhoneCommunicationController_5
  l0.PhoneCommunicationDb = "PhoneCommunicationSettingsDb.9223372050202039081"
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|1314967561", "1314967561", "S12_M060_CIN_BelongToUs_Main", "In", "box_PhoneCommunicationController_5.StartCommunication", self, l0)
  l0:StartCommunication()
end
function export:f_box_CinematicPrep_7_PreOut()
  local l0
  self = self._graph
  l0 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|1324439515", "1324439515", "S12_M060_CIN_BelongToUs_Main", "box_CinematicPrep_7.PreOut", "Out", l0, self)
  self:Out()
end
function export:f_box_PhoneCommunicationController_5_OnCommunicationFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_PhoneCommunicationController_5
  l1 = self.box_Timer_v2_8
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|1284411264", "1284411264", "S12_M060_CIN_BelongToUs_Main", "box_PhoneCommunicationController_5.OnCommunicationFinished", "box_Timer_v2_8.Start", l0, l1)
  l1:Start()
end
function export:f_box_Timer_v2_8_TimeElapsed()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_7
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0 = self.box_Timer_v2_8
  l1 = self.box_CinematicPrep_7
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|san_francisco\\missions\\WorldStories\\Solo\\S12\\S12M060\\s12_m060_cin_belongtous.domino|@S12_M060_CIN_BelongToUs_Main|1892140158", "1892140158", "S12_M060_CIN_BelongToUs_Main", "box_Timer_v2_8.TimeElapsed", "box_CinematicPrep_7.PreCinematic", l0, l1)
  l1:PreCinematic()
end
function export:Out()
end
_compilerVersion = 4
