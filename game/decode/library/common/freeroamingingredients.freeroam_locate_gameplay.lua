export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProgressionTagMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Located = DummyFunction
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[8]
  l0._graph = self
  l0.Enabled = self.f_8_Enabled
  l0.Disabled = self.f_8_Disabled
  l0.TagIsOwned = self.f_8_TagIsOwned
  l0.Has = DummyFunction
  l0.HasNOT = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[1] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[1]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_1_Out
  self[7] = cbox:CreateBox("Domino/System/ProgressionTagMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TagIsOwned = DummyFunction
  l0.Has = DummyFunction
  l0.HasNOT = self.f_7_HasNOT
  self[5] = cbox:CreateBox("Domino/System/LocateGameplayController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.Stopped = DummyFunction
  l0.Completed = self.f_5_Completed
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
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
function export:f_8_Disabled()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Stop()
end
function export:f_8_Enabled()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_8_TagIsOwned()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_3_Out
  l0:In()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Disable()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_2_Out_1()
  self = self._graph
  self:Located()
end
function export:f_7_HasNOT()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Enable()
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
  l0 = self[7]
  l0.ProgressionTag = self.ProgressionTag
  l0:HasProgressionTag()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(1)
end
function export:f_5_Completed()
  local l0
  self = self._graph
  l0 = self[1]
  l0:Input(0)
end
function export:f_5_Started()
  self = self._graph
  self:Started()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.ProgressionTag = self.ProgressionTag
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MarkerLocId = self.MarkerLocId
  l0.TargetCLO = self.CLO
  l0.DistrictDB = self.DistrictsDB
  l0.UseStoryIcon = 1
end
function export:Located()
end
function export:Stopped()
end
function export:Started()
end
_compilerVersion = 4
