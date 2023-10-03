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
  self.LayerMain = "S18M040_Main"
  self.Mission = "MissionList.9223372047730692851"
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M040.Objectives",
    item = "Objective1",
    id = "698593"
  }
  self[11] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_11_Completed
  self[5] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[5]
  l0._graph = self
  self[15] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[15]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_15_Completed
  self[7] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[7]
  l0._graph = self
  l0.Out = self.f_7_Out
  l0.MessageCompleted = DummyFunction
  self[14] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_14_Completed
  self[1] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[1]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_1_Loaded
  l0.Unloaded = DummyFunction
  self[13] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_13_Completed
  self[8] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 5}
  l0.Out = self.f_8_Out
  self[9] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_9_Out
  self[4] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[4]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_4_Completed
  self[3] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_3_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_3_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[10] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[10]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0.MessageCompleted = DummyFunction
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
  l0 = self[1]
  l0.ProgressionLayer = "ProgressionLayers.9223372069250570940"
  l0:Enable()
end
function export:f_11_Completed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(1)
end
function export:f_15_Completed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(4)
end
function export:f_6_Out_0()
  local l0
  self = self._graph
  l0 = self[4]
  l0.Interaction = "9223372047200014252"
  l0.Icon = "9223372048401895695"
  l0.ProgressionTag = "ProgressionTag.9223372048440013767"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_6_Out_1()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Interaction = "9223372047893176054"
  l0.Icon = "9223372048107791690"
  l0.ProgressionTag = "ProgressionTag.9223372048107665749"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_6_Out_2()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Interaction = "9223372047888725709"
  l0.Icon = "9223372048107791269"
  l0.ProgressionTag = "ProgressionTag.9223372048107665753"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_6_Out_3()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Interaction = "9223372048107706470"
  l0.Icon = "9223372048107747984"
  l0.ProgressionTag = "ProgressionTag.9223372048107665755"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_6_Out_4()
  local l0
  self = self._graph
  l0 = self[15]
  l0.Interaction = "9223372048107706481"
  l0.Icon = "9223372048401853464"
  l0.ProgressionTag = "ProgressionTag.9223372048107706485"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_14_Completed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(2)
end
function export:f_1_Loaded()
  local l0
  self = self._graph
  l0 = self[7]
  l0.Objective = self.ObjectiveMain
  l0.IncrementalObjectiveTotal = 5
  l0:ShowNewObjective()
end
function export:f_13_Completed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(3)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(1)
end
function export:f_9_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_4_Completed()
  local l0
  self = self._graph
  l0 = self[8]
  l0:Condition(0)
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0:ShowMissionComplete()
end
function export:f_3_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Input(0)
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Succeed()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_6_Out_0
  l0.Out[1] = self.f_6_Out_1
  l0.Out[2] = self.f_6_Out_2
  l0.Out[3] = self.f_6_Out_3
  l0.Out[4] = self.f_6_Out_4
  l0:In()
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.Objective = self.ObjectiveMain
end
_compilerVersion = 4
