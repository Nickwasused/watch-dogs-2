export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/EscapeGameplayController.lua")
  cbox:RegisterBox("Domino/System/MissionMessageController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/MultipleOR.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v3.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerConflictMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Stopped = DummyFunction
  self.Started = DummyFunction
  self.Escaped = DummyFunction
  self.LeftArea = DummyFunction
  self.Felony = 0
  self.Vanished = 0
  self.EvadedFelony = 0
  self.SafeFrom_SFPD = 0
  self.SafeFrom_OPD = 0
  self.SafeFrom_CorruptCops = 0
  self.SafeFrom_AFI = 0
  self.SafeFrom_P8 = 0
  self.SafeFrom_T13 = 0
  self.SafeFrom_Boys = 0
  self.SafeFrom_Ridaz = 0
  self.SafeFrom_Uzulu = 0
  self.SafeFrom_Bratva = 0
  self.SafeFrom_Wolves = 0
  self.SafeFrom_Emergency = 0
  self.ConflictTriggered = 0
  self[13] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[13]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0.SetTrue = self.f_13_SetTrue
  l0.SetFalse = self.f_13_SetFalse
  l0.Toggled = self.f_13_Toggled
  l0.SetFromBool = self.f_13_SetFromBool
  self[5] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[5]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_5_Out
  self[1] = cbox:CreateBox("Domino/System/EscapeGameplayController.lua")
  l0 = self[1]
  l0._graph = self
  l0.Started = self.f_1_Started
  l0.Stopped = self.f_1_Stopped
  l0.Completed = self.f_1_Completed
  self[7] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[7]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_7_Out
  self[11] = cbox:CreateBox("Domino/System/PlayerConflictMonitor.lua")
  l0 = self[11]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.InConflict = self.f_11_InConflict
  l0.NOTInConflict = self.f_11_NOTInConflict
  self[152] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[152]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[151] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[151]
  l0._graph = self
  l0.Out = DummyFunction
  l0.MessageCompleted = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[2]
  l0._graph = self
  l0.Out = self.f_2_Out
  l0.SetTrue = self.f_2_SetTrue
  l0.SetFalse = self.f_2_SetFalse
  l0.Toggled = self.f_2_Toggled
  l0.SetFromBool = self.f_2_SetFromBool
  self[6] = cbox:CreateBox("Domino/System/MissionMessageController_v3.lua")
  l0 = self[6]
  l0._graph = self
  l0.Out = self.f_6_Out
  l0.MessageCompleted = DummyFunction
  self[100] = cbox:CreateBox("Domino/System/MultipleOR.lua")
  l0 = self[100]
  l0._graph = self
  l0._DynamicAnchors = {Input = 2}
  l0.Out = self.f_100_Out
  self[8] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[8]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_8_Out
  l0.ResetOut = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/OnceOnly_v3.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 1}
  l0.Out = self.f_3_Out
  l0.ResetOut = DummyFunction
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
  l0 = self[3]
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MissionArea
  l0.Animation = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_99_Is_nil
  l0.Is_not_nil = self.f_99_Is_not_nil
  l0:In()
  l0 = self[8]
  l0:Reset()
end
function export:Stop()
  local l0
  self:en_1()
  l0 = self[1]
  l0:Stop()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = self[13]
  self.ConflictTriggered = l0.Target
end
function export:f_13_SetFalse()
  local l0
  self = self._graph
  l0 = self[13]
  self.ConflictTriggered = l0.Target
end
function export:f_13_SetFromBool()
  local l0
  self = self._graph
  l0 = self[13]
  self.ConflictTriggered = l0.Target
end
function export:f_13_SetTrue()
  local l0
  self = self._graph
  l0 = self[13]
  self.ConflictTriggered = l0.Target
end
function export:f_13_Toggled()
  local l0
  self = self._graph
  l0 = self[13]
  self.ConflictTriggered = l0.Target
end
function export:f_5_Out()
  local l0
  self = self._graph
  self:en_1()
  l0 = self[1]
  l0:Start()
end
function export:f_1_Completed()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_12_Out_0
  l0.Out[1] = self.f_12_Out_1
  l0:In()
end
function export:f_1_Started()
  local l0
  self = self._graph
  l0 = self[8]
  l0:In(0)
end
function export:f_1_Stopped()
  local l0
  self = self._graph
  l0 = self[3]
  l0:In(0)
end
function export:f_150_Is_nil()
  local l0
  self = self._graph
  l0 = self[151]
  l0.Objective = {
    section = "MISSIONS.COMMON.MESSAGES.OBJECTIVE",
    item = "Objective_Escape",
    id = "693233"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_150_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[152]
  l0.Objective = self.EscapeFelonyLocID
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_9_Out_0()
  self = self._graph
  self:Stopped()
end
function export:f_9_Out_1()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(0)
end
function export:f_4_Out_0()
  local l0
  self = self._graph
  l0 = self[13]
  l0:True()
end
function export:f_4_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.EscapeFelonyLocID
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_150_Is_nil
  l0.Is_not_nil = self.f_150_Is_not_nil
  l0:In()
end
function export:f_7_Out()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Disable()
end
function export:f_94_PropertiesUpdated()
  local l0
  self = self._graph
  l0 = self[100]
  l0:Input(1)
end
function export:f_10_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Input(1)
end
function export:f_10_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.ConflictTriggered
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_14_A_is_True
  l0.A_is_False = self.f_14_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_12_Out_0()
  local l0
  self = self._graph
  l0 = self[11]
  l0:Enable()
end
function export:f_12_Out_1()
  self = self._graph
  self:LeftArea()
end
function export:f_14_A_is_False()
  self = self._graph
  self:Escaped()
end
function export:f_14_A_is_True()
  local l0
  self = self._graph
  l0 = self[2]
  l0:False()
end
function export:f_11_InConflict()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_4_Out_0
  l0.Out[1] = self.f_4_Out_1
  l0:In()
end
function export:f_11_NOTInConflict()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_10_Out_0
  l0.Out[1] = self.f_10_Out_1
  l0:In()
end
function export:f_99_Is_nil()
  local l0
  self = self._graph
  l0 = self[100]
  l0:Input(0)
end
function export:f_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.MissionArea
  l0.Red = nil
  l0.Green = nil
  l0.Blue = nil
  l0.Alpha = nil
  l0.Radius = nil
  l0.DrawType = "Inside"
  l0.ShapeType = nil
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.PropertiesUpdated = self.f_94_PropertiesUpdated
  l0.Out = DummyFunction
  l0:UpdateProperties()
end
function export:f_2_Out()
  local l0
  self = self._graph
  l0 = self[2]
  self.ConflictTriggered = l0.Target
end
function export:f_2_SetFalse()
  local l0
  self = self._graph
  l0 = self[2]
  self.ConflictTriggered = l0.Target
  l0 = self[6]
  l0.Objective = {
    section = "MISSIONS.WORLD_STORIES.SOLO.S04.S04M040.Objectives.Objective040",
    item = "Objective",
    id = "496583"
  }
  l0.HasObjectiveMarker = 0
  l0:UpdateObjective()
end
function export:f_2_SetFromBool()
  local l0
  self = self._graph
  l0 = self[2]
  self.ConflictTriggered = l0.Target
end
function export:f_2_SetTrue()
  local l0
  self = self._graph
  l0 = self[2]
  self.ConflictTriggered = l0.Target
end
function export:f_2_Toggled()
  local l0
  self = self._graph
  l0 = self[2]
  self.ConflictTriggered = l0.Target
end
function export:f_6_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(1)
end
function export:f_100_Out()
  local l0
  self = self._graph
  l0 = self[5]
  l0:Input(0)
end
function export:f_8_Out()
  self = self._graph
  self:Started()
end
function export:f_3_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_9_Out_0
  l0.Out[1] = self.f_9_Out_1
  l0:In()
end
function export:en_1()
  local l0
  l0 = self[1]
  l0.MarkerLocId = self.MarkerLocId
  l0.Entity = self.Entity
  l0.MissionAreaEntity = self.MissionArea
  l0.AreaRadius = self.Entity_AreaRadius
end
function export:Stopped()
end
function export:Started()
end
function export:Escaped()
end
function export:LeftArea()
end
_compilerVersion = 4
