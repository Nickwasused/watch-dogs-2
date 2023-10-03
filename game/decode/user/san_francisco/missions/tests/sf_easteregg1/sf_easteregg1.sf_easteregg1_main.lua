export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  cbox:RegisterBox("domino/System/MissionCheckpointReach.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self[9] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[9]
  l0._graph = self
  self[8] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_8_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
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
  self[5] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = self.f_5_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_2_Out
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[11] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = self.f_11_MessageCompleted
  self[4] = cbox:CreateBox("domino/System/MissionCheckpointReach.lua")
  l0 = self[4]
  l0._graph = self
  l0.Out = self.f_4_Out
  l0.AllCheckpointsDisabled = DummyFunction
  self[6] = cbox:CreateBox("domino/Library/common/FreeRoamingIngredients.FreeRoam_Beat.lua")
  l0 = self[6]
  l0._graph = self
  l0.NewBeatStarted = self.f_6_NewBeatStarted
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
  l0 = self[2]
  l0:Input(1)
end
function export:CheckPoint_1()
  local l0
  self:en_6()
  l0 = self[6]
  l0:FromCheckpoint()
end
function export:In()
  local l0
  l0 = self[4]
  l0.CheckpointList = "CheckPoint_0"
  l0:In()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0.CheckpointList = "CheckPoint_1"
  l0:In()
end
function export:f_8_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[10]
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_1",
    id = "698607"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:UpdateObjective()
end
function export:f_7_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_2",
    id = "698608"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:UpdateObjective()
end
function export:f_5_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:StartNewBeat()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Start()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_1",
    id = "698607"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Start()
end
function export:f_11_MessageCompleted()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Succeed()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Input(0)
end
function export:f_6_NewBeatStarted()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = {
    section = "MISSIONS.WORLD MISSIONS.EGG",
    item = "Message_2",
    id = "698608"
  }
  l0.ShowPreviousObjectiveComplete = 0
  l0:ShowNewObjective()
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.ProgressionLayer = "ProgressionLayers.9223372071755984284"
  l0.Checkpoint = "CheckPoint_1"
end
_compilerVersion = 4
