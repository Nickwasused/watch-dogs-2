export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/NeutralizeGameplayController.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/RewardComponentController_V3.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Neutralized = DummyFunction
  self[12] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[12]
  l0._graph = self
  l0._DynamicAnchors = {In = 2}
  l0.Out = self.f_12_Out
  l0.ResetOut = DummyFunction
  self[11] = cbox:CreateBox("Domino/System/RewardComponentController_V3.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = DummyFunction
  l0.RewardsCleaned = DummyFunction
  l0.RewardsRegistered = DummyFunction
  l0.RewardsExecuted = self.f_11_RewardsExecuted
  self[1] = cbox:CreateBox("Domino/System/NeutralizeGameplayController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_1_Completed
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[2] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_2_HasNOT
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[3] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = self.f_3_Enabled
  l0.Disabled = self.f_3_Disabled
  l0.TagIsOwned = self.f_3_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:Start()
  local l0
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = self.ProgressionTag
  l0._graph = self
  l0.Is_nil = self.f_9_Is_nil
  l0.Is_not_nil = self.f_9_Is_not_nil
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_11_RewardsExecuted()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_1_Completed()
  local l0
  self = self._graph
  l0 = self[11]
  l0.ItemDB = self.ProgressionTagItem
  l0:ExecuteRewards()
end
function export:f_1_Started()
  self = self._graph
  self:Started()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:f_9_Is_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_9_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[2]
  l0.ProgressionTag = self.ProgressionTag
  l0:HasProgressionTag()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Disable()
end
function export:f_2_HasNOT()
  local l0
  self = self._graph
  self:en_3()
  l0 = self[3]
  l0:Enable()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_5_Out_1()
  self = self._graph
  self:Neutralized()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[12]
  l0:In(0)
end
function export:f_3_Disabled()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_3_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_3_TagIsOwned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_4_Out_1()
  self = self._graph
  self:Stopped()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MarkerLocId = self.MarkerLocId
  l0.CLO = self.CLO
  l0.UseStoryIcon = 1
end
function export:en_3()
  local l0
  l0 = self[3]
  l0.ProgressionTag = self.ProgressionTag
end
function export:Stopped()
end
function export:Started()
end
function export:Neutralized()
end
_compilerVersion = 4
