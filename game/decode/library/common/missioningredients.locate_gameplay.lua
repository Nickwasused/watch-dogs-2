export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/KeyIntelController.lua")
  cbox:RegisterBox("Domino/System/LineOfSightMonitor.lua")
  cbox:RegisterBox("Domino/System/LocateGameplayController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Located = DummyFunction
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self[6] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[6]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_6_Out
  self[12] = cbox:CreateBox("Domino/System/PlayerProximityMonitor.lua")
  l0 = self[12]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_12_Disabled
  l0.EnterRadius = self.f_12_EnterRadius
  l0.ExitRadius = self.f_12_ExitRadius
  l0.RCEnterRadius = DummyFunction
  l0.RCExitRadius = DummyFunction
  self[17] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_17_Out
  self[9] = cbox:CreateBox("Domino/System/KeyIntelController.lua")
  l0 = self[9]
  l0._graph = self
  l0.Set = self.f_9_Set
  l0.Reset = DummyFunction
  self[15] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[15]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_15_Out
  self[19] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[10] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 3}
  l0.Out = self.f_10_Out
  self[14] = cbox:CreateBox("Domino/System/LineOfSightMonitor.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.LOSAcquired = self.f_14_LOSAcquired
  l0.LOSLost = DummyFunction
  self[5] = cbox:CreateBox("Domino/System/LocateGameplayController.lua")
  l0 = self[5]
  l0._graph = self
  l0.Started = self.f_5_Started
  l0.Stopped = self.f_5_Stopped
  l0.Completed = self.f_5_Completed
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
  self:en_5()
  l0 = self[5]
  l0:Start()
end
function export:Stop()
  local l0
  l0 = self[17]
  l0:Input(0)
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EntityToLocate
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = DummyFunction
  l0.Is_not_nil = self.f_20_Is_not_nil
  l0:In()
end
function export:f_4_Out_1()
  self = self._graph
  self:Started()
end
function export:f_6_Out()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Disable()
end
function export:f_12_Disabled()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_12_EnterRadius()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Enable()
end
function export:f_12_ExitRadius()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_17_Out()
  local l0
  self = self._graph
  self:en_5()
  l0 = self[5]
  l0:Stop()
end
function export:f_7_Is_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(0)
end
function export:f_7_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.KeyIntelInfo
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_8_Is_nil
  l0.Is_not_nil = self.f_8_Is_not_nil
  l0:In()
end
function export:f_8_Is_nil()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_8_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[9]
  l0.Entity = self.EntityToLocate
  l0.KeyIntelInfo = self.KeyIntelInfo
  l0:SetKeyIntel()
end
function export:f_9_Set()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(2)
end
function export:f_15_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_2_Out_0
  l0.Out[1] = self.f_2_Out_1
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  self:en_14()
  l0 = self[14]
  l0:Disable()
end
function export:f_20_Is_not_nil()
  local l0
  self = self._graph
  self:en_12()
  l0 = self[12]
  l0:Enable()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(1)
end
function export:f_10_Out()
  self = self._graph
  self:Located()
end
function export:f_2_Out_0()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(1)
end
function export:f_2_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.EntityToLocate
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_7_Is_nil
  l0.Is_not_nil = self.f_7_Is_not_nil
  l0:In()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Input(1)
end
function export:f_16_Out_1()
  local l0
  self = self._graph
  l0 = self[15]
  l0:Input(0)
end
function export:f_1_Out_0()
  self = self._graph
  self:Stopped()
end
function export:f_1_Out_1()
  local l0
  self = self._graph
  l0 = self[6]
  l0:Input(0)
end
function export:f_14_LOSAcquired()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_16_Out_0
  l0.Out[1] = self.f_16_Out_1
  l0:In()
end
function export:f_5_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_21_Out
  l0:In()
end
function export:f_5_Started()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_5_Stopped()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_1_Out_0
  l0.Out[1] = self.f_1_Out_1
  l0:In()
end
function export:en_12()
  local l0
  l0 = self[12]
  l0.TargetEntity = self.EntityToLocate
  l0.Radius = 8
end
function export:en_14()
  local l0
  l0 = self[14]
  l0.Target = self.EntityToLocate
end
function export:en_5()
  local l0
  l0 = self[5]
  l0.MarkerLocId = self.MarkerLocId
  l0.TargetEntity = self.EntityToLocate
  l0.TargetCLO = self.CLO
  l0.MissionAreaEntity = self.MissionArea
end
function export:Located()
end
function export:Stopped()
end
function export:Started()
end
_compilerVersion = 4
