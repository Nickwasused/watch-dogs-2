export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/CompareIntegers_v2.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/IndexedOutput_v2.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v3.lua")
  cbox:RegisterBox("Domino/System/MissionZoneController.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/PlayerStateController.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SetBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/SetInteger_v2.lua")
  cbox:RegisterBox("Domino/System/SwitchOutput_v3.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
end
function export:Init(cbox)
  local l0
  self.Started = DummyFunction
  self.Stopped = DummyFunction
  self.ExitedArea = DummyFunction
  self.EnteredArea = DummyFunction
  self.PlayerID = nil
  self.WasStopped = 0
  self.ObjectiveAlreadyDisplayed = 0
  self.InsideZone = 0
  self.FirstMessage = 0
  self.HasPreviousObjective = 0
  self.StartedOutsideZone = 0
  self.DisplayingPreviousObjective = 0
  self.DisplayingMessage = 0
  self[55] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[55]
  l0._graph = self
  l0.Out = self.f_55_Out
  l0.SetTrue = self.f_55_SetTrue
  l0.SetFalse = self.f_55_SetFalse
  l0.Toggled = self.f_55_Toggled
  l0.SetFromBool = self.f_55_SetFromBool
  self[48] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[48]
  l0._graph = self
  l0.DisplayRequested = self.f_48_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_48_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[36] = cbox:CreateBox("Domino/System/SwitchOutput_v3.lua")
  l0 = self[36]
  l0._graph = self
  l0._DynamicAnchors = {Output = 1}
  l0.Out = DummyFunction
  l0.Output[0] = self.f_36_Output_0
  l0.None = self.f_36_None
  l0.WasReset = DummyFunction
  self[63] = cbox:CreateBox("Domino/System/IndexedOutput_v2.lua")
  l0 = self[63]
  l0._graph = self
  l0._DynamicAnchors = {Output = 2}
  l0.Output[0] = self.f_63_Output_0
  l0.Output[1] = self.f_63_Output_1
  l0.OutOfRange = self.f_63_OutOfRange
  self[50] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[50]
  l0._graph = self
  l0.Enabled = self.f_50_Enabled
  l0.Disabled = self.f_50_Disabled
  l0.EnterRadius = self.f_50_EnterRadius
  l0.ExitRadius = self.f_50_ExitRadius
  self[35] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[35]
  l0._graph = self
  l0.Out = self.f_35_Out
  l0.SetTrue = self.f_35_SetTrue
  l0.SetFalse = self.f_35_SetFalse
  l0.Toggled = self.f_35_Toggled
  l0.SetFromBool = self.f_35_SetFromBool
  self[38] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[38]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[33] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[33]
  l0._graph = self
  l0.Out = self.f_33_Out
  l0.SetTrue = self.f_33_SetTrue
  l0.SetFalse = self.f_33_SetFalse
  l0.Toggled = self.f_33_Toggled
  l0.SetFromBool = self.f_33_SetFromBool
  self[59] = cbox:CreateBox("Domino/System/MissionModuleBox_v3.lua")
  l0 = self[59]
  l0._graph = self
  l0.DisplayRequested = self.f_59_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = self.f_59_HideRequested
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[39] = cbox:CreateBox("Domino/System/SetBoolean_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0.Out = self.f_39_Out
  l0.SetTrue = self.f_39_SetTrue
  l0.SetFalse = self.f_39_SetFalse
  l0.Toggled = self.f_39_Toggled
  l0.SetFromBool = self.f_39_SetFromBool
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
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_58_Out
  l0:In()
end
function export:Stop()
  local l0
  l0 = self[33]
  l0:True()
end
function export:f_52_MaxSpeedReset()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_64_Out_0
  l0.Out[1] = self.f_64_Out_1
  l0:In()
end
function export:f_52_MaxSpeedSet()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_41_Out_0
  l0.Out[1] = self.f_41_Out_1
  l0:In()
end
function export:f_55_Out()
  local l0
  self = self._graph
  l0 = self[55]
  self.WasStopped = l0.Target
end
function export:f_55_SetFalse()
  local l0
  self = self._graph
  l0 = self[55]
  self.WasStopped = l0.Target
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Oasis = self.PreviousObjectiveText
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_47_Is_nil
  l0.Is_not_nil = self.f_47_Is_not_nil
  l0:In()
end
function export:f_55_SetFromBool()
  local l0
  self = self._graph
  l0 = self[55]
  self.WasStopped = l0.Target
end
function export:f_55_SetTrue()
  local l0
  self = self._graph
  l0 = self[55]
  self.WasStopped = l0.Target
end
function export:f_55_Toggled()
  local l0
  self = self._graph
  l0 = self[55]
  self.WasStopped = l0.Target
end
function export:f_48_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 1
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_54_Out
  l0:FromInteger()
end
function export:f_48_HideRequested()
  local l0
  self = self._graph
  self:en_62()
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0:FromInteger()
end
function export:f_45_A_eq_B()
  local l0
  self = self._graph
  self:en_32()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_36_None()
  local l0
  self = self._graph
  l0 = self[35]
  l0:False()
end
function export:f_36_Output_0()
  local l0
  self = self._graph
  l0 = self[35]
  l0:True()
end
function export:f_63_OutOfRange()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Hide()
end
function export:f_63_Output_0()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Hide()
end
function export:f_63_Output_1()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Hide()
end
function export:f_57_Disabled()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Disable()
end
function export:f_57_Enabled()
  local l0
  self = self._graph
  self:en_50()
  l0 = self[50]
  l0:Enable()
end
function export:f_32_A_is_False()
  local l0
  self = self._graph
  self:en_31()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_32_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMessage
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_65_A_is_True
  l0.A_is_False = self.f_65_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_31_A_is_False()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Display()
end
function export:f_31_A_is_True()
  local l0
  self = self._graph
  self:en_59()
  l0 = self[59]
  l0:Hide()
end
function export:f_47_Is_nil()
  local l0
  self = self._graph
  self:en_57()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_47_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[39]
  l0:True()
end
function export:f_50_Disabled()
  local l0
  self = self._graph
  self:en_52()
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  l0:ResetMaxSpeed()
  self:en_38()
  l0 = self[38]
  l0:Hide()
end
function export:f_50_Enabled()
  self = self._graph
  self:Started()
end
function export:f_50_EnterRadius()
  local l0
  self = self._graph
  self:en_52()
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  l0:SetMaxSpeed()
  self:en_38()
  l0 = self[38]
  l0:Hide()
  self:EnteredArea()
end
function export:f_50_ExitRadius()
  local l0
  self = self._graph
  self:en_38()
  l0 = self[38]
  l0:Show()
  self:ExitedArea()
  self:en_52()
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  l0:ResetMaxSpeed()
end
function export:f_40_A_is_True()
  self = self._graph
  self:Stopped()
end
function export:f_64_Out_0()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In()
end
function export:f_64_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.FirstMessage
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_66_A_is_True
  l0.A_is_False = self.f_66_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_58_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.PlayerID = l0.PlayerID
  l0 = self[55]
  l0:False()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  l0 = self[36]
  l0:In()
end
function export:f_41_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareIntegers_v2.lua")]
  l0.A = self.DisplayingMessage
  l0.B = 0
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_lt_B = DummyFunction
  l0.A_le_B = DummyFunction
  l0.A_eq_B = self.f_45_A_eq_B
  l0.A_ge_B = DummyFunction
  l0.A_gt_B = DummyFunction
  l0.A_ne_B = DummyFunction
  l0:In()
end
function export:f_65_A_is_False()
  local l0
  self = self._graph
  self:en_31()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:f_65_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_34_A_is_True
  l0.A_is_False = self.f_34_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_34_A_is_False()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Display()
end
function export:f_34_A_is_True()
  local l0
  self = self._graph
  self:en_48()
  l0 = self[48]
  l0:Hide()
end
function export:f_35_Out()
  local l0
  self = self._graph
  l0 = self[35]
  self.FirstMessage = l0.Target
end
function export:f_35_SetFalse()
  local l0
  self = self._graph
  l0 = self[35]
  self.FirstMessage = l0.Target
end
function export:f_35_SetFromBool()
  local l0
  self = self._graph
  l0 = self[35]
  self.FirstMessage = l0.Target
end
function export:f_35_SetTrue()
  local l0
  self = self._graph
  l0 = self[35]
  self.FirstMessage = l0.Target
end
function export:f_35_Toggled()
  local l0
  self = self._graph
  l0 = self[35]
  self.FirstMessage = l0.Target
end
function export:f_30_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.DisplayingMessage = l0.Target
end
function export:f_62_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.DisplayingMessage = l0.Target
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_40_A_is_True
  l0.A_is_False = DummyFunction
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_33_Out()
  local l0
  self = self._graph
  l0 = self[33]
  self.WasStopped = l0.Target
end
function export:f_33_SetFalse()
  local l0
  self = self._graph
  l0 = self[33]
  self.WasStopped = l0.Target
end
function export:f_33_SetFromBool()
  local l0
  self = self._graph
  l0 = self[33]
  self.WasStopped = l0.Target
end
function export:f_33_SetTrue()
  local l0
  self = self._graph
  l0 = self[33]
  self.WasStopped = l0.Target
  self:en_57()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Disable()
end
function export:f_33_Toggled()
  local l0
  self = self._graph
  l0 = self[33]
  self.WasStopped = l0.Target
end
function export:f_59_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 2
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_30_Out
  l0:FromInteger()
end
function export:f_59_HideRequested()
  local l0
  self = self._graph
  self:en_62()
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0:FromInteger()
end
function export:f_39_Out()
  local l0
  self = self._graph
  l0 = self[39]
  self.HasPreviousObjective = l0.Target
end
function export:f_39_SetFalse()
  local l0
  self = self._graph
  l0 = self[39]
  self.HasPreviousObjective = l0.Target
end
function export:f_39_SetFromBool()
  local l0
  self = self._graph
  l0 = self[39]
  self.HasPreviousObjective = l0.Target
end
function export:f_39_SetTrue()
  local l0
  self = self._graph
  l0 = self[39]
  self.HasPreviousObjective = l0.Target
  self:en_57()
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0:Enable()
end
function export:f_39_Toggled()
  local l0
  self = self._graph
  l0 = self[39]
  self.HasPreviousObjective = l0.Target
end
function export:f_54_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  self.DisplayingMessage = l0.Target
end
function export:f_66_A_is_False()
  local l0
  self = self._graph
  l0 = self[63]
  l0.Index = self.DisplayingMessage
  l0:In()
end
function export:f_66_A_is_True()
  local l0
  self = self._graph
  self:en_32()
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0:In()
end
function export:en_52()
  local l0
  l0 = Boxes[PathID("Domino/System/PlayerStateController.lua")]
  l0.Entity = nil
  l0.MaxSpeed = "Jog"
  l0.AimingMode = nil
  l0.CoverEntity = nil
  l0.CombatAllowed = nil
  l0.CoverAllowed = nil
  l0.CoverToCoverAllowed = nil
  l0.ClimbInteractionAllowed = nil
  l0._graph = self
  l0.MaxSpeedSet = self.f_52_MaxSpeedSet
  l0.MaxSpeedReset = self.f_52_MaxSpeedReset
  l0.AimingStarted = DummyFunction
  l0.AimingStopped = DummyFunction
  l0.CoverEntered = DummyFunction
  l0.CoverExited = DummyFunction
  l0.HandsInPocketsEnabled = DummyFunction
  l0.HandsInPocketsDisabled = DummyFunction
  l0.FaceMaskEnabled = DummyFunction
  l0.FaceMaskDisabled = DummyFunction
  l0.CombatAllowedSet = DummyFunction
  l0.CombatAllowedReset = DummyFunction
  l0.CoverAllowedSet = DummyFunction
  l0.CoverAllowedReset = DummyFunction
  l0.CoverToCoverAllowedSet = DummyFunction
  l0.CoverToCoverAllowedReset = DummyFunction
  l0.ClimbInteractionAllowedSet = DummyFunction
  l0.ClimbInteractionAllowedReset = DummyFunction
  l0.Out = DummyFunction
end
function export:en_48()
  local l0
  l0 = self[48]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.PreviousObjectiveText
  l0.OasisID_2 = self.MessageText
  l0.Duration = -1
end
function export:en_57()
  local l0
  l0 = Boxes[PathID("Domino/System/MissionZoneController.lua")]
  l0.MissionZone = self.SearchArea
  l0.Red = 0.2
  l0.Green = 0.78
  l0.Blue = 0.96
  l0.Alpha = 1
  l0.Radius = self.SearchRadius
  l0.DrawType = "Inside"
  l0.ShapeType = "CMissionCircleDescriptor"
  l0.MinimapContext = nil
  l0.ObjectiveEnteringArea = nil
  l0.ObjectiveExitingArea = nil
  l0._graph = self
  l0.Enabled = self.f_57_Enabled
  l0.Disabled = self.f_57_Disabled
  l0.PropertiesUpdated = DummyFunction
  l0.Out = DummyFunction
end
function export:en_32()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.HasPreviousObjective
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_32_A_is_True
  l0.A_is_False = self.f_32_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:en_31()
  local l0
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.WasStopped
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_31_A_is_True
  l0.A_is_False = self.f_31_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
end
function export:en_50()
  local l0
  l0 = self[50]
  l0.Entity1 = self.SearchArea
  l0.Entity2 = self.PlayerID
  l0.Radius = self.SearchRadius
  l0.CheckNow = 1
end
function export:en_38()
  local l0
  l0 = self[38]
  l0.MapPoint = self.MapPoint
  l0.LocText = {
    section = "MISSIONS.COMMON.OBJECTIVELABELS",
    item = "Reach",
    id = "165448"
  }
end
function export:en_62()
  local l0
  l0 = Boxes[PathID("Domino/System/SetInteger_v2.lua")]
  l0.Integer = 0
  l0.String = nil
  l0.Float = nil
  l0.Player = nil
  l0.UseFloor = nil
  l0._graph = self
  l0.Out = self.f_62_Out
end
function export:en_59()
  local l0
  l0 = self[59]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.MessageText
  l0.Duration = -1
end
function export:Started()
end
function export:Stopped()
end
function export:ExitedArea()
end
function export:EnteredArea()
end
_compilerVersion = 4
