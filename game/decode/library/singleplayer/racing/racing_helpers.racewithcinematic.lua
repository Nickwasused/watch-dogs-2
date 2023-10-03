export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/Library/common/Cinematic.Cinematic.lua")
  cbox:RegisterBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerPostFXController.lua")
  cbox:RegisterBox("Domino/System/RaceController.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
end
function export:Init(cbox)
  local l0
  self.OnRaceStopped = DummyFunction
  self.OnRaceStarted = DummyFunction
  self.IsReplay = 0
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[6] = cbox:CreateBox("Domino/System/RaceController.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {RacerVehicle = 2}
  l0.OnPlayerTeleportedToStart = self.f_6_OnPlayerTeleportedToStart
  l0.OnRaceSetupFinished = self.f_6_OnRaceSetupFinished
  l0.OnRaceStarted = self.f_6_OnRaceStarted
  l0.OnRaceFinished = self.f_6_OnRaceFinished
  l0.OnRaceResultsShown = DummyFunction
  l0.OnRaceResultsClosed = self.f_6_OnRaceResultsClosed
  l0.OnRaceStopped = self.f_6_OnRaceStopped
  self[5] = cbox:CreateBox("Domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[5]
  l0._graph = self
  l0.PreOut = DummyFunction
  l0.PostOut = self.f_5_PostOut
  self[4] = cbox:CreateBox("Domino/System/PlayerPostFXController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Played = DummyFunction
  l0.Stopped = DummyFunction
  self[3] = cbox:CreateBox("Domino/Library/common/Cinematic.Cinematic.lua")
  l0 = self[3]
  l0._graph = self
  l0.Started = self.f_3_Started
  l0.Finished = self.f_3_Finished
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
  self:en_6()
  l0 = self[6]
  l0:SetupRace()
end
function export:f_7_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:StartRace()
end
function export:f_6_OnPlayerTeleportedToStart()
  local l0
  self = self._graph
  l0 = self[6]
  self.IsReplay = l0.IsReplay
end
function export:f_6_OnRaceFinished()
  local l0
  self = self._graph
  l0 = self[6]
  self.PlayerRank = l0.PlayerRank
  self:en_6()
  l0:ShowRaceResults()
end
function export:f_6_OnRaceResultsClosed()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:StopRace()
end
function export:f_6_OnRaceSetupFinished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.IsReplay
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_1_A_is_True
  l0.A_is_False = self.f_1_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_6_OnRaceStarted()
  self = self._graph
  self:OnRaceStarted()
end
function export:f_6_OnRaceStopped()
  self = self._graph
  self:OnRaceStopped()
end
function export:f_1_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0:In()
end
function export:f_1_A_is_True()
  local l0
  self = self._graph
  l0 = self[5]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PostCinematic()
end
function export:f_5_PostOut()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:StartPostFX()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[3]
  l0.SceneEntity = self.CinematicSceneEntity
  l0.SequenceFile = self.CinematicSequenceFile
  l0.KeepDrones = 1
  l0.ForceStopVehicle = 0
  l0:Start()
end
function export:f_3_Finished()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:In()
end
function export:f_3_Started()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:StopPostFX()
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Race = self.Config
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.SequenceName = "blackscreen_loop_nofade"
end
function export:OnRaceStopped()
end
function export:OnRaceStarted()
end
_compilerVersion = 4
