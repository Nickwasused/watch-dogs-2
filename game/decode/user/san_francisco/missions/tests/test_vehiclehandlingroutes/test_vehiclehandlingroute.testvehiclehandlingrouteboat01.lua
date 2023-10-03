export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("domino/System/CLOController.lua")
  cbox:RegisterBox("domino/System/CompareFloats_v2.lua")
  cbox:RegisterBox("domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("domino/System/GetDistance.lua")
  cbox:RegisterBox("domino/System/GetPosition.lua")
  cbox:RegisterBox("domino/System/IntegerArithmetics.lua")
  cbox:RegisterBox("domino/System/Lists/ListLength.lua")
  cbox:RegisterBox("domino/System/Lists/ListReader.lua")
  cbox:RegisterBox("domino/System/Lists/ListWriter.lua")
  cbox:RegisterBox("domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("domino/System/MissionMessageController.lua")
  cbox:RegisterBox("domino/System/MultipleOR.lua")
  cbox:RegisterBox("domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("domino/System/OrderedOutput.lua")
  cbox:RegisterBox("domino/System/SetEntity.lua")
  cbox:RegisterBox("domino/System/Lists/SetList.lua")
  cbox:RegisterBox("domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("domino/System/SetPosition.lua")
  cbox:RegisterBox("domino/System/Timer_v2.lua")
end
function export:Init(cbox)
  local l0
  self.Out = DummyFunction
  self.ListLenght = 0
  self.TooltipIndex = 1
  self.CurrentIndex = 1
  self.Distance = 20
  self.CurrentIndexPlusOne = 1
  self.Checkpoints = {}
  self.NextCheckpoint = nil
  self.PlayerEntity = nil
  self.CurrentCheckpoint = nil
  self.CheckpointIcon = "9223372047124233553"
  self.CurrentVehicle = nil
  self.NextCheckpointIcon = "9223372046000333005"
  self[10] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[10]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_10_Out
  self[16] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[16]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_16_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[31] = cbox:CreateBox("domino/System/CLOController.lua")
  l0 = self[31]
  l0._graph = self
  l0.Activated = self.f_31_Activated
  l0.Deactivated = DummyFunction
  l0.UnspawnedUser = DummyFunction
  l0.OnQuit = DummyFunction
  l0.BhvTriggered = DummyFunction
  l0.OnUserInPlace = self.f_31_OnUserInPlace
  self[34] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[34]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[27] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_27_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[32] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[32]
  l0._graph = self
  l0.Shown = self.f_32_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[3] = cbox:CreateBox("domino/System/MultipleOR.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_3_Out
  self[14] = cbox:CreateBox("domino/System/GetDistance.lua")
  l0 = self[14]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0.OutViaRoad = self.f_14_OutViaRoad
  self[17] = cbox:CreateBox("domino/System/OnceOnly_v3.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_17_Out
  l0.ResetOut = DummyFunction
  self[8] = cbox:CreateBox("domino/System/Lists/ListWriter.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {Data = 17}
  l0.Added = self.f_8_Added
  l0.Removed = self.f_8_Removed
  l0.Out = self.f_8_Out
  self[22] = cbox:CreateBox("domino/System/Lists/ListReader.lua")
  l0 = self[22]
  l0._graph = self
  l0.Out = self.f_22_Out
  l0.EndOfList = self.f_22_EndOfList
  self[15] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[15]
  l0._graph = self
  l0.Shown = self.f_15_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[5] = cbox:CreateBox("domino/System/Timer_v2.lua")
  l0 = self[5]
  l0._graph = self
  l0.Out = DummyFunction
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.Paused = DummyFunction
  l0.Resumed = DummyFunction
  l0.TimeElapsed = self.f_5_TimeElapsed
  l0.LoopingEnded = DummyFunction
  l0.GotTime = DummyFunction
  self[29] = cbox:CreateBox("domino/System/MissionMessageController.lua")
  l0 = self[29]
  l0._graph = self
  l0._DynamicAnchors = {ChecklistObjectiveLocId = 2}
  l0.Out = DummyFunction
  l0.MessageRequested = self.f_29_MessageRequested
  l0.MessageCompleted = DummyFunction
  l0.DisplayStarted = DummyFunction
  self[30] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[30]
  l0._graph = self
  l0.Shown = self.f_30_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[18] = cbox:CreateBox("domino/System/Lists/ListReader.lua")
  l0 = self[18]
  l0._graph = self
  l0.Out = self.f_18_Out
  l0.EndOfList = self.f_18_EndOfList
  self[33] = cbox:CreateBox("domino/System/MapPointController_v3.lua")
  l0 = self[33]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_33_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
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
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.e_CurrentVehicle
  l0._graph = self
  l0.Out = self.f_26_Out
  l0:FromEntity()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self.CurrentIndex
  l0.B = self.ListLenght
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_25_A_le_B
  l0.A_eq_B = self.f_25_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_25_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_19_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_19 = l0.xPos
  self._sld_yPos_19 = l0.yPos
  self._sld_zPos_19 = l0.zPos
  self._sld_zRot_19 = l0.zRot
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.CheckpointIcon
  l0.xPos = self._sld_xPos_19
  l0.yPos = self._sld_yPos_19
  l0.zPos = self._sld_zPos_19
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = self._sld_zRot_19
  l0.Additive = 0
  l0.Local = 0
  l0._graph = self
  l0.Out = self.f_23_Out
  l0:In()
end
function export:f_16_Hidden()
  local l0
  self = self._graph
  l0 = self[30]
  l0.MapPoint = "9223372047747307766"
  l0:Show()
end
function export:f_20_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(0)
end
function export:f_20_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.CurrentIndex
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_28_Out
  l0:Add()
end
function export:f_23_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_20_Out_0
  l0.Out[1] = self.f_20_Out_1
  l0:In()
end
function export:f_31_Activated()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Checkpoints
  l0._graph = self
  l0.Out = self.f_21_Out
  l0.Empty = self.f_21_Empty
  l0.NotEmpty = self.f_21_NotEmpty
  l0:GetLength()
end
function export:f_31_OnUserInPlace()
  local l0
  self = self._graph
  l0 = self[31]
  self.e_Bike02 = l0.UserID
end
function export:f_4_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CurrentIndex = l0.Target
  l0 = self[10]
  l0:Input(0)
end
function export:f_21_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_21_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
  l0 = self[15]
  l0.MapPoint = self.CheckpointIcon
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
  l0:Show()
end
function export:f_21_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self.ListLenght = l0.Length
end
function export:f_7_A_gt_B()
  local l0
  self = self._graph
  l0 = self[5]
  l0.Seconds = 0.5
  l0:Start()
end
function export:f_7_A_le_B()
  local l0
  self = self._graph
  l0 = self[27]
  l0.Seconds = 0.1
  l0:Start()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  self.CurrentIndex = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  l0.List = {}
  l0._graph = self
  l0.Out = self.f_9_Out
  l0:FromList()
end
function export:f_27_TimeElapsed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  l0.A = self.CurrentIndex
  l0.B = 1
  l0._graph = self
  l0.Out = self.f_4_Out
  l0:Add()
end
function export:f_12_Empty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self._sld_Length_12 = l0.Length
end
function export:f_12_NotEmpty()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self._sld_Length_12 = l0.Length
  l0 = Boxes[PathID("domino/System/CompareIntegers_v2.lua")]
  l0.A = self._sld_Length_12
  l0.B = self.CurrentIndexPlusOne
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = self.f_24_A_ge_B
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  self._sld_Length_12 = l0.Length
end
function export:f_28_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/IntegerArithmetics.lua")]
  self.CurrentIndexPlusOne = l0.Target
  l0 = Boxes[PathID("domino/System/Lists/ListLength.lua")]
  l0.Input = self.Checkpoints
  l0._graph = self
  l0.Out = self.f_12_Out
  l0.Empty = self.f_12_Empty
  l0.NotEmpty = self.f_12_NotEmpty
  l0:GetLength()
end
function export:f_32_Shown()
  local l0
  self = self._graph
  l0 = self[10]
  l0:Input(1)
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = self[14]
  l0.Entity1 = self.CurrentCheckpoint
  l0.Entity2 = self.PlayerEntity
  l0:Distance2D()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = self[14]
  self.Distance = l0.Distance
  l0 = Boxes[PathID("domino/System/CompareFloats_v2.lua")]
  l0.A = self.Distance
  l0.B = 20
  l0.Tolerance = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = self.f_7_A_le_B
  l0.A_eq_B = DummyFunction
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = self.f_7_A_gt_B
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_14_OutViaRoad()
  local l0
  self = self._graph
  l0 = self[14]
  self.Distance = l0.Distance
end
function export:f_17_Out()
  local l0
  self = self._graph
  l0 = self[8]
  l0.Input = self.Checkpoints
  l0.Data[0] = "9223372047919671349"
  l0.Data[1] = "9223372047939474125"
  l0.Data[2] = "9223372047939474127"
  l0.Data[3] = "9223372047939474129"
  l0.Data[4] = "9223372047939474131"
  l0.Data[5] = "9223372047939474133"
  l0.Data[6] = "9223372047939474135"
  l0.Data[7] = "9223372047939474137"
  l0.Data[8] = "9223372047939474139"
  l0.Data[9] = "9223372047939474141"
  l0.Data[10] = "9223372047939474143"
  l0.Data[11] = "9223372047939474145"
  l0.Data[12] = "9223372047939474147"
  l0.Data[13] = "9223372047939474149"
  l0.Data[14] = "9223372047939474151"
  l0.Data[15] = "9223372047939474153"
  l0.Data[16] = "9223372047939474155"
  l0:Add()
end
function export:f_9_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/Lists/SetList.lua")]
  self.Checkpoints = l0.Target
  l0 = self[33]
  l0.MapPoint = self.NextCheckpointIcon
  l0:Hide()
end
function export:f_8_Added()
  local l0
  self = self._graph
  l0 = self[8]
  self.Checkpoints = l0.Target
  l0 = self[31]
  l0.CLO = "9223372047747307764"
  l0.SpawnOutsideLoadingRing = 1
  l0:Activate()
end
function export:f_8_Out()
  local l0
  self = self._graph
  l0 = self[8]
  self.Checkpoints = l0.Target
end
function export:f_8_Removed()
  local l0
  self = self._graph
  l0 = self[8]
  self.Checkpoints = l0.Target
end
function export:f_22_EndOfList()
  local l0
  self = self._graph
  l0 = self[22]
  self.CurrentCheckpoint = l0.Data
end
function export:f_22_Out()
  local l0
  self = self._graph
  l0 = self[22]
  self.CurrentCheckpoint = l0.Data
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.CurrentCheckpoint
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_19_Out
  l0:In()
end
function export:f_25_A_eq_B()
  local l0
  self = self._graph
  l0 = self[34]
  l0.MapPoint = self.NextCheckpointIcon
  l0:Hide()
end
function export:f_25_A_gt_B()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:FromInteger()
end
function export:f_25_A_le_B()
  local l0
  self = self._graph
  l0 = self[22]
  l0.Input = self.Checkpoints
  l0.Index = self.CurrentIndex
  l0:Read()
end
function export:f_15_Shown()
  local l0
  self = self._graph
  l0 = self[32]
  l0.MapPoint = self.NextCheckpointIcon
  l0:Show()
end
function export:f_5_TimeElapsed()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Input(1)
end
function export:f_29_MessageRequested()
  self = self._graph
  self:Out()
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  self._sld_xPos_6 = l0.xPos
  self._sld_yPos_6 = l0.yPos
  self._sld_zPos_6 = l0.zPos
  l0 = Boxes[PathID("domino/System/SetPosition.lua")]
  l0.Entity = self.NextCheckpointIcon
  l0.xPos = self._sld_xPos_6
  l0.yPos = self._sld_yPos_6
  l0.zPos = self._sld_zPos_6
  l0.xRot = nil
  l0.yRot = nil
  l0.zRot = nil
  l0.Additive = 0
  l0.Local = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_30_Shown()
  local l0
  self = self._graph
  l0 = self[29]
  l0.MissionName = "MissionList.9223372046401533754"
  l0.DebugObjective = "Switch to the Superbike"
  l0:UpdateObjective()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.PlayerEntity = l0.Target
  l0 = self[17]
  l0:In(0)
end
function export:f_24_A_ge_B()
  local l0
  self = self._graph
  l0 = self[18]
  l0.Input = self.Checkpoints
  l0.Index = self.CurrentIndexPlusOne
  l0:Read()
end
function export:f_18_EndOfList()
  local l0
  self = self._graph
  l0 = self[18]
  self.NextCheckpoint = l0.Data
end
function export:f_18_Out()
  local l0
  self = self._graph
  l0 = self[18]
  self.NextCheckpoint = l0.Data
  l0 = Boxes[PathID("domino/System/GetPosition.lua")]
  l0.Entity = self.NextCheckpoint
  l0.BoneName = nil
  l0.LocalBonePostion = nil
  l0._graph = self
  l0.Out = self.f_6_Out
  l0:In()
end
function export:f_26_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  self.CurrentVehicle = l0.Target
  l0 = Boxes[PathID("domino/System/SetEntity.lua")]
  l0.Entity = self.e_PlayerEntity
  l0._graph = self
  l0.Out = self.f_2_Out
  l0:FromEntity()
end
function export:f_33_Hidden()
  local l0
  self = self._graph
  l0 = self[16]
  l0.MapPoint = self.CheckpointIcon
  l0:Hide()
end
function export:Out()
end
_compilerVersion = 4
