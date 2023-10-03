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
  self.LayerMain = "S18M030_Main"
  self.Mission = "MissionList.9223372047730692852"
  self.L04_0 = "9223372047919956597"
  self.ObjectiveMain = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives",
    item = "Objective",
    id = "697846"
  }
  self.GraffitiInteraction_OAK_02_Chinatown_1 = "9223372048107706475"
  self.L04_OAK_02_Chinatown_1 = "9223372048107706489"
  self.L04_OAK_01_CivicCenter_2 = "9223372048107747984"
  self.GraffitiInteraction_OAK_CivicCenter_0 = "9223372046857141168"
  self.L04_OAK_CivicCenter_0 = "9223372048107747986"
  self.GraffitiInteraction_OAK_04_JackLondon_1 = "9223372048107706481"
  self.GraffitiInteraction_OAK_CivicCenter_2 = "9223372047133884203"
  self.L04_OAK_01_CivicCenter_5 = "9223372048107748538"
  self.GraffitiInteraction_MissionBay_West_2 = "9223372047133884203"
  self.L04_MissionBay_West_2_5 = "9223372048107748538"
  self.OAK_04_JackLondon_1 = "9223372048107748536"
  self.Interaction_SF_08_1 = "9223372047888725709"
  self.L04_SF_08_SOMA_SouthBeach_1 = "9223372048107791269"
  self.Inter_CivicCenter_2 = "9223372048107706470"
  self.Interaction_SF_02_Telegraph_Hill_1 = "9223372047975450333"
  self.L04_SF_02_Telegraph_Hill_1 = "9223372048107791273"
  self.Interaction_SF_02_Russian_Hill_1 = "9223372047893176054"
  self.L04_SF_02_Russian_Hill_1 = "9223372048107791690"
  self.ProximityRadius = 30
  self[13] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[13]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_13_Completed
  self[19] = cbox:CreateBox("domino/System/LayerMonitor.lua")
  l0 = self[19]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Loaded = self.f_19_Loaded
  l0.Unloaded = DummyFunction
  self[11] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_11_Completed
  self[7] = cbox:CreateBox("domino/System/ObjectiveMonitor_v2.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_7_Disabled
  l0.GotIncrement = DummyFunction
  l0.ObjectiveCompleted = self.f_7_ObjectiveCompleted
  l0.ObjectiveMessageStarted = DummyFunction
  l0.ObjectiveMessageFinished = DummyFunction
  l0.IncrementReached = DummyFunction
  l0.IncrementNotReached = DummyFunction
  self[1] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[1]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0.MessageCompleted = DummyFunction
  self[6] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[12] = cbox:CreateBox("domino/user/san_francisco/missions/WorldStories/Solo/S18/S18M030.GrafittiMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Completed = self.f_12_Completed
  self[3] = cbox:CreateBox("domino/System/MissionMessageController_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("domino/System/MultipleAND.lua")
  l0 = self[2]
  l0._graph = self
  l0._DynamicAnchors = {Condition = 3}
  l0.Out = self.f_2_Out
  self[5] = cbox:CreateBox("domino/System/MissionController_v4.lua")
  l0 = self[5]
  l0._graph = self
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
  l0 = self[19]
  l0.ProgressionLayer = "ProgressionLayers.9223372047730697258"
  l0:Enable()
end
function export:f_13_Completed()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Condition(2)
end
function export:f_19_Loaded()
  local l0
  self = self._graph
  l0 = self[1]
  l0.Objective = self.ObjectiveMain
  l0.IncrementalObjectiveTotal = 3
  l0:ShowNewObjective()
end
function export:f_11_Completed()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Condition(0)
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Enable()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_8_Out_0
  l0.Out[1] = self.f_8_Out_1
  l0.Out[2] = self.f_8_Out_2
  l0:In()
end
function export:f_7_Disabled()
  local l0
  self = self._graph
  l0 = self[3]
  l0:ShowMissionComplete()
end
function export:f_7_ObjectiveCompleted()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_7()
  l0 = self[7]
  l0:Disable()
end
function export:f_8_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0.Interaction = "9223372048408801208"
  l0.Icon = "9223372048498406865"
  l0.ProgressionTag = "ProgressionTag.9223372048440013771"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_8_Out_1()
  local l0
  self = self._graph
  l0 = self[12]
  l0.Interaction = "9223372048408801204"
  l0.Icon = "9223372048498406861"
  l0.ProgressionTag = "ProgressionTag.9223372048440013769"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_8_Out_2()
  local l0
  self = self._graph
  l0 = self[13]
  l0.Interaction = "9223372044036457019"
  l0.Icon = "9223372047919956597"
  l0.ProgressionTag = "ProgressionTag.9223372047919961297"
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S18.S18M030.Objectives.Objective010",
    item = "Objective",
    id = "542926"
  }
  l0.Radius = 30
  l0:Enable()
end
function export:f_12_Completed()
  local l0
  self = self._graph
  l0 = self[2]
  l0:Condition(1)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Succeed()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:en_7()
  local l0
  l0 = self[7]
  l0.Objective = self.ObjectiveMain
end
_compilerVersion = 4
