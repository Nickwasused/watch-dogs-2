export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/ReachGameplayController.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Reached = DummyFunction
  self.Started = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[4] = cbox:CreateBox("Domino/System/ReachGameplayController.lua")
  l0 = self[4]
  l0._graph = self
  l0.Started = self.f_4_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_4_Completed
  self[2] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[2]
  l0._graph = self
  l0.Enabled = self.f_2_Enabled
  l0.Disabled = self.f_2_Disabled
  l0.TagIsOwned = self.f_2_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[3] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[3]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_3_HasNOT
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
  l0.Out[0] = self.f_5_Out_0
  l0.Out[1] = self.f_5_Out_1
  l0:In()
end
function export:f_5_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_5_Out_1()
  self = self._graph
  self:Stopped()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Disable()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Start()
end
function export:f_4_Completed()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_4_Started()
  self = self._graph
  self:Started()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_1_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_1_Out_1()
  self = self._graph
  self:Reached()
end
function export:f_2_Disabled()
  local l0
  self = self._graph
  self:en_4()
  l0 = self[4]
  l0:Stop()
end
function export:f_2_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_2_TagIsOwned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
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
  l0 = self[3]
  l0.ProgressionTag = self.ProgressionTag
  l0:HasProgressionTag()
end
function export:f_3_HasNOT()
  local l0
  self = self._graph
  self:en_2()
  l0 = self[2]
  l0:Enable()
end
function export:en_4()
  local l0
  l0 = self[4]
  l0.MarkerLocId = self.MarkerLocId
  l0.MarkerEntity = self.MarkerEntity
  l0.Entity = self.Entity
  l0.MissionAreaEntity = self.MissionArea
  l0.AreaRadius = self.Entity_AreaRadius
  l0.UseStoryIcon = 1
  l0.AutoSetGPS = self.AutoGPS
end
function export:en_2()
  local l0
  l0 = self[2]
  l0.ProgressionTag = self.ProgressionTag
end
function export:Stopped()
end
function export:Reached()
end
function export:Started()
end
_compilerVersion = 4
