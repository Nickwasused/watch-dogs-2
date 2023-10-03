export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.DishRotation = 0
  self.DishHackable = "9223372048029532637"
  self.DishKinematic = "9223372048043579882"
  self.DishHackTrigger = "9223372046621255629"
  self.InFOV = 0
  self[5] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[10]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.MessageCompleted = DummyFunction
  self[9] = cbox:CreateBox("domino/System/ProximityMonitor.lua")
  l0 = self[9]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_9_Disabled
  l0.EnterRadius = DummyFunction
  l0.ExitRadius = self.f_9_ExitRadius
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[8] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[2] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_2_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[4] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[4]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_4_Out
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:CheckPoint_0()
  local l0
  l0 = self[4]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:In()
  local l0
  l0 = self[4]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[8]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M030.ActivationObjective",
    item = "ActivationObjective",
    id = "693350"
  }
  l0:ShowNewObjective()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_9_Disabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Succeed()
end
function export:f_9_ExitRadius()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Disable()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.PlayerEntity = l0.PlayerID
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S13.S13M030.ActivationObjective",
    item = "ActivationObjective",
    id = "693350"
  }
  l0:ShowNewObjective()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.Seconds = 360
  l0:Start()
end
function export:f_3_Out()
  local l0
  self = self._graph
  self:en_9()
  l0 = self[9]
  l0:Enable()
end
function export:f_2_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:en_9()
  local l0
  l0 = self[9]
  l0.Entity1 = self.PlayerEntity
  l0.Entity2 = "9223372065378422368"
  l0.Radius = 100
  l0.CheckNow = 1
end
_compilerVersion = 4
