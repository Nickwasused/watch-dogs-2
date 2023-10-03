export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
end
function export:Init(cbox)
  local l0
  self._name = "RaceBasic"
  self._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic"
  self.OnRaceStopped = DummyFunction
  self.OnRaceStarted = DummyFunction
  self.box_CinematicPrep_2 = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.debug.lua")
  l0 = self.box_CinematicPrep_2
  l0._graph = self
  l0._name = "box_CinematicPrep_2"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|71695818"
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_box_CinematicPrep_2_PostOut
  self.box_RaceController_1 = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self.box_RaceController_1
  l0._graph = self
  l0._name = "box_RaceController_1"
  l0._elementPathId = "DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|692192671"
  l0._DynamicAnchors = {RacerVehicle = 2}
  l0.OnPlayerTeleportedToStart = DummyFunction
  l0.OnRaceSetupFinished = self.f_box_RaceController_1_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_box_RaceController_1_OnRaceStarted
  l0.OnRaceFinished = self.f_box_RaceController_1_OnRaceFinished
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = self.f_box_RaceController_1_OnRaceResultsClosed
  l0.OnRaceStopped = self.f_box_RaceController_1_OnRaceStopped
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
  self:OnEnter_box_RaceController_1()
  l0 = self.box_RaceController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|1699229225", "1699229225", "RaceBasic", "StartRace", "box_RaceController_1.SetupRace", self, l0)
  l0:SetupRace()
end
function export:f_box_CinematicPrep_2_PostOut()
  local l0, l1
  self = self._graph
  self:OnEnter_box_RaceController_1()
  l0 = self.box_CinematicPrep_2
  l1 = self.box_RaceController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|1820547170", "1820547170", "RaceBasic", "box_CinematicPrep_2.PostOut", "box_RaceController_1.StartRace", l0, l1)
  l1:StartRace()
end
function export:f_box_RaceController_1_OnRaceFinished()
  local l0
  self = self._graph
  l0 = self.box_RaceController_1
  self.PlayerRank = l0.PlayerRank
  self:OnEnter_box_RaceController_1()
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|635427921", "635427921", "RaceBasic", "box_RaceController_1.OnRaceFinished", "box_RaceController_1.ShowRaceResults", l0, l0)
  l0:ShowRaceResults()
end
function export:f_box_RaceController_1_OnRaceResultsClosed()
  local l0
  self = self._graph
  self:OnEnter_box_RaceController_1()
  l0 = self.box_RaceController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|1035055475", "1035055475", "RaceBasic", "box_RaceController_1.OnRaceResultsClosed", "box_RaceController_1.StopRace", l0, l0)
  l0:StopRace()
end
function export:f_box_RaceController_1_OnRaceSetupFinished()
  local l0, l1
  self = self._graph
  l0 = self.box_CinematicPrep_2
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0 = self.box_RaceController_1
  l1 = self.box_CinematicPrep_2
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|596713580", "596713580", "RaceBasic", "box_RaceController_1.OnRaceSetupFinished", "box_CinematicPrep_2.PostCinematic", l0, l1)
  l1:PostCinematic()
end
function export:f_box_RaceController_1_OnRaceStarted()
  local l0
  self = self._graph
  l0 = self.box_RaceController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|261360144", "261360144", "RaceBasic", "box_RaceController_1.OnRaceStarted", "OnRaceStarted", l0, self)
  self:OnRaceStarted()
end
function export:f_box_RaceController_1_OnRaceStopped()
  local l0
  self = self._graph
  l0 = self.box_RaceController_1
  CDominoManager_GetInstance():TraceConnection("DocumentContainer|..\\Library\\singleplayer\\Racing\\Racing_Helpers.domino|@RaceBasic|428370238", "428370238", "RaceBasic", "box_RaceController_1.OnRaceStopped", "OnRaceStopped", l0, self)
  self:OnRaceStopped()
end
function export:OnEnter_box_RaceController_1()
  local l0
  l0 = self.box_RaceController_1
  l0.Race = self.Config
end
function export:OnRaceStopped()
end
function export:OnRaceStarted()
end
_compilerVersion = 4
