export = {}
function export:LuaDependencies()
  return {}
end
function export:Create(cbox)
  cbox:RegisterBox("Domino/System/CompareBoolean_v2.lua")
  cbox:RegisterBox("Domino/System/FelonyChaseMonitor.lua")
  cbox:RegisterBox("Domino/System/FelonyState.lua")
  cbox:RegisterBox("Domino/System/FelonySystemController.lua")
  cbox:RegisterBox("Domino/System/FelonyType.lua")
  cbox:RegisterBox("Domino/System/GetPlayerID.lua")
  cbox:RegisterBox("Domino/System/MapPointController_v3.lua")
  cbox:RegisterBox("Domino/System/MissionModuleBox_v2.lua")
  cbox:RegisterBox("Domino/System/OnceOnly_v2.lua")
  cbox:RegisterBox("Domino/System/OrderedOutput.lua")
  cbox:RegisterBox("Domino/System/ProximityMonitor.lua")
  cbox:RegisterBox("Domino/System/SimpleNode.lua")
  cbox:RegisterBox("Domino/System/TestIfNil.lua")
  cbox:RegisterBox("Domino/System/TextToScreen_v2.lua")
end
function export:Init(cbox)
  local l0
  self.NoCopFelony_FelonyDisabled = DummyFunction
  self.NoCopFelony_FelonyEnabled = DummyFunction
  self.BeingChased = DummyFunction
  self.ConstantCheckDisabled = DummyFunction
  self.EvadedWithinRadius_FelonyDisabled = DummyFunction
  self.EvadedWithinRadius_FelonyEnabled = DummyFunction
  self.EvadedOutsideRadius_FelonyEnabled = DummyFunction
  self.EvadedOutsideRadius_FelonyDisabled = DummyFunction
  self.BeingScanned = DummyFunction
  self.NoDistanceCheck_NoCopFelony_FelonyDisabled = DummyFunction
  self.NoDistanceCheck_NoCopFelony_FelonyEnabled = DummyFunction
  self.IsCopFelony = 0
  self.Player = nil
  self[66] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[66]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_66_Out_0
  l0.ResetOut = DummyFunction
  self[28] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[28]
  l0._graph = self
  l0.Shown = self.f_28_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[26] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[26]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_26_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[2] = cbox:CreateBox("Domino/System/FelonyType.lua")
  l0 = self[2]
  l0._graph = self
  l0.None = self.f_2_None
  l0.Police = self.f_2_Police
  l0.Club = self.f_2_Club
  l0.Viceroy = self.f_2_Viceroy
  l0.Fixer = self.f_2_Fixer
  l0.Pawnee = self.f_2_Pawnee
  l0.MadnessPill = self.f_2_MadnessPill
  l0.SpiderPill = self.f_2_SpiderPill
  l0.CTOS = self.f_2_CTOS
  self[76] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[76]
  l0._graph = self
  l0.DisplayRequested = self.f_76_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[3] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[3]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_3_Out_0
  l0.ResetOut = DummyFunction
  self[49] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[49]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_49_Out_0
  l0.ResetOut = DummyFunction
  self[101] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[101]
  l0._graph = self
  l0.Shown = DummyFunction
  l0.Hidden = self.f_101_Hidden
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[39] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[39]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_39_Out_0
  l0.ResetOut = DummyFunction
  self[8] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[8]
  l0._graph = self
  l0.DisplayRequested = self.f_8_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[60] = cbox:CreateBox("Domino/System/MapPointController_v3.lua")
  l0 = self[60]
  l0._graph = self
  l0.Shown = self.f_60_Shown
  l0.Hidden = DummyFunction
  l0.TextSet = DummyFunction
  l0.TextHidden = DummyFunction
  self[16] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[16]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_16_Out_0
  l0.ResetOut = DummyFunction
  self[44] = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self[44]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_44_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_44_ScanSuccess
  l0.ScanFailure = self.f_44_ScanFailure
  l0.Chasing = self.f_44_Chasing
  l0.Searching = self.f_44_Searching
  l0.Evaded = self.f_44_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[41] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[41]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_41_Out_0
  l0.ResetOut = DummyFunction
  self[48] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[48]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_48_Out_0
  l0.ResetOut = DummyFunction
  self[30] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[30]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_30_EnterRadius
  l0.ExitRadius = self.f_30_ExitRadius
  self[7] = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self[7]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = self.f_7_None
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_7_ScanSuccess
  l0.ScanFailure = self.f_7_ScanFailure
  l0.Chasing = self.f_7_Chasing
  l0.Searching = self.f_7_Searching
  l0.Evaded = self.f_7_Evaded
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
  self[27] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[27]
  l0._graph = self
  l0.DisplayRequested = self.f_27_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[24] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[24]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_24_Out_0
  l0.ResetOut = DummyFunction
  self[17] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[17]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_17_Out_0
  l0.ResetOut = DummyFunction
  self[100] = cbox:CreateBox("Domino/System/MissionModuleBox_v2.lua")
  l0 = self[100]
  l0._graph = self
  l0.DisplayRequested = self.f_100_DisplayRequested
  l0.DisplayStarted = DummyFunction
  l0.HideRequested = DummyFunction
  l0.DisplayFinished = DummyFunction
  l0.Out = DummyFunction
  self[9] = cbox:CreateBox("Domino/System/OnceOnly_v2.lua")
  l0 = self[9]
  l0._graph = self
  l0._DynamicAnchors = {In = 1, Out = 1}
  l0.Out[0] = self.f_9_Out_0
  l0.ResetOut = DummyFunction
  self[46] = cbox:CreateBox("Domino/System/FelonyType.lua")
  l0 = self[46]
  l0._graph = self
  l0.None = self.f_46_None
  l0.Police = self.f_46_Police
  l0.Club = self.f_46_Club
  l0.Viceroy = self.f_46_Viceroy
  l0.Fixer = self.f_46_Fixer
  l0.Pawnee = self.f_46_Pawnee
  l0.MadnessPill = self.f_46_MadnessPill
  l0.SpiderPill = self.f_46_SpiderPill
  l0.CTOS = self.f_46_CTOS
  self[73] = cbox:CreateBox("Domino/System/ProximityMonitor.lua")
  l0 = self[73]
  l0._graph = self
  l0.Enabled = DummyFunction
  l0.Disabled = DummyFunction
  l0.EnterRadius = self.f_73_EnterRadius
  l0.ExitRadius = self.f_73_ExitRadius
  self[18] = cbox:CreateBox("Domino/System/FelonyChaseMonitor.lua")
  l0 = self[18]
  l0._graph = self
  l0.Started = DummyFunction
  l0.Stopped = DummyFunction
  l0.None = DummyFunction
  l0.DenunciatorStarted = DummyFunction
  l0.DenunciatorInterrupted = DummyFunction
  l0.DenunciatorFinished = DummyFunction
  l0.ScanStarted = DummyFunction
  l0.ScanSuccess = self.f_18_ScanSuccess
  l0.ScanFailure = DummyFunction
  l0.Chasing = DummyFunction
  l0.Searching = DummyFunction
  l0.Evaded = DummyFunction
  l0.TargetKilled = DummyFunction
  l0.LevelChanged = DummyFunction
  l0.TargetArrested = DummyFunction
end
function export:ShutDown()
  for k, v in pairs(self) do
    if type(v) == "table" and v.ShutDown ~= self.ShutDown and v ~= self._graph and v.ShutDown ~= nil then
      v:ShutDown()
    end
  end
end
function export:ConstantCheck()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_1_Out
  l0:In()
end
function export:DisableConstantCheck()
  local l0
  l0 = self[18]
  l0:Stop()
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_13_Out
  l0:In()
end
function export:InstantCheck()
  local l0
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  l0._graph = self
  l0.Out = self.f_69_Out
  l0:In()
end
function export:f_66_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_58_A_is_True
  l0.A_is_False = self.f_58_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_13_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_12_Out
  l0:In()
end
function export:f_67_Disabled()
  self = self._graph
  self:EvadedOutsideRadius_FelonyDisabled()
end
function export:f_58_A_is_False()
  self = self._graph
  self:NoCopFelony_FelonyEnabled()
end
function export:f_58_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_51_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_28_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.DistanceCheck
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_31_Is_nil
  l0.Is_not_nil = self.f_31_Is_not_nil
  l0:In()
end
function export:f_26_Hidden()
  self = self._graph
  self:BeingChased()
end
function export:f_31_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DistanceCheck is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_31_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DistanceCheck
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_29_A_is_True
  l0.A_is_False = self.f_29_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_29_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_36_A_is_True
  l0.A_is_False = self.f_36_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_29_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.MapPointRadius
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_33_Is_nil
  l0.Is_not_nil = self.f_33_Is_not_nil
  l0:In()
end
function export:f_50_BeingScanned()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(0)
  self:BeingScanned()
end
function export:f_50_Chased()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(0)
end
function export:f_50_Evaded()
  local l0
  self = self._graph
  l0 = self[66]
  l0:In(0)
end
function export:f_50_Free()
  local l0
  self = self._graph
  l0 = self[66]
  l0:In(0)
end
function export:f_50_ScannedSuccessfully()
  local l0
  self = self._graph
  l0 = self[41]
  l0:In(0)
end
function export:f_2_Club()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_CTOS()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_Fixer()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_MadnessPill()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_None()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_Pawnee()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_Police()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  l0.player = self.Player
  l0._graph = self
  l0.Free = self.f_6_Free
  l0.BeingScanned = self.f_6_BeingScanned
  l0.ScannedSuccessfully = self.f_6_ScannedSuccessfully
  l0.Chased = self.f_6_Chased
  l0.Evaded = self.f_6_Evaded
  l0.InvalidPlayer = DummyFunction
  l0:GetFelonyState()
end
function export:f_2_SpiderPill()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_2_Viceroy()
  local l0
  self = self._graph
  l0 = self[2]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[3]
  l0:In(0)
end
function export:f_76_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MapPoint
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_81_Is_nil
  l0.Is_not_nil = self.f_81_Is_not_nil
  l0:In()
end
function export:f_10_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 4}
  l0.Out[0] = self.f_21_Out_0
  l0.Out[1] = self.f_21_Out_1
  l0.Out[2] = self.f_21_Out_2
  l0.Out[3] = self.f_21_Out_3
  l0:In()
end
function export:f_64_A_is_False()
  self = self._graph
  self:NoDistanceCheck_NoCopFelony_FelonyEnabled()
end
function export:f_64_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_78_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_5_Disabled()
  self = self._graph
  self:NoCopFelony_FelonyDisabled()
end
function export:f_11_A_is_False()
  self = self._graph
  self:NoCopFelony_FelonyEnabled()
end
function export:f_11_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_15_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_36_A_is_False()
  self = self._graph
  self:NoDistanceCheck_NoCopFelony_FelonyEnabled()
end
function export:f_36_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_35_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_15_Disabled()
  self = self._graph
  self:NoCopFelony_FelonyDisabled()
end
function export:f_33_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPointRadius is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_33_Is_not_nil()
  local l0
  self = self._graph
  self:en_30()
  l0 = self[30]
  l0:Enable()
end
function export:f_70_A_is_False()
  self = self._graph
  self:EvadedOutsideRadius_FelonyEnabled()
end
function export:f_70_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_72_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_63_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_63_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[101]
  l0.MapPoint = self.MapPoint
  l0:Hide()
end
function export:f_3_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.DisableFelony
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_84_Is_nil
  l0.Is_not_nil = self.f_84_Is_not_nil
  l0:In()
end
function export:f_68_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPointRadius is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_68_Is_not_nil()
  local l0
  self = self._graph
  self:en_73()
  l0 = self[73]
  l0:Enable()
end
function export:f_87_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DisableFelony is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_87_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_11_A_is_True
  l0.A_is_False = self.f_11_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_98_Disabled()
  self = self._graph
  self:EvadedWithinRadius_FelonyDisabled()
end
function export:f_49_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = self.MainObjective
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_61_Is_nil
  l0.Is_not_nil = self.f_61_Is_not_nil
  l0:In()
  self:en_44()
  l0 = self[44]
  l0:Stop()
end
function export:f_57_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_57_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[76]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.MainObjective
  l0.OasisID_2 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.Duration = -1
  l0:Display()
end
function export:f_101_Hidden()
  self = self._graph
  self:BeingChased()
end
function export:f_39_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.DisableFelony
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_83_Is_nil
  l0.Is_not_nil = self.f_83_Is_not_nil
  l0:In()
end
function export:f_99_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_99_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[60]
  l0.MapPoint = self.MapPoint
  l0.LocText = self.MapPointLocText
  l0:Show()
end
function export:f_8_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MapPoint
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_90_Is_nil
  l0.Is_not_nil = self.f_90_Is_not_nil
  l0:In()
  l0 = self[9]
  l0:Reset()
end
function export:f_22_Out_0()
  local l0
  self = self._graph
  l0 = self[3]
  l0:Reset()
end
function export:f_22_Out_1()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_10_Out
  l0:In()
end
function export:f_60_Shown()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.DistanceCheck
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_74_Is_nil
  l0.Is_not_nil = self.f_74_Is_not_nil
  l0:In()
end
function export:f_51_Disabled()
  self = self._graph
  self:NoCopFelony_FelonyDisabled()
end
function export:f_4_A_is_False()
  self = self._graph
  self:NoCopFelony_FelonyEnabled()
end
function export:f_4_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_5_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_12_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 2}
  l0.Out[0] = self.f_22_Out_0
  l0.Out[1] = self.f_22_Out_1
  l0:In()
end
function export:f_81_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_81_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = self.MapPointLocText
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_99_Is_nil
  l0.Is_not_nil = self.f_99_Is_not_nil
  l0:In()
end
function export:f_88_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_88_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[8]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.OasisID_2 = self.MainObjective
  l0.Duration = -1
  l0:Display()
end
function export:f_35_Disabled()
  self = self._graph
  self:NoDistanceCheck_NoCopFelony_FelonyDisabled()
end
function export:f_16_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = self.MainObjective
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_92_Is_nil
  l0.Is_not_nil = self.f_92_Is_not_nil
  l0:In()
end
function export:f_69_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[46]
  l0:GetFelonyType()
end
function export:f_38_A_is_False()
  self = self._graph
  self:EvadedWithinRadius_FelonyEnabled()
end
function export:f_38_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_37_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_53_A_is_False()
  self = self._graph
  self:EvadedOutsideRadius_FelonyEnabled()
end
function export:f_53_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_67_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_54_Disabled()
  self = self._graph
  self:NoCopFelony_FelonyDisabled()
end
function export:f_44_Chasing()
  local l0
  self = self._graph
  l0 = self[49]
  l0:In(0)
end
function export:f_44_Evaded()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(0)
end
function export:f_44_None()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(0)
end
function export:f_44_ScanFailure()
  local l0
  self = self._graph
  l0 = self[48]
  l0:In(0)
end
function export:f_44_ScanSuccess()
  local l0
  self = self._graph
  l0 = self[49]
  l0:In(0)
end
function export:f_44_Searching()
  local l0
  self = self._graph
  l0 = self[49]
  l0:In(0)
end
function export:f_19_Out_0()
  local l0
  self = self._graph
  l0 = self[9]
  l0:Reset()
end
function export:f_19_Out_1()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Reset()
end
function export:f_19_Out_2()
  self = self._graph
  self:ConstantCheckDisabled()
end
function export:f_74_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DistanceCheck is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_74_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DistanceCheck
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_97_A_is_True
  l0.A_is_False = self.f_97_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_41_Out_0()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Start()
end
function export:f_21_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Stop()
end
function export:f_21_Out_1()
  local l0
  self = self._graph
  l0 = self[17]
  l0:Reset()
end
function export:f_21_Out_2()
  local l0
  self = self._graph
  l0 = self[24]
  l0:Reset()
end
function export:f_21_Out_3()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/SimpleNode.lua")]
  l0._graph = self
  l0.Out = self.f_14_Out
  l0:In()
end
function export:f_48_Out_0()
  local l0
  self = self._graph
  self:en_44()
  l0 = self[44]
  l0:Stop()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = self.MainObjective
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_57_Is_nil
  l0.Is_not_nil = self.f_57_Is_not_nil
  l0:In()
end
function export:f_72_Disabled()
  self = self._graph
  self:EvadedOutsideRadius_FelonyDisabled()
end
function export:f_78_Disabled()
  self = self._graph
  self:NoDistanceCheck_NoCopFelony_FelonyDisabled()
end
function export:f_30_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_38_A_is_True
  l0.A_is_False = self.f_38_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_30_ExitRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_70_A_is_True
  l0.A_is_False = self.f_70_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
  self:en_30()
  l0 = self[30]
  l0:Disable()
end
function export:f_7_Chasing()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_7_Evaded()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:f_7_None()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:f_7_ScanFailure()
  local l0
  self = self._graph
  l0 = self[16]
  l0:In(0)
end
function export:f_7_ScanSuccess()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_7_Searching()
  local l0
  self = self._graph
  l0 = self[9]
  l0:In(0)
end
function export:f_59_A_is_False()
  self = self._graph
  self:NoCopFelony_FelonyEnabled()
end
function export:f_59_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_54_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_84_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DisableFelony is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_84_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_4_A_is_True
  l0.A_is_False = self.f_4_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_27_DisplayRequested()
  local l0
  self = self._graph
  l0 = self[16]
  l0:Reset()
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MapPoint
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_40_Is_nil
  l0.Is_not_nil = self.f_40_Is_not_nil
  l0:In()
end
function export:f_1_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/GetPlayerID.lua")]
  self.Player = l0.PlayerID
  l0 = self[18]
  l0:Start()
end
function export:f_92_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_92_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[27]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = self.MainObjective
  l0.OasisID_2 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.Duration = -1
  l0:Display()
end
function export:f_24_Out_0()
  local l0
  self = self._graph
  l0 = self[7]
  l0:Start()
end
function export:f_17_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = self.DisableFelony
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_87_Is_nil
  l0.Is_not_nil = self.f_87_Is_not_nil
  l0:In()
end
function export:f_83_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "DisableFelony is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_83_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_59_A_is_True
  l0.A_is_False = self.f_59_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_75_A_is_False()
  self = self._graph
  self:EvadedWithinRadius_FelonyEnabled()
end
function export:f_75_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/FelonySystemController.lua")]
  l0.player = nil
  l0.ScanLevel = nil
  l0.ChaseLevel = nil
  l0.HeatLevel = nil
  l0.CustomChaseLevel = nil
  l0.CustomSearchLevel = nil
  l0.SkipScanDispatchBark = nil
  l0.FelonyType = nil
  l0.AgentList = nil
  l0.RemoveAgentRestrictions = nil
  l0.ArrestType = nil
  l0.AffectMediaSystem = nil
  l0.AllowFirstIntuition = nil
  l0.AllowFallBack = nil
  l0.VehicleExclusionZone = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.Enabled = DummyFunction
  l0.Disabled = self.f_98_Disabled
  l0.ScanStarted = DummyFunction
  l0.ChaseStarted = DummyFunction
  l0.HeatSet = DummyFunction
  l0.AddScriptedSucceeded = DummyFunction
  l0.AddScriptedFailed = DummyFunction
  l0.ScriptedAgentsAdopted = DummyFunction
  l0.ArrestForced = DummyFunction
  l0.VehicleExclusionZoneAdded = DummyFunction
  l0.VehicleExclusionZoneRemoved = DummyFunction
  l0:Disable()
end
function export:f_37_Disabled()
  self = self._graph
  self:EvadedWithinRadius_FelonyDisabled()
end
function export:f_100_DisplayRequested()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = self.MapPoint
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_63_Is_nil
  l0.Is_not_nil = self.f_63_Is_not_nil
  l0:In()
end
function export:f_14_Out()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/OrderedOutput.lua")]
  l0._graph = self
  l0._DynamicAnchors = {Out = 3}
  l0.Out[0] = self.f_19_Out_0
  l0.Out[1] = self.f_19_Out_1
  l0.Out[2] = self.f_19_Out_2
  l0:In()
end
function export:f_61_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MainObjective is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_61_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[100]
  l0.MessageType = "MissionUpdate"
  l0.OasisID_1 = {
    section = "MISSIONS.MAIN.OBJECTIVES.Act_01.Driving_Mission_0.Objective_018_EscapePolice",
    item = "Description",
    id = "177104"
  }
  l0.OasisID_2 = self.MainObjective
  l0.Duration = -1
  l0:Display()
end
function export:f_6_BeingScanned()
  local l0
  self = self._graph
  self:BeingScanned()
  l0 = self[24]
  l0:In(0)
end
function export:f_6_Chased()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(0)
end
function export:f_6_Evaded()
  local l0
  self = self._graph
  l0 = self[17]
  l0:In(0)
end
function export:f_6_Free()
  local l0
  self = self._graph
  l0 = self[17]
  l0:In(0)
end
function export:f_6_ScannedSuccessfully()
  local l0
  self = self._graph
  l0 = self[24]
  l0:In(0)
end
function export:f_9_Out_0()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = self.MainObjective
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_88_Is_nil
  l0.Is_not_nil = self.f_88_Is_not_nil
  l0:In()
end
function export:f_90_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_90_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[26]
  l0.MapPoint = self.MapPoint
  l0:Hide()
end
function export:f_46_Club()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_CTOS()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_Fixer()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_MadnessPill()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_None()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_Pawnee()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_Police()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = Boxes[PathID("Domino/System/FelonyState.lua")]
  l0.player = self.Player
  l0._graph = self
  l0.Free = self.f_50_Free
  l0.BeingScanned = self.f_50_BeingScanned
  l0.ScannedSuccessfully = self.f_50_ScannedSuccessfully
  l0.Chased = self.f_50_Chased
  l0.Evaded = self.f_50_Evaded
  l0.InvalidPlayer = DummyFunction
  l0:GetFelonyState()
end
function export:f_46_SpiderPill()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_46_Viceroy()
  local l0
  self = self._graph
  l0 = self[46]
  self.IsCopFelony = l0.IsCopFelony
  l0 = self[39]
  l0:In(0)
end
function export:f_73_EnterRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_75_A_is_True
  l0.A_is_False = self.f_75_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
  self:en_73()
  l0 = self[73]
  l0:Disable()
end
function export:f_73_ExitRadius()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_53_A_is_True
  l0.A_is_False = self.f_53_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
  self:en_73()
  l0 = self[73]
  l0:Disable()
end
function export:f_40_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_40_Is_not_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = nil
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = self.MapPointLocText
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_96_Is_nil
  l0.Is_not_nil = self.f_96_Is_not_nil
  l0:In()
end
function export:f_96_Is_nil()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TextToScreen_v2.lua")]
  l0.Text = "MapPoint is Undefined"
  l0.Duration = nil
  l0.Color = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0:In()
end
function export:f_96_Is_not_nil()
  local l0
  self = self._graph
  l0 = self[28]
  l0.MapPoint = self.MapPoint
  l0.LocText = self.MapPointLocText
  l0:Show()
end
function export:f_97_A_is_False()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/CompareBoolean_v2.lua")]
  l0.A = self.DisableFelony
  l0.B = nil
  l0._graph = self
  l0.Out = DummyFunction
  l0.A_is_True = self.f_64_A_is_True
  l0.A_is_False = self.f_64_A_is_False
  l0.A_and_B = DummyFunction
  l0.notA_and_notB = DummyFunction
  l0.A_or_B = DummyFunction
  l0.A_xor_B = DummyFunction
  l0:In()
end
function export:f_97_A_is_True()
  local l0
  self = self._graph
  l0 = Boxes[PathID("Domino/System/TestIfNil.lua")]
  l0.Integer = nil
  l0.Float = self.MapPointRadius
  l0.Boolean = nil
  l0.String = nil
  l0.Entity = nil
  l0.Animation = nil
  l0.Player = nil
  l0.Oasis = nil
  l0.List = nil
  l0.Sound = nil
  l0.DBObject = nil
  l0._graph = self
  l0.Is_nil = self.f_68_Is_nil
  l0.Is_not_nil = self.f_68_Is_not_nil
  l0:In()
end
function export:f_18_ScanSuccess()
  local l0
  self = self._graph
  l0 = self[2]
  l0:GetFelonyType()
end
function export:en_44()
  local l0
  l0 = self[44]
  l0.CheckNow = 1
end
function export:en_30()
  local l0
  l0 = self[30]
  l0.Entity1 = self.Player
  l0.Entity2 = self.MapPoint
  l0.Radius = self.MapPointRadius
  l0.CheckNow = 1
end
function export:en_73()
  local l0
  l0 = self[73]
  l0.Entity1 = self.Player
  l0.Entity2 = self.MapPoint
  l0.Radius = self.MapPointRadius
  l0.CheckNow = 1
end
function export:NoCopFelony_FelonyDisabled()
end
function export:NoCopFelony_FelonyEnabled()
end
function export:BeingChased()
end
function export:ConstantCheckDisabled()
end
function export:EvadedWithinRadius_FelonyDisabled()
end
function export:EvadedWithinRadius_FelonyEnabled()
end
function export:EvadedOutsideRadius_FelonyEnabled()
end
function export:EvadedOutsideRadius_FelonyDisabled()
end
function export:BeingScanned()
end
function export:NoDistanceCheck_NoCopFelony_FelonyDisabled()
end
function export:NoDistanceCheck_NoCopFelony_FelonyEnabled()
end
_compilerVersion = 4
