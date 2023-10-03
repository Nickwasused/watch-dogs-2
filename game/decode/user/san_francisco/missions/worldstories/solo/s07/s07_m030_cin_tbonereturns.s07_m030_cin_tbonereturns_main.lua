export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.TBoneReturns_Started = DummyFunction
  self.PlayerEntity = nil
  self.P8_Female01 = nil
  self.P8_Male01 = nil
  self.P8_Male02 = nil
  self[15] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[15]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[2] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_2_Skipped
  l0.Finished = self.f_2_Finished
  self[6] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_6_Out
  l0.ResetOut = DummyFunction
  self[1] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_1_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[23] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[23]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[18] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[18]
  l0._graph = self
  l0.Activated = self.f_18_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_18_OnUserInPlace
  self[16] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[16]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[14] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[14]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[21] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[21]
  l0._graph = self
  l0.Activated = self.f_21_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_21_OnUserInPlace
  self[4] = cbox:CreateBox("domino/Library/common/CinematicPrep.CinematicPrep.lua")
  l0 = self[4]
  l0._graph = self
  l0.PreOut = self.f_4_PreOut
  l0.PostOut = DummyFunction
  self[19] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[19]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[22] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[22]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[17] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[17]
  l0._graph = self
  l0.Activated = DummyFunction
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = DummyFunction
  self[20] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[20]
  l0._graph = self
  l0.Activated = self.f_20_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_20_OnUserInPlace
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
  l0 = self[4]
  l0.SkipPostFX = 0
  l0.SkipCameraAlign = 0
  l0.KeepDrones = 0
  l0.ForceStopVehicle = 1
  l0:PreCinematic()
end
function export:f_2_Finished()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(1)
end
function export:f_2_Skipped()
  local l0
  self = self._graph
  l0 = self[6]
  l0:In(0)
end
function export:f_2_Started()
  self = self._graph
  self:TBoneReturns_Started()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Start()
end
function export:f_1_TimeElapsed()
  self = self._graph
  self:Out()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.SceneEntity = "9223372047235789465"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S07/S07_TBoneReturns_CIN/s07_tbonereturns_cin.seq"
  l0:Start()
end
function export:f_18_Activated()
  local l0
  self = self._graph
  l0 = self[22]
  l0.User = self.P8_Male02
  l0:UnspawnUser()
end
function export:f_18_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[18]
  self.P8_Male02 = l0.UserID
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372055648684516"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = nil
  l0.ResetMissionWithLivingCity = nil
  l0.CivilianDensityDbObject = nil
  l0.ParkedCarsDensityDbObject = nil
  l0.TrafficDensityScale = nil
  l0.ApplyToEnticers = nil
  l0.ApplyToRoadNetwork = nil
  l0.RestrictHumanOnFoot = nil
  l0.RestrictHumanPassenger = nil
  l0.RestrictAnimal = nil
  l0.RestrictRobot = nil
  l0.RestrictRoadVehicle = nil
  l0.RestrictRail = nil
  l0.RestrictBoat = nil
  l0.RestrictParkedCar = nil
  l0.RestrictParkedBoat = nil
  l0.RestrictWorldAI = nil
  l0.RestrictReinforcementAI = nil
  l0.RestrictMissionAI = nil
  l0.RestrictCityObject = nil
  l0.RestrictMissionObject = nil
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[14]
  l0.User = self.Unspawn_Wrench
  l0:UnspawnUser()
end
function export:f_13_Out_2()
  local l0
  self = self._graph
  l0 = self[15]
  l0.User = self.Unspawn_Sitara
  l0:UnspawnUser()
end
function export:f_13_Out_3()
  local l0
  self = self._graph
  l0 = self[16]
  l0.User = self.Unspawn_Josh
  l0:UnspawnUser()
end
function export:f_13_Out_4()
  local l0
  self = self._graph
  l0 = self[17]
  l0.User = self.Unspawn_Horatio
  l0:UnspawnUser()
end
function export:f_13_Out_5()
  local l0
  self = self._graph
  l0 = self[20]
  l0.CLO = "9223372050330162274"
  l0:Activate()
end
function export:f_13_Out_6()
  local l0
  self = self._graph
  l0 = self[18]
  l0.CLO = "9223372055352992435"
  l0:Activate()
end
function export:f_13_Out_7()
  local l0
  self = self._graph
  l0 = self[21]
  l0.CLO = "9223372055352992434"
  l0:Activate()
end
function export:f_21_Activated()
  local l0
  self = self._graph
  l0 = self[23]
  l0.User = self.P8_Female01
  l0:UnspawnUser()
end
function export:f_21_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[21]
  self.P8_Female01 = l0.UserID
end
function export:f_4_PreOut()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 8}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0.Out[2] = self.f_13_Out_2
  l0.Out[3] = self.f_13_Out_3
  l0.Out[4] = self.f_13_Out_4
  l0.Out[5] = self.f_13_Out_5
  l0.Out[6] = self.f_13_Out_6
  l0.Out[7] = self.f_13_Out_7
  l0:In()
end
function export:f_20_Activated()
  local l0
  self = self._graph
  l0 = self[19]
  l0.User = self.P8_Male01
  l0:UnspawnUser()
end
function export:f_20_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[20]
  self.P8_Male01 = l0.UserID
end
function export:Out()
end
function export:TBoneReturns_Started()
end
_compilerVersion = 4
