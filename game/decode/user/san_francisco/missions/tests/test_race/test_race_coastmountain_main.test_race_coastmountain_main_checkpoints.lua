export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/GPS3DController.lua")
  cbox:RegisterBox("domino/System/CompareEntity_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/FloatArithmetics.lua")
  cbox:RegisterBox("domino/System/GetPlayerID.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/Lists/ListForEach.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("domino/System/LogicGate_v2.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/PlaySound_v2.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetFloat_v2.lua")
  cbox:RegisterBox("domino/System/SetPosition.lua")
  cbox:RegisterBox("domino/System/SimpleNode.lua")
  cbox:RegisterBox("domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("domino/System/TimerToScreen.lua")
  cbox:RegisterBox("domino/System/TriggerMonitor_v2.lua")
  cbox:RegisterBox("domino/System/VisibilityController_v2.lua")
  cbox:LoadResource("soundbinary/2070410650.bnk", "CSoundResource")
end
function export:Init(cbox)
  local l0
  self.RaceCompleted = DummyFunction
  self.Stopped = DummyFunction
  self.NPCKilledOut = DummyFunction
  self.TimeElapsed = DummyFunction
  self.Player = nil
  self.Point = nil
  self.NextPoint = nil
  self.CheckpointsList = {}
  self.BoundToEntity_0 = "9223372043722772622"
  self.HackBike_BoundToEntity_0 = "9223372043722826301"
  self.ListLenght = 0
  self.CurIndex = 0
  self.Index = 0
  self.RemainingTime = 5
  self.myTime = 30
  self.CheckpointTimerList = {}
  self.ListLengthTimers = 0
  self[26] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[26]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = DummyFunction
  self[28] = cbox:CreateBox("domino/System/TriggerMonitor_v2.lua")
  l0 = self[28]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.Enter = self.f_28_Enter
  l0.Leave = DummyFunction
  l0.Use = DummyFunction
  self[46] = cbox:CreateBox("domino/System/SwitchOutput_v3.lua")
  l0 = self[46]
  l0._graph = self
  l0._DynamicAnchors = {Output = 10}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_46_Output_0
  l0.Output[1] = self.f_46_Output_1
  l0.Output[2] = self.f_46_Output_2
  l0.Output[3] = self.f_46_Output_3
  l0.Output[4] = self.f_46_Output_4
  l0.Output[5] = self.f_46_Output_5
  l0.Output[6] = self.f_46_Output_6
  l0.Output[7] = self.f_46_Output_7
  l0.Output[8] = self.f_46_Output_8
  l0.Output[9] = self.f_46_Output_9
  l0.None = DummyFunction
  l0.WasReset = DummyFunction
  self[59] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[59]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_59_Out
  self[31] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[31]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_31_Out
  self[58] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[58]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_58_Out
  self[2] = cbox:CreateBox("domino/System/Lists/ListForEach.lua")
  l0 = self[2]
  l0._graph = self
  l0.Started = self.f_2_Started
  l0.Stopped = self.f_2_Stopped
  l0.ForEach = self.f_2_ForEach
  l0.GotNext = self.f_2_GotNext
  l0.EndOfList = self.f_2_EndOfList
  l0.GotFirst = DummyFunction
  self[8] = cbox:CreateBox("domino/System/LogicGate_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.Out = self.f_8_Out
  l0.Opened = DummyFunction
  l0.Closed = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[39] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {Input = 11}
  l0.Out = self.f_39_Out
  self[19] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[19]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_19_Out
  self[55] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[55]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_55_Out
  self[21] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[21]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_21_Out
  self[57] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[57]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_57_Out
  self[7] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[11] = cbox:CreateBox("domino/System/Lists/ListReader.lua")
  l0 = self[11]
  l0._graph = self
  l0.Out = self.f_11_Out
  l0.EndOfList = self.f_11_EndOfList
  self[38] = cbox:CreateBox("domino/System/TimerToScreen.lua")
  l0 = self[38]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.Stopped = DummyFunction
  l0.Restarted = DummyFunction
  l0.GotTime = DummyFunction
  l0.TimeElapsed = self.f_38_TimeElapsed
  self[36] = cbox:CreateBox("domino/System/PlaySound_v2.lua")
  l0 = self[36]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Finished = DummyFunction
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
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:NPCKilled()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_23_Out_0
  l0.Out[1] = self.f_23_Out_1
  l0:In()
end
function export:Stop()
  local l0
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0.Out[2] = self.f_22_Out_2
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CurIndex = l0.Target
  l0 = self[11]
  l0.Input = self.CheckpointsList
  l0.Index = self.CurIndex
  l0.Loop = 0
  l0:Read()
end
function export:f_28_Enter()
  local l0, l1
  self = self._graph
  l0 = self[28]
  l1 = Boxes[PathID("domino/System/CompareEntity_v2.lua")]
  l1.Entity1 = l0.Collider
  l1.Entity2 = self.Player
  l1._graph = self
  l1.Out = DummyFunction
  l1.Equal = self.f_35_Equal
  l1.NotEqual = DummyFunction
  l1:In()
end
function export:f_46_Output_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate01
  l0._graph = self
  l0.Out = self.f_42_Out
  l0:Add()
end
function export:f_46_Output_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate02
  l0._graph = self
  l0.Out = self.f_47_Out
  l0:Add()
end
function export:f_46_Output_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate03
  l0._graph = self
  l0.Out = self.f_45_Out
  l0:Add()
end
function export:f_46_Output_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate04
  l0._graph = self
  l0.Out = self.f_48_Out
  l0:Add()
end
function export:f_46_Output_4()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate05
  l0._graph = self
  l0.Out = self.f_49_Out
  l0:Add()
end
function export:f_46_Output_5()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate06
  l0._graph = self
  l0.Out = self.f_50_Out
  l0:Add()
end
function export:f_46_Output_6()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate07
  l0._graph = self
  l0.Out = self.f_51_Out
  l0:Add()
end
function export:f_46_Output_7()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate08
  l0._graph = self
  l0.Out = self.f_52_Out
  l0:Add()
end
function export:f_46_Output_8()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate09
  l0._graph = self
  l0.Out = self.f_53_Out
  l0:Add()
end
function export:f_46_Output_9()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self.RemainingTime
  l0.B = self.Timer_Gate10
  l0._graph = self
  l0.Out = self.f_54_Out
  l0:Add()
end
function export:f_42_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(1)
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self._sld_Target_6 = l0.Target
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.MapMarker
  l0.xPos = self._sld_xPos_5
  l0.yPos = self._sld_yPos_5
  l0.zPos = self._sld_Target_6
  l0.xRot = self._sld_xRot_5
  l0.yRot = self._sld_yRot_5
  l0.zRot = self._sld_zRot_5
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:Open()
end
function export:f_59_Out()
  local l0
  self = self._graph
  self:en_33()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Hide()
end
function export:f_31_Out()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(0)
end
function export:f_35_Equal()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 5}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0.Out[2] = self.f_9_Out_2
  l0.Out[3] = self.f_9_Out_3
  l0.Out[4] = self.f_9_Out_4
  l0:In()
end
function export:f_5_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_5 = l0.xPos
  self._sld_xPos_5 = l0.xPos
  self._sld_xPos_5 = l0.xPos
  self._sld_yPos_5 = l0.yPos
  self._sld_yPos_5 = l0.yPos
  self._sld_yPos_5 = l0.yPos
  self._sld_zPos_5 = l0.zPos
  self._sld_zPos_5 = l0.zPos
  self._sld_zPos_5 = l0.zPos
  self._sld_xRot_5 = l0.xRot
  self._sld_xRot_5 = l0.xRot
  self._sld_xRot_5 = l0.xRot
  self._sld_yRot_5 = l0.yRot
  self._sld_yRot_5 = l0.yRot
  self._sld_yRot_5 = l0.yRot
  self._sld_zRot_5 = l0.zRot
  self._sld_zRot_5 = l0.zRot
  self._sld_zRot_5 = l0.zRot
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  l0.A = self._sld_zPos_5
  l0.B = self.MapIconHeight
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:Add()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(0)
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(1)
end
function export:f_20_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_29_Out
  l0:In()
end
function export:f_20_Out_3()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Input(1)
end
function export:f_58_Out()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Stop()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.CheckpointsList = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.CheckpointsList
  l0._graph = self
  l0.Out = self.f_16_Out
  l0.Empty = self.f_16_Empty
  l0.NotEmpty = self.f_16_NotEmpty
  l0:GetLength()
end
function export:f_2_EndOfList()
  local l0
  self = self._graph
  l0 = self[2]
  self.Index = l0.Index
  self.Point = l0.Data
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_2_ForEach()
  local l0
  self = self._graph
  l0 = self[2]
  self.Index = l0.Index
  self.Point = l0.Data
end
function export:f_2_GotNext()
  local l0
  self = self._graph
  l0 = self[2]
  self.Index = l0.Index
  self.Point = l0.Data
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0.Out[2] = self.f_12_Out_2
  l0:In()
end
function export:f_2_Started()
  local l0
  self = self._graph
  l0 = self[2]
  self.Index = l0.Index
  self.Point = l0.Data
end
function export:f_2_Stopped()
  local l0
  self = self._graph
  l0 = self[2]
  self.Index = l0.Index
  self.Point = l0.Data
end
function export:f_44_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLengthTimers = l0.Length
end
function export:f_44_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLengthTimers = l0.Length
end
function export:f_44_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLengthTimers = l0.Length
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l0.Float = self.CheckpointRange
  l0.Integer = nil
  l0.String = nil
  l0._graph = self
  l0.Out = self.f_40_Out
  l0:FromFloat()
end
function export:f_52_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(8)
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_30_Out_0
  l0.Out[1] = self.f_30_Out_1
  l0.Out[2] = self.f_30_Out_2
  l0.Out[3] = self.f_30_Out_3
  l0:In()
end
function export:f_32_Out()
  local l0
  self = self._graph
  l0 = self[31]
  l0:Input(1)
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.Point
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_5_Out
  l0:In()
end
function export:f_12_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.Index
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:Add()
end
function export:f_12_Out_2()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.Index
  l0.B = self.ListLenght
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_34_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_24_A_ge_B()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_24_A_lt_B()
  local l0
  self = self._graph
  l0 = self[21]
  l0:Input(0)
end
function export:f_25_TargetAdded()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Enable()
end
function export:f_25_TargetRemoved()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(1)
end
function export:f_45_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(3)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.NextPoint
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_18_Out
  l0:In()
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.ProximityTrigger
  l0.xPos = self._sld_xPos_5
  l0.yPos = self._sld_yPos_5
  l0.zPos = self._sld_zPos_5
  l0.xRot = self._sld_xRot_5
  l0.yRot = self._sld_yRot_5
  l0.zRot = self._sld_zRot_5
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_27_Out
  l0:In()
end
function export:f_47_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(2)
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[26]
  l0:Input(0)
end
function export:f_39_Out()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Start()
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(10)
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0.Out[2] = self.f_20_Out_2
  l0.Out[3] = self.f_20_Out_3
  l0:In()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(0)
end
function export:f_22_Out_1()
  self = self._graph
  self:Stopped()
end
function export:f_22_Out_2()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Input(0)
end
function export:f_40_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.myTime = l0.Target
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[39]
  l0:Input(0)
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_55_Out()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Disable()
end
function export:f_53_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(9)
end
function export:f_48_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(4)
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_18 = l0.xPos
  self._sld_yPos_18 = l0.yPos
  self._sld_zPos_18 = l0.zPos
  self._sld_xRot_18 = l0.xRot
  self._sld_yRot_18 = l0.yRot
  self._sld_zRot_18 = l0.zRot
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.NextMapMarker
  l0.xPos = self._sld_xPos_18
  l0.yPos = self._sld_yPos_18
  l0.zPos = self._sld_zPos_18
  l0.xRot = self._sld_xRot_18
  l0.yRot = self._sld_yRot_18
  l0.zRot = self._sld_zRot_18
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_17_Out
  l0:In()
end
function export:f_43_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.CheckpointTimerList = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.CheckpointTimerList
  l0._graph = self
  l0.Out = self.f_44_Out
  l0.Empty = self.f_44_Empty
  l0.NotEmpty = self.f_44_NotEmpty
  l0:GetLength()
end
function export:f_34_A_eq_B()
  local l0
  self = self._graph
  self:en_33()
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0:Show()
end
function export:f_49_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(5)
end
function export:f_23_Out_0()
  local l0
  self = self._graph
  l0 = self[19]
  l0:Input(1)
end
function export:f_23_Out_1()
  self = self._graph
  self:NPCKilledOut()
end
function export:f_57_Out()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:Disable()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[2]
  l0.List = self.CheckpointsList
  l0:GetNext()
end
function export:f_11_EndOfList()
  local l0
  self = self._graph
  l0 = self[11]
  self.NextPoint = l0.Data
end
function export:f_11_Out()
  local l0
  self = self._graph
  l0 = self[11]
  self.NextPoint = l0.Data
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.ListLenght
  l0.B = self.CurIndex
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = self.f_24_A_lt_B
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_24_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_38_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_56_Out_0
  l0.Out[1] = self.f_56_Out_1
  l0.Out[2] = self.f_56_Out_2
  l0:In()
end
function export:f_37_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  self.RemainingTime = l0.Target
  l0 = self[46]
  l0:In()
end
function export:f_29_Out()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(0)
end
function export:f_15_Out()
  local l0
  self = self._graph
  self:en_28()
  l0 = self[28]
  l0:Enable()
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  self:en_8()
  l0 = self[8]
  l0:In()
end
function export:f_9_Out_2()
  local l0
  self = self._graph
  self:en_25()
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0:RemoveTarget()
end
function export:f_9_Out_3()
  local l0
  self = self._graph
  l0 = self[36]
  l0.SoundId = "soundbinary/2070410650.bnk"
  l0:Play()
end
function export:f_9_Out_4()
  local l0, l1
  self = self._graph
  l0 = self[38]
  l1 = Boxes[PathID("domino/System/SetFloat_v2.lua")]
  l1.Float = l0.RemainingTime
  l1.Integer = nil
  l1.String = nil
  l1._graph = self
  l1.Out = self.f_37_Out
  l1:FromFloat()
end
function export:f_30_Out_0()
  local l0
  self = self._graph
  l0 = self[58]
  l0:Input(1)
end
function export:f_30_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_32_Out
  l0:In()
end
function export:f_30_Out_2()
  local l0
  self = self._graph
  l0 = self[59]
  l0:Input(0)
end
function export:f_30_Out_3()
  self = self._graph
  self:RaceCompleted()
end
function export:f_50_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(6)
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.Checkpoints
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:FromList()
end
function export:f_56_Out_0()
  local l0
  self = self._graph
  l0 = self[55]
  l0:Input(1)
end
function export:f_56_Out_1()
  local l0
  self = self._graph
  l0 = self[57]
  l0:Input(1)
end
function export:f_56_Out_2()
  self = self._graph
  self:TimeElapsed()
end
function export:f_51_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/FloatArithmetics.lua")]
  self.myTime = l0.Target
  l0 = self[39]
  l0:Input(7)
end
function export:f_16_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_16_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_16_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = self.CheckPoint_Timer
  l0._graph = self
  l0.Out = self.f_43_Out
  l0:FromList()
end
function export:f_27_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.RaceRingCheckpoint
  l0.xPos = self._sld_xPos_5
  l0.yPos = self._sld_yPos_5
  l0.zPos = self._sld_zPos_5
  l0.xRot = self._sld_xRot_5
  l0.yRot = self._sld_yRot_5
  l0.zRot = self._sld_zRot_5
  l0.Additive = 0
  l0.Local = nil
  l0._graph = self
  l0.Out = self.f_15_Out
  l0:In()
end
function export:en_28()
  local l0
  l0 = self[28]
  l0.Trigger = self.ProximityTrigger
end
function export:en_8()
  local l0
  l0 = self[8]
  l0.initStateOpen = 0
end
function export:en_25()
  local l0
  l0 = Boxes[PathID("domino/System/GPS3DController.lua")]
  l0.Player = nil
  l0.Target = self.Point
  l0.Path = nil
  l0.Index = self.CurIndex
  l0.PathType = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.TargetAdded = self.f_25_TargetAdded
  l0.TargetRemoved = self.f_25_TargetRemoved
end
function export:en_33()
  local l0
  l0 = Boxes[PathID("domino/System/VisibilityController_v2.lua")]
  l0.Entity = self.RaceFinishLine
  l0.EntityList = nil
  l0.Visible = nil
  l0.AffectChildren = nil
  l0.EntitiesList = nil
  l0._graph = self
  l0.IsSet = DummyFunction
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.Out = DummyFunction
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.Seconds = self.myTime
end
function export:RaceCompleted()
end
function export:Stopped()
end
function export:NPCKilledOut()
end
function export:TimeElapsed()
end
_compilerVersion = 4
