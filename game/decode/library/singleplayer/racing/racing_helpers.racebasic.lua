export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
end
function export:Init(cbox)
  local l0
  self.OnRaceStopped = DummyFunction
  self.OnRaceStarted = DummyFunction
  self[2] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[2]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_2_PostOut
  self[1] = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {RacerVehicle = 2}
  l0.OnPlayerTeleportedToStart = DummyFunction
  l0.OnRaceSetupFinished = self.f_1_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_1_OnRaceStarted
  l0.OnRaceFinished = self.f_1_OnRaceFinished
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = self.f_1_OnRaceResultsClosed
  l0.OnRaceStopped = self.f_1_OnRaceStopped
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
  self:en_1()
  l0 = self[1]
  l0:SetupRace()
end
function export:f_2_PostOut()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:StartRace()
end
function export:f_1_OnRaceFinished()
  local l0
  self = self._graph
  l0 = self[1]
  self.PlayerRank = l0.PlayerRank
  self:en_1()
  l0:ShowRaceResults()
end
function export:f_1_OnRaceResultsClosed()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:StopRace()
end
function export:f_1_OnRaceSetupFinished()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0:PostCinematic()
end
function export:f_1_OnRaceStarted()
  self = self._graph
  self:OnRaceStarted()
end
function export:f_1_OnRaceStopped()
  self = self._graph
  self:OnRaceStopped()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.Race = self.Config
end
function export:OnRaceStopped()
end
function export:OnRaceStarted()
end
_compilerVersion = 4
