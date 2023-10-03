export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CinemaZoneCleanup.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/LaneRestrictionsControl.lua")
  cbox:RegisterBox("domino/System/LMALayerController.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PauseGameWhileLoading.lua")
  cbox:RegisterBox("domino/System/PlaySequence_v5.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/SetPosition.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/TeleportToSpawnPoint.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.out = DummyFunction
  self.PlayerEntity = nil
  self.S08M010_CheckPoint_8 = "9223372049902749787"
  self.HoratioNPC = nil
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_4_Out
  l0.ResetOut = DummyFunction
  self[6] = cbox:CreateBox("domino/System/PlaySequence_v5.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {
    EntityIn = {"Horatio", "Bus"},
    EntityOut = {"Horatio", "Bus"}
  }
  l0.Started = self.f_6_Started
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Skipped = self.f_6_Skipped
  l0.Finished = self.f_6_Finished
  self[10] = cbox:CreateBox("domino/System/TeleportToSpawnPoint.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RequestFailed = DummyFunction
  l0.TeleportDone = self.f_10_TeleportDone
  self[7] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_7_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[11] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.Opened = DummyFunction
  l0.Closed = self.f_11_Closed
  self[8] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 2}
  l0.Out = self.f_8_Out
  self[1] = cbox:CreateBox("domino/System/LMALayerController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Loaded = self.f_1_Loaded
  l0.Unloaded = DummyFunction
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
  l0 = self[7]
  l0:Start()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0.SpawnPoint = "9223372046446091624"
  l0.UseFadeToBlack = 0
  l0.KeepBlackScreenOnExit = 1
  l0:In()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CinemaZoneCleanup.lua")]
  l0.TargetZone = "9223372057526079048"
  l0.SceneEntity = "9223372047235790538"
  l0.RemoveBreakable = nil
  l0.RemoveCharacter = nil
  l0.RemoveVehicle = nil
  l0.RemoveWeapon = nil
  l0.RemoveDeadBody = nil
  l0.RemoveRigidPhysObject = nil
  l0.StopDialog = nil
  l0.NotRemovableEntity[0] = self.HoratioNPC
  l0.NotRemovableEntity[1] = self.Bus
  l0._graph = self
  l0._DynamicAnchors = {NotRemovableEntity = 2}
  l0.Out = self.f_20_Out
  l0:CleanZone()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[1]
  l0.LMALayerName = self.NudleUpperLMA
  l0:Load()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_13_Out_0
  l0.Out[1] = self.f_13_Out_1
  l0:In()
end
function export:f_20_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/LaneRestrictionsControl.lua")]
  l0.LaneRestrictionsController = "9223372052004917120"
  l0.RestrictTraffic = nil
  l0.RestrictPedestrians = nil
  l0.RestrictParking = nil
  l0.ResetLivingCity = 1
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
  l0.Out = self.f_15_Out
  l0:In()
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.HoratioNPC = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_13_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(1)
end
function export:f_13_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Close()
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0.SceneEntity = "9223372047235790538"
  l0.SequenceFile = "sequences/san_francisco/WorldStories/S08/S08_OffTheBus_CIN/s08_offthebus_cin.seq"
  l0.EntityIn.Horatio = self.HoratioNPC
  l0.EntityIn.Bus = self.Bus
  l0:Start()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.HoratioNPC
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:FromEntity()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(0)
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0:In()
end
function export:f_6_Finished()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(1)
end
function export:f_6_Skipped()
  local l0
  self = self._graph
  l0 = self[4]
  l0:In(0)
end
function export:f_6_Started()
  local l0
  self = self._graph
  l0 = self[6]
  self.HoratioNPC = l0.EntityOut.Horatio
end
function export:f_10_TeleportDone()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = "9223372049902757491"
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_16_Out
  l0:In()
end
function export:f_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.Horatio
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:FromEntity()
end
function export:f_11_Closed()
  local l0
  self = self._graph
  self:en_14()
  l0 = Boxes[PathID("domino/System/PauseGameWhileLoading.lua")]
  l0:Disable()
end
function export:f_11_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = Boxes[PathID("domino/System/PauseGameWhileLoading.lua")]
  l0:Enable()
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.Horatio_Out = l0.Target
  self:out()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Start()
end
function export:f_1_Loaded()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:In()
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_16 = l0.xPos
  self._sld_yPos_16 = l0.yPos
  self._sld_zPos_16 = l0.zPos
  self._sld_xRot_16 = l0.xRot
  self._sld_yRot_16 = l0.yRot
  self._sld_zRot_16 = l0.zRot
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.HoratioNPC
  l0.xPos = self._sld_xPos_16
  l0.yPos = self._sld_yPos_16
  l0.zPos = self._sld_zPos_16
  l0.xRot = self._sld_xRot_16
  l0.yRot = self._sld_yRot_16
  l0.zRot = self._sld_zRot_16
  l0.Additive = 0
  l0.Local = 0
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:en_14()
  local l0
  l0 = Boxes[PathID("domino/System/PauseGameWhileLoading.lua")]
  l0._graph = self
end
function export:out()
end
_compilerVersion = 4
