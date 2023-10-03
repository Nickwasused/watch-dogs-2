export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  cbox:RegisterBox("domino/System/LayerMonitor.lua")
  cbox:RegisterBox("domino/System/MissionController_v4.lua")
  cbox:RegisterBox("domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("domino/System/MultipleAND.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/ObjectiveMonitor_v2.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
end
function export:Init(cbox)
  local l0
  self.PlayerEntity = nil
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives",
    item = "Objective2",
    id = "697848"
  }
  self[10] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[10]
  l0._graph = self
  self[11] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_11_Completed
  self[1] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_1_Completed
  self[4] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_4_Completed
  self[6] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[6]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_6_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_6_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[7] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_7_Loaded
  l0.Unloaded = DummyFunction
  self[9] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[9]
  l0._graph = self
  l0.Out = self.f_9_Out
  l0.MessageCompleted = DummyFunction
  self[8] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_8_Completed
  self[12] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 4}
  l0.Out = self.f_12_Out
  self[13] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[13]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_13_Out
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
  l0.ProgressionLayer = "ProgressionLayers.9223372069299939034"
  l0:Enable()
end
function export:f_11_Completed()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(3)
end
function export:f_1_Completed()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(0)
end
function export:f_4_Completed()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(1)
end
function export:f_6_Disabled()
  local l0
  self = self._graph
  l0 = self[9]
  l0:ShowMissionComplete()
end
function export:f_6_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(0)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_7_Loaded()
  local l0
  self = self._graph
  l0 = self[3]
  l0.Objective = self.ObjectiveMain
  l0.IncrementalObjectiveTotal = 4
  l0:ShowNewObjective()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Enable()
end
function export:f_5_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0.Out[2] = self.f_2_Out_2
  l0.Out[3] = self.f_2_Out_3
  l0:In()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Succeed()
end
function export:f_8_Completed()
  local l0
  self = self._graph
  l0 = self[12]
  l0:Condition(2)
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = self[13]
  l0:Input(1)
end
function export:f_13_Out()
  local l0
  self = self._graph
  self:en_6()
  l0 = self[6]
  l0:Disable()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Interaction = "9223372058736548705"
  l0.Icon = "9223372048107706489"
  l0.ProgressionTag = "ProgressionTag.9223372048107706479"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Interaction = "9223372046857141168"
  l0.Icon = "9223372048107747986"
  l0.ProgressionTag = "ProgressionTag.9223372048107665802"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_2_Out_2()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Interaction = "9223372047975450333"
  l0.Icon = "9223372048107791273"
  l0.ProgressionTag = "ProgressionTag.9223372048107665751"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_2_Out_3()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Interaction = "9223372047133884203"
  l0.Icon = "9223372048107748538"
  l0.ProgressionTag = "ProgressionTag.9223372048107748540"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:en_6()
  local l0
  l0 = self[6]
  l0.Objective = self.ObjectiveMain
end
_compilerVersion = 4
